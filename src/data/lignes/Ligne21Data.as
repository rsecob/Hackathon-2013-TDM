package data.lignes
{
	import feathers.data.ListCollection;
	
	public class Ligne21Data
	{
		public function Ligne21Data()
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
				_data = new ListCollection([ { label: "Albert Dubout", id_1: "663", id_2: "681", lat: "43.6623881859945", lng: "3.97475036374498" },
					{ label: "Arènes", id_1: "655", id_2: "674", lat: "43.6551376783468", lng: "3.96729872674345" },
					{ label: "Castelnau Zone d'Activités", id_1: "637", id_2: "605", lat: "43.6366542556443", lng: "3.92740863105548" },
					{ label: "Châtaigniers", id_1: "652", id_2: "677", lat: "43.6509331536916", lng: "3.95932893397192" },
					{ label: "Corum", id_1: "133", lat: "43.6144112236254", lng: "3.8822707505569" },
					{ label: "Devèzes", id_1: "658", id_2: "670", lat: "43.662771894874", lng: "3.97017937002017" },
					{ label: "Écoles", id_1: "672", lat: "43.6586958890196", lng: "3.96742515214175" },
					{ label: "Frédéric Mistral", id_1: "669", id_2: "659", lat: "43.6642826188085", lng: "3.97372732109733" },
					{ label: "Gustave Courbet", id_1: "661", id_2: "667", lat: "43.6583862630538", lng: "3.97602238567216" },
					{ label: "Jean Mermoz", id_1: "126", lat: "43.6126025565135", lng: "3.88929896484559" },
					{ label: "La Fontaine", id_1: "666", id_2: "684", lat: "43.6579005894523", lng: "3.96291988312431" },
					{ label: "Le Crès", id_1: "650", lat: "43.6389738949026", lng: "3.93410813967641" },
					{ label: "Monnaie", id_1: "671", id_2: "657", lat: "43.6603388354783", lng: "3.96996113263219" },
					{ label: "Notre-Dame de Sablassou", id_1: "679", id_2: "680", lat: "43.634744012537", lng: "3.9234193442594" },
					{ label: "Parc Gouneaud", id_1: "675", id_2: "654", lat: "43.6542247447038", lng: "3.96404096301365" },
					{ label: "Parc Vendargues", id_1: "660", id_2: "668", lat: "43.6607798160172", lng: "3.97528621912745" },
					{ label: "Paul Gauguin", id_1: "662", lat: "43.6549564945182", lng: "3.97572576371283" },
					{ label: "Pointes", id_1: "636", lat: "43.63865085189", lng: "3.93284887834069" },
					{ label: "Poste", id_1: "656", id_2: "673", lat: "43.6576550377218", lng: "3.96848508853239" },
					{ label: "Route de Nîmes", id_1: "651", id_2: "678", lat: "43.6416006644368", lng: "3.94250039302967" },
					{ label: "Zone Industrielle", id_1: "676", id_2: "653", lat: "43.6533472448138", lng: "3.96201010501267" },
					{ label: "Zone Industrielle Bigos", id_1: "664", id_2: "682", lat: "43.6553198772501", lng: "3.94973367397967" },
					{ label: "Zone Industrielle Marbrerie", id_1: "683", id_2: "665", lat: "43.6541124344425", lng: "3.95473896773407" } ] );
			}
			
			return _data;
		}
	}
}