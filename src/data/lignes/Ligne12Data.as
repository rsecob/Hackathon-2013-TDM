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
	
	public class Ligne12Data
	{
		public function Ligne12Data()
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
				_ligneData = {value: "12", label: "Ligne 12", icon: EmbeddedAssets.LIGNE_12_ICON};
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ {value: "Bellevue", lat: "undefined", lon: "undefined", label: "Bellevue" }
					, {value: "Catalpas", lat: "undefined", lon: "undefined", label: "Catalpas" }
					, {value: "Centrayrargues", lat: "undefined", lon: "undefined", label: "Centrayrargues" }
					, {value: "Coquelicots", lat: "undefined", lon: "undefined", label: "Coquelicots" }
					, {value: "Descartes", lat: "undefined", lon: "undefined", label: "Descartes" }
					, {value: "Frederic Peysson", lat: "undefined", lon: "undefined", label: "Frédéric Peysson" }
					, {value: "Gare Saint-roch", lat: "undefined", lon: "undefined", label: "Gare Saint-Roch" }
					, {value: "Henri Rene", lat: "undefined", lon: "undefined", label: "Henri René" }
					, {value: "Jean Vachet", lat: "undefined", lon: "undefined", label: "Jean Vachet" }
					, {value: "Leon Cordes", lat: "undefined", lon: "undefined", label: "Léon Cordès" }
					, {value: "Marechal Leclerc", lat: "undefined", lon: "undefined", label: "Maréchal Leclerc" }
					, {value: "Paquerettes", lat: "undefined", lon: "undefined", label: "Pâquerettes" }
					, {value: "Place Carnot", lat: "undefined", lon: "undefined", label: "Place Carnot" }
					, {value: "Place Strasbourg", lat: "undefined", lon: "undefined", label: "Place de Strasbourg" }
					, {value: "Porto", lat: "undefined", lon: "undefined", label: "Porto" }
					, {value: "Primeveres", lat: "undefined", lon: "undefined", label: "Primevères" }
					, {value: "Razeteurs", lat: "undefined", lon: "undefined", label: "Razeteurs" } ] );
			}
			
			return _data;
		}
		
		
		public static var directionsArray:Array = [ {value: "Catalpas", label: "Catalpas"}
			,{value: "Gare Saint-roch", label: "Gare Saint-Roch"} ];
		
	}
}