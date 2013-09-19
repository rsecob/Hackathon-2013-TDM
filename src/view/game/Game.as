package view.game
{
	import com.gamua.flox.Flox;
	import com.gamua.flox.Player;
	
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.text.TextField;
	
	public class Game extends Sprite
	{
		public static const LOADING_STATE:int = 1;
		public static const PLAYING_STATE:int = 2;
		public static const SCORE_STATE:int = 3;
		
		protected var _state:int = 0;
		protected var _scene:Sprite = null;
		protected var _scenario:GameScenario = null;
		protected var _score:int = 0;
		
		public function set scenario(scenario:GameScenario):void
		{
			this._scenario = scenario;	
		}
		
		public function Game()
		{
			Flox.init("6bMjTGNEfCLGNA0p", "pfaXoM1llQNtzgjJ", "0.9");
			this.changeGameState(LOADING_STATE);
		}
		
		public function changeGameState(newState:int) : void
		{
			this._state = newState;
			if (this._scene != null)
				this.removeChild(this._scene);
			switch(newState)
			{
				case LOADING_STATE:
					this._scene = new GameLoading(this);
					this._scene.addEventListener(GameLoading.COMPLETE_EVENT, onLoadingComplete);
				break;
				case PLAYING_STATE:
					this._scene = new GamePlaying(this);
				break;
			}
			this.addChild(this._scene);
		}

		public function onLoadingComplete(e:Event):void
		{
			this.changeGameState(PLAYING_STATE);
		}
		
		protected function saveScore():void
		{
			Flox.postScore("tdm", this._score, (Player.current as FacebookPlayer).username);
		}
	}
}