package view.time
{
	import com.greensock.TweenLite;
	import com.greensock.easing.Sine;
	
	import data.LignesData;
	import data.lignes.*;
	
	import feathers.controls.Button;
	import feathers.controls.GroupedList;
	import feathers.controls.PanelScreen;
	import feathers.controls.PickerList;
	import feathers.controls.ScrollContainer;
	import feathers.data.HierarchicalCollection;
	import feathers.events.FeathersEventType;
	import feathers.layout.HorizontalLayout;
	import feathers.layout.VerticalLayout;
	import feathers.themes.MetalWorksMobileTheme;
	
	import flash.utils.getDefinitionByName;
	
	import starling.display.DisplayObject;
	import starling.display.Quad;
	import starling.events.Event;
	
	public class TimeView extends PanelScreen
	{
		/////////////////////////////////
		// Constructor
		/////////////////////////////////
		
		public function TimeView()
		{
			super();
			
			addEventListener(FeathersEventType.INITIALIZE, initialize_handler);
		}
		
		/////////////////////////////////
		// Properties
		/////////////////////////////////
		
		private var _backButton:Button;
		private var _linePicker:PickerList;
		private var _stopPicker:PickerList;
		private var _resultContainer:ScrollContainer;
		private var _resultList:GroupedList;
		private var _resultCollection:HierarchicalCollection;
		
		/////////////////////////////////
		// Methods
		/////////////////////////////////
		
		private function initHeader():void
		{
			_backButton = new Button();
			
			_backButton.nameList.add(Button.ALTERNATE_NAME_BACK_BUTTON);
			_backButton.addEventListener(Event.TRIGGERED, backButton_clickHandler);
			
			this.headerProperties.title = "Horaires";
			this.headerProperties.leftItems = new <DisplayObject>
				[
					this._backButton
				];
		}
		
		private function initLayout():void
		{
			var verticalLayout:VerticalLayout = new VerticalLayout();
			
			verticalLayout.paddingLeft = verticalLayout.paddingRight = this.dpiScale * 10;
			verticalLayout.gap = verticalLayout.paddingTop = this.dpiScale * 40;
			
			this.layout = verticalLayout;
		}
		
		private function initPickerList():void
		{
			_linePicker = new PickerList();
			_stopPicker = new PickerList();
			
			_linePicker.prompt = "Choisissez votre ligne";
			_linePicker.listProperties.@itemRendererProperties.labelField = "label";
			_linePicker.listProperties.@itemRendererProperties.iconSourceField = "icon";
			_linePicker.dataProvider = LignesData.data;
			_linePicker.selectedIndex = -1;
			_linePicker.addEventListener(Event.CHANGE, linePicker_selectHandler);
			
			_stopPicker.listProperties.@itemRendererProperties.labelField = "label";
			_stopPicker.prompt = "Choisissez votre arrêt";
			_stopPicker.addEventListener(Event.CHANGE, stopPicker_selectHandler);

			_linePicker.width = _stopPicker.width = this.width - (this.dpiScale * 10 * 2);
			
			addChild(_linePicker);
		}
		
		private function addResultContainer():void
		{
			if (!_resultContainer)
			{
				_resultContainer = new ScrollContainer();
				var layout:HorizontalLayout = new HorizontalLayout();
				var background:Quad = new Quad(10, 10, 0x000000);
				
				layout.paddingLeft = layout.paddingTop = this.dpiScale * 10;
				_resultContainer.layout = layout;
				
				background.alpha = 0.3;
				_resultContainer.backgroundSkin = background;
				
				_resultContainer.width = this.width - (this.dpiScale * 10 * 2);
				_resultContainer.height = this.height - (_linePicker.height * 2) - ((this.dpiScale * 40)* 4) - this.header.height;
				
				addChild(_resultContainer);
			}
			
			if (!_resultList)
			{
				_resultList = new GroupedList();
				
				_resultList.isSelectable = false;
				_resultList.width = _resultContainer.width - (this.dpiScale * 10 * 2);
				_resultList.height = _resultContainer.height - (this.dpiScale * 10 * 2);
			}
		}
		
		Ligne1Data, Ligne2Data, Ligne3Data, Ligne4Data, Ligne6Data, Ligne7Data, Ligne8Data, Ligne9Data,
		Ligne10Data, Ligne11Data, Ligne12Data, Ligne13Data, Ligne14Data, Ligne15Data, Ligne16Data,
		Ligne19Data
		
		private function addStopPicker():void
		{
			if (!contains(_stopPicker))
			{
				_stopPicker.alpha = 0;
				addChild(_stopPicker);
				TweenLite.to(_stopPicker, 0.5, {alpha: 1, ease:Sine.easeOut});
			}
			
			var selectedLine:Object = _linePicker.selectedItem;
			var lineData:Class = getDefinitionByName("data.lignes.Ligne" + selectedLine.value + "Data") as Class;
			
			_stopPicker.dataProvider = lineData.data;
			_stopPicker.selectedIndex = -1;
		}
		
		private function requestForTime():void
		{
			if (!_resultContainer.contains(_resultList))
				_resultContainer.addChild(_resultList);
			
			if (!_resultCollection)
				_resultCollection = new HierarchicalCollection();
			
			_resultCollection.data = [{
				header: "Mosson",
				children:
				[
					"Départ proche",
					"6 min"
				]
			},
				{
					header: "Odysseum",
					children:
					[
						"3 min",
						"9 min"
					]
				}];
			
			_resultList.dataProvider = _resultCollection;
		}
		
		/////////////////////////////////
		// Event Handlers
		/////////////////////////////////

		private function stopPicker_selectHandler(event:Event):void
		{
			if (_stopPicker.selectedIndex != -1)
			{
				addResultContainer();
				requestForTime();
			}
		}
		
		private function linePicker_selectHandler(event:Event):void
		{
			addStopPicker();
		}
		
		private function backButton_clickHandler(event:Event):void
		{
			dispatchEventWith("backHome", true);
		}
		
		private function initialize_handler(event:Event):void
		{
			this.width = stage.stageWidth;
			this.height = stage.stageHeight;
			
			initHeader();
			initLayout();
			initPickerList();
		}
		
	}
}