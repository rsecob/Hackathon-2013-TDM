package view.game
{
	import flash.net.URLLoader;
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class GameLoading extends Sprite
	{
		public static const COMPLETE_EVENT:String = "COMPLETE_GAME_LOADING";
		
		private var game:Game;
		private var loader:URLLoader;
		
		protected var endScenario:Boolean = false;
		protected var endAssets:Boolean = false;
		
		public function GameLoading(game:Game)
		{
			super();
			this.game = game;
			
			this.loadScenario();
			this.loadAssets();
		}
		
		protected function loadScenario() : void
		{
			loader = APIConnector.get("game/scenario", onCompleteScenario);
		}
		
		protected function loadAssets() : void
		{
			endAssets = true;
			this.throwCompleteEvent();
		}
		
		protected function onCompleteScenario(e:Event):void
		{
			var scenario:GameScenario = new GameScenario();
			var data:String = (loader.data as String);
			var splited:Array = data.split(";!;");
			if (splited.length < 4)
			{
				// Error, base scenario.
				scenario.place_from = "Corum";
				scenario.place_to = "Comédie";
				scenario.stops.push("Corum", "Comédie");
				scenario.line = 1;
				return;
			}
			
			scenario.place_from = splited.shift() as String;
			scenario.place_to = splited.shift() as String;
			scenario.line = parseInt(splited.shift() as String);
			
			var stops:Array = (splited.shift() as String).split(",");
			
			for (var stop:String in stops)
			{
				scenario.stops.push(stop);
			}
			game.scenario = scenario;
			endScenario = true;
			this.throwCompleteEvent();
		}
		
		protected function throwCompleteEvent():void
		{
			if (endScenario && endAssets)
				this.dispatchEvent(new Event(COMPLETE_EVENT, true, false));
		}
	}
}