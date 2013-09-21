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
	
	public class Ligne6Data
	{
		public function Ligne6Data()
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
				_data = new ListCollection([ { label: "Alco", id_1: "90", id_2: "83", lat: "43.6258279063947", lng: "3.83952559337348" },
					{ label: "Ambroise Paré", id_1: "46", lat: "43.6380121390239", lng: "3.84769396815333" },
					{ label: "Anatole France", id_1: "44", lat: "43.6055685075168", lng: "3.8763779114993" },
					{ label: "Antennes", id_1: "57", id_2: "48", lat: "43.6446775150869", lng: "3.84225010122023" },
					{ label: "Apothicaires", id_1: "87", id_2: "117", lat: "43.6416055356031", lng: "3.83493987782508" },
					{ label: "Appel du 18 Juin", id_1: "556", lat: "43.6365468360809", lng: "3.83020264138175" },
					{ label: "Avenue de Toulouse", id_1: "237", id_2: "216", lat: "43.5918215839685", lng: "3.85808612377915" },
					{ label: "Berthelot", id_1: "199", id_2: "174", lat: "43.6021286154052", lng: "3.86982788605477" },
					{ label: "Cévennes", id_1: "92", id_2: "81", lat: "43.6220220100698", lng: "3.84621907657979" },
					{ label: "Château d'Ô", id_1: "247", id_2: "89", lat: "43.6319278012724", lng: "3.84240900812595" },
					{ label: "Collège Camille Claudel", id_1: "254", id_2: "295", lat: "43.616396600225", lng: "3.86209392082106" },
					{ label: "Doria", id_1: "293", lat: "43.612493581044", lng: "3.86792851848614" },
					{ label: "Estanove", id_1: "212", id_2: "241", lat: "43.5977309307216", lng: "3.84823669591361" },
					{ label: "Euromédecine", id_1: "54", lat: "43.6388125036604", lng: "3.82757584744842" },
					{ label: "Font Couverte", id_1: "239", id_2: "214", lat: "43.5935849781639", lng: "3.85157780704473" },
					{ label: "Gare Saint-Roch", id_1: "1", lat: "43.6049706716887", lng: "3.87921949262933" },
					{ label: "Georges Brassens", id_1: "244", id_2: "227", lat: "43.5958769762589", lng: "3.86247376554408" },
					{ label: "Guillaume Janvier", id_1: "218", id_2: "235", lat: "43.5976454091688", lng: "3.864561933285" },
					{ label: "Jean Bart", id_1: "273", lat: "43.6255835516352", lng: "3.83769999140521" },
					{ label: "La Gaillarde", id_1: "88", id_2: "116", lat: "43.6162513784556", lng: "3.857722246641" },
					{ label: "Las Rébès", id_1: "80", id_2: "93", lat: "43.6208021348586", lng: "3.84924328826401" },
					{ label: "Le Grand M", id_1: "215", id_2: "238", lat: "43.5909717821731", lng: "3.85458812505853" },
					{ label: "Louis Ravaz", id_1: "85", id_2: "114", lat: "43.6197106026762", lng: "3.85144171506991" },
					{ label: "Lycée Georges Clemenceau", id_1: "175", id_2: "198", lat: "43.6030474392888", lng: "3.87159678912742" },
					{ label: "Observatoire", id_1: "3", id_2: "51", lat: "43.6062629168428", lng: "3.87685436385639" },
					{ label: "Occitanie", id_1: "113", id_2: "86", lat: "43.6346135344989", lng: "3.84837142414812" },
					{ label: "Paladilhe", id_1: "256", lat: "43.612045606876", lng: "3.86718653369226" },
					{ label: "Pas du Loup", id_1: "242", id_2: "211", lat: "43.6004461447968", lng: "3.84885280875692" },
					{ label: "Peyrou", id_1: "5", id_2: "52", lat: "43.6107658835538", lng: "3.87185368107145" },
					{ label: "Pierre Viala", id_1: "115", id_2: "84", lat: "43.6165864898749", lng: "3.85498427142864" },
					{ label: "Pitot", id_1: "292", lat: "43.612090811667", lng: "3.87034272852489" },
					{ label: "Place du 8 Mai", id_1: "228", id_2: "245", lat: "43.5999475517205", lng: "3.86704798913779" },
					{ label: "Puech Villa", id_1: "50", id_2: "55", lat: "43.6400820065708", lng: "3.82939149156508" },
					{ label: "Ronceray", id_1: "217", id_2: "236", lat: "43.5937857012004", lng: "3.86032764487268" },
					{ label: "Rondelet", id_1: "197", lat: "43.6040889251336", lng: "3.87485354148993" },
					{ label: "Route de Ganges", id_1: "47", id_2: "58", lat: "43.6429532782356", lng: "3.84534892210135" },
					{ label: "Saint-Denis", id_1: "6", lat: "43.6050373963146", lng: "3.87453269224891" },
					{ label: "Saint-Guilhem", id_1: "59", id_2: "53", lat: "43.6087014026398", lng: "3.87289928579799" },
					{ label: "Saint-Priest", id_1: "246", id_2: "303", lat: "43.6351553782076", lng: "3.84368235202323" },
					{ label: "Sainte-Geneviève", id_1: "82", id_2: "91", lat: "43.6232363179595", lng: "3.84423407619641" },
					{ label: "Sainte-Thérèse", id_1: "294", id_2: "255", lat: "43.6141006302092", lng: "3.86553413665737" },
					{ label: "Val d'Aurelle", id_1: "56", id_2: "49", lat: "43.6428168126498", lng: "3.83640763454239" },
					{ label: "Véga", id_1: "213", id_2: "240", lat: "43.5957074797539", lng: "3.84958084817903" } ]);
			}
			
			return _data;
		}
		
	}
}