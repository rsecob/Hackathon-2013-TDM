package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne20Data
	{
		public function Ligne20Data()
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
				_data = new ListCollection([ { label: "Allée du Bois", id_1: "644", id_2: "598", lat: "43.5821302437526", lng: "3.82453908696203" },
					{ label: "Cave Coopérative", id_1: "874", id_2: "879", lat: "43.5732129989929", lng: "3.8271383101942" },
					{ label: "Centre Commercial", id_1: "876", id_2: "869", lat: "43.5705032267486", lng: "3.84686143275553" },
					{ label: "Château du Terral", id_1: "645", id_2: "597", lat: "43.5829395463318", lng: "3.83103996615456" },
					{ label: "Collège Louis Germain", id_1: "599", id_2: "643", lat: "43.5786896248878", lng: "3.82306462523304" },
					{ label: "Côteaux", id_1: "604", id_2: "638", lat: "43.5775540041006", lng: "3.83500430187554" },
					{ label: "Gymnase", id_1: "600", id_2: "642", lat: "43.5772788347741", lng: "3.82171726622474" },
					{ label: "Jasses", id_1: "867", id_2: "878", lat: "43.5706156432641", lng: "3.82775057080065" },
					{ label: "La Lauze", id_1: "871", lat: "43.5617620872128", lng: "3.84518422893609" },
					{ label: "La Roque", id_1: "868", id_2: "877", lat: "43.5698754636093", lng: "3.83512447603848" },
					{ label: "Louise Michel", id_1: "647", id_2: "621", lat: "43.5809244759308", lng: "3.83374481161032" },
					{ label: "Marquerose", id_1: "622", id_2: "648", lat: "43.5834241466041", lng: "3.82653899079839" },
					{ label: "Mas de Magret", id_1: "881", id_2: "872", lat: "43.567947253608", lng: "3.82829910804725" },
					{ label: "Saint-Hubéry", id_1: "602", lat: "43.573566403664", lng: "3.81974148538565" },
					{ label: "Saint-Jean de Védas Centre", id_1: "620", id_2: "646", lat: "43.5747502037232", lng: "3.83039310776656" },
					{ label: "Saint-Jean le Sec", id_1: "619", id_2: "649", lat: "43.5707582689587", lng: "3.83758321574079" },
					{ label: "Terre Neuve", id_1: "875", id_2: "870", lat: "43.5606952274561", lng: "3.84948253155492" },
					{ label: "Tourtourel", id_1: "641", id_2: "601", lat: "43.5756893247052", lng: "3.81963583193527" },
					{ label: "Val des Garrigues", id_1: "880", id_2: "873", lat: "43.5667215408174", lng: "3.82657345737539" } ] );
			}
			
			return _data;
		}
	}
}