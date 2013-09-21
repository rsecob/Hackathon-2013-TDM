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
	
	public class Ligne16Data
	{
		public function Ligne16Data()
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
				_ligneData = {value: "16", label: "Ligne 16", icon: EmbeddedAssets.LIGNE_16_ICON};
			
			return _ligneData;
		}

		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([{value: "Cite De L'arme", lat: "undefined", lon: "undefined", label: "Cité de l'Arme" }
					, {value: "Cite Mion", lat: "undefined", lon: "undefined", label: "Cité Mion" }
					, {value: "Fr. Fabreges", lat: "undefined", lon: "undefined", label: "Frédéric Fabrèges" }
					, {value: "Frederic Bazille", lat: "undefined", lon: "undefined", label: "Frédéric Bazille" }
					, {value: "Garcia Lorca", lat: "undefined", lon: "undefined", label: "Garcia Lorca" }
					, {value: "Gare Saint-roch", lat: "undefined", lon: "undefined", label: "Gare Saint-Roch" }
					, {value: "Henri Rene", lat: "undefined", lon: "undefined", label: "Henri René" }
					, {value: "Industrie", lat: "undefined", lon: "undefined", label: "Industrie" }
					, {value: "Iris", lat: "undefined", lon: "undefined", label: "Iris" }
					, {value: "Lucullus", lat: "undefined", lon: "undefined", label: "Lucullus" }
					, {value: "Marche Gare", lat: "undefined", lon: "undefined", label: "Marché Gare" }
					, {value: "Mas Argelliers", lat: "undefined", lon: "undefined", label: "Mas Argelliers" }
					, {value: "Mas St Pierre", lat: "undefined", lon: "undefined", label: "Mas Saint-Pierre" }
					, {value: "Place Carnot", lat: "undefined", lon: "undefined", label: "Place Carnot" }
					, {value: "Place Strasbourg", lat: "undefined", lon: "undefined", label: "Place de Strasbourg" }
					, {value: "Saporta", lat: "undefined", lon: "undefined", label: "Saporta" }
					, {value: "Tournezy", lat: "undefined", lon: "undefined", label: "Tournezy" } ]);
			}
			
			return _data;
		}
		
		public static var directionsArray:Array = [ {value: "Tournezy", label: "Tournezy"}
			,{value: "Gare Saint-roch", label: "Gare Saint-Roch"} ];
		
	}
}