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
	
	public class Ligne15Data
	{
		public function Ligne15Data()
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
				_data = new ListCollection([ { label: "Aiguelongue", id_1: "185", id_2: "205", lat: "43.6263957511812", lng: "3.88218671856429" },
					{ label: "Belvédère", id_1: "389", id_2: "343", lat: "43.6172625705801", lng: "3.84262869919216" },
					{ label: "Bengalis", id_1: "403", id_2: "448", lat: "43.628614285569", lng: "3.88295220055258" },
					{ label: "Bugarel", id_1: "473", id_2: "433", lat: "43.591736923076", lng: "3.84487482010559" },
					{ label: "Castelle", id_1: "171", id_2: "200", lat: "43.5866601695928", lng: "3.87218308669473" },
					{ label: "Charles de Gaulle", id_1: "464", id_2: "427", lat: "43.6281043038585", lng: "3.89656438921334" },
					{ label: "Cheng-Du", id_1: "118", id_2: "164", lat: "43.5939299820511", lng: "3.84296611938874" },
					{ label: "Cinsaults", id_1: "77", id_2: "96", lat: "43.6205866570557", lng: "3.85692200803573" },
					{ label: "Demeter", id_1: "534", id_2: "516", lat: "43.5835224590908", lng: "3.87221007629706" },
					{ label: "Ettore Bugatti", id_1: "438", id_2: "457", lat: "43.5784396439918", lng: "3.86676884440674" },
					{ label: "Fac de Pharmacie", id_1: "408", id_2: "453", lat: "43.6235950644405", lng: "3.86161794682938" },
					{ label: "Garosud (Jeune Parque)", id_1: "181", id_2: "170", lat: "43.5809836236162", lng: "3.86931010408987" },
					{ label: "Goélands", id_1: "455", id_2: "414", lat: "43.6165014908657", lng: "3.90320143362655" },
					{ label: "Henri Dunant", id_1: "444", id_2: "407", lat: "43.6267982434541", lng: "3.8690546255953" },
					{ label: "Henri Marès", id_1: "95", id_2: "78", lat: "43.6201017379391", lng: "3.85432289671413" },
					{ label: "Jasse de Maurin", id_1: "420", id_2: "472", lat: "43.5795569359663", lng: "3.86276762755702" },
					{ label: "Jean Calvin", id_1: "441", id_2: "411", lat: "43.6185743575433", lng: "3.84590522667721" },
					{ label: "La Pompignane (Les Lacs)", id_1: "329", id_2: "322", lat: "43.6246632292962", lng: "3.89953947163166" },
					{ label: "Lagoya", id_1: "423", id_2: "467", lat: "43.6121709930806", lng: "3.9061263315752" },
					{ label: "Le Grand M", id_1: "215", id_2: "462", lat: "43.5909717821731", lng: "3.85458812505853" },
					{ label: "Les Bouisses", id_1: "307", id_2: "551", lat: "43.5987552465326", lng: "3.83535002286381" },
					{ label: "Les Pins", id_1: "885", id_2: "173", lat: "43.5911458626373", lng: "3.87345384895569" },
					{ label: "Louis Ravaz", id_1: "94", id_2: "79", lat: "43.6200064394645", lng: "3.8521425135668" },
					{ label: "Lycée Jules Ferry", id_1: "264", id_2: "285", lat: "43.6087094176474", lng: "3.84098047379125" },
					{ label: "Major Flandre", id_1: "406", id_2: "445", lat: "43.6270804078247", lng: "3.87261403434627" },
					{ label: "Martellière", id_1: "284", id_2: "265", lat: "43.6071737551704", lng: "3.83828019885106" },
					{ label: "Mas de Bagnères", id_1: "432", id_2: "471", lat: "43.5868786438899", lng: "3.8586347092016" },
					{ label: "Maurice Chevalier", id_1: "450", id_2: "401", lat: "43.628268264615", lng: "3.88765810286778" },
					{ label: "Millénaire", id_1: "418", id_2: "458", lat: "43.6034444255464", lng: "3.90843496228008" },
					{ label: "Ormeaux", id_1: "308", id_2: "275", lat: "43.6030089090294", lng: "3.83328441537796" },
					{ label: "Parc de la Lironde", id_1: "468", id_2: "422", lat: "43.6085247859529", lng: "3.90649628223077" },
					{ label: "Passerines", id_1: "172", id_2: "886", lat: "43.5884276159416", lng: "3.87242845815497" },
					{ label: "Pastourelles", id_1: "470", id_2: "431", lat: "43.6218353435453", lng: "3.9005139339348" },
					{ label: "Patrice Lumumba", id_1: "460", id_2: "430", lat: "43.5789404709457", lng: "3.86440811560615" },
					{ label: "Paul Fajon", id_1: "167", id_2: "552", lat: "43.5954646250803", lng: "3.83732929911734" },
					{ label: "Pierre Laroque", id_1: "435", id_2: "475", lat: "43.6213936316369", lng: "3.90432559169825" },
					{ label: "Pinville", id_1: "424", id_2: "466", lat: "43.6140504968765", lng: "3.90484168893734" },
					{ label: "Place de France", id_1: "399", id_2: "368", lat: "43.6036694375821", lng: "3.91520797762296" },
					{ label: "Rièges", id_1: "442", id_2: "410", lat: "43.6195789550144", lng: "3.8492851386416" },
					{ label: "Roqueturière", id_1: "449", id_2: "402", lat: "43.629867625509", lng: "3.88583270790875" },
					{ label: "Rouget de Lisle", id_1: "163", id_2: "119", lat: "43.5945971519245", lng: "3.83959470779995" },
					{ label: "Sabines", id_1: "429", id_2: "461", lat: "43.583789674407", lng: "3.86030846256513" },
					{ label: "Saint-Cléophas", id_1: "436", id_2: "437", lat: "43.5949296023676", lng: "3.87541093598868" },
					{ label: "Saint-Éloi", id_1: "459", id_2: "452", lat: "43.6263786834231", lng: "3.86693951898018" },
					{ label: "Saint-Lazare", id_1: "428", id_2: "463", lat: "43.6273229872688", lng: "3.8890061481502" },
					{ label: "Sainte-Catherine", id_1: "405", id_2: "446", lat: "43.626435807529", lng: "3.87622275116782" },
					{ label: "Salaison", id_1: "330", id_2: "321", lat: "43.6237950778361", lng: "3.89864945536279" },
					{ label: "Sémard", id_1: "465", id_2: "425", lat: "43.6197137459128", lng: "3.90424235874107" },
					{ label: "Sophie Germain", id_1: "274", id_2: "309", lat: "43.6050300445204", lng: "3.83534144174039" },
					{ label: "TaM", id_1: "533", id_2: "515", lat: "43.581404263872", lng: "3.87007570114867" },
					{ label: "Tonnelles", id_1: "456", id_2: "417", lat: "43.6133287397371", lng: "3.83913487394875" },
					{ label: "Tourterelles", id_1: "447", id_2: "404", lat: "43.6257100464236", lng: "3.87857927433182" },
					{ label: "Vauguières", id_1: "421", id_2: "469", lat: "43.6042098342509", lng: "3.90648904845312" },
					{ label: "Voie Domitienne", id_1: "409", id_2: "443", lat: "43.6222653030138", lng: "3.85965199275044" },
					{ label: "Yves du Manoir", id_1: "474", id_2: "434", lat: "43.5914371580579", lng: "3.84831756441027" } ]);
			}
			
			return _data
		}
		
	}
}