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
	
	public class Ligne14Data
	{
		public function Ligne14Data()
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
				_ligneData = {value: "14", label: "Ligne 14", icon: EmbeddedAssets.LIGNE_14_ICON};
			
			return _ligneData;
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([{value: "Bd Des Sports", lat: "undefined", lon: "undefined", label: "Boulevard des Sports" }
					, {value: "Ernest Renan", lat: "undefined", lon: "undefined", label: "Ernest Renan" }
					, {value: "Estragon", lat: "undefined", lon: "undefined", label: "Estragon" }
					, {value: "Foyer Des Aubes", lat: "undefined", lon: "undefined", label: "Foyer des Aubes" }
					, {value: "Francoise", lat: "undefined", lon: "undefined", label: "Françoise" }
					, {value: "Garigliano", lat: "undefined", lon: "undefined", label: "Garigliano" }
					, {value: "Jean Mermoz", lat: "undefined", lon: "undefined", label: "Jean Mermoz" }
					, {value: "Leon Blum", lat: "undefined", lon: "undefined", label: "Léon Blum" }
					, {value: "Les Aubes", lat: "undefined", lon: "undefined", label: "Les Aubes" }
					, {value: "Les Lacs", lat: "undefined", lon: "undefined", label: "La Pompignane (Les Lacs)" }
					, {value: "Palombes", lat: "undefined", lon: "undefined", label: "Palombes" }
					, {value: "Pinsons", lat: "undefined", lon: "undefined", label: "Pinsons" }
					, {value: "Saint Maur", lat: "undefined", lon: "undefined", label: "Saint-Maur" }
					, {value: "Salaison", lat: "undefined", lon: "undefined", label: "Salaison" } ]);
			}
			
			return _data;
		}
		
		
		public static var directionsArray:Array = [ {value: "Leon Blum", label: "Léon Blum"}
			,{value: "Pompignane - Lacs", label: "La Pompignane (Les Lacs)"} ];
		
	}
}