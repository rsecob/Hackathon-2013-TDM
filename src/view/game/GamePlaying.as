package view.game
{
	import starling.display.Sprite;
	
	public class GamePlaying extends Sprite
	{
		private var game:Game;
		
		public function GamePlaying(game:Game)
		{
			super();
			this.game = game;
		}
	}
}