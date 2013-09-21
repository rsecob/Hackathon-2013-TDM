package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne35Data
	{
		public function Ligne35Data()
		{
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Aube Rouge", id_1: "1042", lat: "43.6393914722445", lng: "3.92405602878819" },
					{ label: "Balestrier", id_1: "144", id_2: "146", lat: "43.6442698119465", lng: "3.90329490872889" },
					{ label: "Buissonnets", id_1: "147", id_2: "143", lat: "43.6454915517247", lng: "3.90707952701449" },
					{ label: "Castors", id_1: "1038", id_2: "129", lat: "43.6328473023183", lng: "3.90366225732107" },
					{ label: "Charles de Gaulle", id_1: "1036", id_2: "1025", lat: "43.6283939626101", lng: "3.89767377505847" },
					{ label: "Chemin de la Monnaie", id_1: "142", id_2: "148", lat: "43.6435700885897", lng: "3.9106290870478" },
					{ label: "Chênes", id_1: "138", id_2: "152", lat: "43.6390510445649", lng: "3.90919239078827" },
					{ label: "Cimetière", id_1: "155", lat: "43.6319913382807", lng: "3.89757408834865" },
					{ label: "Collège Frédéric Bazille", id_1: "1026", id_2: "1037", lat: "43.6343880157283", lng: "3.90652659408445" },
					{ label: "Décurions", id_1: "1030", id_2: "1041", lat: "43.6355832220519", lng: "3.90903499501526" },
					{ label: "Les Aires", id_1: "145", lat: "43.6424986996744", lng: "3.89956969227814" },
					{ label: "Mairie de Castelnau", id_1: "128", lat: "43.6330091116361", lng: "3.89744100806514" },
					{ label: "Mas de Rochet", id_1: "324", id_2: "325", lat: "43.6258568047784", lng: "3.90651483383368" },
					{ label: "Mûriers", id_1: "151", id_2: "139", lat: "43.64063332609", lng: "3.91166221718574" },
					{ label: "Palais des Sports", id_1: "1029", id_2: "1040", lat: "43.6451616185958", lng: "3.91739519500982" },
					{ label: "Pioch Pelat", id_1: "328", id_2: "323", lat: "43.6262280991301", lng: "3.9019831739828" },
					{ label: "Place de la Monnaie", id_1: "149", id_2: "141", lat: "43.6442859481212", lng: "3.91024029688153" },
					{ label: "Place du Forum", id_1: "131", id_2: "168", lat: "43.6446425690615", lng: "3.92399158449931" },
					{ label: "Roger Salengro", id_1: "127", lat: "43.6327652724875", lng: "3.89627090008932" },
					{ label: "Rose de France", id_1: "1039", id_2: "1028", lat: "43.6323743201682", lng: "3.90155756686936" },
					{ label: "Saint-Exupéry", id_1: "169", id_2: "130", lat: "43.6415804906079", lng: "3.92313894814253" },
					{ label: "Sapins", id_1: "136", id_2: "154", lat: "43.6370134771289", lng: "3.91021315998486" },
					{ label: "Sycomores", id_1: "140", id_2: "150", lat: "43.6418619609436", lng: "3.91063151180266" },
					{ label: "Thym", id_1: "137", id_2: "153", lat: "43.6379609688986", lng: "3.9062534877453" } ]);
			}
			
			return _data;
		}
	}
}