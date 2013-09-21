package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne18Data
	{
		public function Ligne18Data()
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
				_data = new ListCollection([ { label: "Centre", id_1: "584", lat: "43.5705033490628", lng: "3.90432699564591" },
					{ label: "Cimetière Saint-Laurent", id_1: "574", id_2: "587", lat: "43.5697549965989", lng: "3.89889129323391" },
					{ label: "Crédit Agricole", id_1: "884", id_2: "887", lat: "43.5588960263507", lng: "3.87631999550174" },
					{ label: "Entreprises", id_1: "582", id_2: "883", lat: "43.5641941760398", lng: "3.87923181001022" },
					{ label: "Mairie", id_1: "585", id_2: "576", lat: "43.5684755889832", lng: "3.90406121087847" },
					{ label: "Manse", id_1: "882", id_2: "889", lat: "43.5700138791788", lng: "3.87835033685807" },
					{ label: "Méjean", id_1: "586", id_2: "575", lat: "43.5684785744035", lng: "3.90012981213954" },
					{ label: "Montouzères", id_1: "579", id_2: "590", lat: "43.5686955467274", lng: "3.88505268682093" },
					{ label: "Montpellieret", id_1: "578", id_2: "592", lat: "43.5598726765439", lng: "3.8771744983394" },
					{ label: "Sabines", id_1: "429", lat: "43.583789674407", lng: "3.86030846256513" },
					{ label: "Saint-Pierre", id_1: "580", id_2: "591", lat: "43.5724932565199", lng: "3.89352597585097" } ]);
			}
			
			return _data;
		}
	}
}