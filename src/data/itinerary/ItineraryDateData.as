package data.itinerary
{
	import feathers.data.ListCollection;

	public class ItineraryDateData
	{
		public function ItineraryDateData()
		{
		}
		
		private static var _hourData:ListCollection;
		
		public static function get hourData():ListCollection
		{
			if (!_hourData)
				_hourData = new ListCollection(["00", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"]);
			
			return _hourData;
		}
		
		private static var _minuteData:ListCollection;
		
		public static function get minuteData():ListCollection
		{
			if (!_minuteData)
				_minuteData = new ListCollection(["00", "05", "10", "15", "20", "25", "30", "35", "40", "45", "50", "55"]);
			return _minuteData;
		}
		
		private static var _timeMode:ListCollection;
		
		public static function get timeMode():ListCollection
		{
			if (!_timeMode)
				_timeMode = new ListCollection([ {text: "Départ à", value: "departure" },
												 {text: "Arrivée à", value: "arrival" } ]);
			return _timeMode;
		}
	}
}