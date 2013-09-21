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
	
	public class Ligne11Data
	{
		public function Ligne11Data()
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
				_ligneData = {value: "11", label: "Ligne 11", icon: EmbeddedAssets.LIGNE_11_ICON};
			
			return _ligneData;
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ {value: "Anatole France", lat: "undefined", lon: "undefined", label: "Anatole France" }
					, {value: "Bagatelle", lat: "undefined", lon: "undefined", label: "Bagatelle" }
					, {value: "Chasseurs", lat: "undefined", lon: "undefined", label: "Chasseurs" }
					, {value: "Cheng-du", lat: "undefined", lon: "undefined", label: "Cheng-Du" }
					, {value: "Cite Gely", lat: "undefined", lon: "undefined", label: "Cité Gély" }
					, {value: "Cite Valette", lat: "undefined", lon: "undefined", label: "Cité Valette" }
					, {value: "Claret", lat: "undefined", lon: "undefined", label: "Claret" }
					, {value: "College Pagnol", lat: "undefined", lon: "undefined", label: "Collège Marcel Pagnol" }
					, {value: "Craponne", lat: "undefined", lon: "undefined", label: "Craponne" }
					, {value: "Figuerolles", lat: "undefined", lon: "undefined", label: "Figuerolles" }
					, {value: "Gambetta", lat: "undefined", lon: "undefined", label: "Gambetta" }
					, {value: "Gare Saint-roch", lat: "undefined", lon: "undefined", label: "Gare Saint-Roch" }
					, {value: "Les Bouisses", lat: "undefined", lon: "undefined", label: "Les Bouisses" }
					, {value: "Les Roses", lat: "undefined", lon: "undefined", label: "Les Roses" }
					, {value: "Observatoire", lat: "undefined", lon: "undefined", label: "Observatoire" }
					, {value: "Palissade", lat: "undefined", lon: "undefined", label: "Palissade" }
					, {value: "Pas Du Loup", lat: "undefined", lon: "undefined", label: "Pas du Loup" }
					, {value: "Paul Fajon", lat: "undefined", lon: "undefined", label: "Paul Fajon" }
					, {value: "Plan Cabanes", lat: "undefined", lon: "undefined", label: "Plan Cabanes" }
					, {value: "Renouvier", lat: "undefined", lon: "undefined", label: "Renouvier" }
					, {value: "Rouget De Lisle", lat: "undefined", lon: "undefined", label: "Rouget de Lisle" }
					, {value: "Saint Denis", lat: "undefined", lon: "undefined", label: "Saint-Denis" } ]);
			}
			
			return _data;
		}
		
		public static var directionsArray:Array = [ {value: "Les Bouisses", label: "Les Bouisses"}
			,{value: "Gare Saint-roch", label: "Gare Saint-Roch"} ];
		
	}
}