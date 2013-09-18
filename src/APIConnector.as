package
{
	import flash.events.Event;
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
		
		public static function get(route:String, complete:Function):URLLoader
		{
			var urlLoader:URLLoader = new URLLoader();
			var urlRequest:URLRequest = new URLRequest(HOST + route);
			urlRequest.method = URLRequestMethod.GET;
			urlLoader.addEventListener(Event.COMPLETE, complete);
			urlLoader.load(urlRequest);
			return urlLoader;
		}
	}
}