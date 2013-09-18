package view.game
{
	public class GameScenario
	{
		public var place_to:String = "";
		public var place_from:String = "";
		public var line:int = 1;
		public var stops:Vector.<String> = null;
		
		public function GameScenario()
		{
			this.stops = new Vector.<String>();
		}
	}
}