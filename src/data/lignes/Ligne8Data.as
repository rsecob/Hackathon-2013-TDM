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
	
	public class Ligne8Data
	{
		public function Ligne8Data()
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
				_data = new ListCollection([ { label: "Chambéry", id_1: "341", id_2: "312", lat: "43.5988957676535", lng: "3.88975524434921" },
					{ label: "Cité de l'Arme", id_1: "106", lat: "43.593626969366", lng: "3.88919150114047" },
					{ label: "Cité Mion", id_1: "71", lat: "43.6013411253374", lng: "3.88472519310408" },
					{ label: "Collège des Aiguerelles", id_1: "311", id_2: "342", lat: "43.5982761169694", lng: "3.89096298648582" },
					{ label: "Frédéric Bazille", id_1: "557", lat: "43.6027043748847", lng: "3.88054379500569" },
					{ label: "Gare Saint-Roch", id_1: "4", id_2: "2", lat: "43.604132144047", lng: "3.87813296304905" },
					{ label: "Hélios", id_1: "339", lat: "43.6010230298201", lng: "3.88559485359729" },
					{ label: "Henri René", id_1: "327", lat: "43.6031682633384", lng: "3.88205317273247" },
					{ label: "Jean Mirailhet", id_1: "416", id_2: "310", lat: "43.5968243984061", lng: "3.89251912721603" },
					{ label: "Lucullus", id_1: "105", lat: "43.5946977939189", lng: "3.88849083951096" },
					{ label: "Place Carnot", id_1: "326", lat: "43.6033043854567", lng: "3.88385059559379" },
					{ label: "Place de Strasbourg", id_1: "72", lat: "43.6031697265646", lng: "3.88006154730388" },
					{ label: "Soleiado", id_1: "340", id_2: "313", lat: "43.6003285232027", lng: "3.8870109434519" } ]);
			}
			
			return _data;
		}
		
	}
}