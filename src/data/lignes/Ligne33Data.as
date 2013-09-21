package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne33Data
	{
		public function Ligne33Data()
		{
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Aires", id_1: "1004", id_2: "1017", lat: "43.5725624228348", lng: "3.77291879372873" },
					{ label: "Albinoni", id_1: "995", id_2: "1010", lat: "43.5581350418709", lng: "3.7863754578992" },
					{ label: "Barils", id_1: "1003", id_2: "1016", lat: "43.5718374540171", lng: "3.77335802701292" },
					{ label: "École La Gardiole", id_1: "997", id_2: "1008", lat: "43.5575574830218", lng: "3.78251671986047" },
					{ label: "Jeu de Ballon", id_1: "998", id_2: "1007", lat: "43.5521875462385", lng: "3.77604063951607" },
					{ label: "La Gardiole", id_1: "1044", id_2: "1102", lat: "43.5686981529021", lng: "3.77080656778746" },
					{ label: "La Vialette", id_1: "1103", id_2: "1043", lat: "43.5685474871876", lng: "3.77402947139574" },
					{ label: "Le Hameau", id_1: "1000", lat: "43.5470266703408", lng: "3.77342675546985" },
					{ label: "Les Cévennes", id_1: "1046", id_2: "1100", lat: "43.5726848958849", lng: "3.77114150315777" },
					{ label: "Les Combes", id_1: "1101", id_2: "1045", lat: "43.5706630818798", lng: "3.76905083486401" },
					{ label: "Les Cousses", id_1: "994", id_2: "1011", lat: "43.5578534581975", lng: "3.78994050392317" },
					{ label: "Les Écoles", id_1: "999", id_2: "1006", lat: "43.549484104441", lng: "3.77722081493698" },
					{ label: "Les Hauts", id_1: "1012", id_2: "993", lat: "43.5584324085762", lng: "3.79434324761215" },
					{ label: "Lou Paillas", id_1: "991", lat: "43.5455589484766", lng: "3.77429200017013" },
					{ label: "Lycée Georges Clemenceau", id_1: "175", lat: "43.6030474392888", lng: "3.87159678912742" },
					{ label: "Mairie", id_1: "1002", id_2: "1015", lat: "43.5707553368914", lng: "3.77361518454242" },
					{ label: "Paix", id_1: "1014", id_2: "1001", lat: "43.5552481161988", lng: "3.77841662911049" },
					{ label: "Pascaou", id_1: "1005", id_2: "1018", lat: "43.567961629119", lng: "3.77347078403275" },
					{ label: "Roudères", id_1: "639", id_2: "603", lat: "43.5749369057723", lng: "3.82532861711332" },
					{ label: "Rouget de Lisle", id_1: "1009", id_2: "996", lat: "43.5569121446524", lng: "3.78439152458627" },
					{ label: "Saint-Hubéry", id_1: "640", id_2: "602", lat: "43.5736479564764", lng: "3.81969414534803" },
					{ label: "Saint-Jean de Védas Centre", id_1: "620", lat: "43.5747502037232", lng: "3.83039310776656" },
					{ label: "Sigaliès", id_1: "992", id_2: "1013", lat: "43.5721256175153", lng: "3.81467208646346" } ]);
			}
			
			return _data;
		}
	}
}