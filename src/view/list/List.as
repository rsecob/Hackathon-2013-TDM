package view.list
{
	import com.greensock.TweenLite;
	
	import feathers.controls.GroupedList;
	import feathers.controls.ScrollContainer;
	import feathers.controls.Scroller;
	import feathers.controls.TextInput;
	import feathers.data.EmbeddedAssets;
	import feathers.data.HierarchicalCollection;
	import feathers.events.FeathersEventType;
	import feathers.layout.VerticalLayout;
	import feathers.themes.MetalWorksMobileTheme;
	
	import starling.display.DisplayObject;
	import starling.display.Quad;
	import starling.events.Event;
	import starling.filters.BlurFilter;
	
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
		}
		
		////////////////////////////
		// Properties
		////////////////////////////
		
		private var _listContainer:ScrollContainer;
		private var _groupedList:GroupedList;
		private var _textInput:TextInput;
		
		////////////////////////////
		// Methods
		////////////////////////////
		
		private function initGroupedList():void
		{
			var groceryList:HierarchicalCollection = new HierarchicalCollection(
				[
					{
						header: {text: "Navigation"},
						children:
						[
							{ text: "Accueil", thumbnail: EmbeddedAssets.LIST_HOME_ICON },
							{ text: "Horaires", thumbnail: EmbeddedAssets.LIST_CLOCK_ICON },
							{ text: "Itinéraires", thumbnail: EmbeddedAssets.LIST_COMPASS_ICON },
							{ text: "Géolocalisation", thumbnail: EmbeddedAssets.LIST_MARKER_ICON }
						]
					},
					{
						header: {text: "Arrêts Favoris", thumbnail: EmbeddedAssets.LIST_STAR_ICON},
						children:
						[
						]
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
			_textInput.addEventListener(Event.RESIZE, textInput_resizeHandler);
			
			addChild(_textInput);
		}
		
		private function removeGroupedList():void
		{
			TweenLite.to(_groupedList, 0.3, {alpha:0, onComplete: function():void {
				_listContainer.removeChild(_groupedList);
			} });
		}
		
		private function addGroupedList():void
		{
			_listContainer.addChild(_groupedList);
			TweenLite.to(_groupedList, 0.3, {alpha:1});
		}
		
		////////////////////////////
		// Event Handler
		////////////////////////////
		
		private function textInput_resizeHandler(event:Event):void
		{
			if (_listContainer)
				_listContainer.height = this.height - (_textInput.height + (MetalWorksMobileTheme.DPI_SCALE * 10 * 2));
		}
		
		private function textInputFocusOut_handler(event:Event):void
		{
			_textInput.text = "";
			addGroupedList();
		}
		
		private function textInputFocusIn_handler(event:Event):void
		{
			removeGroupedList();
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

			initTextInput();
			initGroupedList();
		}
		
	}
}