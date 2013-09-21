package view.time
{
	import com.greensock.TweenLite;
	import com.greensock.easing.Sine;
	
	import core.APILoader;
	import core.time.TimeJSONParser;
	
	import data.APIData;
	import data.LignesData;
	import data.lignes.*;
	
	import feathers.controls.Button;
	import feathers.controls.Callout;
	import feathers.controls.GroupedList;
	import feathers.controls.Label;
	import feathers.controls.PanelScreen;
	import feathers.controls.PickerList;
	import feathers.controls.ProgressBar;
	import feathers.controls.ScrollContainer;
	import feathers.data.HierarchicalCollection;
	import feathers.events.FeathersEventType;
	import feathers.layout.HorizontalLayout;
	import feathers.layout.VerticalLayout;
	
	import flash.events.IOErrorEvent;
	import flash.events.TimerEvent;
	import flash.net.URLRequestMethod;
	import flash.utils.Timer;
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
		private var _errorLabel:Label;
		private var _progessBar:ProgressBar;
		private var _refresh:Boolean;
		private var _timer:Timer;
		
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
			_stopPicker.selectedIndex = -1;

			_linePicker.width = _stopPicker.width = this.width - (this.dpiScale * 10 * 2);
			
			addChild(_linePicker);
		}
		
		private function addResultContainer(dataProvider:HierarchicalCollection):void
		{
			if (!_resultContainer)
			{
				_resultContainer = new ScrollContainer();
				var layout:HorizontalLayout = new HorizontalLayout();
				var background:Quad = new Quad(10, 10, 0x000000);
				
				layout.paddingLeft = layout.paddingBottom = layout.paddingTop = this.dpiScale * 10;
				_resultContainer.layout = layout;
				
				background.alpha = 0.3;
				_resultContainer.backgroundSkin = background;
				
				_resultContainer.width = this.width - (this.dpiScale * 10 * 2);
				_resultContainer.maxHeight = this.height - (_linePicker.height * 2) - ((this.dpiScale * 40)* 4) - this.header.height;
				_resultContainer.alpha = 0;
			}
			else
				hideResultContainer();
			
			if (!_resultList)
			{
				_resultList = new GroupedList();
				
				_resultList.isSelectable = false;
				_resultList.width = _resultContainer.width - (this.dpiScale * 10 * 2);
				
				_resultContainer.addChild(_resultList);
			}
			
			_resultContainer.alpha = 0;
			_resultList.dataProvider = dataProvider;

			TweenLite.to(_resultContainer, 0.3, {alpha: 1});

			addChild(_resultContainer);
		}
		
		Ligne1Data, Ligne2Data, Ligne3Data, Ligne4Data, Ligne6Data, Ligne7Data, Ligne8Data, Ligne9Data,
		Ligne10Data, Ligne11Data, Ligne12Data, Ligne13Data, Ligne14Data, Ligne15Data, Ligne16Data, Ligne17Data, Ligne18Data, Ligne19Data
		Ligne20Data, Ligne21Data, Ligne22Data, Ligne23Data, Ligne24Data, Ligne25Data, Ligne28Data, Ligne29Data,
		Ligne30Data, Ligne31Data, Ligne32Data, Ligne33Data, Ligne34Data, Ligne35Data, Ligne36Data, Ligne37Data, Ligne38Data, Ligne39Data
		Ligne41Data
		
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
			
			_stopPicker.addEventListener(Event.CHANGE, stopPicker_selectHandler);
		}
		
		private function requestForTime():void
		{
			var line:Object = _linePicker.selectedItem;
			var stop:Object = _stopPicker.selectedItem;
			var url:String = APIData.API_TIME_URL + line.value + "/" + stop.id_1 + (stop.id_2 ? ("/" + stop.id_2) : "");
			var apiLoader:APILoader = new APILoader(url, URLRequestMethod.GET);
			
			apiLoader.addErrorListener(loader_errorHandler);
			apiLoader.load(time_completeHandler);
			
			if (_resultContainer && contains(_resultContainer) && !_refresh)
				removeChild(_resultContainer);
			
			starTimer();
		}
		
		private function addProgressBar():void
		{
			if (!_progessBar)
			{
				_progessBar = new ProgressBar();
				
				_progessBar.maximum = 100;
				_progessBar.width = _stopPicker.width;
			}
			
			_progessBar.value = 0;
			
			TweenLite.to(_progessBar, 3, {value: 80});
			
			addChild(_progessBar);
		}
		
		private function hideProgressBar():void
		{
			if (_progessBar && contains(_progessBar))
				removeChild(_progessBar);
		}
		
		private function processParser(data:*):void
		{
			var parser:TimeJSONParser = new TimeJSONParser();
			
			parser.parse(data);
			
			if (parser.error)
			{
				if (!_errorLabel)
					_errorLabel = new Label();
				
				_errorLabel.text = parser.error;
				
				const callout:Callout = Callout.show(DisplayObject(_errorLabel), _stopPicker, Callout.DIRECTION_DOWN);
				
				callout.disposeContent = false;
				
				hideProgressBar();
				
				return;
			}
			
			addResultContainer(parser.dataProvider);
		}
		
		private function initTimer():void
		{
			_timer = new Timer(60000);
			
			_timer.addEventListener(TimerEvent.TIMER, timer_completeHandler);
		}
		
		private function starTimer():void
		{
			_refresh = true;
			_timer.start();
		}

		private function stopTimer():void
		{
			_refresh = true;
			_timer.stop();
		}
		
		private function hideResultContainer():void
		{
			if (_resultContainer && contains(_resultContainer))
				removeChild(_resultContainer);
		}
		
		/////////////////////////////////
		// Event Handlers
		/////////////////////////////////

		protected function timer_completeHandler(event:TimerEvent):void
		{
			if (_refresh)
				requestForTime();
		}
		
		private function loader_errorHandler(error:IOErrorEvent):void
		{
			if (!_errorLabel)
				_errorLabel = new Label();
			
			_errorLabel.text = "Internet n'est pas activé";
			
			const callout:Callout = Callout.show(DisplayObject(_errorLabel), _stopPicker, Callout.DIRECTION_DOWN);
			
			callout.disposeContent = false;
			
			hideProgressBar();
		}
		
		private function time_completeHandler(data:*):void
		{
			TweenLite.to(_progessBar, 0.1, {value:100, onComplete: function():void {
				processParser(data);
				hideProgressBar();
			} });
		}
		
		private function stopPicker_selectHandler(event:Event):void
		{
			stopTimer();
			requestForTime();
			hideResultContainer();
			addProgressBar();
		}
		
		private function linePicker_selectHandler(event:Event):void
		{
			stopTimer();
			_stopPicker.removeEventListener(Event.CHANGE, stopPicker_selectHandler);
			addStopPicker();
			hideResultContainer();
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
			initTimer();
		}
		
	}
}