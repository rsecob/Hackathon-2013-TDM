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
	
	public class Ligne17Data
	{
		public function Ligne17Data()
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
				_data = new ListCollection([ { label: "Irissou", id_1: "565", id_2: "573", lat: "43.5939466330712", lng: "3.85271292945651" },
					{ label: "Lavandin", id_1: "561", lat: "43.6003463922959", lng: "3.85148495381712" },
					{ label: "Le Grand M", id_1: "215", id_2: "462", lat: "43.5909717821731", lng: "3.85458812505853" },
					{ label: "Mas de Bagnères", id_1: "471", id_2: "432", lat: "43.5875102797689", lng: "3.85846602499" },
					{ label: "Puccini", id_1: "564", id_2: "572", lat: "43.595226565229", lng: "3.85439193885249" },
					{ label: "Sabines", id_1: "429", lat: "43.583789674407", lng: "3.86030846256513" },
					{ label: "Vivaldi", id_1: "571", id_2: "563", lat: "43.5970181629534", lng: "3.85612173838912" },
					{ label: "Winston Churchill", id_1: "562", id_2: "570", lat: "43.5992598884724", lng: "3.85588448474994" } ]);
			}
			
			return _data;
		}
		
	}
}