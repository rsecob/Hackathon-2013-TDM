package
{
	import flash.events.ErrorEvent;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;
	import flash.net.URLVariables;

	public class APIConnector
	{
		public static const HOST:String = "http://montpellier-api.fouilhe.fr/";
		
		public function APIConnector()
		{
		}
		
		public static function get(route:String, complete:Function, error:Function):URLLoader
		{
			var urlLoader:URLLoader = new URLLoader();
			var urlRequest:URLRequest = new URLRequest(HOST + route);
			urlRequest.method = URLRequestMethod.GET;
			urlLoader.addEventListener(IOErrorEvent.IO_ERROR, error);
			urlLoader.addEventListener(ErrorEvent.ERROR, error);
			urlLoader.addEventListener(Event.COMPLETE, complete);
			urlLoader.load(urlRequest);
			return urlLoader;
		}
	}
}