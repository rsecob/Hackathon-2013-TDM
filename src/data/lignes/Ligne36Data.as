package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne36Data
	{
		public function Ligne36Data()
		{
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Camp du Soleil", id_1: "1076", id_2: "1116", lat: "43.7493779054865", lng: "3.96058182813622" },
					{ label: "Cap Alpha", id_1: "722", id_2: "694", lat: "43.65983430634", lng: "3.90061402039391" },
					{ label: "Caylus", id_1: "1070", id_2: "1107", lat: "43.6449557975149", lng: "3.89812663588129" },
					{ label: "Charles de Gaulle", id_1: "1036", lat: "43.6283939626101", lng: "3.89767377505847" },
					{ label: "Château", id_1: "1074", id_2: "1111", lat: "43.6553496569895", lng: "3.89240572927259" },
					{ label: "Closerie des Guilhems", id_1: "686", id_2: "728", lat: "43.6343634402019", lng: "3.89516345473925" },
					{ label: "École", id_1: "1117", id_2: "1075", lat: "43.7498209872493", lng: "3.9562039062155" },
					{ label: "Église", id_1: "1108", lat: "43.7511733905913", lng: "3.95655241565616" },
					{ label: "Idate", id_1: "736", id_2: "710", lat: "43.6488365595246", lng: "3.89895085872176" },
					{ label: "Jean Jaurès", id_1: "727", id_2: "687", lat: "43.6411392613682", lng: "3.89346683288554" },
					{ label: "La Croisée", id_1: "733", id_2: "709", lat: "43.6601384274227", lng: "3.89698175311954" },
					{ label: "Les Mazes", id_1: "1114", id_2: "1077", lat: "43.7315233579094", lng: "3.98138662967919" },
					{ label: "Lotissement Les Lilas", id_1: "1109", id_2: "1071", lat: "43.7280561501543", lng: "3.96509482193248" },
					{ label: "Lotisssement Les Romarins", id_1: "1112", id_2: "1073", lat: "43.7296499431564", lng: "3.97031044900102" },
					{ label: "Mas de Bizard", id_1: "1115", id_2: "1078", lat: "43.7263208059979", lng: "3.98059185861098" },
					{ label: "Place de la Liberté", id_1: "685", id_2: "729", lat: "43.6331591707961", lng: "3.89576181914461" },
					{ label: "Route de Teyran", id_1: "1113", lat: "43.7337692455794", lng: "3.97913277092653" },
					{ label: "Stade", id_1: "1110", id_2: "1072", lat: "43.7334484808115", lng: "3.98012786237778" } ]);
			}
			
			return _data;
		}
	}
}