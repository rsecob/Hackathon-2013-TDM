package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne39Data
	{
		public function Ligne39Data()
		{
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Bel Air", id_1: "705", lat: "43.6598640290202", lng: "3.92206214893719" },
					{ label: "Bibliothèque", id_1: "738", id_2: "713", lat: "43.6591399476986", lng: "3.91130611736235" },
					{ label: "C. Sylvains", id_1: "701", lat: "43.6562251601759", lng: "3.9145317504333" },
					{ label: "Chesnaie", id_1: "697", lat: "43.65886447893", lng: "3.92401563138875" },
					{ label: "Cimetière Jacou", id_1: "720", id_2: "696", lat: "43.6594498218847", lng: "3.90792175727016" },
					{ label: "Clos des Garrigues", id_1: "699", lat: "43.657710629139", lng: "3.91931532355401" },
					{ label: "Coeur de Ville", id_1: "719", lat: "43.6594373458094", lng: "3.91310984076791" },
					{ label: "Collège Pierre Mendès France", id_1: "730", id_2: "706", lat: "43.6671896690639", lng: "3.91229607463312" },
					{ label: "Écureuil", id_1: "711", id_2: "735", lat: "43.6628273031416", lng: "3.90997135454198" },
					{ label: "Grand Rue", id_1: "704", lat: "43.659305933294", lng: "3.91903760561673" },
					{ label: "Hélios", id_1: "717", lat: "43.6614662424084", lng: "3.91946900195475" },
					{ label: "Jacou", id_1: "707", id_2: "732", lat: "43.6547029283364", lng: "3.91288002848885" },
					{ label: "Jean Joubert", id_1: "1139", id_2: "1141", lat: "43.6672819548778", lng: "3.91460215683388" },
					{ label: "La Draye", id_1: "708", lat: "43.6688846015263", lng: "3.91751978013283" },
					{ label: "Lou Pradet", id_1: "716", lat: "43.6622564197652", lng: "3.92199238835" },
					{ label: "Lucien Lambert", id_1: "1140", id_2: "1142", lat: "43.6569490193857", lng: "3.91236008522556" },
					{ label: "Parc", id_1: "712", id_2: "734", lat: "43.6613120054266", lng: "3.90907513640856" },
					{ label: "Piscine", id_1: "714", lat: "43.6605751635585", lng: "3.92629218105293" },
					{ label: "Pont de la Draye", id_1: "715", lat: "43.6621879238232", lng: "3.92482631138698" },
					{ label: "Roland Garros", id_1: "700", lat: "43.6562866447651", lng: "3.91709656834973" },
					{ label: "Romarin", id_1: "702", lat: "43.6575127761607", lng: "3.91377486790987" },
					{ label: "Roveraie", id_1: "698", lat: "43.6583717358433", lng: "3.92205784533887" },
					{ label: "Thym", id_1: "703", lat: "43.6591524172321", lng: "3.91723783724737" },
					{ label: "Tournesol", id_1: "718", lat: "43.6603962469962", lng: "3.91578631038341" } ]);
			}
			
			return _data;
		}
	}
}