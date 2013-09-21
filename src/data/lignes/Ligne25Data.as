package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne25Data
	{
		public function Ligne25Data()
		{
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Allée de l'Europe", id_1: "861", id_2: "840", lat: "43.6138082923281", lng: "3.81014582426996" },
					{ label: "Calade", id_1: "834", id_2: "848", lat: "43.6278396970131", lng: "3.79964199437042" },
					{ label: "Églantiers", id_1: "828", id_2: "854", lat: "43.6078746360328", lng: "3.81282582594312" },
					{ label: "Fontcaude", id_1: "860", id_2: "846", lat: "43.6323584230524", lng: "3.80186179826462" },
					{ label: "Grand Chêne", id_1: "837", id_2: "859", lat: "43.6199746369738", lng: "3.79758443747813" },
					{ label: "Hauts de Fontcaude", id_1: "836", id_2: "858", lat: "43.6321792623191", lng: "3.79849075719746" },
					{ label: "Hôtel de Ville", id_1: "862", id_2: "841", lat: "43.6138753818252", lng: "3.80521085255219" },
					{ label: "La Bergerie", id_1: "866", id_2: "845", lat: "43.6169941709535", lng: "3.79661732551847" },
					{ label: "La Plaine", id_1: "826", id_2: "856", lat: "43.6117081690363", lng: "3.81450853831305" },
					{ label: "Le Labournas", id_1: "863", id_2: "842", lat: "43.6144221578344", lng: "3.80068409529937" },
					{ label: "Le Martinet", id_1: "838", lat: "43.6340837136982", lng: "3.80324279009331" },
					{ label: "Les Thermes", id_1: "844", id_2: "865", lat: "43.6218554922438", lng: "3.80009505232772" },
					{ label: "Luminaire", id_1: "829", id_2: "853", lat: "43.6079914784399", lng: "3.81084941715938" },
					{ label: "Marjories", id_1: "852", id_2: "830", lat: "43.6097049465149", lng: "3.80714498398612" },
					{ label: "Mélanie", id_1: "847", id_2: "835", lat: "43.6307630664802", lng: "3.79818222493652" },
					{ label: "Mosson", id_1: "839", lat: "43.6161290903821", lng: "3.81990628079244" },
					{ label: "Récantou", id_1: "825", id_2: "857", lat: "43.6130768596766", lng: "3.81565747742886" },
					{ label: "Rivière", id_1: "855", id_2: "827", lat: "43.609570153063", lng: "3.81571514801705" },
					{ label: "Route de Saint-Georges", id_1: "850", id_2: "832", lat: "43.6128366258617", lng: "3.8088835128565" },
					{ label: "Terres du Sud", id_1: "864", id_2: "843", lat: "43.6185412453029", lng: "3.79188063779574" },
					{ label: "Valat de la Fosse", id_1: "831", id_2: "851", lat: "43.610526571974", lng: "3.80555777966357" },
					{ label: "Village", id_1: "833", id_2: "849", lat: "43.6247859622184", lng: "3.79944001776514" } ]);
			}
			
			return _data;
		}
	}
}