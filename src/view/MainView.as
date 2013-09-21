package view
{
	import com.greensock.TweenLite;
	import com.greensock.easing.Ease;
	import com.greensock.easing.Sine;
	
	import core.Signal;
	
	import feathers.controls.PanelScreen;
	import feathers.controls.ScreenNavigator;
	import feathers.controls.ScreenNavigatorItem;
	import feathers.controls.ScrollContainer;
	import feathers.controls.Scroller;
	import feathers.data.EmbeddedAssets;
	import feathers.layout.HorizontalLayout;
	import feathers.motion.transitions.ScreenSlidingStackTransitionManager;
	import feathers.system.DeviceCapabilities;
	import feathers.themes.MetalWorksMobileTheme;
	
	import flash.utils.setTimeout;
	
	import signal.HomeSignal;
	
	import starling.animation.Transitions;
	import starling.animation.Tween;
	import starling.core.Starling;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	
	import view.home.HomeView;
	import view.itinerary.ItineraryView;
	import view.list.List;
	import view.time.TimeView;
	
	public class MainView extends Sprite
	{
		///////////////////////////
		// Constructor
		///////////////////////////
		
		public function MainView()
		{
			super();
			
			addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
			addEventListener(TouchEvent.TOUCH, touchEvent_handler);
		}
		
		///////////////////////////
		// Properties
		///////////////////////////
		
		private static const HOME_VIEW:String = "homeView";
		private static const TIME_VIEW:String = "timeView";
		private static const ITINERARY_VIEW:String = "itineraryView";
		
		private var _list:List;
		private var listTween:Tween;
		
		private var _container:ScrollContainer;
		private var _navigator:ScreenNavigator;
		private var _transitionManager:ScreenSlidingStackTransitionManager;
		
		private var lastTouch:Number;
		private var lastGlobalX:Number;
		
		// List Signal
		
		private var _listOpenSignal:Signal;
		
		///////////////////////////
		// Methods
		///////////////////////////
		
		private function initView():void
		{
//			var test:HomeView = new HomeView();
//			
//			test.width = stage.stageWidth;
//			test.height = stage.stageHeight;
//
//			addChild(test);
			
			this._list = new List();
			this.listTween = new Tween(this._list, 2, Transitions.EASE_IN);
			
			_listOpenSignal = HomeSignal.listButtonSignal;
			_listOpenSignal.add(listButton_handler);
			
			this._navigator = new ScreenNavigator();
			_navigator.clipContent = true;
			
			this._transitionManager = new ScreenSlidingStackTransitionManager(this._navigator);
			this._transitionManager.duration = 0.4;
			
			this._navigator.addScreen(TIME_VIEW, new ScreenNavigatorItem(TimeView,
				{
					backHome: HOME_VIEW
				}));
			
			this._navigator.addScreen(ITINERARY_VIEW, new ScreenNavigatorItem(ItineraryView,
				{
					backHome: HOME_VIEW
				}));
			
			if(DeviceCapabilities.isTablet(Starling.current.nativeStage))
			{
			}
			else
			{
				this._navigator.addScreen(HOME_VIEW, new ScreenNavigatorItem(HomeView,
					{
						time: TIME_VIEW,
						itinerary: ITINERARY_VIEW
					}));
				
				this._navigator.showScreen(HOME_VIEW);
				
				addChild(_list);
				addChild(this._navigator);
			}
			
		}
		
		private function listButton_handler(isSelected:Boolean):void
		{
			if (isSelected)
				openList_handler(null);
			else
				closeList_handler(null);
		}
		
		private function handleList(touchEvent:TouchEvent):void
		{
			var begin:Touch = touchEvent.getTouch(this, TouchPhase.BEGAN);
			var moving:Touch = touchEvent.getTouch(this, TouchPhase.MOVED);
			var end:Touch = touchEvent.getTouch(this, TouchPhase.ENDED);

			if (begin)
				lastTouch = begin.globalX;
			if (moving)
			{
				if (isNaN(lastGlobalX))
				{
					if ((moving.globalX > (lastTouch + (80 * MetalWorksMobileTheme.DPI_SCALE)))
						|| (moving.globalX < (lastTouch - (80 * MetalWorksMobileTheme.DPI_SCALE))))
						lastGlobalX = moving.globalX;
				}
				else
				{
					var newPosition:Number = _navigator.x + (moving.globalX - lastGlobalX);
					_navigator.isQuickHitAreaEnabled = true;
					if (newPosition >= _list.width)
						_navigator.x = _list.width;
					else if (newPosition <= 0)
						_navigator.x = 0;
					else
						_navigator.x = newPosition;
					lastGlobalX = moving.globalX;
				}
			}
			if (end && !isNaN(lastGlobalX))
			{
				if (_navigator.x > (_list.width / 2))
					_listOpenSignal.dispacth(true);
				else
					_listOpenSignal.dispacth(false);
				lastGlobalX = NaN;
				lastGlobalX = NaN;
			}
		}
		
		///////////////////////////
		// Event Handler
		///////////////////////////
		
		private function touchEvent_handler(event:TouchEvent):void
		{
			handleList(event);
		}
		
		private function openList_handler(event:Event):void
		{
			if (_navigator)
			{
				TweenLite.to(_navigator, 0.3, {x: _list.width, ease: Sine.easeOut});
				_navigator.isQuickHitAreaEnabled = false;
			}
		}
		
		private function closeList_handler(event:Event):void
		{
			if (_navigator)
			{
				TweenLite.to(_navigator, 0.3, {x: 0, ease: Sine.easeOut});
				_navigator.isQuickHitAreaEnabled = false;
			}
		}
		
		private function addedToStageHandler(event:Event):void
		{
			new MetalWorksMobileTheme();
			EmbeddedAssets.initialize();
			
			initView();
		}
	}
}