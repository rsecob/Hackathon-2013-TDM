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
	
	public class Ligne13Data
	{
		public function Ligne13Data()
		{
		}
		
		////////////////////////////////
		//
		// Properties
		//
		////////////////////////////////
		
		private static var _ligneData:Object;
		
		public static function get ligneData():Object
		{
			if (!_ligneData)
				_ligneData = {value: "13", label: "Ligne 13", icon: EmbeddedAssets.LIGNE_13_ICON};
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([{value: "Agropolis", lat: "undefined", lon: "undefined", label: "Agropolis" }
					, {value: "Campus Agropolis", lat: "undefined", lon: "undefined", label: "Campus Agropolis" }
					, {value: "E. Architecture", lat: "undefined", lon: "undefined", label: "École d'Architecture" }
					, {value: "Ecossais", lat: "undefined", lon: "undefined", label: "Écossais" }
					, {value: "Eugene Bataillon", lat: "undefined", lon: "undefined", label: "Eugène Bataillon" }
					, {value: "Fac De Lettres", lat: "undefined", lon: "undefined", label: "Fac de Lettres" }
					, {value: "Gascogne", lat: "undefined", lon: "undefined", label: "Gascogne" }
					, {value: "Henri Dunant", lat: "undefined", lon: "undefined", label: "Henri Dunant" }
					, {value: "Hortus", lat: "undefined", lon: "undefined", label: "Hortus" }
					, {value: "Lavalette", lat: "undefined", lon: "undefined", label: "Lavalette" }
					, {value: "Lycee F. Bazille", lat: "undefined", lon: "undefined", label: "Lycée Frédéric Bazille" }
					, {value: "Maurice Chauvet", lat: "undefined", lon: "undefined", label: "Maurice Chauvet" }
					, {value: "Pic St Loup", lat: "undefined", lon: "undefined", label: "Pic Saint-Loup" }
					, {value: "Plan 4 Seigneurs", lat: "undefined", lon: "undefined", label: "Plan des 4 Seigneurs" }
					, {value: "Saint Eloi", lat: "undefined", lon: "undefined", label: "Saint- Éloi" }
					, {value: "Universites", lat: "undefined", lon: "undefined", label: "Universités des Sciences et Lettres" }
					, {value: "Vert Bois", lat: "undefined", lon: "undefined", label: "Vert Bois" }
					, {value: "Zoo", lat: "undefined", lon: "undefined", label: "Zoo" } ]);
			}
			
			return _data;
		}
		
		public static var directionsArray:Array = [ {value: "Universites", label: "Universités des Sciences et Lettres"}
			,{value: "Saint-eloi", label: "Saint- Éloi"}
			,{value: "Agropolis", label: "Agropolis"} ];
		
	}
}