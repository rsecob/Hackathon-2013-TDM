package core
{
	public class Signal
	{
		public function Signal()
		{
			_list = new Vector.<Function>;
		}
		
		///////////////////////////
		// Properties
		///////////////////////////

		private var _list:Vector.<Function>;
		
		private function isExist(callback:Function):Boolean
		{
			for (var i:int = 0; i < _list.length; i++)
			{
				if (_list[i] == callback)
					return true;
			}
			
			return false;
		}
		
		public function add(callback:Function):void
		{
			if (!isExist(callback))
				_list.push(callback);
		}
		
		public function remove(callback:Function):void
		{
			for (var i:int = 0; i < _list.length; i++)
			{
				if (_list[i] == callback)
					_list.splice(i, 1);
			}
		}
		
		public function dispacth(value:Object):void
		{
			for each (var callback:Function in _list)
			{
				callback(value);
			}
		}
	}
}