package core.time
{
	import feathers.data.EmbeddedAssets;
	import feathers.data.HierarchicalCollection;
	
	
	public class TimeJSONParser
	{
		/////////////////////////
		// Constructor
		/////////////////////////
		
		public function TimeJSONParser()
		{
			_dataProviderGenerator = new TimeDataProviderGenerator();
		}
		
		/////////////////////////
		// Properties
		/////////////////////////
		
		public var error:String;
		
		private var _dataProviderGenerator:TimeDataProviderGenerator;

		/////////////////////////  
		// Methods
		/////////////////////////
		
		public function parse(data:*):void
		{
			var times:Array = JSON.parse(data) as Array;
			var directionTime:Object = {};
			
			if (times.length == 0)
			{
				error = "Aucun horaire n'est disponible pour le moment";
				return;
			}
			
			for each (var time:Object in times)
			{
				if (!directionTime[time.location_destination_name])
					directionTime[time.location_destination_name] = [];
				directionTime[time.location_destination_name].push(time.time_left);
			}
			
			processDataProvider(directionTime);
		}
		
		public function get dataProvider():HierarchicalCollection
		{
			return _dataProviderGenerator.dataProvider;
		}
		
		private function processDataProvider(times:Object):void
		{
			for (var key:String in times)
			{
				var group:Object = {};
				var header:String;
				var children:Array = [];
				
				header = "Destination " + key;
				
				for each (var time:String in times[key])
				{
					if (time == "0")
						children.push("Départ proche");
					else
						children.push("Prochain passage: " + time + " min");
				}
				
				group.header = header;
				group.children = children;
				
				_dataProviderGenerator.addGroup(group);	
			}
		}
		
	}
}