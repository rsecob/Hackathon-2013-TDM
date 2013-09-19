package view.time
{
	import com.greensock.TweenLite;
	
	import data.LignesData;
	
	import feathers.controls.Button;
	import feathers.controls.PanelScreen;
	import feathers.controls.PickerList;
	import feathers.events.FeathersEventType;
	import feathers.layout.VerticalLayout;
	import feathers.system.DeviceCapabilities;
	import feathers.themes.MetalWorksMobileTheme;
	
	import flash.system.Capabilities;
	
	import starling.animation.Tween;
	import starling.display.DisplayObject;
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
			
			verticalLayout.paddingLeft = verticalLayout.paddingRight = MetalWorksMobileTheme.DPI_SCALE * 10;
			verticalLayout.gap = verticalLayout.paddingTop = MetalWorksMobileTheme.DPI_SCALE * 40;
			
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
			
			_stopPicker.prompt = "Choisissez votre arrêt";
			_linePicker.width = _stopPicker.width = this.width - (MetalWorksMobileTheme.DPI_SCALE * 10 * 2);
			
			addChild(_linePicker);
		}
		
		private function addStopPicker():void
		{
			if (!contains(_linePicker))
			{
				_linePicker.alpha = 0;
				addChild(_linePicker);
				TweenLite.to(_linePicker, 0.3, {alpha: 1});
			}
			
			
		}
		
		/////////////////////////////////
		// Event Handlers
		/////////////////////////////////

		private function linePicker_selectHandler(event:Event):void
		{
		}
		
		private function backButton_clickHandler(event:Event):void
		{
			dispatchEventWith("backHome", true);
		}
		
		private function initialize_handler(event:Event):void
		{
			this.width = stage.stageWidth;
			
			initHeader();
			initLayout();
			initPickerList();
		}
		
	}
}