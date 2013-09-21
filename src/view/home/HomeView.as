package view.home
{
	import feathers.controls.Button;
	import feathers.controls.Header;
	import feathers.controls.ImageLoader;
	import feathers.controls.PanelScreen;
	import feathers.data.EmbeddedAssets;
	import feathers.events.FeathersEventType;
	import feathers.layout.TiledColumnsLayout;
	import feathers.layout.TiledRowsLayout;
	import feathers.layout.VerticalLayout;
	import feathers.system.DeviceCapabilities;
	import feathers.themes.MetalWorksMobileTheme;
	
	import flash.utils.setTimeout;
	
	import starling.core.Starling;
	import starling.display.DisplayObject;
	import starling.display.Stage;
	import starling.events.Event;
	import starling.textures.TextureSmoothing;
	
	public class HomeView extends PanelScreen
	{
		/////////////////////////////////
		// Constructor
		/////////////////////////////////
		
		public function HomeView()
		{
			super();
			
			this.addEventListener(FeathersEventType.INITIALIZE, initializeHandler);
			this.headerProperties.title = "Transports de Montpellier";
			this.headerProperties.titleAlign = Header.TITLE_ALIGN_PREFER_LEFT;
		}
		
		/////////////////////////////////
		// Properties
		/////////////////////////////////

		private var isPhone:Boolean;
		
		// Layout
		
		private var _tiledLayout:TiledRowsLayout;
		
		// Header Button
		
		private var _listButton:Button;
		
		// Main Button
		
		private var _timeButton:Button;
		private var _itineraryButton:Button;
		private var _markerButton:Button;
		
		/////////////////////////////////
		// Methods
		/////////////////////////////////
		
		private function initButton():void
		{
			var clockIcon:ImageLoader = new ImageLoader();
			clockIcon.source = EmbeddedAssets.HOME_CLOCK_ICON;
			clockIcon.snapToPixels = true;
			clockIcon.textureScale = this.dpiScale;
			
			_timeButton = new Button();
			_timeButton.iconPosition = (Button.ICON_POSITION_TOP);
			_timeButton.defaultIcon = clockIcon;
			_timeButton.gap = 10 * MetalWorksMobileTheme.DPI_SCALE;
			_timeButton.label = "Horaires";
			_timeButton.addEventListener(Event.RESIZE, button_resize_handler);
			_timeButton.addEventListener(Event.TRIGGERED, timeButton_clickHandler);
			
			var compassIcon:ImageLoader = new ImageLoader();
			compassIcon.source = EmbeddedAssets.HOME_COMPASS_ICON;
			compassIcon.snapToPixels = true;
			compassIcon.textureScale = this.dpiScale;
			
			_itineraryButton = new Button();
			_itineraryButton.nameList.add(Button.ALTERNATE_NAME_QUIET_BUTTON);
			_itineraryButton.iconPosition = Button.ICON_POSITION_TOP;
			_itineraryButton.defaultIcon = compassIcon;
			_itineraryButton.label = "Itinéraires";
			_itineraryButton.gap = 10 * MetalWorksMobileTheme.DPI_SCALE;
			_itineraryButton.addEventListener(Event.RESIZE, button_resize_handler);
			_itineraryButton.addEventListener(Event.TRIGGERED, itineraryButton_clickHandler);
			
			var markerIcon:ImageLoader = new ImageLoader();
			markerIcon.source = EmbeddedAssets.HOME_MARKER_ICON;
			markerIcon.snapToPixels = true;
			markerIcon.textureScale = this.dpiScale / 1.05;
			
			_markerButton = new Button();
			_markerButton.nameList.add(Button.ALTERNATE_NAME_DANGER_BUTTON);
			_markerButton.iconPosition = Button.ICON_POSITION_TOP;
			_markerButton.gap = 10 * MetalWorksMobileTheme.DPI_SCALE;
			_markerButton.defaultIcon = markerIcon;
			_markerButton.label = "Géolocalisation";
			_markerButton.addEventListener(Event.RESIZE, button_resize_handler);
			
			addChild(_timeButton);
			addChild(_itineraryButton);
			addChild(_markerButton);
			
			if(isPhone)
			{
				this._listButton = new Button();
				this._listButton.nameList.add(Button.ALTERNATE_NAME_LIST_BUTTON);
				this._listButton.isToggle = true;
				this._listButton.addEventListener(Event.TRIGGERED, listButton_clickHandler);
				//				this._backButton.addEventListener(Event.TRIGGERED, backButton_triggeredHandler);
				
				this.headerProperties.leftItems = new <DisplayObject>
					[
						this._listButton
					];
				
				//				this.backButtonHandler = this.onBackButton;
			}
		}
		
		/////////////////////////////////
		// Event Handler
		/////////////////////////////////
		
		private function itineraryButton_clickHandler():void
		{
			dispatchEventWith("itinerary", true);
		}
		
		private function timeButton_clickHandler():void
		{
			dispatchEventWith("time", true);
		}
		
		private function listButton_clickHandler():void
		{
//			if (_listButton.isSelected)
//				dispatchEventWith(CLOSE_LIST, true);
//			else
//				dispatchEventWith(OPEN_LIST, true);
		}
		
		private function initializeHandler(event:Event):void
		{
			isPhone = DeviceCapabilities.isPhone(Starling.current.nativeStage);
			_tiledLayout = new TiledRowsLayout();
			
			_tiledLayout.horizontalAlign = TiledColumnsLayout.HORIZONTAL_ALIGN_CENTER;
			_tiledLayout.verticalAlign = TiledColumnsLayout.VERTICAL_ALIGN_TOP;
			_tiledLayout.paddingLeft = _tiledLayout.paddingRight = 5 * this.dpiScale;
			_tiledLayout.paddingTop = _tiledLayout.paddingTop = 5 * this.dpiScale;
			_tiledLayout.gap = 5 * this.dpiScale;
			
			this.layout = _tiledLayout;
			
			initButton();
		}
		
		private function button_resize_handler(event:Event):void
		{
			var button:Button = event.target as Button;
			
			if (button && stage)
				button.height = button.width = stage.stageWidth / 2 - (_tiledLayout.gap * 2);
		}
	}
}