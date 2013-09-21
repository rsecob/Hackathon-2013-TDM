////////////////////////////////////////////////////////////////////////////////
//
// Romain Boces - TamApp
// Copyright 2012 
// All Rights Reserved.
//
// NOTICE: I permit you to use, modify, and distribute this file
// in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

package data.lignes
{
	import feathers.data.EmbeddedAssets;
	import feathers.data.ListCollection;
	
	public class Ligne19Data
	{
		public function Ligne19Data()
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
				_data = new ListCollection([{ label: "Carriéra", id_1: "32", id_2: "26", lat: "43.6407611486776", lng: "3.81922168893267" },
					{ label: "Comté de Nice", id_1: "28", id_2: "19", lat: "43.6388927807871", lng: "3.81121403614904" },
					{ label: "Comté de Toulouse", id_1: "34", id_2: "15", lat: "43.6368282660755", lng: "3.81888439588706" },
					{ label: "Corse", id_1: "29", id_2: "18", lat: "43.6406702650638", lng: "3.81139610551269" },
					{ label: "Gémeaux", id_1: "37", id_2: "12", lat: "43.6319550216383", lng: "3.82222336214138" },
					{ label: "Halles de la Paillade", id_1: "22", id_2: "45", lat: "43.6274778911626", lng: "3.81765165501266" },
					{ label: "Hauts de Massane", id_1: "13", id_2: "36", lat: "43.636166291186", lng: "3.82258047914887" },
					{ label: "Hôtel du Département", id_1: "271", lat: "43.6220697534915", lng: "3.83502136043073" },
					{ label: "Jacques Prévert", id_1: "17", id_2: "30", lat: "43.6423416052145", lng: "3.81408835537943" },
					{ label: "Lycée Léonard de Vinci", id_1: "305", id_2: "272", lat: "43.6264861412496", lng: "3.82310826394591" },
					{ label: "Mas de Bellevue", id_1: "27", id_2: "20", lat: "43.6371130378284", lng: "3.81251724810761" },
					{ label: "Oxford", id_1: "23", id_2: "596", lat: "43.6269461895049", lng: "3.82037286369424" },
					{ label: "Parc Malbosc", id_1: "391", lat: "43.6233929366949", lng: "3.83099713262187" },
					{ label: "Pierre Cardenal", id_1: "33", id_2: "25", lat: "43.6380070257379", lng: "3.81880359437587" },
					{ label: "Pierre de Coubertin", id_1: "24", id_2: "21", lat: "43.6377398485236", lng: "3.81467482264076" },
					{ label: "Place d'Italie", id_1: "16", id_2: "31", lat: "43.6417886577733", lng: "3.8183694776032" },
					{ label: "Raimbaud d'Orange", id_1: "14", id_2: "35", lat: "43.6374853024761", lng: "3.82079526176382" },
					{ label: "Saint-Paul", id_1: "594", lat: "43.6305750189159", lng: "3.82124685919926" },
					{ label: "Uppsala", id_1: "595", lat: "43.6294976517874", lng: "3.82180052803165" } ]);
			}
			
			return _data;
		}
		
	}
}