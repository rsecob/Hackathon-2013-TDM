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
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Cité de l'Arme", id_1: "106", id_2: "67", lat: "43.593626969366", lng: "3.88919150114047" },
					{ label: "Cité Mion", id_1: "71", id_2: "102", lat: "43.6013411253374", lng: "3.88472519310408" },
					{ label: "Frédéric Bazille", id_1: "557", lat: "43.6027043748847", lng: "3.88054379500569" },
					{ label: "Frédéric Fabrèges", id_1: "69", id_2: "104", lat: "43.597358550259", lng: "3.88662111976752" },
					{ label: "Garcia Lorca", id_1: "66", id_2: "107", lat: "43.5911671394424", lng: "3.89021305241502" },
					{ label: "Gare Saint-Roch", id_1: "4", id_2: "2", lat: "43.604132144047", lng: "3.87813296304905" },
					{ label: "Henri René", id_1: "327", lat: "43.6031682633384", lng: "3.88205317273247" },
					{ label: "Industrie", id_1: "111", id_2: "62", lat: "43.5847270443913", lng: "3.88167814746025" },
					{ label: "Iris", id_1: "103", id_2: "70", lat: "43.5987514886261", lng: "3.885397204296" },
					{ label: "Lucullus", id_1: "68", id_2: "105", lat: "43.5948225347089", lng: "3.88856844026861" },
					{ label: "Marché Gare", id_1: "63", id_2: "110", lat: "43.5838587086265", lng: "3.88582215427689" },
					{ label: "Mas Argelliers", id_1: "108", id_2: "65", lat: "43.5864911625409", lng: "3.8890594697363" },
					{ label: "Mas Saint-Pierre", id_1: "61", id_2: "112", lat: "43.5821086301202", lng: "3.87996267769651" },
					{ label: "Place Carnot", id_1: "326", lat: "43.6033043854567", lng: "3.88385059559379" },
					{ label: "Place de Strasbourg", id_1: "72", lat: "43.6031697265646", lng: "3.88006154730388" },
					{ label: "Saporta", id_1: "64", id_2: "109", lat: "43.5843102832752", lng: "3.88818403545391" },
					{ label: "Tournezy", id_1: "60", lat: "43.5790815952633", lng: "3.87790247905316" } ]);
			}
			
			return _data;
		}
		
	}
}