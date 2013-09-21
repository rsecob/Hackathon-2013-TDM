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
	
	public class Ligne3Data
	{
		public function Ligne3Data()
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
				_data = new ListCollection([ { label: "Astruc", id_1: "1274", id_2: "1308", lat: "43.6101901656071", lng: "3.85467816669653" },
					{ label: "Boirargues", id_1: "1296", id_2: "1286", lat: "43.5827424111593", lng: "3.92558646860367" },
					{ label: "Celleneuve", id_1: "1314", id_2: "1268", lat: "43.6156061939827", lng: "3.82590603272639" },
					{ label: "Centre", id_1: "1316", lat: "43.5707492411912", lng: "3.90534755848525" },
					{ label: "Cougourlude", id_1: "1291", id_2: "1317", lat: "43.5713566155736", lng: "3.91426615862094" },
					{ label: "EcoPôle", id_1: "1287", id_2: "1295", lat: "43.5781554165651", lng: "3.93489368914411" },
					{ label: "Gare Saint-Roch", id_1: "1279", id_2: "1303", lat: "43.605351081248", lng: "3.87965038044627" },
					{ label: "Hauts de la Lironde", id_1: "1290", id_2: "1318", lat: "43.5750808812682", lng: "3.92269034967663" },
					{ label: "Hôtel du Département", id_1: "1270", id_2: "1312", lat: "43.6218017033289", lng: "3.83490295770799" },
					{ label: "Jules Guesde", id_1: "1309", id_2: "1273", lat: "43.6115073328732", lng: "3.84663405649798" },
					{ label: "Juvignac", id_1: "1266", lat: "43.6174850753856", lng: "3.81014168845545" },
					{ label: "Les Arceaux", id_1: "1275", id_2: "1307", lat: "43.6098956946996", lng: "3.86219250369623" },
					{ label: "Mosson", id_1: "1267", id_2: "1315", lat: "43.616223022779", lng: "3.81961176245642" },
					{ label: "Moularès (Hôtel de Ville)", id_1: "1177", id_2: "1166", lat: "43.6007378719135", lng: "3.89543371634385" },
					{ label: "Observatoire", id_1: "1278", id_2: "1304", lat: "43.6064472174367", lng: "3.87653767936612" },
					{ label: "Pablo Picasso", id_1: "1285", id_2: "1297", lat: "43.5978817223193", lng: "3.90334649118577" },
					{ label: "Parc Expo", id_1: "1288", id_2: "1294", lat: "43.5729914003502", lng: "3.94546909162006" },
					{ label: "Pergola", id_1: "1271", id_2: "1311", lat: "43.6176378844592", lng: "3.83955756794993" },
					{ label: "Pérols Centre", id_1: "1289", id_2: "1293", lat: "43.565552992202", lng: "3.9571773613321" },
					{ label: "Pérols Étang de l'Or", id_1: "1292", lat: "43.5580406963095", lng: "3.9635652386215" },
					{ label: "Pilory", id_1: "1313", id_2: "1269", lat: "43.61957443555", lng: "3.83214699993398" },
					{ label: "Place Carnot", id_1: "1215", id_2: "1252", lat: "43.6038310309685", lng: "3.88411227333693" },
					{ label: "Plan Cabanes", id_1: "1306", id_2: "1276", lat: "43.6085719073046", lng: "3.868083201233" },
					{ label: "Port Marianne", id_1: "1167", id_2: "1176", lat: "43.6015763562532", lng: "3.89962538372382" },
					{ label: "Rives du Lez", id_1: "1250", id_2: "1217", lat: "43.6039889975652", lng: "3.89377814079108" },
					{ label: "Saint-Denis", id_1: "1305", id_2: "1277", lat: "43.6059623971558", lng: "3.87333284741337" },
					{ label: "Tonnelles", id_1: "1310", id_2: "1272", lat: "43.6136209942391", lng: "3.83945187947761" },
					{ label: "Voltaire", id_1: "1251", id_2: "1216", lat: "43.6035799101074", lng: "3.88909086176948" } ]);
			}
			
			return _data;
		}
		
	}
}