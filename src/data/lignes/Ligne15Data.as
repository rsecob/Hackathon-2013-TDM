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
	
	public class Ligne15Data
	{
		public function Ligne15Data()
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
				_ligneData = {value: "15", label: "Ligne 15", icon: EmbeddedAssets.LIGNE_15_ICON};
			
			return _ligneData;
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([{value: "Aiguelongue", lat: "undefined", lon: "undefined", label: "Aiguelongue" }
					, {value: "Belvedere", lat: "undefined", lon: "undefined", label: "Belvédère" }
					, {value: "Bengalis", lat: "undefined", lon: "undefined", label: "Bengalis" }
					, {value: "Bugarel", lat: "undefined", lon: "undefined", label: "Bugarel" }
					, {value: "Castelle", lat: "undefined", lon: "undefined", label: "Castelle" }
					, {value: "Ch. De Gaulle", lat: "undefined", lon: "undefined", label: "Charles de Gaulle" }
					, {value: "Cheng-du", lat: "undefined", lon: "undefined", label: "Cheng-Du" }
					, {value: "Cinsaults", lat: "undefined", lon: "undefined", label: "Cinsaults" }
					, {value: "Demeter", lat: "undefined", lon: "undefined", label: "Demeter" }
					, {value: "Ettore Bugatti", lat: "undefined", lon: "undefined", label: "Ettore Bugatti" }
					, {value: "Fac De Pharmacie", lat: "undefined", lon: "undefined", label: "Fac de Pharmacie" }
					, {value: "Garosud", lat: "undefined", lon: "undefined", label: "Garosud (Jeune Parque)" }
					, {value: "Goelands", lat: "undefined", lon: "undefined", label: "Goélands" }
					, {value: "Henri Dunant", lat: "undefined", lon: "undefined", label: "Henri Dunant" }
					, {value: "Henri Mares", lat: "undefined", lon: "undefined", label: "Henri Marès" }
					, {value: "Jasse De Maurin", lat: "undefined", lon: "undefined", label: "Jasse de Maurin" }
					, {value: "Jean Calvin", lat: "undefined", lon: "undefined", label: "Jean Calvin" }
					, {value: "Lagoya", lat: "undefined", lon: "undefined", label: "Lagoya" }
					, {value: "Le Grand M", lat: "undefined", lon: "undefined", label: "Le Grand M" }
					, {value: "Les Bouisses", lat: "undefined", lon: "undefined", label: "Les Bouisses" }
					, {value: "Les Lacs", lat: "undefined", lon: "undefined", label: "La Pompignane (Les Lacs)" }
					, {value: "Les Pins", lat: "undefined", lon: "undefined", label: "Les Pins" }
					, {value: "Louis Ravas", lat: "undefined", lon: "undefined", label: "Louis Ravaz" }
					, {value: "Lycee J. Ferry", lat: "undefined", lon: "undefined", label: "Lycée Jules Ferry" }
					, {value: "M. Chevalier", lat: "undefined", lon: "undefined", label: "Maurice Chevalier" }
					, {value: "Major Flandre", lat: "undefined", lon: "undefined", label: "Major Flandre" }
					, {value: "Martelliere", lat: "undefined", lon: "undefined", label: "Martellière" }
					, {value: "Mas De Bagneres", lat: "undefined", lon: "undefined", label: "Mas de Bagnères" }
					, {value: "Millenaire", lat: "undefined", lon: "undefined", label: "Millénaire" }
					, {value: "Ormeaux", lat: "undefined", lon: "undefined", label: "Ormeaux" }
					, {value: "Parc Lironde", lat: "undefined", lon: "undefined", label: "Parc de la Lironde" }
					, {value: "Passerines", lat: "undefined", lon: "undefined", label: "Passerines" }
					, {value: "Pastourelles", lat: "undefined", lon: "undefined", label: "Pastourelles" }
					, {value: "Patrice Lumumba", lat: "undefined", lon: "undefined", label: "Patrice Lumumba" }
					, {value: "Paul Fajon", lat: "undefined", lon: "undefined", label: "Paul Fajon" }
					, {value: "Pierre Laroque", lat: "undefined", lon: "undefined", label: "Pierre Laroque" }
					, {value: "Pinville", lat: "undefined", lon: "undefined", label: "Pinville" }
					, {value: "Place De France", lat: "undefined", lon: "undefined", label: "Place de France" }
					, {value: "Pompignag Semard", lat: "undefined", lon: "undefined", label: "Sémard" }
					, {value: "Rieges", lat: "undefined", lon: "undefined", label: "Rièges" }
					, {value: "Roqueturiere", lat: "undefined", lon: "undefined", label: "Roqueturière" }
					, {value: "Rouget De Lisle", lat: "undefined", lon: "undefined", label: "Rouget de Lisle" }
					, {value: "Sabines", lat: "undefined", lon: "undefined", label: "Sabines" }
					, {value: "Saint Cleophas", lat: "undefined", lon: "undefined", label: "Saint-Cléophas" }
					, {value: "Saint Eloi", lat: "undefined", lon: "undefined", label: "Saint- Éloi" }
					, {value: "Saint Lazare", lat: "undefined", lon: "undefined", label: "Saint-Lazare" }
					, {value: "Sainte Catherine", lat: "undefined", lon: "undefined", label: "Sainte-Catherine" }
					, {value: "Salaison", lat: "undefined", lon: "undefined", label: "Salaison" }
					, {value: "Sophie Germain", lat: "undefined", lon: "undefined", label: "Sophie Germain" }
					, {value: "Tam", lat: "undefined", lon: "undefined", label: "TaM" }
					, {value: "Tonnelles", lat: "undefined", lon: "undefined", label: "Tonnelles" }
					, {value: "Tourterelles", lat: "undefined", lon: "undefined", label: "Tourterelles" }
					, {value: "Vauguieres", lat: "undefined", lon: "undefined", label: "Vauguières" }
					, {value: "Voie Domitienne", lat: "undefined", lon: "undefined", label: "Voie Domitienne" }
					, {value: "Yves Du Manoir", lat: "undefined", lon: "undefined", label: "Yves du Manoir" } ]);
			}
			
			return _data
		}
		
		public static var directionsArray:Array = [ {value: "Garosud", label: "Garosud (Jeune Parque)"}
			,{value: "Place De France", label: "Place De France"} ];
		
	}
}