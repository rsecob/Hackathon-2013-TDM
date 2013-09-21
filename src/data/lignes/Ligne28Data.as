package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne28Data
	{
		public function Ligne28Data()
		{
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Bonadona", id_1: "901", id_2: "896", lat: "43.5547325649882", lng: "3.96654883789795" },
					{ label: "Cabanes de Pérols", id_1: "897", id_2: "900", lat: "43.5525489910486", lng: "3.96827877876301" },
					{ label: "Croix du Languedoc", id_1: "891", id_2: "906", lat: "43.566616823893", lng: "3.9485534862777" },
					{ label: "Lauriers", id_1: "907", id_2: "890", lat: "43.568799244624", lng: "3.94567254957003" },
					{ label: "Parc Expo", id_1: "908", id_2: "898", lat: "43.5733690109591", lng: "3.94486150332421" },
					{ label: "Pérols Centre", id_1: "905", id_2: "892", lat: "43.5627592228126", lng: "3.95043500749049" },
					{ label: "Pérols Sud", id_1: "894", id_2: "903", lat: "43.5595582347704", lng: "3.9582930201244" },
					{ label: "Plein Sud", id_1: "909", id_2: "899", lat: "43.5715387112948", lng: "3.94280704770848" },
					{ label: "Radel", id_1: "902", id_2: "895", lat: "43.5566596253575", lng: "3.96453952310822" },
					{ label: "Saint-Jean", id_1: "893", id_2: "904", lat: "43.5610873391765", lng: "3.95222970657489" } ]);
			}
			
			return _data;
		}
	}
}