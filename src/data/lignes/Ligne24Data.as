package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne24Data
	{
		public function Ligne24Data()
		{
		}

		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Apothicaires", id_1: "87", id_2: "117", lat: "43.6416055356031", lng: "3.83493987782508" },
					{ label: "Avenue de Rome", id_1: "817", id_2: "793", lat: "43.643142009288", lng: "3.8239132876405" },
					{ label: "Caducée", id_1: "806", id_2: "822", lat: "43.6435606549666", lng: "3.83267627625175" },
					{ label: "Cave Coopérative", id_1: "797", id_2: "813", lat: "43.6472203757665", lng: "3.8003862504151" },
					{ label: "Centre", id_1: "812", id_2: "798", lat: "43.6473597766086", lng: "3.79871853501866" },
					{ label: "Croix de Lavit", id_1: "807", id_2: "823", lat: "43.6394858796913", lng: "3.83934045235758" },
					{ label: "Euromédecine", id_1: "805", id_2: "818", lat: "43.6396836365219", lng: "3.82829178211235" },
					{ label: "Galéra", id_1: "803", id_2: "820", lat: "43.6365896801354", lng: "3.83620694010024" },
					{ label: "Garriguettes", id_1: "796", id_2: "814", lat: "43.6464833470499", lng: "3.80369750373487" },
					{ label: "Gaston Planté", id_1: "808", id_2: "824", lat: "43.6465394490928", lng: "3.83114495623878" },
					{ label: "Genêts", id_1: "794", id_2: "816", lat: "43.6457980631527", lng: "3.8098077986378" },
					{ label: "L'Île Bleue", id_1: "802", id_2: "819", lat: "43.6483548367911", lng: "3.83183625328128" },
					{ label: "La Valsière", id_1: "801", lat: "43.6500911262756", lng: "3.83174554313606" },
					{ label: "Le Pradas", id_1: "809", lat: "43.6608543052475", lng: "3.79198122815254" },
					{ label: "Le Rio", id_1: "815", id_2: "795", lat: "43.646293636607", lng: "3.80774079373788" },
					{ label: "Les Terrasses", id_1: "810", id_2: "800", lat: "43.6545396142363", lng: "3.79026017134638" },
					{ label: "Malbosc", id_1: "821", id_2: "804", lat: "43.6346028309388", lng: "3.83361742383144" },
					{ label: "Source", id_1: "799", id_2: "811", lat: "43.6506648675661", lng: "3.79094148627572" } ]);
			}
			
			return _data;
		}
	}
}