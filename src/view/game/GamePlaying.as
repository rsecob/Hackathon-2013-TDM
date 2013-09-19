package view.game
{
	import com.gamua.flox.AuthenticationType;
	import com.gamua.flox.Flox;
	import com.gamua.flox.Player;
	
	import starling.display.Sprite;
	
	public class GamePlaying extends Sprite
	{
		private var game:Game;
		
		public function GamePlaying(game:Game)
		{
			super();
			this.game = game;
			this.login();
		}
		
		protected function login():void
		{
			if (Player.current.authType == AuthenticationType.GUEST)
			{
				// NOT LOGGED
				
				// get facebook key (using facebook api)
				var facebookKey:String = "test";
				Player.loginWithKey(facebookKey, function (player:Player):void {
					// no error
				},
				function (message:String):void {
					// error
				});
			}
			else
			{
				Player.current.refresh(function (player:Player):void {
					// COMPLETE
				}, function (message:String):void {
					// ERROR
				});
			}
		}
	}
}