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

package data
{
	import feathers.data.EmbeddedAssets;
	import feathers.data.ListCollection;

	public class LignesData
	{
		public function LignesData()
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
				_data = new ListCollection([ {value: "1", label: "Ligne 1", icon: EmbeddedAssets.LIGNE_1_ICON}
					,{value: "2", label: "Ligne 2", icon: EmbeddedAssets.LIGNE_2_ICON}
					,{value: "3", label: "Ligne 3", icon: EmbeddedAssets.LIGNE_3_ICON}
					,{value: "4", label: "Ligne 4", icon: EmbeddedAssets.LIGNE_4_ICON}
					,{value: "6", label: "Ligne 6", icon: EmbeddedAssets.LIGNE_6_ICON}
					,{value: "7", label: "Ligne 7", icon: EmbeddedAssets.LIGNE_7_ICON}
					,{value: "8", label: "Ligne 8", icon: EmbeddedAssets.LIGNE_8_ICON}
					,{value: "9", label: "Ligne 9", icon: EmbeddedAssets.LIGNE_9_ICON}
					,{value: "10", label: "Ligne 10", icon: EmbeddedAssets.LIGNE_10_ICON}
					,{value: "11", label: "Ligne 11", icon: EmbeddedAssets.LIGNE_11_ICON}
					,{value: "12", label: "Ligne 12", icon: EmbeddedAssets.LIGNE_12_ICON}
					,{value: "13", label: "Ligne 13", icon: EmbeddedAssets.LIGNE_13_ICON}
					,{value: "14", label: "Ligne 14", icon: EmbeddedAssets.LIGNE_14_ICON}
					,{value: "15", label: "Ligne 15", icon: EmbeddedAssets.LIGNE_15_ICON}
					,{value: "16", label: "Ligne 16", icon: EmbeddedAssets.LIGNE_16_ICON}
					,{value: "19", label: "Ligne 19", icon: EmbeddedAssets.LIGNE_19_ICON} ]);
			}
			
			return _data;
		}
	}
}