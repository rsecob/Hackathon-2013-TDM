package signal
{
	import core.Signal;

	public class TimeSignal
	{
		public function TimeSignal()
		{
		}
		
		/////////////////////////
		// Properties
		/////////////////////////

		private static var _timeSignal:Signal;
		
		public static function get timeSignal():Signal
		{
			if (!_timeSignal)
				_timeSignal = new Signal();
			
			return _timeSignal;
		}
		
	}
}