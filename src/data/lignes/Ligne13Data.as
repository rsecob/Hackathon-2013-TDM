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
	
	public class Ligne13Data
	{
		public function Ligne13Data()
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
				_data = new ListCollection([ { label: "Agropolis", id_1: "207", id_2: "208", lat: "43.6464311646413", lng: "3.86847981293678" },
					{ label: "Campus Agropolis", id_1: "541", id_2: "540", lat: "43.6450342336826", lng: "3.86872706214249" },
					{ label: "École d'Architecture", id_1: "223", id_2: "231", lat: "43.6377261295196", lng: "3.85912366565802" },
					{ label: "Écossais", id_1: "222", lat: "43.6373838835043", lng: "3.85980770441427" },
					{ label: "Eugène Bataillon", id_1: "233", id_2: "220", lat: "43.6317126897647", lng: "3.86034952784365" },
					{ label: "Fac de Lettres", id_1: "196", id_2: "176", lat: "43.6304333375576", lng: "3.86946158621049" },
					{ label: "Gascogne", id_1: "232", id_2: "221", lat: "43.63438879211", lng: "3.85991346959803" },
					{ label: "Henri Dunant", id_1: "407", lat: "43.6268703093627", lng: "3.86904418370386" },
					{ label: "Hortus", id_1: "183", id_2: "201", lat: "43.6432228158704", lng: "3.86012441140254" },
					{ label: "Lavalette", id_1: "210", id_2: "188", lat: "43.6375575674507", lng: "3.86915772114732" },
					{ label: "Lycée Frédéric Bazille", id_1: "542", id_2: "539", lat: "43.6447836226638", lng: "3.8622829647471" },
					{ label: "Maurice Chauvet", id_1: "224", id_2: "230", lat: "43.6386436638714", lng: "3.85652395191788" },
					{ label: "Pic Saint-Loup", id_1: "229", id_2: "225", lat: "43.6391238886662", lng: "3.85433339733278" },
					{ label: "Plan des 4 Seigneurs", id_1: "226", id_2: "790", lat: "43.640844025545", lng: "3.85795656017386" },
					{ label: "Saint-Éloi", id_1: "538", lat: "43.6270105263017", lng: "3.86675843891466" },
					{ label: "Universités Sciences et Lettres", id_1: "234", id_2: "219", lat: "43.6293747630475", lng: "3.86102971892555" },
					{ label: "Vert Bois", id_1: "177", id_2: "195", lat: "43.6353031499059", lng: "3.8683793182576" },
					{ label: "Zoo", id_1: "189", id_2: "209", lat: "43.6399642433204", lng: "3.87314631500562" } ]);
			}
			
			return _data;
		}
		
	}
}