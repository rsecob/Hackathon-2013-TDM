package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne31Data
	{
		public function Ligne31Data()
		{
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Aqueduc", id_1: "1031", id_2: "1020", lat: "43.6791372143337", lng: "3.98659047719699" },
					{ label: "Avenue de Montpellier", id_1: "1034", id_2: "1022", lat: "43.6969862677226", lng: "4.03239721487862" },
					{ label: "Castelnau Zone d'Activités", id_1: "637", id_2: "605", lat: "43.6366542556443", lng: "3.92740863105548" },
					{ label: "Centre", id_1: "1019", id_2: "1032", lat: "43.6746838205825", lng: "3.9832536160787" },
					{ label: "Châtaigniers", id_1: "677", id_2: "652", lat: "43.6501659046634", lng: "3.95773473381412" },
					{ label: "Collège Les Pins", id_1: "1021", id_2: "1035", lat: "43.6841900674496", lng: "3.99070093321753" },
					{ label: "La Fontaine", id_1: "666", id_2: "684", lat: "43.6579005894523", lng: "3.96291988312431" },
					{ label: "Le Créant", id_1: "951", id_2: "957", lat: "43.727578524662", lng: "4.02857115833082" },
					{ label: "Le Crès", id_1: "650", lat: "43.6389738949026", lng: "3.93410813967641" },
					{ label: "Le Mas", id_1: "950", id_2: "956", lat: "43.7215943543633", lng: "4.03580684860891" },
					{ label: "Les Mazets", id_1: "946", id_2: "952", lat: "43.6990994048816", lng: "4.01853158104081" },
					{ label: "Les Mourguettes", id_1: "948", id_2: "954", lat: "43.6969011611902", lng: "4.02633528756693" },
					{ label: "Les Pérouses", id_1: "947", id_2: "953", lat: "43.698168401181", lng: "4.02405558801792" },
					{ label: "Mairie", id_1: "1024", id_2: "1033", lat: "43.7288603379361", lng: "4.02073625784956" },
					{ label: "Notre-Dame de Sablassou", id_1: "679", lat: "43.634744012537", lng: "3.9234193442594" },
					{ label: "Pointes", id_1: "636", lat: "43.63865085189", lng: "3.93284887834069" },
					{ label: "Poste", id_1: "949", id_2: "955", lat: "43.696589751137", lng: "4.0313073791286" },
					{ label: "Route de Nîmes", id_1: "651", id_2: "678", lat: "43.6416006644368", lng: "3.94250039302967" } ]);
			}
			
			return _data;
		}
	}
}