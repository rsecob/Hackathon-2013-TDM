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
	
	public class Ligne19Data
	{
		public function Ligne19Data()
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
				_ligneData = {value: "19", label: "Ligne 19", icon: EmbeddedAssets.LIGNE_19_ICON};
			
			return _ligneData;
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([{value: "Carriera", lat: "undefined", lon: "undefined", label: "Carriéra" }
					, {value: "Comte De Nice", lat: "undefined", lon: "undefined", label: "Comté de Nice" }
					, {value: "Comte Toulouse", lat: "undefined", lon: "undefined", label: "Comté de Toulouse" }
					, {value: "Corse", lat: "undefined", lon: "undefined", label: "Corse" }
					, {value: "Coubertin", lat: "undefined", lon: "undefined", label: "Pierre de Coubertin" }
					, {value: "Gemeaux", lat: "undefined", lon: "undefined", label: "Gémeaux" }
					, {value: "H.du Departement", lat: "undefined", lon: "undefined", label: "Hôtel du Département" }
					, {value: "Halles Paillade", lat: "undefined", lon: "undefined", label: "Halles de la Paillade" }
					, {value: "Hauts De Massane", lat: "undefined", lon: "undefined", label: "Hauts de Massane" }
					, {value: "Jacques Prevert", lat: "undefined", lon: "undefined", label: "Jacques Prévert" }
					, {value: "Lycee De Vinci", lat: "undefined", lon: "undefined", label: "Léonard de Vinci" }
					, {value: "Mas De Bellevue", lat: "undefined", lon: "undefined", label: "Mas de Bellevue" }
					, {value: "Oxford", lat: "undefined", lon: "undefined", label: "Oxford" }
					, {value: "Parc Malbosc", lat: "undefined", lon: "undefined", label: "Parc Malbosc" }
					, {value: "Pierre Cardenal", lat: "undefined", lon: "undefined", label: "Pierre Cardenal" }
					, {value: "Pl. D'italie", lat: "undefined", lon: "undefined", label: "Place d'Italie" }
					, {value: "Raimbaud'orang", lat: "undefined", lon: "undefined", label: "Raimbaud d'Orange" }
					, {value: "Uppsala", lat: "undefined", lon: "undefined", label: "Uppsala" } ]);
			}
			
			return _data;
		}
		
		public static var directionsArray:Array = [ {value: "Coubertin", label: "Pierre de Coubertin"}
			,{value: "H. Departement", label: "Hôtel du Département"} ];
		
	}
}