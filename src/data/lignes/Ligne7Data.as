////////////////////////////////////////////////////////////////////////////////
//
// Romain Boces - TamApp
// Copyright 2012 
// All Rights Reserved.
//
// NOTICE: I permit you to use, modify, and distribute this file
// in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

package data.lignes
{
	import feathers.data.EmbeddedAssets;
	import feathers.data.ListCollection;
	
	public class Ligne7Data
	{
		public function Ligne7Data()
		{
		}
		
		////////////////////////////////
		//
		// Properties
		//
		////////////////////////////////
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Anatole France", id_1: "44", lat: "43.6055685075168", lng: "3.8763779114993" },
					{ label: "Berthelot", id_1: "174", id_2: "199", lat: "43.6018471907335", lng: "3.86938737434033" },
					{ label: "Cervantès", id_1: "298", id_2: "251", lat: "43.62290426136", lng: "3.85448399409253" },
					{ label: "Château d'Ô", id_1: "304", id_2: "89", lat: "43.6312910042157", lng: "3.84294916203496" },
					{ label: "Cité Roger", id_1: "253", id_2: "296", lat: "43.6203876328334", lng: "3.85829025192189" },
					{ label: "Croix des Rosiers", id_1: "281", id_2: "268", lat: "43.6108871668368", lng: "3.83043491439047" },
					{ label: "Croix du Capitaine", id_1: "291", lat: "43.6020847950035", lng: "3.86657331709502" },
					{ label: "Doria", id_1: "293", lat: "43.612493581044", lng: "3.86792851848614" },
					{ label: "Étoile", id_1: "288", id_2: "261", lat: "43.6051452390963", lng: "3.8548039020248" },
					{ label: "Figairasse", id_1: "287", id_2: "262", lat: "43.6070477218546", lng: "3.85054923351732" },
					{ label: "Font Trouvé", id_1: "301", id_2: "249", lat: "43.627033836132", lng: "3.84782426104482" },
					{ label: "François Dezeuze", id_1: "263", id_2: "286", lat: "43.6086800917722", lng: "3.84566856385133" },
					{ label: "Gardioles", id_1: "299", id_2: "250", lat: "43.6247101114775", lng: "3.85199507880577" },
					{ label: "Gare Saint-Roch", id_1: "1", lat: "43.6049706716887", lng: "3.87921949262933" },
					{ label: "Gouara", id_1: "259", id_2: "290", lat: "43.6030643418636", lng: "3.86277705922043" },
					{ label: "Grèzes", id_1: "269", id_2: "280", lat: "43.60964016409", lng: "3.82764338704021" },
					{ label: "Gustave Eiffel", id_1: "267", id_2: "282", lat: "43.6092551368515", lng: "3.83274287185258" },
					{ label: "Hôtel du Département", id_1: "271", lat: "43.6220697534915", lng: "3.83502136043073" },
					{ label: "Jean Bart", id_1: "273", lat: "43.6255835516352", lng: "3.83769999140521" },
					{ label: "La Martelle", id_1: "270", id_2: "279", lat: "43.6073176935561", lng: "3.82656832293054" },
					{ label: "La Pile", id_1: "99", id_2: "74", lat: "43.6171433298036", lng: "3.8677809580574" },
					{ label: "La Source", id_1: "252", id_2: "297", lat: "43.6210466975256", lng: "3.85681050975855" },
					{ label: "Lepic", id_1: "258", lat: "43.6014070452941", lng: "3.86300493232419" },
					{ label: "Les Bouisses", id_1: "276", id_2: "277", lat: "43.5993251472128", lng: "3.83509284038327" },
					{ label: "Lycée Georges Clemenceau", id_1: "198", id_2: "175", lat: "43.6031371255808", lng: "3.87161156933615" },
					{ label: "Lycée Jean Monnet", id_1: "390", id_2: "306", lat: "43.623962547191", lng: "3.83466264657354" },
					{ label: "Lycée Jules Ferry", id_1: "264", id_2: "285", lat: "43.6087094176474", lng: "3.84098047379125" },
					{ label: "Maison des Sports", id_1: "75", id_2: "98", lat: "43.6184281957958", lng: "3.8646476966565" },
					{ label: "Martellière", id_1: "284", id_2: "265", lat: "43.6071737551704", lng: "3.83828019885106" },
					{ label: "Mas de Merle", id_1: "289", id_2: "260", lat: "43.6043506212434", lng: "3.85761569208972" },
					{ label: "Monsieur Teste", id_1: "283", id_2: "266", lat: "43.6069758571286", lng: "3.83634507709663" },
					{ label: "Muriers", id_1: "300", lat: "43.6262060519225", lng: "3.84916365966573" },
					{ label: "Myrtes", id_1: "257", lat: "43.6010747775961", lng: "3.86616279734264" },
					{ label: "Observatoire", id_1: "3", id_2: "51", lat: "43.6062629168428", lng: "3.87685436385639" },
					{ label: "Ormeaux", id_1: "308", id_2: "275", lat: "43.6030089090294", lng: "3.83328441537796" },
					{ label: "Peyrou", id_1: "52", id_2: "5", lat: "43.6109718648462", lng: "3.87190870595334" },
					{ label: "Pitot", id_1: "292", lat: "43.612090811667", lng: "3.87034272852489" },
					{ label: "Pléiade", id_1: "248", id_2: "302", lat: "43.6284835496651", lng: "3.84572158120133" },
					{ label: "Pous de la Sers", id_1: "76", id_2: "97", lat: "43.6191236326195", lng: "3.86186977958743" },
					{ label: "Rondelet", id_1: "197", lat: "43.6040889251336", lng: "3.87485354148993" },
					{ label: "Saint-Denis", id_1: "6", lat: "43.6050373963146", lng: "3.87453269224891" },
					{ label: "Saint-Guilhem", id_1: "53", id_2: "59", lat: "43.6088095883643", lng: "3.87287745165915" },
					{ label: "Saint-Jaumes", id_1: "101", lat: "43.6138232284326", lng: "3.87052534620828" },
					{ label: "Saint-Roch", id_1: "100", id_2: "73", lat: "43.6152299449984", lng: "3.86958564222392" },
					{ label: "Sophie Germain", id_1: "309", id_2: "274", lat: "43.6050729200871", lng: "3.8354910168735" } ]);
			}
			
			return _data;
		}
		
	}
}