package signal
{
	import core.Signal;

	public class HomeSignal
	{
		public function HomeSignal()
		{
		}
		
		/////////////////////////
		// Properties
		/////////////////////////
		
		private static var _listButtonSignal:Signal;
		
		public static function get listButtonSignal():Signal
		{
			if (!_listButtonSignal)
				_listButtonSignal = new Signal();
			
			return _listButtonSignal;
		}
		
		private static var _navigationSignal:Signal;
		
		public static function get navigationSignal():Signal
		{
			if (!_navigationSignal)
				_navigationSignal = new Signal();
			
			return _navigationSignal;
		}
		
	}
}