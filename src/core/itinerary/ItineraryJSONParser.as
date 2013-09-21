package core.itinerary
{
	import feathers.data.EmbeddedAssets;
	import feathers.data.HierarchicalCollection;
	

	public class ItineraryJSONParser
	{
		/////////////////////////
		// Constructor
		/////////////////////////
		
		public function ItineraryJSONParser()
		{
			_dataProviderGenerator = new ItineraryDataProviderGenerator();
		}
		
		/////////////////////////
		// Properties
		/////////////////////////
		
		private static const CONNECTION:String = "Correspondance";
		private static const TRAMWAY:String = "Tramway";
		private static const WALK:String = "Trajet à pied";
		private static const BUS:String = "Bus";
		
		private var _dataProviderGenerator:ItineraryDataProviderGenerator;
		
		private static var iconArray:Array = [ EmbeddedAssets.LIGNE_1_ICON,
										   EmbeddedAssets.LIGNE_2_ICON,
										   EmbeddedAssets.LIGNE_3_ICON,
										   EmbeddedAssets.LIGNE_4_ICON,
										   EmbeddedAssets.LIGNE_6_ICON,
										   EmbeddedAssets.LIGNE_7_ICON,
										   EmbeddedAssets.LIGNE_8_ICON,
										   EmbeddedAssets.LIGNE_9_ICON,
										   EmbeddedAssets.LIGNE_10_ICON,
										   EmbeddedAssets.LIGNE_11_ICON,
										   EmbeddedAssets.LIGNE_12_ICON,
										   EmbeddedAssets.LIGNE_13_ICON,
										   EmbeddedAssets.LIGNE_14_ICON,
										   EmbeddedAssets.LIGNE_15_ICON,
										   EmbeddedAssets.LIGNE_16_ICON,
										   EmbeddedAssets.LIGNE_19_ICON ];
		
		public var error:String;

		/////////////////////////  
		// Methods
		/////////////////////////
		
		public function parse(data:*):void
		{
			var steps:Array = JSON.parse(data) as Array;
			
			if (steps.length == 0)
			{
				error = "Les adresses sont erronées";
				return;
			}
			
			for each (var step:Object in steps)
			{
				if (step.state == CONNECTION)
					addConnectionStep(step);
				else if (step.state == TRAMWAY)
					addTramwayStep(step);
				else if (step.state == WALK)
					addWalkStep(step);
				else if (step.state == BUS)
					addBusStep(step);
			}
		}
		
		public function get dataProvider():HierarchicalCollection
		{
			return _dataProviderGenerator.dataProvider;
		}
		
		private function addTramwayStep(step:Object):void
		{
			var group:Object = {};
			var header:Object = {};
			var children:Array = [];
			
			header.text = TRAMWAY + " - " + step.destination;
			header.icon = iconArray[parseInt(step.lineNumber) - 1];
			
			children.push(step.fromTime + " de " + step.fromAddress);
			children.push("Durée: " + step.time + " minutes");
			children.push(step.toTime + " à " + step.toAddress);
			
			group.header = header;
			group.children = children;
			
			_dataProviderGenerator.addGroup(group);
		}
		
		private function addConnectionStep(step:Object):void
		{
			var group:Object = {};
			var header:Object = {};
			var children:Array = [];
			
			header.text = CONNECTION
			header.icon = EmbeddedAssets.WALK_LOCATION_ICON;
			
			children.push(step.time + " minutes de marche");
			children.push("Attente: " + step.waitTime + " minutes");
			
			group.header = header;
			group.children = children;
			
			_dataProviderGenerator.addGroup(group);
		}

		private function addWalkStep(step:Object):void
		{
			var group:Object = {};
			var header:Object = {};
			var children:Array = [];
			
			header.text = WALK;
			header.icon = EmbeddedAssets.WALK_LOCATION_ICON;
			
			children.push(step.fromTime + " de " + step.fromAddress);
			children.push("Durée: " + step.time + " minutes");
			children.push(step.toTime + " à " + step.toAddress);
			
			group.header = header;
			group.children = children;
			
			_dataProviderGenerator.addGroup(group);
		}

		private function addBusStep(step:Object):void
		{
			var group:Object = {};
			var header:Object = {};
			var children:Array = [];
			
			header.text = BUS + " - " + step.destination;
			header.icon = iconArray[parseInt(step.lineNumber) - 1];
			
			children.push(step.fromTime + " de " + step.fromAddress);
			children.push("Durée: " + step.time + " minutes");
			children.push(step.toTime + " à " + step.toAddress);
			
			group.header = header;
			group.children = children;
			
			_dataProviderGenerator.addGroup(group);
		}

	}
}