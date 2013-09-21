package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne34Data
	{
		public function Ligne34Data()
		{
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Beaulieu", id_1: "1090", id_2: "1056", lat: "43.5605984500155", lng: "3.72750063255586" },
					{ label: "Chanterelles", id_1: "1106", id_2: "1069", lat: "43.5601277083294", lng: "3.70805800842226" },
					{ label: "Coopérative Oléicole", id_1: "1051", id_2: "1095", lat: "43.5846567402591", lng: "3.75697350917955" },
					{ label: "Gaston Defferre", id_1: "1094", id_2: "1052", lat: "43.5842679652565", lng: "3.75303141989369" },
					{ label: "Hauts des Clavoux", id_1: "1066", id_2: "1080", lat: "43.5450120486861", lng: "3.70066412319656" },
					{ label: "Jean Jaurès", id_1: "1086", id_2: "1060", lat: "43.5583773544763", lng: "3.71210731688357" },
					{ label: "Jean Moulin", id_1: "1093", id_2: "1087", lat: "43.582527775852", lng: "3.75206086319454" },
					{ label: "La Bornière", id_1: "1091", id_2: "1055", lat: "43.5795461986944", lng: "3.75390361662581" },
					{ label: "La Regnague", id_1: "1067", id_2: "1105", lat: "43.6090104471808", lng: "3.79536170104508" },
					{ label: "La Vierge", id_1: "1081", id_2: "1065", lat: "43.5463345375864", lng: "3.70270998281787" },
					{ label: "Le Temple", id_1: "1097", id_2: "1049", lat: "43.5855517795002", lng: "3.76273377017373" },
					{ label: "Les Clavoux", id_1: "1079", lat: "43.543412362814", lng: "3.70063832772007" },
					{ label: "Les Grenaches", id_1: "1058", id_2: "1088", lat: "43.5531810203811", lng: "3.71850802737125" },
					{ label: "Lotissement Les Violettes", id_1: "1098", id_2: "1048", lat: "43.5876257034101", lng: "3.76633481783415" },
					{ label: "Mairie", id_1: "1083", id_2: "1063", lat: "43.5501298971527", lng: "3.70822607462144" },
					{ label: "Maison de Retraite", id_1: "1054", id_2: "1092", lat: "43.5812966310094", lng: "3.75065780671873" },
					{ label: "Médiathèque La Gare", id_1: "1050", lat: "43.5861447560049", lng: "3.76002792662739" },
					{ label: "Mosson", id_1: "839", lat: "43.6161290903821", lng: "3.81990628079244" },
					{ label: "Route de Saint-Georges", id_1: "832", id_2: "850", lat: "43.6127725432074", lng: "3.80896846839708" },
					{ label: "Square Tribes", id_1: "1096", lat: "43.5840095978677", lng: "3.75970269549395" },
					{ label: "Stade", id_1: "1104", id_2: "1068", lat: "43.6073598434165", lng: "3.78439576349506" },
					{ label: "Tambourin", id_1: "1082", id_2: "1064", lat: "43.5489970191935", lng: "3.70470148737255" },
					{ label: "Temple", id_1: "1085", id_2: "1059", lat: "43.5574499532228", lng: "3.71646052107232" },
					{ label: "Tournesol", id_1: "1062", id_2: "1084", lat: "43.5533843907895", lng: "3.70960186624772" } ]);
			}
			
			return _data;
		}
	}
}