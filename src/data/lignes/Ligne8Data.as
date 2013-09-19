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
		
		
		private static var _ligneData:Object;
		
		public static function get ligneData():Object
		{
			if (!_ligneData)
				_ligneData = {value: "8", label: "Ligne 8", icon: EmbeddedAssets.LIGNE_8_ICON };
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([{value: "Chambery", lat: "undefined", lon: "undefined", label: "Chambéry" }
					, {value: "Cite De L'arme", lat: "undefined", lon: "undefined", label: "Cité de l'Arme" }
					, {value: "Cite Mion", lat: "undefined", lon: "undefined", label: "Cité Mion" }
					, {value: "Col. Aiguerelles", lat: "undefined", lon: "undefined", label: "Collège des Aiguerelles" }
					, {value: "Frederic Bazille", lat: "undefined", lon: "undefined", label: "Frédéric Bazille" }
					, {value: "Gare Saint-roch", lat: "undefined", lon: "undefined", label: "Gare Saint-Roch" }
					, {value: "Helios", lat: "undefined", lon: "undefined", label: "Helios" }
					, {value: "Henri Rene", lat: "undefined", lon: "undefined", label: "Henri René" }
					, {value: "Jean Mirailhet", lat: "undefined", lon: "undefined", label: "Jean Mirailhet" }
					, {value: "Lucullus", lat: "undefined", lon: "undefined", label: "Lucullus" }
					, {value: "Place Carnot", lat: "undefined", lon: "undefined", label: "Place Carnot" }
					, {value: "Place Strasbourg", lat: "undefined", lon: "undefined", label: "Place de Strasbourg" }
					, {value: "Soleiado", lat: "undefined", lon: "undefined", label: "Soleiado" } ]);
			}
			
			return _data;
		}
		
		
		public static var directionsArray:Array = [ {value: "Cite De L'arme", label: "Cité de l'Arme"}
			,{value: "Gare Saint-roch", label: "Gare Saint-Roch"} ];
		
	}
}