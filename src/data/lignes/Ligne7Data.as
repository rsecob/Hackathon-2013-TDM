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
	
	public class Ligne7Data
	{
		public function Ligne7Data()
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
				_ligneData = {value: "7", label: "Ligne 7", icon: EmbeddedAssets.LIGNE_7_ICON };
			
			return _ligneData;
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([{value: "Anatole France", lat: "undefined", lon: "undefined", label: "Anatole France" }
					, {value: "Berthelot", lat: "undefined", lon: "undefined", label: "Berthelot" }
					, {value: "Cervantes", lat: "undefined", lon: "undefined", label: "Cervantès" }
					, {value: "Chateau D'o", lat: "undefined", lon: "undefined", label: "Château d'Ô" }
					, {value: "Cite Roger", lat: "undefined", lon: "undefined", label: "Cité Roger" }
					, {value: "Croix Rosiers", lat: "undefined", lon: "undefined", label: "Croix des Rosiers" }
					, {value: "Crx Du Capitaine", lat: "undefined", lon: "undefined", label: "Croix du Capitaine" }
					, {value: "Doria", lat: "undefined", lon: "undefined", label: "Doria" }
					, {value: "Etoile", lat: "undefined", lon: "undefined", label: "Étoile" }
					, {value: "Figairasse", lat: "undefined", lon: "undefined", label: "Figairasse" }
					, {value: "Font Trouve", lat: "undefined", lon: "undefined", label: "Font Trouvé" }
					, {value: "Francois Dezeuze", lat: "undefined", lon: "undefined", label: "François Dezeuze" }
					, {value: "Gardioles", lat: "undefined", lon: "undefined", label: "Gardioles" }
					, {value: "Gare Saint-roch", lat: "undefined", lon: "undefined", label: "Gare Saint-Roch" }
					, {value: "Gouara", lat: "undefined", lon: "undefined", label: "Gouara" }
					, {value: "Grezes", lat: "undefined", lon: "undefined", label: "Grèzes" }
					, {value: "Gustave Eiffel", lat: "undefined", lon: "undefined", label: "Gustave Eiffel" }
					, {value: "H.du Departement", lat: "undefined", lon: "undefined", label: "Hôtel du Département" }
					, {value: "Jean Bart", lat: "undefined", lon: "undefined", label: "Jean Bart" }
					, {value: "La Martelle", lat: "undefined", lon: "undefined", label: "La Martelle" }
					, {value: "La Pile", lat: "undefined", lon: "undefined", label: "La Pile" }
					, {value: "La Source", lat: "undefined", lon: "undefined", label: "La Source" }
					, {value: "Lepic", lat: "undefined", lon: "undefined", label: "Lepic" }
					, {value: "Les Bouisses", lat: "undefined", lon: "undefined", label: "Les Bouisses" }
					, {value: "Lycee Clemenceau", lat: "undefined", lon: "undefined", label: "Lycée Georges Clemenceau" }
					, {value: "Lycee J. Ferry", lat: "undefined", lon: "undefined", label: "Lycée Jules Ferry" }
					, {value: "Lycee J. Monnet", lat: "undefined", lon: "undefined", label: "Lycée Jean Monnet" }
					, {value: "Maison Sports", lat: "undefined", lon: "undefined", label: "Maison des Sports" }
					, {value: "Martelliere", lat: "undefined", lon: "undefined", label: "Martellière" }
					, {value: "Mas De Merle", lat: "undefined", lon: "undefined", label: "Mas de Merle" }
					, {value: "Monsieur Teste", lat: "undefined", lon: "undefined", label: "Monsieur Teste" }
					, {value: "Muriers", lat: "undefined", lon: "undefined", label: "Muriers" }
					, {value: "Myrtes", lat: "undefined", lon: "undefined", label: "Myrtes" }
					, {value: "Observatoire", lat: "undefined", lon: "undefined", label: "Observatoire" }
					, {value: "Ormeaux", lat: "undefined", lon: "undefined", label: "Ormeaux" }
					, {value: "Peyrou", lat: "undefined", lon: "undefined", label: "Peyrou" }
					, {value: "Pitot", lat: "undefined", lon: "undefined", label: "Pitot" }
					, {value: "Pleiade", lat: "undefined", lon: "undefined", label: "Pléiade" }
					, {value: "Pous De La Sers", lat: "undefined", lon: "undefined", label: "Pous de la Sers" }
					, {value: "Rondelet", lat: "undefined", lon: "undefined", label: "Rondelet" }
					, {value: "Saint Denis", lat: "undefined", lon: "undefined", label: "Saint-Denis" }
					, {value: "Saint Guilhem", lat: "undefined", lon: "undefined", label: "Saint-Guilhem" }
					, {value: "Saint Jaumes", lat: "undefined", lon: "undefined", label: "Saint-Jaumes" }
					, {value: "Saint Roch", lat: "undefined", lon: "undefined", label: "Saint-Roch" }
					, {value: "Sophie Germain", lat: "undefined", lon: "undefined", label: "Sophie Germain" } ]);
			}
			
			return _data;
		}
		
		public static var directionsArray:Array = [ {value: "H.du Departement", label: "Hôtel du Département"}
			,{value: "La Martelle", label: "La Martelle"} 
			,{value: "Les Bouisses", label: "Les Bouisses"} ];
		
	}
}