package view.game
{
	import flash.events.Event;
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
		}
		
		public function launch():void
		{
			this.loadScenario();
			this.loadAssets();
		}
		
		protected function loadScenario() : void
		{
			loader = APIConnector.get("event", onCompleteScenario, onErrorScenario);
		}
		
		protected function loadAssets() : void
		{
			endAssets = true;
			this.throwCompleteEvent();
		}
		
		protected function onErrorScenario(e:flash.events.Event):void
		{
			var scenario:GameScenario = new GameScenario();
			scenario.place_from = "Corum";
			scenario.place_to = "Comédie";
			scenario.name = "Musée";
			scenario.line = 1;
			this.endScenario = true;
			game.scenario = scenario;
			this.throwCompleteEvent();
		}
		
		protected function onCompleteScenario(e:flash.events.Event):void
		{
			var scenario:GameScenario = new GameScenario();
			var data:String = (loader.data as String);
			var splited:Array = data.split(GameScenario.SEPARATOR);
			if (splited.length < 4)
			{
				// Error, base scenario.
				scenario.place_from = "Corum";
				scenario.place_to = "Comédie";
				scenario.line = 1;
				scenario.name = "Musée";
				this.endScenario = true;
				game.scenario = scenario;
				this.throwCompleteEvent();
				return ;
			}
			else
			{
				scenario.place_from = splited.shift() as String;
				scenario.place_to = splited.shift() as String;
				scenario.line = parseInt(splited.shift() as String);
				scenario.name = splited.shift() as String;
			}
			game.scenario = scenario;
			this.endScenario = true;
			this.throwCompleteEvent();
		}
		
		protected function throwCompleteEvent():void
		{
			if (endScenario && endAssets)
			{
				this.dispatchEvent(new starling.events.Event(COMPLETE_EVENT, true, false));
			}
		}
	}
}