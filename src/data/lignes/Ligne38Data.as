package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne38Data
	{
		public function Ligne38Data()
		{
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Ancienne Gare", id_1: "1125", id_2: "1135", lat: "43.5892099567357", lng: "3.80111413147178" },
					{ label: "Beaulieu", id_1: "1090", id_2: "1056", lat: "43.5605984500155", lng: "3.72750063255586" },
					{ label: "Berthelot", id_1: "199", id_2: "174", lat: "43.6021286154052", lng: "3.86982788605477" },
					{ label: "Chanterelles", id_1: "1069", id_2: "1106", lat: "43.5601277083294", lng: "3.70805800842226" },
					{ label: "Chasseurs", id_1: "159", id_2: "123", lat: "43.6033074525232", lng: "3.85636323597415" },
					{ label: "Cité Valette", id_1: "161", id_2: "121", lat: "43.6015451751709", lng: "3.85190021372498" },
					{ label: "Coopérative Oléicole", id_1: "1051", id_2: "1095", lat: "43.5846567402591", lng: "3.75697350917955" },
					{ label: "Croix du Capitaine", id_1: "291", lat: "43.6020847950035", lng: "3.86657331709502" },
					{ label: "Distillerie", id_1: "1047", id_2: "1099", lat: "43.5855686578199", lng: "3.7669016793678" },
					{ label: "Gaston Defferre", id_1: "1052", id_2: "1094", lat: "43.5842254619923", lng: "3.7528448748962" },
					{ label: "Georges Danton", id_1: "162", id_2: "120", lat: "43.5994607952854", lng: "3.84280269517864" },
					{ label: "Gouara", id_1: "259", id_2: "290", lat: "43.6030643418636", lng: "3.86277705922043" },
					{ label: "Hauts des Clavoux", id_1: "1080", id_2: "1066", lat: "43.5449575083002", lng: "3.70071225225095" },
					{ label: "Jean Jaurès", id_1: "1060", id_2: "1086", lat: "43.5583773544763", lng: "3.71210731688357" },
					{ label: "Jean Moulin", id_1: "1093", id_2: "1087", lat: "43.582527775852", lng: "3.75206086319454" },
					{ label: "La Bornière", id_1: "1055", id_2: "1091", lat: "43.5796402726444", lng: "3.75358445624969" },
					{ label: "La Capoulière", id_1: "1121", id_2: "1131", lat: "43.5861106363036", lng: "3.8089122757797" },
					{ label: "La Croix", id_1: "1132", id_2: "1122", lat: "43.5849712648", lng: "3.80742368471963" },
					{ label: "La Vierge", id_1: "1065", id_2: "1081", lat: "43.546415412798", lng: "3.70271191468994" },
					{ label: "Le Temple", id_1: "1049", id_2: "1097", lat: "43.5855110856342", lng: "3.76241122794081" },
					{ label: "Le Terral", id_1: "1120", id_2: "1130", lat: "43.5925880733468", lng: "3.82822500224462" },
					{ label: "Lepic", id_1: "258", lat: "43.6014070452941", lng: "3.86300493232419" },
					{ label: "Les Bouisses", id_1: "1129", id_2: "400", lat: "43.5962954719026", lng: "3.83705426560027" },
					{ label: "Les Clavoux", id_1: "1079", lat: "43.543412362814", lng: "3.70063832772007" },
					{ label: "Les Grenaches", id_1: "1088", id_2: "1058", lat: "43.5530523867546", lng: "3.71802290732636" },
					{ label: "Les Roses", id_1: "122", id_2: "160", lat: "43.6025606787905", lng: "3.85448781446999" },
					{ label: "Les Serres", id_1: "1123", id_2: "1133", lat: "43.5855519880196", lng: "3.80371629934474" },
					{ label: "Lotissement Les Violettes", id_1: "1098", id_2: "1048", lat: "43.5876257034101", lng: "3.76633481783415" },
					{ label: "Lycée Georges Clemenceau", id_1: "175", id_2: "198", lat: "43.6030474392888", lng: "3.87159678912742" },
					{ label: "Mairie", id_1: "1063", id_2: "1083", lat: "43.5500419167379", lng: "3.70807566133269" },
					{ label: "Maison de Retraite", id_1: "1092", id_2: "1054", lat: "43.5814325565664", lng: "3.75057461109793" },
					{ label: "Mas de Lépôt", id_1: "1126", id_2: "1136", lat: "43.5868003219458", lng: "3.79849245408404" },
					{ label: "Mas la Farouch", id_1: "1134", id_2: "1124", lat: "43.587025185705", lng: "3.80246796560446" },
					{ label: "Médiathèque La Gare", id_1: "1050", lat: "43.5861447560049", lng: "3.76002792662739" },
					{ label: "Myrtes", id_1: "257", lat: "43.6010747775961", lng: "3.86616279734264" },
					{ label: "Paul Fajon", id_1: "1128", id_2: "1138", lat: "43.5963502466104", lng: "3.83699385906782" },
					{ label: "Rondelet", id_1: "197", lat: "43.6040889251336", lng: "3.87485354148993" },
					{ label: "Saint-Denis", id_1: "6", lat: "43.6050373963146", lng: "3.87453269224891" },
					{ label: "Saint-Martin de Vignogoul", id_1: "1137", id_2: "1127", lat: "43.5856066094873", lng: "3.78968168579836" },
					{ label: "Square Tribes", id_1: "1096", lat: "43.5840095978677", lng: "3.75970269549395" },
					{ label: "Stade", id_1: "1057", id_2: "1089", lat: "43.5559327018239", lng: "3.72193642009621" },
					{ label: "Tambourin", id_1: "1082", id_2: "1064", lat: "43.5489970191935", lng: "3.70470148737255" },
					{ label: "Temple", id_1: "1085", id_2: "1059", lat: "43.5574499532228", lng: "3.71646052107232" },
					{ label: "Tournesol", id_1: "1084", id_2: "1062", lat: "43.5534080535972", lng: "3.70986198015807" } ]);
			}
			
			return _data;
		}
	}
}