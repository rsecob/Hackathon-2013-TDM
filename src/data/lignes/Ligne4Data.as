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
	
	public class Ligne4Data
	{
		public function Ligne4Data()
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
				_data = new ListCollection([ { label: "Corum", id_1: "1158", id_2: "1185", lat: "43.6142538878797", lng: "3.88195716825633" },
					{ label: "Garcia Lorca", id_1: "1282", id_2: "1300", lat: "43.5910407295796", lng: "3.89087748719573" },
					{ label: "Gare Saint-Roch", id_1: "1279", id_2: "1303", lat: "43.605351081248", lng: "3.87965038044627" },
					{ label: "Georges Frêche Hôtel de Ville", id_1: "1298", id_2: "1284", lat: "43.5993528646136", lng: "3.89485165719292" },
					{ label: "La Rauze", id_1: "1283", id_2: "1299", lat: "43.5934705270149", lng: "3.8956930946039" },
					{ label: "Les Aubes", id_1: "1219", id_2: "1248", lat: "43.6139711840498", lng: "3.88851955268758" },
					{ label: "Louis Blanc", id_1: "1186", id_2: "1157", lat: "43.614736216221", lng: "3.87839439343216" },
					{ label: "Nouveau Saint-Roch", id_1: "1213", id_2: "1254", lat: "43.5994929707284", lng: "3.87564516827548" },
					{ label: "Observatoire", id_1: "1278", id_2: "1304", lat: "43.6064472174367", lng: "3.87653767936612" },
					{ label: "Place Albert 1er", id_1: "1156", id_2: "1187", lat: "43.6164493475913", lng: "3.87424603509102" },
					{ label: "Place de l'Europe", id_1: "1179", id_2: "1164", lat: "43.6073039939688", lng: "3.89393035868125" },
					{ label: "Pompignane", id_1: "1249", id_2: "1218", lat: "43.6124501254217", lng: "3.89489962500101" },
					{ label: "Restanque", id_1: "1301", id_2: "1281", lat: "43.5904335598282", lng: "3.88494913850408" },
					{ label: "Rives du Lez", id_1: "1165", id_2: "1178", lat: "43.6040712861004", lng: "3.89493087057306" },
					{ label: "Rondelet", id_1: "1253", id_2: "1214", lat: "43.6030784578395", lng: "3.87637265425441" },
					{ label: "Saint-Denis", id_1: "1277", lat: "43.6056690419268", lng: "3.87373320298287" },
					{ label: "Saint-Martin", id_1: "1280", id_2: "1302", lat: "43.5922730822352", lng: "3.88015063500089" } ]);
			}
			
			return _data;
		}
		
	}
}


