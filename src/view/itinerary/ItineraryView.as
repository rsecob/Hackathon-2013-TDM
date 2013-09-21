package view.itinerary
{
	import com.greensock.TweenLite;
	import com.greensock.easing.Sine;
	
	import core.APILoader;
	import core.itinerary.ItineraryJSONParser;
	
	import data.APIData;
	import data.itinerary.ItineraryDateData;
	
	import feathers.controls.Button;
	import feathers.controls.Callout;
	import feathers.controls.GroupedList;
	import feathers.controls.HGroup;
	import feathers.controls.ImageLoader;
	import feathers.controls.Label;
	import feathers.controls.PanelScreen;
	import feathers.controls.PickerList;
	import feathers.controls.ProgressBar;
	import feathers.controls.ScrollContainer;
	import feathers.controls.ScrollText;
	import feathers.controls.Scroller;
	import feathers.controls.TextInput;
	import feathers.controls.VGroup;
	import feathers.core.FeathersControl;
	import feathers.core.PopUpManager;
	import feathers.data.EmbeddedAssets;
	import feathers.events.FeathersEventType;
	import feathers.layout.HorizontalLayout;
	import feathers.layout.VerticalLayout;
	
	import flash.events.GeolocationEvent;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.net.URLRequestMethod;
	import flash.sensors.Geolocation;
	import flash.ui.Keyboard;
	import flash.utils.setTimeout;
	
	import starling.display.DisplayObject;
	import starling.events.Event;
	import starling.events.KeyboardEvent;
	
	public class ItineraryView extends PanelScreen
	{
		/////////////////////////////////
		// Constructor
		/////////////////////////////////
		
		public function ItineraryView()
		{
			super();
			
			addEventListener(FeathersEventType.INITIALIZE, initialize_handler);
			addEventListener(Event.REMOVED, renderer_removeHandler);
		}
		
		/////////////////////////////////
		// Properties
		/////////////////////////////////
		
		private var _backButton:Button;

		private var _departureLabel:Label;
		private var _departureTextInput:TextInput;
		private var _departureGPSButton:Button;
		private var _arrivalLabel:Label;
		private var _arrivalTextInput:TextInput;
		
		private var _validButton:Button;
		private var _errorLabel:Label;
		private var _currentLocation:Object;
		
		private var _timeModePicker:PickerList;
		private var _hourPicker:PickerList;
		private var _minutePicker:PickerList;
		
		private var _geolocation:Geolocation;
		private var _unsupportedLabel:Label;
		
		private var _popPupContainer:VGroup;
		private var _resultContainer:ScrollContainer;
		private var _resultList:GroupedList;
		private var _titleContainer:HGroup;
		private var _itineraryTitleLabel:Label;
		private var _closeButton:Button;
		private var _progressBar:ProgressBar;
		
		/////////////////////////////////
		// Methods
		/////////////////////////////////
		
		private function initHeader():void
		{
			_backButton = new Button();
			
			_backButton.nameList.add(Button.ALTERNATE_NAME_BACK_BUTTON);
			_backButton.addEventListener(Event.TRIGGERED, backButton_clickHandler);
			
			this.headerProperties.title = "Itinéraires";
			this.headerProperties.leftItems = new <DisplayObject>
				[
					this._backButton
				];
		}
		
		private function initLayout():void
		{
			var verticalLayout:VerticalLayout = new VerticalLayout();
			
			verticalLayout.paddingLeft = verticalLayout.paddingRight = this.dpiScale * 10;
			verticalLayout.gap =  this.dpiScale * 10;
			verticalLayout.paddingTop = this.dpiScale * 20;
			verticalLayout.horizontalAlign = VerticalLayout.HORIZONTAL_ALIGN_CENTER;
			
			this.layout = verticalLayout;
		}
		
		private function initUnsupportedLabel():void
		{
			_unsupportedLabel = new Label();
			
			_unsupportedLabel.text = "Le GPS n'est pas activé";
		}
		
		private function initHourPicker():void
		{
			var departureGroup:ScrollContainer = new ScrollContainer();
			var horizontalLayout:HorizontalLayout = new HorizontalLayout();
			var hourLabel:Label = new Label();
			var date:Date = new Date();
			_timeModePicker = new PickerList();
			_hourPicker = new PickerList();
			_minutePicker = new PickerList();
			
			horizontalLayout.horizontalAlign = HorizontalLayout.HORIZONTAL_ALIGN_CENTER;
			horizontalLayout.verticalAlign = HorizontalLayout.VERTICAL_ALIGN_MIDDLE;
			horizontalLayout.gap = 10 * this.dpiScale;
			departureGroup.paddingTop = 20 * this.dpiScale;
			departureGroup.layout = horizontalLayout;
			departureGroup.horizontalScrollPolicy = departureGroup.verticalScrollPolicy = Scroller.SCROLL_POLICY_OFF;
			
			hourLabel.text = "h";
			
			_timeModePicker.dataProvider = ItineraryDateData.timeMode;
			_hourPicker.dataProvider = ItineraryDateData.hourData;
			_minutePicker.dataProvider = ItineraryDateData.minuteData;

			_timeModePicker.customButtonName = Button.ALTERNATE_NAME_DANGER_BUTTON;
			_hourPicker.customButtonName = Button.ALTERNATE_NAME_DANGER_BUTTON;
			_minutePicker.customButtonName = Button.ALTERNATE_NAME_DANGER_BUTTON;
			
			_hourPicker.selectedIndex = date.hours;
			_minutePicker.selectedIndex = date.minutes / 5;
			
			_timeModePicker.listProperties.@itemRendererProperties.labelField = "text";
			_timeModePicker.labelField = "text";
			
			departureGroup.paddingLeft = departureGroup.paddingRight = 0;
			
			departureGroup.addChild(_timeModePicker);
			departureGroup.addChild(_hourPicker);
			departureGroup.addChild(hourLabel);
			departureGroup.addChild(_minutePicker);
			
			addChild(departureGroup);
		}
		
		private function initTextInput():void
		{
			var departureGroup:HGroup = new HGroup();
			departureGroup.paddingLeft = departureGroup.paddingRight = 0;
			
			_departureLabel = new Label();
			_departureTextInput = new TextInput();
			_departureGPSButton = new Button();
			_arrivalLabel = new Label();
			_arrivalTextInput = new TextInput();
			
			var locationIcon:ImageLoader = new ImageLoader();
			locationIcon.source = EmbeddedAssets.ITINERARY_LOCATION_ICON;
			locationIcon.snapToPixels = true;
			locationIcon.textureScale = this.dpiScale;
			
			_departureGPSButton.nameList.add(Button.ALTERNATE_NAME_DANGER_BUTTON);
			_departureGPSButton.defaultIcon = locationIcon;
			
			_departureLabel.text = "Départ:";
			_departureTextInput.prompt = "Ex: Odysseum";
			departureGroup.width = _departureLabel.width = this.width - (this.dpiScale * 10 * 2);

			_arrivalLabel.text = "Arrivée:";
			_arrivalTextInput.prompt = "Ex: Zoo du lunaret";
			_arrivalLabel.width = _arrivalTextInput.width = this.width - (this.dpiScale * 10 * 2);
			
			_departureGPSButton.addEventListener(Event.TRIGGERED, departureGPSButton_clickHandler);
			
			departureGroup.addLayoutItem(_departureTextInput, 100);
			if (Geolocation.isSupported)
				departureGroup.addLayoutItem(_departureGPSButton);
			
			addChild(_departureLabel);
			addChild(departureGroup);
			addChild(_arrivalLabel);
			addChild(_arrivalTextInput);
		}
		
		private function initValidButton():void
		{
			var spacer:FeathersControl = new FeathersControl();
			_validButton = new Button();
			_errorLabel = new Label();
			
			spacer.height = this.dpiScale * 40;
			_validButton.label = "Rechercher un itinéraire";
			_validButton.nameList.add(Button.ALTERNATE_NAME_QUIET_BUTTON);
			_validButton.addEventListener(Event.TRIGGERED, validButton_clickHandler);
			
			addChild(spacer);
			addChild(_validButton);
		}
		
		private function searchItenerary():void
		{
			if (!_arrivalTextInput.text || (!_departureTextInput.text && !_currentLocation))
			{
				_errorLabel.text = "Tous les champs ne sont pas remplis";
				
				const callout:Callout = Callout.show(DisplayObject(_errorLabel), _validButton, Callout.DIRECTION_DOWN);
				
				callout.disposeContent = false;
				
				return;
			}
			
			var apiLoader:APILoader = new APILoader(APIData.API_ITINERARY_URL, URLRequestMethod.POST);
			
			if (_currentLocation)
			{
				apiLoader.addVariable("start_lat", _currentLocation.lat);
				apiLoader.addVariable("start_lng", _currentLocation.lng);
				turnOffGPS();
			}
			else
				apiLoader.addVariable("start_address", _departureTextInput.text);
			
			apiLoader.addVariable("end_address", _arrivalTextInput.text);
			apiLoader.addVariable("hour", _hourPicker.selectedItem.toString());
			apiLoader.addVariable("min", _minutePicker.selectedItem.toString());
			
			apiLoader.addErrorListener(apiLoader_errorHandler);
			apiLoader.load(itineraryComplete);
			
			addProgressBar();
		}
		
		private function turnOffGPS():void
		{
			if (_geolocation)
			{
				_geolocation.removeEventListener(GeolocationEvent.UPDATE, geolocation_updateHandler);
				_geolocation = null;
			}
		}
		
		private function addProgressBar():void
		{
			if (!_progressBar)
			{
				_progressBar = new ProgressBar();
				
				_progressBar.width = _validButton.width;
				_progressBar.alpha = 0;
				_progressBar.maximum = 100;
				_progressBar.value = 0;
				
				addChild(_progressBar);
			}
			TweenLite.to(_progressBar, 0.5, {alpha: 1, delay: 0.1, onComplete: function():void 
			{ 
				TweenLite.to(_progressBar, 5, {value: 80, ease: Sine.easeInOut});
			} });
			
		}
		
		/////////////////////////////////
		// Event Handler
		/////////////////////////////////
		
		private function closeButton_clickHandler(event:Event):void
		{
			if (PopUpManager.isPopUp(_popPupContainer))
				PopUpManager.removePopUp(_popPupContainer);
		}
		
		private function keyUp_handler(event:KeyboardEvent):void
		{
			if ((event.keyCode == Keyboard.BACK)
				&& PopUpManager.isPopUp(_resultContainer))
			{
				PopUpManager.removePopUp(_resultContainer, true);
				event.stopImmediatePropagation();
				event.stopPropagation();
			}
		}
		
		private function renderer_removeHandler(event:Event):void
		{
			turnOffGPS();
			stage.removeEventListener(KeyboardEvent.KEY_UP, keyUp_handler);
			
			removeEventListener(Event.REMOVED, renderer_removeHandler);
		}
		
		private function apiLoader_errorHandler(error:IOErrorEvent):void
		{
			_errorLabel.text = "Internet n'est pas activé";
			
			const callout:Callout = Callout.show(DisplayObject(_errorLabel), _validButton, Callout.DIRECTION_DOWN);

			callout.disposeContent = false;
		}
		
		private function processResulParser(data:*):void
		{
			var parser:ItineraryJSONParser = new ItineraryJSONParser();
			
			parser.parse(data);
			
			if (parser.error)
			{
				_errorLabel.text = parser.error;
				
				const callout:Callout = Callout.show(DisplayObject(_errorLabel), _validButton, Callout.DIRECTION_DOWN);
				callout.disposeContent = false;
				
				return;
			}
			
			if (!_popPupContainer)
			{
				_popPupContainer = new VGroup();
				
				_popPupContainer.width = this.width - (VerticalLayout(this.layout).paddingLeft * 2);
				_popPupContainer.height = this.height - (VerticalLayout(this.layout).paddingTop * 2);
				_popPupContainer.gap = 0;
			}
			
			if (!_titleContainer)
			{
				_titleContainer = new HGroup();
				
				_titleContainer.gap = 0;
				_titleContainer.setBackgroundColor(0xFFFFFF);
				_popPupContainer.addLayoutItem(_titleContainer);
			}
			
			if (!_itineraryTitleLabel)
			{
				_itineraryTitleLabel = new Label();
				
				_titleContainer.addLayoutItem(_itineraryTitleLabel, 100);
			}
			
			if (!_closeButton)
			{
				_closeButton = new Button();
				
				_closeButton.nameList.add(Button.ALTERNATE_NAME_CLOSE_BUTTON);
				_closeButton.label = "x";
				_closeButton.includeInLayout = false;
				
				_closeButton.addEventListener(Event.TRIGGERED, closeButton_clickHandler);
				_titleContainer.addLayoutItem(_closeButton);
			}
			
			
			if (!_resultContainer)
			{
				_resultContainer = new ScrollContainer();
				
				_resultContainer.hasElasticEdges = false;
				_resultContainer.horizontalScrollPolicy = Scroller.SCROLL_POLICY_OFF;
				
				_popPupContainer.addLayoutItem(_resultContainer, 100);
			}
			
			if (!_resultList)
			{
				_resultList = new GroupedList();
				_resultList.width = this.width - (VerticalLayout(this.layout).paddingLeft * 2);
				_resultList.nameList.add(GroupedList.ITINERARY_NAME_INSET_GROUPED_LIST);
				
				_resultList.isSelectable = false;
				
				_resultList.headerRendererProperties.contentLabelField = "text";
				_resultList.headerRendererProperties.contentSourceField = "icon";
				
				_resultList.hasElasticEdges = false;
				
				_resultContainer.addChild(_resultList);
			}
			
			_itineraryTitleLabel.text = _departureTextInput.text + " à " + _arrivalTextInput.text;
			_resultList.dataProvider = parser.dataProvider;
			
			PopUpManager.addPopUp(_popPupContainer);
		}
		
		private function itineraryComplete(data:*):void
		{
			if (_progressBar)
				TweenLite.to(_progressBar, 0.2, {value:100, onComplete:function():void {
				 processResulParser(data);
				 _progressBar.alpha = 0;
				 _progressBar.value = 0;
				} });
		}
		
		private function validButton_clickHandler(event:Event):void
		{
			searchItenerary();
		}
		
		protected function geolocation_updateHandler(event:GeolocationEvent):void
		{
			if (_currentLocation 
				&& (_currentLocation.lat == event.latitude)
				&& (_currentLocation.lng == event.longitude))
				turnOffGPS();
			
			_departureTextInput.prompt = "Ma position";
			_currentLocation = {lat:event.latitude.toString(), lng:event.longitude.toString()};
		}
		
		private function departureGPSButton_clickHandler(event:Event):void
		{
			if (!_geolocation)
				_geolocation = new Geolocation();
			
			if (_geolocation.muted)
			{
				_geolocation = null;

				const callout:Callout = Callout.show(DisplayObject(_unsupportedLabel), _departureGPSButton, Callout.DIRECTION_UP);
				callout.disposeContent = false;
				return;
			}
			else
				_geolocation.addEventListener(GeolocationEvent.UPDATE, geolocation_updateHandler);
				
			
			_departureTextInput.isEditable = false;
			_departureTextInput.prompt = "Recherche de position...";
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
			initTextInput();
			initHourPicker();
			initValidButton();
			initUnsupportedLabel();
			
			stage.addEventListener(KeyboardEvent.KEY_UP, keyUp_handler);
		}
		
	}
}