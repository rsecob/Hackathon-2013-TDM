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
	
	public class Ligne10Data
	{
		public function Ligne10Data()
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
				_ligneData = {value: "10", label: "Ligne 10", icons: EmbeddedAssets.LIGNE_10_ICON};
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([{value: "A. L. Jussieu", lat: "undefined", lon: "undefined", label: "Antoine-Laurent de Jussieu" }
					, {value: "Aiguelongue", lat: "undefined", lon: "undefined", label: "Aiguelongue" }
					, {value: "Aiguelongue Juss", lat: "undefined", lon: "undefined", label: "Aiguelongue (Jussieu)" }
					, {value: "Alpilles", lat: "undefined", lon: "undefined", label: "Alpilles" }
					, {value: "Av. Agriculture", lat: "undefined", lon: "undefined", label: "Av. de l'Agriculture" }
					, {value: "Belvedere", lat: "undefined", lon: "undefined", label: "Belvédère" }
					, {value: "Celleneuve", lat: "undefined", lon: "undefined", label: "Celleneuve" }
					, {value: "Chantecler", lat: "undefined", lon: "undefined", label: "Chantecler" }
					, {value: "Charles Flahaut", lat: "undefined", lon: "undefined", label: "Charles de Gaulle" }
					, {value: "Clinique Rech", lat: "undefined", lon: "undefined", label: "Clinique Rech" }
					, {value: "Clolus", lat: "undefined", lon: "undefined", label: "Clolus" }
					, {value: "Coll. C.claudel", lat: "undefined", lon: "undefined", label: "Coll. C.claudel" }
					, {value: "Doria", lat: "undefined", lon: "undefined", label: "Doria" }
					, {value: "Erables", lat: "undefined", lon: "undefined", label: "Érables" }
					, {value: "Esperance", lat: "undefined", lon: "undefined", label: "Espérance" }
					, {value: "Fac De Pharmacie", lat: "undefined", lon: "undefined", label: "Fac de Pharmacie" }
					, {value: "Glycines", lat: "undefined", lon: "undefined", label: "Glycines" }
					, {value: "Henri Dunant", lat: "undefined", lon: "undefined", label: "Henri Dunant" }
					, {value: "La Pile", lat: "undefined", lon: "undefined", label: "La Pile" }
					, {value: "Las Cazes", lat: "undefined", lon: "undefined", label: "Las Cazes" }
					, {value: "Las Sorbes", lat: "undefined", lon: "undefined", label: "Las Sorbès" }
					, {value: "Louvain", lat: "undefined", lon: "undefined", label: "Louvain" }
					, {value: "Marie Caizergues", lat: "undefined", lon: "undefined", label: "Marie Caizergues" }
					, {value: "Marie Curie", lat: "undefined", lon: "undefined", label: "Marie Curie" }
					, {value: "Moulin Gasconnet", lat: "undefined", lon: "undefined", label: "Moulin de Gasconnet" }
					, {value: "Nazareth", lat: "undefined", lon: "undefined", label: "Nazareth" }
					, {value: "Paladilhe", lat: "undefined", lon: "undefined", label: "Paladilhe" }
					, {value: "Petit Bard", lat: "undefined", lon: "undefined", label: "Petit Bard" }
					, {value: "Pierre Rouge", lat: "undefined", lon: "undefined", label: "Pierre Rouge" }
					, {value: "Pioch Boutonnet", lat: "undefined", lon: "undefined", label: "Pioch de Boutonnet" }
					, {value: "Renaudel", lat: "undefined", lon: "undefined", label: "Renaudel" }
					, {value: "Rene Bougnol", lat: "undefined", lon: "undefined", label: "René Bougnol" }
					, {value: "Saint Clement", lat: "undefined", lon: "undefined", label: "Saint Clément" }
					, {value: "Saint Eloi", lat: "undefined", lon: "undefined", label: "Saint- Éloi" }
					, {value: "Saint Gabriel", lat: "undefined", lon: "undefined", label: "Saint Gabriel" }
					, {value: "Saint Roch", lat: "undefined", lon: "undefined", label: "Saint-Roch" }
					, {value: "Sainte Odile", lat: "undefined", lon: "undefined", label: "Sainte-Odile" }
					, {value: "Tonnelles", lat: "undefined", lon: "undefined", label: "Tonnelles" }]);
			}
			
			return _data;
		}
		
		public static var directionsArray:Array = [ {value: "Aiguelongue", label: "Aiguelongue"}
			,{value: "Celleneuve", label: "Celleneuve"} ];
		
	}
}