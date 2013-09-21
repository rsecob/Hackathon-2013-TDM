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
				_data = new ListCollection([ { value: "1", label: "Ligne 1", id: "1" , icon: EmbeddedAssets.LIGNE_1_ICON },
					{ value: "2", label: "Ligne 2", id: "12" , icon: EmbeddedAssets.LIGNE_2_ICON },
					{ value: "3", label: "Ligne 3", id: "22" , icon: EmbeddedAssets.LIGNE_3_ICON },
					{ value: "4", label: "Ligne 4", id: "33" , icon: EmbeddedAssets.LIGNE_4_ICON },
					{ value: "6", label: "Ligne 6", id: "35" , icon: EmbeddedAssets.LIGNE_6_ICON },
					{ value: "7", label: "Ligne 7", id: "36" , icon: EmbeddedAssets.LIGNE_7_ICON },
					{ value: "8", label: "Ligne 8", id: "37" , icon: EmbeddedAssets.LIGNE_8_ICON },
					{ value: "9", label: "Ligne 9", id: "38" , icon: EmbeddedAssets.LIGNE_9_ICON },
					{ value: "10", label: "Ligne 10", id: "2" , icon: EmbeddedAssets.LIGNE_10_ICON },
					{ value: "11", label: "Ligne 11", id: "3" , icon: EmbeddedAssets.LIGNE_11_ICON },
					{ value: "12", label: "Ligne 12", id: "4" , icon: EmbeddedAssets.LIGNE_12_ICON },
					{ value: "13", label: "La Navette", id: "5" , icon: EmbeddedAssets.LIGNE_13_ICON },
					{ value: "14", label: "Ligne 14", id: "6" , icon: EmbeddedAssets.LIGNE_14_ICON },
					{ value: "15", label: "La Ronde", id: "7" , icon: EmbeddedAssets.LIGNE_15_ICON },
					{ value: "16", label: "Ligne 16", id: "8" , icon: EmbeddedAssets.LIGNE_16_ICON },
					{ value: "17", label: "Ligne 17", id: "9" , icon: EmbeddedAssets.LIGNE_17_ICON },
					{ value: "18", label: "Ligne 18", id: "10" , icon: EmbeddedAssets.LIGNE_18_ICON },
					{ value: "19", label: "Ligne 19", id: "11" , icon: EmbeddedAssets.LIGNE_19_ICON },
					{ value: "20", label: "Ligne 20", id: "13" , icon: EmbeddedAssets.LIGNE_20_ICON },
					{ value: "21", label: "Ligne 21", id: "14" , icon: EmbeddedAssets.LIGNE_21_ICON },
					{ value: "22", label: "Ligne 22", id: "15" , icon: EmbeddedAssets.LIGNE_22_ICON },
					{ value: "23", label: "Ligne 23", id: "16" , icon: EmbeddedAssets.LIGNE_23_ICON },
					{ value: "24", label: "Ligne 24", id: "17" , icon: EmbeddedAssets.LIGNE_24_ICON },
					{ value: "25", label: "Ligne 25", id: "18" , icon: EmbeddedAssets.LIGNE_25_ICON },
					{ value: "28", label: "Ligne 28", id: "20" , icon: EmbeddedAssets.LIGNE_28_ICON },
					{ value: "29", label: "Ligne 29", id: "21" , icon: EmbeddedAssets.LIGNE_29_ICON },
					{ value: "30", label: "Ligne 30", id: "23" , icon: EmbeddedAssets.LIGNE_30_ICON },
					{ value: "31", label: "Ligne 31", id: "24" , icon: EmbeddedAssets.LIGNE_31_ICON },
					{ value: "32", label: "Ligne 32", id: "25" , icon: EmbeddedAssets.LIGNE_32_ICON },
					{ value: "33", label: "Ligne 33", id: "26" , icon: EmbeddedAssets.LIGNE_33_ICON },
					{ value: "34", label: "Ligne 34", id: "27" , icon: EmbeddedAssets.LIGNE_34_ICON },
					{ value: "35", label: "Ligne 35", id: "28" , icon: EmbeddedAssets.LIGNE_35_ICON },
					{ value: "36", label: "Ligne 36", id: "29" , icon: EmbeddedAssets.LIGNE_36_ICON },
					{ value: "37", label: "Ligne 37", id: "30" , icon: EmbeddedAssets.LIGNE_37_ICON },
					{ value: "38", label: "Ligne 38", id: "31" , icon: EmbeddedAssets.LIGNE_38_ICON },
					{ value: "39", label: "Ligne 39", id: "32" , icon: EmbeddedAssets.LIGNE_39_ICON },
					{ value: "41", label: "Ligne 41", id: "34" , icon: EmbeddedAssets.LIGNE_41_ICON }
				 ]);
			}
			
			return _data;
		}
	}
}