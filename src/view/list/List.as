package view.list
{
	import com.greensock.TweenLite;
	
	import core.Signal;
	import core.StopSearch;
	import core.database.StopDatabase;
	
	import data.LignesData;
	
	import feathers.controls.GroupedList;
	import feathers.controls.List;
	import feathers.controls.PickerList;
	import feathers.controls.ScrollContainer;
	import feathers.controls.Scroller;
	import feathers.controls.TextInput;
	import feathers.controls.renderers.DefaultListItemRenderer;
	import feathers.data.EmbeddedAssets;
	import feathers.data.HierarchicalCollection;
	import feathers.data.ListCollection;
	import feathers.events.FeathersEventType;
	import feathers.layout.VerticalLayout;
	import feathers.themes.MetalWorksMobileTheme;
	
	import flash.utils.setTimeout;
	
	import signal.HomeSignal;
	import signal.TimeSignal;
	
	import starling.display.DisplayObject;
	import starling.display.Quad;
	import starling.events.Event;
	import starling.filters.BlurFilter;
	
	import view.MainView;
	
	public class List extends ScrollContainer
	{
		////////////////////////////
		// Constructor
		////////////////////////////
		
		public function List()
		{
			super();
			
			addEventListener(FeathersEventType.INITIALIZE, initialize_handler);
			
			this.backgroundSkin = new Quad(10, 10, 0x6A6A6A);
			
			initSignals();
		}
		
		////////////////////////////
		// Properties
		////////////////////////////
		
		private var _listContainer:ScrollContainer;
		private var _groupedList:GroupedList;
		private var _searchList:feathers.controls.List;
		private var _textInput:TextInput;
		private var _childrenFavorites:Array;
		private var _dataBase:StopDatabase;
		private var _stopSearch:StopSearch;
		
		// Navigation Signal
		
		private var _navigationSignal:Signal;
		
		// List Signal
		
		private var _listSignal:Signal;
		
		// Time Signal
		
		private var _timeSignal:Signal;
		
		////////////////////////////
		// Methods
		////////////////////////////
		
		private function initSignals():void
		{
			_navigationSignal = HomeSignal.navigationSignal;
			
			_listSignal = HomeSignal.listButtonSignal;
			_listSignal.add(listSignal_handler);
			
			_timeSignal = TimeSignal.timeSignal;
		}
		
		private function initDatabase():void
		{
			_dataBase = StopDatabase.getInstance();
			_childrenFavorites = new Array();
			
			_dataBase.addUpdateCallback(dataBase_updateHandler);
			
			setFavorites();
		}
		
		private function setFavorites():void
		{
			var data:Array = _dataBase.getData();

			for each (var stop:Object in data)
			{
				var ligneInfo:Object = LignesData.getLineInfo(stop.line);
				
				if (ligneInfo)
					_childrenFavorites.push({line: stop.line, text: stop.label, thumbnail: ligneInfo.icon, index: stop.index_list });
			}
		}
		
		private function initSearchList():void
		{
			_searchList = new feathers.controls.List();
			
			_searchList.itemRendererProperties.labelField = "text";
			_searchList.itemRendererProperties.iconSourceField = "icon";
			
			_searchList.nameList.add(PickerList.SEARCH_CHILD_NAME_LIST);
			_searchList.itemRendererName = DefaultListItemRenderer.SEARCH;
			
			_searchList.width = this.width;
			
			_searchList.addEventListener(Event.CHANGE, searchList_changeHandler);
		}
		
		private function initGroupedList():void
		{
			var groceryList:HierarchicalCollection = new HierarchicalCollection(
				[
					{
						header: {text: "Navigation"},
						children:
						[
							{ text: "Accueil", thumbnail: EmbeddedAssets.LIST_HOME_ICON, view: MainView.HOME_VIEW },
							{ text: "Horaires", thumbnail: EmbeddedAssets.LIST_CLOCK_ICON, view:MainView.TIME_VIEW },
							{ text: "Itinéraires", thumbnail: EmbeddedAssets.LIST_COMPASS_ICON, view:MainView.ITINERARY_VIEW },
							{ text: "Géolocalisation", thumbnail: EmbeddedAssets.LIST_MARKER_ICON }
						]
					},
					{
						header: {text: "Arrêts Favoris", thumbnail: EmbeddedAssets.LIST_STAR_ICON},
						children: _childrenFavorites
					},
				]);
			
			_listContainer = new ScrollContainer();
			_listContainer.width = this.width - (MetalWorksMobileTheme.DPI_SCALE * 10 * 2);
			_listContainer.horizontalScrollPolicy = Scroller.SCROLL_POLICY_OFF;
			
			_groupedList = new GroupedList();
			_groupedList.nameList.add(GroupedList.ALTERNATE_NAME_INSET_GROUPED_LIST);
			
			_groupedList.itemRendererProperties.labelField = "text";
			_groupedList.itemRendererProperties.iconSourceField = "thumbnail";

			_groupedList.headerRendererProperties.contentSourceField = "thumbnail";
			_groupedList.headerRendererProperties.contentLabelField = "text";
				
			_groupedList.dataProvider = groceryList;
			_groupedList.width = this.width;
			
			_groupedList.addEventListener(Event.CHANGE, groupedList_changeHandler);
			
			_listContainer.addChild(_groupedList);
			addChild(_listContainer);
		}
		
		private function initTextInput():void
		{
			_textInput = new TextInput();

			_textInput.prompt = "Rechercher un arrêt";
			_textInput.width = this.width - (MetalWorksMobileTheme.DPI_SCALE * 10 * 2);
			_textInput.addEventListener(FeathersEventType.FOCUS_IN, textInputFocusIn_handler);
			_textInput.addEventListener(FeathersEventType.FOCUS_OUT, textInputFocusOut_handler);
			_textInput.addEventListener(Event.CHANGE, textInput_changeHandler);
			_textInput.addEventListener(Event.RESIZE, textInput_resizeHandler);
			
			addChild(_textInput);
		}
		
		private function textInput_changeHandler(event:Event):void
		{
			if (!_stopSearch)
				_stopSearch = new StopSearch();
			
			var stopData:Array = _stopSearch.searchStop(_textInput.text);
			
			if (stopData && stopData.length)
			{
				var listCollection:ListCollection = new ListCollection(stopData);
				
				_searchList.dataProvider = listCollection;
			}
		}
		
		private function removeGroupedList():void
		{
			TweenLite.to(_groupedList, 0.3, {alpha:0, onComplete: function():void {
				_listContainer.removeChild(_groupedList);
			} });
		}
		
		private function addGroupedList():void
		{
			if (_groupedList && !_listContainer.contains(_groupedList))
			{
				_listContainer.addChild(_groupedList);
				TweenLite.to(_groupedList, 0.3, {alpha:1});
			}
		}
		
		private function removeSearchList():void
		{
			if (_searchList && _listContainer.contains(_searchList))
			{
				_listContainer.removeChild(_searchList);
				_searchList.selectedIndex = -1;
			}
		}
		
		private function addSearchList():void
		{
			if (!_searchList)
				initSearchList();
			_listContainer.addChild(_searchList);
		}
		
		////////////////////////////
		// Event Handler
		////////////////////////////
		
		private function searchList_changeHandler(event:Event):void
		{
			if (!_searchList.selectedItem)
				return;
			
			_navigationSignal.dispacth(MainView.TIME_VIEW);
			_timeSignal.dispacth(_searchList.selectedItem);
			_listSignal.dispacth(false);
		}
		
		private function groupedList_changeHandler(event:Event):void
		{
			if (_groupedList.selectedItem && _groupedList.selectedItem.view)
				_navigationSignal.dispacth(_groupedList.selectedItem.view);
			else if (_groupedList.selectedItem && _groupedList.selectedItem.line)
			{
				_navigationSignal.dispacth(MainView.TIME_VIEW);
				_timeSignal.dispacth(_groupedList.selectedItem);
			}
			else
				return;
			
			_listSignal.dispacth(false);
			_groupedList.selectedItem = null;
		}
		
		private function dataBase_updateHandler():void
		{
			_childrenFavorites.splice(0);
			
			setFavorites();
			
			var groceryList:HierarchicalCollection = new HierarchicalCollection(
				[
					{
						header: {text: "Navigation"},
						children:
						[
							{ text: "Accueil", thumbnail: EmbeddedAssets.LIST_HOME_ICON, view: MainView.HOME_VIEW },
							{ text: "Horaires", thumbnail: EmbeddedAssets.LIST_CLOCK_ICON, view:MainView.TIME_VIEW },
							{ text: "Itinéraires", thumbnail: EmbeddedAssets.LIST_COMPASS_ICON, view:MainView.ITINERARY_VIEW },
							{ text: "Géolocalisation", thumbnail: EmbeddedAssets.LIST_MARKER_ICON }
						]
					},
					{
						header: {text: "Arrêts Favoris", thumbnail: EmbeddedAssets.LIST_STAR_ICON},
						children: _childrenFavorites
					},
				]);
			
			_groupedList.dataProvider = groceryList;
		}
		
		private function textInput_resizeHandler(event:Event):void
		{
			if (_listContainer)
				_listContainer.height = this.height - (_textInput.height + (MetalWorksMobileTheme.DPI_SCALE * 10 * 2));
		}
		
		private function textInputFocusOut_handler(event:Event):void
		{
			if (!_textInput.text)
			{
				removeSearchList();
				addGroupedList();
			}
		}
		
		private function textInputFocusIn_handler(event:Event):void
		{
			removeGroupedList();
			addSearchList();
		}
		
		private function initialize_handler(event:Event):void
		{
			var verticalLayout:VerticalLayout = new VerticalLayout();
			
			verticalLayout.verticalAlign = VerticalLayout.VERTICAL_ALIGN_TOP;
			verticalLayout.paddingTop = MetalWorksMobileTheme.DPI_SCALE * 10;
			verticalLayout.paddingLeft = MetalWorksMobileTheme.DPI_SCALE * 10;
			
			this.width = this.stage.stageWidth * 0.8;
			this.height = this.stage.stageHeight;
			
			this.layout = verticalLayout;

			initDatabase();
			initTextInput();
			initGroupedList();
		}
		
		private function listSignal_handler(isSelected:Boolean):void
		{
			if (isSelected)
			{
				removeSearchList();
				addGroupedList();
			}
		}
		
	}
}