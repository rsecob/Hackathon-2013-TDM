package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne41Data
	{
		public function Ligne41Data()
		{
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Charles de Gaulle", id_1: "1036", lat: "43.6283939626101", lng: "3.89767377505847" },
					{ label: "Clinique du Parc", id_1: "1027", lat: "43.6342063024452", lng: "3.89108701653735" },
					{ label: "Place de la Liberté", id_1: "729", lat: "43.6332154054653", lng: "3.89560245170636" } ]);
			}
			
			return _data;
		}
	}
}