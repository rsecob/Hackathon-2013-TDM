package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Rectangle;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	
	import starling.core.Starling;
	
	import view.MainView;
	
	public class TDM_V2 extends Sprite
	{
		private var _starling:Starling;
		
		public function TDM_V2()
		{
			super();
			
			if(this.stage)
			{
				this.stage.scaleMode = StageScaleMode.NO_SCALE;
				this.stage.align = StageAlign.TOP_LEFT;
				
				this.stage.addEventListener(Event.DEACTIVATE, stage_deactivateHandler, false, 0, true);
				this.stage.addEventListener(Event.RESIZE, stage_resizeHandler);
			}
			
			initStarling();
		}
		
		private function initStarling():void
		{
			Starling.handleLostContext = true;
			Starling.multitouchEnabled = true;
			
			_starling = new Starling(MainView, stage);
			_starling.start();
		}
		
		////////////////////////////////
		// Event Handler
		////////////////////////////////
		
		private function stage_resizeHandler(event:Event):void
		{
			this._starling.stage.stageWidth = this.stage.stageWidth;
			this._starling.stage.stageHeight = this.stage.stageHeight;
			
			const viewPort:Rectangle = this._starling.viewPort;
			viewPort.width = this.stage.stageWidth;
			viewPort.height = this.stage.stageHeight;
			try
			{
				this._starling.viewPort = viewPort;
			}
			catch(error:Error) {}
			//this._starling.showStatsAt(HAlign.LEFT, VAlign.BOTTOM);
		}
		
		private function stage_deactivateHandler(event:Event):void
		{
			this._starling.stop();
			this.stage.addEventListener(Event.ACTIVATE, stage_activateHandler, false, 0, true);
		}
		
		private function stage_activateHandler(event:Event):void
		{
			this.stage.removeEventListener(Event.ACTIVATE, stage_activateHandler);
			this._starling.start();
		}
		
	}
}