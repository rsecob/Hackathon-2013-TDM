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
	
	public class Ligne9Data
	{
		public function Ligne9Data()
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
				_ligneData = {value: "9", label: "Ligne 9", icon: EmbeddedAssets.LIGNE_9_ICON };
			
			return _ligneData;
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([{value: "Albert Einstein", lat: "undefined", lon: "undefined", label: "Albert Einstein" }
					, {value: "Alfred Nobel", lat: "undefined", lon: "undefined", label: "Alfred Nobel" }
					, {value: "Andre Malraux", lat: "undefined", lon: "undefined", label: "André Malraux" }
					, {value: "Apollo", lat: "undefined", lon: "undefined", label: "Apollo" }
					, {value: "Cim. St Etienne", lat: "undefined", lon: "undefined", label: "Cimetière Saint-Étienne" }
					, {value: "Cinq Chalets", lat: "undefined", lon: "undefined", label: "Cinq Chalets" }
					, {value: "Colverts", lat: "undefined", lon: "undefined", label: "Colverts" }
					, {value: "Dom. Pompignane", lat: "undefined", lon: "undefined", label: "Domaine de la Pompignane" }
					, {value: "Eureka", lat: "undefined", lon: "undefined", label: "Eurêka" }
					, {value: "Evariste Gallois", lat: "undefined", lon: "undefined", label: "Évariste Galois" }
					, {value: "Fr. Couperin", lat: "undefined", lon: "undefined", label: "François Couperin" }
					, {value: "G. Marconi", lat: "undefined", lon: "undefined", label: "Guglielmo Marconi" }
					, {value: "Georges Melies", lat: "undefined", lon: "undefined", label: "Georges Méliès" }
					, {value: "Grammont", lat: "undefined", lon: "undefined", label: "Grammont" }
					, {value: "Louis Lepine", lat: "undefined", lon: "undefined", label: "Louis Lépine" }
					, {value: "Marie Durand", lat: "undefined", lon: "undefined", label: "Marie Durand" }
					, {value: "Paul Painleve", lat: "undefined", lon: "undefined", label: "Paul Painlevé" }
					, {value: "Pierre Laroque", lat: "undefined", lon: "undefined", label: "Pierre Laroque" }
					, {value: "Pinville", lat: "undefined", lon: "undefined", label: "Pinville" }
					, {value: "Pl. De L'europ", lat: "undefined", lon: "undefined", label: "Place de l'Europe" }
					, {value: "Place De France", lat: "undefined", lon: "undefined", label: "Place de France" }
					, {value: "Pompignag Semard", lat: "undefined", lon: "undefined", label: "Sémard" }
					, {value: "Saint Jean", lat: "undefined", lon: "undefined", label: "Saint-Jean" }
					, {value: "Saint Michel", lat: "undefined", lon: "undefined", label: "Saint-Michel" }
					, {value: "Saint-michel", lat: "undefined", lon: "undefined", label: "Saint-Michel" }
					, {value: "Samuel Morse", lat: "undefined", lon: "undefined", label: "Samuel Morse" }
					, {value: "Vieille Poste", lat: "undefined", lon: "undefined", label: "Vieille Poste" }
					, {value: "Volta Fizeau", lat: "undefined", lon: "undefined", label: "Volta Fizeau" }
					, {value: "Zenith", lat: "undefined", lon: "undefined", label: "Zénith" } ]);
			}
			
			return _data;
		}
		
		
		public static var directionsArray:Array = [ {value: "Apollo", label: "Apollo"}
			,{value: "Grammont", label: "Grammont"} ];
		
	}
}