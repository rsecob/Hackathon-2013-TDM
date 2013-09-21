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
	
	public class Ligne9Data
	{
		public function Ligne9Data()
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
				_data = new ListCollection([{ label: "Albert Einstein", id_1: "511", id_2: "520", lat: "43.6131461320041", lng: "3.93713481321889" },
					{ label: "Alfred Nobel", id_1: "514", id_2: "531", lat: "43.6164184164071", lng: "3.91078413583713" },
					{ label: "André Malraux", id_1: "372", id_2: "357", lat: "43.6195016047928", lng: "3.90026441974371" },
					{ label: "Apollo", id_1: "367", id_2: "365", lat: "43.621890487853", lng: "3.90849713777414" },
					{ label: "Cimetière Saint-Étienne", id_1: "519", id_2: "512", lat: "43.6148946865643", lng: "3.93561239984086" },
					{ label: "Cinq Chalets", id_1: "369", id_2: "377", lat: "43.6085913727849", lng: "3.89879046096751" },
					{ label: "Colverts", id_1: "375", id_2: "354", lat: "43.6137074779732", lng: "3.89810139405042" },
					{ label: "Domaine de la Pompignane", id_1: "396", id_2: "366", lat: "43.6217736431459", lng: "3.90663771640475" },
					{ label: "Eurêka", id_1: "532", id_2: "513", lat: "43.6178867188952", lng: "3.91243320698787" },
					{ label: "Évariste Galois", id_1: "362", id_2: "522", lat: "43.609269176775", lng: "3.9121831151654" },
					{ label: "François Couperin", id_1: "501", id_2: "479", lat: "43.612882419269", lng: "3.90355997076415" },
					{ label: "Georges Méliès", id_1: "398", id_2: "364", lat: "43.6067940942977", lng: "3.92284093319964" },
					{ label: "Grammont", id_1: "518", lat: "43.6141228044854", lng: "3.93065391429186" },
					{ label: "Guglielmo Marconi", id_1: "454", id_2: "415", lat: "43.61186418833", lng: "3.91239079037532" },
					{ label: "Louis Lépine", id_1: "360", id_2: "394", lat: "43.6146278792328", lng: "3.91459521937689" },
					{ label: "Marie Durand", id_1: "373", id_2: "356", lat: "43.6183673288716", lng: "3.89788231873107" },
					{ label: "Paul Painlevé", id_1: "376", id_2: "353", lat: "43.6105273248078", lng: "3.89857121474418" },
					{ label: "Pierre Laroque", id_1: "475", id_2: "435", lat: "43.6211786789844", lng: "3.9042701931816" },
					{ label: "Pinville", id_1: "478", id_2: "502", lat: "43.6138650561147", lng: "3.90585118228076" },
					{ label: "Place de France", id_1: "368", id_2: "399", lat: "43.6036895748809", lng: "3.91506008433915" },
					{ label: "Place de l'Europe", id_1: "392", id_2: "371", lat: "43.6074715265701", lng: "3.89415761386362" },
					{ label: "Saint-Jean", id_1: "355", id_2: "374", lat: "43.6154653182185", lng: "3.89776587646284" },
					{ label: "Saint-Michel", id_1: "378", id_2: "370", lat: "43.6061314907569", lng: "3.89856236821735" },
					{ label: "Samuel Morse", id_1: "363", id_2: "397", lat: "43.6063885552467", lng: "3.91306863594444" },
					{ label: "Sémard", id_1: "359", id_2: "358", lat: "43.6191662745309", lng: "3.90355912959453" },
					{ label: "Vieille Poste", id_1: "500", id_2: "480", lat: "43.6108074880023", lng: "3.90033574225849" },
					{ label: "Volta Fizeau", id_1: "361", id_2: "395", lat: "43.6138734599318", lng: "3.91331233086448" },
					{ label: "Zénith", id_1: "521", id_2: "510", lat: "43.6122286146762", lng: "3.93108359031285" } ]);
			}
			
			return _data;
		}
		
	}
}