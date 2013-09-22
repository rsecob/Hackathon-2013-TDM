package view.bike
{
	import com.greensock.TweenLite;
	
	import core.APILoader;
	
	import data.APIData;
	
	import feathers.controls.Button;
	import feathers.controls.HGroup;
	import feathers.controls.Label;
	import feathers.controls.PanelScreen;
	import feathers.controls.ProgressBar;
	import feathers.controls.ScrollContainer;
	import feathers.controls.VGroup;
	import feathers.core.PopUpManager;
	import feathers.events.FeathersEventType;
	import feathers.layout.VerticalLayout;
	
	import flash.events.GeolocationEvent;
	import flash.events.IOErrorEvent;
	import flash.net.URLRequestMethod;
	import flash.sensors.Geolocation;
	import flash.utils.setTimeout;
	
	import starling.display.DisplayObject;
	import starling.display.Quad;
	import starling.events.Event;
	
	public class BikeView extends PanelScreen
	{
		/////////////////////////////////
		// Constructor
		/////////////////////////////////
		
		public function BikeView()
		{
			super();
			
			this.headerProperties.title = "Vélomagg'";
			
			addEventListener(FeathersEventType.INITIALIZE, initialize_handler);
		}
		
		/////////////////////////////////
		// Properties
		/////////////////////////////////
		
		private var _backButton:Button;
		
		private var _progressBar:ProgressBar;
		private var _label:Label;
		
		private var _geolocation:Geolocation;
		private var _currentLocation:Object;
		
		private var _popPupContainer:VGroup;
		private var _titleContainer:HGroup;
		private var _title:Label;
		private var _closeButton:Button;
		private var _resultContainer:ScrollContainer;
		
		/////////////////////////////////
		// Methods
		/////////////////////////////////
		
		private function initHeader():void
		{
			_backButton = new Button();
			
			_backButton.nameList.add(Button.ALTERNATE_NAME_BACK_BUTTON);
			_backButton.addEventListener(Event.TRIGGERED, backButton_clickHandler);
			
			this.headerProperties.leftItems = new <DisplayObject>
				[
					this._backButton
				];
		}
		
		private function initLayout():void
		{
			var verticalLayout:VerticalLayout = new VerticalLayout();
			
			verticalLayout.verticalAlign = VerticalLayout.VERTICAL_ALIGN_MIDDLE;
			verticalLayout.horizontalAlign = VerticalLayout.HORIZONTAL_ALIGN_CENTER;
			
			this.layout = verticalLayout;
		}
		
		private function initGeolocation():void
		{
			if (Geolocation.isSupported)
			{
				_geolocation = new Geolocation();
				
				if (_geolocation.muted)
					_label.text = "Le GPS n'est pas activé";
				else
				{
					_geolocation.addEventListener(GeolocationEvent.UPDATE, geolocation_updateHandler);
					TweenLite.to(_progressBar, 5, {value: 50});
				}
			}
			else
			{
//				removeChild(_progressBar);
				_currentLocation = {lat: 43.6078692, lng: 3.8736693};
				requestForBikeStation();
				_label.text = "Le GPS n'est pas supporté\nsur ce terminal";
			}
		}
		
		private function initProgressBar():void
		{
			_progressBar = new ProgressBar();
			
			_progressBar.maximum = 100;
			_progressBar.value = 0;
			
			_progressBar.width = this.width - (this.dpiScale * 10 * 2);
			
			TweenLite.to(_progressBar, 2, {value: 30});
			
			addChild(_progressBar);
		}	
		
		private function initLabel():void
		{
			_label = new Label();
			
			_label.text = "Géolocalisation en cours";
			
			addChild(_label);
		}
		
		private function requestForBikeStation():void
		{
			var apiLoader:APILoader = new APILoader(APIData.API_BIKE_URL, URLRequestMethod.GET);
			
			apiLoader.addVariable("lat", _currentLocation.lat);
			apiLoader.addVariable("lng", _currentLocation.lng);
			
			apiLoader.addErrorListener(apiLoader_errorHandler);
			apiLoader.load(apiLoader_complete);
			
			TweenLite.to(_progressBar, 5, {value: 80});
		}
		
		private function showResult(bikeStations:Array):void
		{
			if (!_popPupContainer)
			{
				_popPupContainer = new VGroup();
				
				_popPupContainer.width = this.width - (this.dpiScale * 10 * 2);
				_popPupContainer.height = this.height - (this.dpiScale * 10 * 2);
				_popPupContainer.paddingLeft = _popPupContainer.paddingRight = 0;
				_popPupContainer.gap = 0;
			}
			
			if (!_titleContainer)
			{
				_titleContainer = new HGroup();
				
				_titleContainer.setBackgroundColor(0xFFFFFF);
				_popPupContainer.addLayoutItem(_titleContainer);
			}
			
			if (!_title)
			{
				_title = new Label();
				
				_title.text = "Vélostations à proximité";
				
				_titleContainer.addLayoutItem(_title, 100);
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
				
				_resultContainer.backgroundSkin = new Quad(10, 10, 0xFFFFFF);
				
				var verticalLayout:VerticalLayout = new VerticalLayout();
				verticalLayout.paddingTop = verticalLayout.gap = this.dpiScale * 10;
				_resultContainer.layout = verticalLayout;
				
				_popPupContainer.addLayoutItem(_resultContainer, 100);
			}
			
			_resultContainer.removeChildren();
			
			for each (var station:BikeRenderer in bikeStations)
			{
				station.width = this.width - (this.dpiScale * 10 * 2);
				station.height = 67 * this.dpiScale * 3;
				station.invalidate();
				_resultContainer.addChild(station);
			}
			
			PopUpManager.addPopUp(_popPupContainer);
		}
		
		/////////////////////////////////
		// Event Handlers
		/////////////////////////////////
		
		private function closeButton_clickHandler(event:Event):void
		{
			if (PopUpManager.isPopUp(_popPupContainer))
				PopUpManager.removePopUp(_popPupContainer);
			dispatchEventWith("backHome", true);
		}
		
		private function apiLoader_errorHandler(error:IOErrorEvent):void
		{
			_label.text = "Un problème est survenue\nlors de la requête";
		}
		
		private function processParser(data:*):void
		{
			var bikeStations:Array = JSON.parse(data) as Array;
			
			if (bikeStations.length)
			{
				var stationBikes:Array = [];
				
				for each (var station:Object in bikeStations)
				{
					var stationInfo:Object = station.station;
					var bikeRenderer:BikeRenderer = new BikeRenderer();
					
					bikeRenderer.setTile(stationInfo.name + " à " + parseInt(station.distance).toString() + " m");
					bikeRenderer.setBikes(stationInfo.bikes_available + " vélos disponibles");
					bikeRenderer.setSlots(stationInfo.slots_available + " places libres");
					bikeRenderer.setCard(stationInfo.cb);
					
					stationBikes.push(bikeRenderer);
				}
				
				showResult(stationBikes);
			}
			else
				_label.text = "Aucune stations dans\nles alentours";
		}
		
		private function apiLoader_complete(data:*):void
		{
			TweenLite.to(_progressBar, 0.1, {value: 100, onComplete: function():void {
				processParser(data);
			} });
		}
		
		protected function geolocation_updateHandler(event:GeolocationEvent):void
		{
//			if (_currentLocation
//				&& (_currentLocation.lat == event.latitude)
//				&& (_currentLocation.lng == event.longitude))
//			{
//				_geolocation.removeEventListener(GeolocationEvent.UPDATE, geolocation_updateHandler);
//				_geolocation = null;
//			}
			
			_currentLocation = {lat: event.latitude, lng: event.longitude};
			_geolocation.removeEventListener(GeolocationEvent.UPDATE, geolocation_updateHandler);
			_geolocation = null;
			
			requestForBikeStation();
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
			initProgressBar();
			initLabel();
			initGeolocation();
		}
		
	}
}