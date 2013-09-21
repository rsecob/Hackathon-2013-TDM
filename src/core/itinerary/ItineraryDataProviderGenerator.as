package core.itinerary
{
	import feathers.data.HierarchicalCollection;

	public class ItineraryDataProviderGenerator
	{
		/////////////////////////
		// Constructor
		/////////////////////////
		
		public function ItineraryDataProviderGenerator()
		{
			_dataProvider = new HierarchicalCollection();
			_groupArray = new Array();
			
			_dataProvider.data = _groupArray;
		}
		
		/////////////////////////
		// Properties
		/////////////////////////
		
		private var _dataProvider:HierarchicalCollection;
		private var _groupArray:Array;
		
		/////////////////////////
		// Methods
		/////////////////////////
		
		public function addGroup(group:Object):void
		{
			_groupArray.push(group);
		}
		
		public function get dataProvider():HierarchicalCollection
		{
			return _dataProvider;
		}
	}
}