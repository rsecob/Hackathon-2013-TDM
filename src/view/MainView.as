package view
{
	import com.greensock.TweenLite;
	import com.greensock.easing.Ease;
	import com.greensock.easing.Sine;
	
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
	
	import starling.animation.Transitions;
	import starling.animation.Tween;
	import starling.core.Starling;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	
	import view.home.HomeView;
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
		
		
		private var _list:List;
		private var listTween:Tween;
		
		private var _container:ScrollContainer;
		private var _navigator:ScreenNavigator;
		private var _transitionManager:ScreenSlidingStackTransitionManager;
		
		private var lastTouch:Number;
		private var lastGlobaxX:Number;
		
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
			
			this._navigator = new ScreenNavigator();
			_navigator.clipContent = true;
			
			this._transitionManager = new ScreenSlidingStackTransitionManager(this._navigator);
			this._transitionManager.duration = 0.4;
			
			this._navigator.addScreen(TIME_VIEW, new ScreenNavigatorItem(TimeView,
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
						time: TIME_VIEW
					}));
				
				this._navigator.showScreen(HOME_VIEW);
				
				addChild(_list);
				addChild(this._navigator);
			}
			
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
				if (isNaN(lastGlobaxX))
				{
					if ((moving.globalX > (lastTouch + 20))
						|| (moving.globalX < (lastTouch - 20)))
						lastGlobaxX = moving.globalX;
				}
				else
				{
					var newPosition:Number = _navigator.x + (moving.globalX - lastGlobaxX);
					_navigator.isQuickHitAreaEnabled = true;
					if (newPosition >= _list.width)
						_navigator.x = _list.width;
					else if (newPosition <= 0)
						_navigator.x = 0;
					else
						_navigator.x = newPosition;
					lastGlobaxX = moving.globalX;
				}
			}
			if (end)
			{
				if (_navigator.x > (_list.width / 2))
					openList_handler(null);
				else
					closeList_handler(null);
				lastGlobaxX = NaN;
				lastGlobaxX = NaN;
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
			TweenLite.to(_navigator, 0.3, {x: _list.width, ease: Sine.easeOut});
			_navigator.isQuickHitAreaEnabled = false;
		}
		
		private function closeList_handler(event:Event):void
		{
			TweenLite.to(_navigator, 0.3, {x: 0, ease: Sine.easeOut});
			_navigator.isQuickHitAreaEnabled = false;
		}
		
		private function addedToStageHandler(event:Event):void
		{
			new MetalWorksMobileTheme();
			EmbeddedAssets.initialize();
			
			initView();
		}
	}
}