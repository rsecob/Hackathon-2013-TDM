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
	
	public class Ligne10Data
	{
		public function Ligne10Data()
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
				_data = new ListCollection([{ label: "Aiguelongue", id_1: "205", id_2: "185", lat: "43.6267837525389", lng: "3.88208583796042" },
					{ label: "Aiguelongue (Jussieu)", id_1: "491", lat: "43.6384122435896", lng: "3.8830195027053" },
					{ label: "Alpilles", id_1: "497", id_2: "483", lat: "43.6297773209993", lng: "3.87956781957508" },
					{ label: "Antoine-Laurent de Jussieu", id_1: "488", id_2: "492", lat: "43.6372759965417", lng: "3.88011703757505" },
					{ label: "Avenue de l'Agriculture", id_1: "351", id_2: "381", lat: "43.6121045511517", lng: "3.86110085609429" },
					{ label: "Belvédère", id_1: "343", id_2: "389", lat: "43.6169960788129", lng: "3.84239895036123" },
					{ label: "Celleneuve", id_1: "412", id_2: "440", lat: "43.6160378798381", lng: "3.82589254164288" },
					{ label: "Chantecler", id_1: "484", id_2: "496", lat: "43.6325382549738", lng: "3.87823144945291" },
					{ label: "Charles Flahault", id_1: "187", lat: "43.6184121915158", lng: "3.86641672825558" },
					{ label: "Clolus", id_1: "482", id_2: "498", lat: "43.6287845637636", lng: "3.88110038986704" },
					{ label: "Doria", id_1: "293", lat: "43.612493581044", lng: "3.86792851848614" },
					{ label: "Érables", id_1: "383", id_2: "349", lat: "43.614911604712", lng: "3.85710503483649" },
					{ label: "Espérance", id_1: "346", id_2: "386", lat: "43.6141125001356", lng: "3.84998173280646" },
					{ label: "Fac de Pharmacie", id_1: "453", lat: "43.6244738173732", lng: "3.86305217852267" },
					{ label: "Glycines", id_1: "380", id_2: "352", lat: "43.6120030178798", lng: "3.86320146212474" },
					{ label: "Henri Dunant", id_1: "407", id_2: "444", lat: "43.6268703093627", lng: "3.86904418370386" },
					{ label: "Hippolyte Rech", id_1: "186", id_2: "206", lat: "43.6201474515514", lng: "3.86512679044356" },
					{ label: "La Pile", id_1: "74", lat: "43.6173183294404", lng: "3.86811973689509" },
					{ label: "Las Cazes", id_1: "387", id_2: "345", lat: "43.6165324032967", lng: "3.8466431672768" },
					{ label: "Las Sorbès", id_1: "348", id_2: "384", lat: "43.6151585360101", lng: "3.85488444807347" },
					{ label: "Louvain", id_1: "350", id_2: "382", lat: "43.6135139246229", lng: "3.8586886623758" },
					{ label: "Marie Caizergues", id_1: "489", id_2: "204", lat: "43.6212869915203", lng: "3.87542810738973" },
					{ label: "Marie Curie", id_1: "39", id_2: "10", lat: "43.6147517362541", lng: "3.83115462710913" },
					{ label: "Moulin de Gasconnet", id_1: "494", id_2: "486", lat: "43.6338309991395", lng: "3.87456556176909" },
					{ label: "Nazareth", id_1: "184", id_2: "202", lat: "43.6216853966435", lng: "3.88027730699587" },
					{ label: "Paladilhe", id_1: "379", id_2: "256", lat: "43.6123429616735", lng: "3.86650163928614" },
					{ label: "Petit Bard", id_1: "40", id_2: "9", lat: "43.614571018828", lng: "3.83512160415726" },
					{ label: "Pierre d'Adhémar", id_1: "439", id_2: "477", lat: "43.62216921338", lng: "3.86391868361458" },
					{ label: "Pierre Rouge", id_1: "499", id_2: "481", lat: "43.6229384751649", lng: "3.88255102820205" },
					{ label: "Pioch de Boutonnet", id_1: "485", id_2: "495", lat: "43.6337981064534", lng: "3.8775104522385" },
					{ label: "Renaudel", id_1: "11", id_2: "38", lat: "43.614640096864", lng: "3.8281698327723" },
					{ label: "René Bougnol", id_1: "493", id_2: "487", lat: "43.6364745563365", lng: "3.87389409785518" },
					{ label: "Saint Clément", id_1: "388", id_2: "344", lat: "43.6177219955986", lng: "3.8444968569179" },
					{ label: "Saint Gabriel", id_1: "347", id_2: "385", lat: "43.6145904409991", lng: "3.85244424401871" },
					{ label: "Saint-Éloi", id_1: "452", id_2: "419", lat: "43.626387494846", lng: "3.86695213067227" },
					{ label: "Saint-Roch", id_1: "73", lat: "43.6152010586818", lng: "3.86972097175336" },
					{ label: "Sainte-Odile", id_1: "490", id_2: "203", lat: "43.6227685847907", lng: "3.87301781336488" },
					{ label: "Tonnelles", id_1: "8", id_2: "41", lat: "43.6140541100597", lng: "3.8380404003282" } ]);
			}
			
			return _data;
		}

	}
}