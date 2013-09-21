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
	
	public class Ligne11Data
	{
		public function Ligne11Data()
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
				_data = new ListCollection([ { label: "Anatole France", id_1: "44", lat: "43.6055685075168", lng: "3.8763779114993" },
					{ label: "Bagatelle", id_1: "166", id_2: "134", lat: "43.5950546909237", lng: "3.84418316658468" },
					{ label: "Chasseurs", id_1: "159", id_2: "123", lat: "43.6033074525232", lng: "3.85636323597415" },
					{ label: "Cheng-Du", id_1: "164", id_2: "118", lat: "43.5933203314842", lng: "3.84349425493372" },
					{ label: "Cité Gély", id_1: "158", id_2: "124", lat: "43.6046636307651", lng: "3.85900955998146" },
					{ label: "Cité Valette", id_1: "121", id_2: "161", lat: "43.6014644725049", lng: "3.85188570320761" },
					{ label: "Claret", id_1: "125", id_2: "157", lat: "43.6057879422227", lng: "3.8621570367761" },
					{ label: "Collège Marcel Pagnol", id_1: "165", id_2: "135", lat: "43.5969648066472", lng: "3.84516124965975" },
					{ label: "Craponne", id_1: "550", lat: "43.6061963367803", lng: "3.86761126860044" },
					{ label: "Figuerolles", id_1: "156", id_2: "553", lat: "43.6064502168869", lng: "3.86427783378151" },
					{ label: "Gambetta", id_1: "42", id_2: "7", lat: "43.6072608273034", lng: "3.87052234193997" },
					{ label: "Gare Saint-Roch", id_1: "1", lat: "43.6049706716887", lng: "3.87921949262933" },
					{ label: "Les Bouisses", id_1: "307", id_2: "278", lat: "43.5987552465326", lng: "3.83535002286381" },
					{ label: "Les Roses", id_1: "122", id_2: "160", lat: "43.6025606787905", lng: "3.85448781446999" },
					{ label: "Observatoire", id_1: "51", lat: "43.6064389353025", lng: "3.87648797097934" },
					{ label: "Palissade", id_1: "503", lat: "43.6074262128139", lng: "3.86963603622364" },
					{ label: "Pas du Loup", id_1: "211", id_2: "242", lat: "43.6001236780564", lng: "3.84812682355374" },
					{ label: "Paul Fajon", id_1: "167", id_2: "132", lat: "43.5954646250803", lng: "3.83732929911734" },
					{ label: "Plan Cabanes", id_1: "555", lat: "43.6081693355143", lng: "3.86857964595194" },
					{ label: "Renouvier", id_1: "554", lat: "43.6071219610824", lng: "3.86636182045032" },
					{ label: "Rouget de Lisle", id_1: "119", id_2: "163", lat: "43.5948005699349", lng: "3.83983506277174" },
					{ label: "Saint-Denis", id_1: "43", lat: "43.6060111920569", lng: "3.87306199397269" } ]);
			}
			
			return _data;
		}
		
	}
}