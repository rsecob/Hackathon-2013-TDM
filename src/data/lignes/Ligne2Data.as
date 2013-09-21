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

	public class Ligne2Data
	{
		public function Ligne2Data()
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
				_data = new ListCollection([ { label: "Aiguelongue", id_1: "1244", id_2: "1223", lat: "43.6262568658232", lng: "3.88309875403403" },
					{ label: "Aube Rouge", id_1: "1230", id_2: "1237", lat: "43.6385424965602", lng: "3.92493604745572" },
					{ label: "Beaux-Arts", id_1: "1221", id_2: "1246", lat: "43.6169999109354", lng: "3.88355341465341" },
					{ label: "Centurions", id_1: "1239", id_2: "1228", lat: "43.6328251150762", lng: "3.91570457225184" },
					{ label: "Charles de Gaulle", id_1: "1225", id_2: "1242", lat: "43.6285551805181", lng: "3.89771531053076" },
					{ label: "Clairval", id_1: "1241", id_2: "1226", lat: "43.6302198343012", lng: "3.90258765721135" },
					{ label: "Comédie", id_1: "1159", id_2: "1184", lat: "43.6083711439975", lng: "3.87968246864816" },
					{ label: "Corum", id_1: "1247", id_2: "1220", lat: "43.6142642871554", lng: "3.8818584656304" },
					{ label: "Croix d'Argent", id_1: "1209", id_2: "1258", lat: "43.5923683239865", lng: "3.86648631655454" },
					{ label: "Gare Saint-Roch", id_1: "1160", id_2: "1183", lat: "43.6057394168241", lng: "3.8801557150493" },
					{ label: "Georges Pompidou", id_1: "1232", id_2: "1235", lat: "43.6492711127252", lng: "3.92101273052626" },
					{ label: "Jacou", id_1: "1233", lat: "43.6546040775665", lng: "3.91287729877921" },
					{ label: "Jeu de Mail des Abbés", id_1: "1222", id_2: "1245", lat: "43.6202104463057", lng: "3.8840982200545" },
					{ label: "La Condamine", id_1: "1204", id_2: "1263", lat: "43.5716010011206", lng: "3.84420752480811" },
					{ label: "La Galine", id_1: "1227", id_2: "1240", lat: "43.6314568933244", lng: "3.90903276236359" },
					{ label: "Lemasson", id_1: "1211", id_2: "1256", lat: "43.5937104131978", lng: "3.87327545449656" },
					{ label: "Les Grisettes", id_1: "1261", id_2: "1206", lat: "43.5799183240565", lng: "3.85753430891038" },
					{ label: "Mas Drevon", id_1: "1257", id_2: "1210", lat: "43.5954859359917", lng: "3.86788089130808" },
					{ label: "Notre-Dame de Sablassou", id_1: "1229", id_2: "1238", lat: "43.6342394895382", lng: "3.9222665979465" },
					{ label: "Nouveau Saint-Roch", id_1: "1254", id_2: "1213", lat: "43.5995475912133", lng: "3.87559716042538" },
					{ label: "Rondelet", id_1: "1214", id_2: "1253", lat: "43.6030802177349", lng: "3.87624899612494" },
					{ label: "Sabines", id_1: "1260", id_2: "1207", lat: "43.5839111950111", lng: "3.85997781084598" },
					{ label: "Saint-Cléophas", id_1: "1212", id_2: "1255", lat: "43.5949905836087", lng: "3.87617944402288" },
					{ label: "Saint-Jean de Védas Centre", id_1: "1202", lat: "43.5748036079191", lng: "3.83043159629415" },
					{ label: "Saint-Jean le Sec", id_1: "1203", id_2: "1264", lat: "43.5705875344994", lng: "3.83757873266956" },
					{ label: "Saint-Lazare", id_1: "1224", id_2: "1243", lat: "43.6266187470306", lng: "3.88859098242226" },
					{ label: "Via Domitia", id_1: "1236", id_2: "1231", lat: "43.6465335797711", lng: "3.929899968006" },
					{ label: "Victoire 2", id_1: "1262", id_2: "1205", lat: "43.5748077082151", lng: "3.84953458574525" },
					{ label: "Villeneuve d'Angoulême", id_1: "1208", id_2: "1259", lat: "43.5887380443422", lng: "3.86574602237706" } ]);
			}
			
			return _data;
		}
	}
}


