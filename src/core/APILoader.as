package core
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLRequestHeader;
	import flash.net.URLRequestMethod;
	import flash.net.URLVariables;

	public class APILoader
	{
		/////////////////////////
		// Constructor
		/////////////////////////

		public function APILoader(url:String, method:String)
		{
			_loader = new URLLoader();
			_request = new URLRequest(url);
			_variable = new URLVariables();
			
			_request.method = method;
			_request.data = _variable;
			
			_loader.addEventListener(Event.COMPLETE, loader_completeHandler);
		}
		
		/////////////////////////
		// Properties
		/////////////////////////
		
		private var _loader:URLLoader;
		private var _request:URLRequest;
		private var _variable:URLVariables;
		private var _requestHeader:URLRequestHeader;
		private var _callback:Function;
		
		/////////////////////////
		// Methods
		/////////////////////////
		
		public function addVariable(key:String, value:String):void
		{
			_variable[key] = value;	
		}
		
		public function load(callback:Function):void
		{
			_callback = callback;
			_loader.load(_request);
		}
		
		public function addErrorListener(callback:Function):void
		{
			_loader.addEventListener(IOErrorEvent.IO_ERROR, callback);
		}
		
		
		/////////////////////////
		// Event Handler
		/////////////////////////
		
		protected function loader_completeHandler(event:Event):void
		{
			_callback(_loader.data);
			_loader.willTrigger(IOErrorEvent.IO_ERROR);
			_loader.willTrigger(Event.COMPLETE);
		}
	}
}