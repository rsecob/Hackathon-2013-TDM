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

	public class Ligne1Data
	{
		public function Ligne1Data()
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
				_data = new ListCollection([ { label: "Antigone", id_1: "1162", id_2: "1181", lat: "43.6085859594197", lng: "3.88666594937517" },
					{ label: "Boutonnet", id_1: "1154", id_2: "1189", lat: "43.6225867509347", lng: "3.8680877655281" },
					{ label: "Château d'Ô", id_1: "1194", id_2: "1149", lat: "43.6314152645895", lng: "3.8430638291649" },
					{ label: "Comédie", id_1: "1184", id_2: "1159", lat: "43.6083614522908", lng: "3.87973169370189" },
					{ label: "Corum", id_1: "1158", id_2: "1185", lat: "43.6142538878797", lng: "3.88195716825633" },
					{ label: "Du Guesclin", id_1: "1182", id_2: "1161", lat: "43.6071251271782", lng: "3.88321178951546" },
					{ label: "Euromédecine", id_1: "1147", id_2: "1196", lat: "43.6389727270998", lng: "3.82769143492461" },
					{ label: "Gare Saint-Roch", id_1: "1160", id_2: "1183", lat: "43.6057394168241", lng: "3.8801557150493" },
					{ label: "Halles de la Paillade", id_1: "1144", id_2: "1199", lat: "43.6275697871031", lng: "3.81750552997029" },
					{ label: "Hauts de Massane", id_1: "1146", id_2: "1197", lat: "43.6363704329782", lng: "3.82277145576433" },
					{ label: "Hôpital Lapeyronie", id_1: "1192", id_2: "1151", lat: "43.6316686730378", lng: "3.85260054534845" },
					{ label: "Léon Blum", id_1: "1163", id_2: "1180", lat: "43.6089133592868", lng: "3.89016369677972" },
					{ label: "Louis Blanc", id_1: "1186", id_2: "1157", lat: "43.614736216221", lng: "3.87839439343216" },
					{ label: "Malbosc", id_1: "1195", id_2: "1148", lat: "43.6346081347455", lng: "3.83323386788882" },
					{ label: "Millénaire", id_1: "1174", id_2: "1169", lat: "43.6029075915366", lng: "3.91011496766347" },
					{ label: "Mondial 98", id_1: "1168", id_2: "1175", lat: "43.6026172384494", lng: "3.90410725317879" },
					{ label: "Mosson", id_1: "1143", lat: "43.6163194996841", lng: "3.81978749280886" },
					{ label: "Moularès (Hôtel de Ville)", id_1: "1166", id_2: "1177", lat: "43.6007299548366", lng: "3.89535927969668" },
					{ label: "Occitanie", id_1: "1150", id_2: "1193", lat: "43.6346302977529", lng: "3.84845850910512" },
					{ label: "Odysseum", id_1: "1170", id_2: "1173", lat: "43.6041206297931", lng: "3.92062653322998" },
					{ label: "Place Albert 1er", id_1: "1187", id_2: "1156", lat: "43.6164038890181", lng: "3.87428193165593" },
					{ label: "Place de France", id_1: "1200", id_2: "1171", lat: "43.6037518992763", lng: "3.91571745995785" },
					{ label: "Place de l'Europe", id_1: "1179", id_2: "1164", lat: "43.6073039939688", lng: "3.89393035868125" },
					{ label: "Port Marianne", id_1: "1176", id_2: "1167", lat: "43.6015648147091", lng: "3.89917973718665" },
					{ label: "Rives du Lez", id_1: "1178", id_2: "1165", lat: "43.6040171912106", lng: "3.89494176586073" },
					{ label: "Saint-Éloi", id_1: "1190", id_2: "1153", lat: "43.6270072402572", lng: "3.86571879128006" },
					{ label: "Saint-Paul", id_1: "1198", id_2: "1145", lat: "43.6306854019139", lng: "3.82106408334805" },
					{ label: "Stade de la Mosson", id_1: "1201", id_2: "1172", lat: "43.6212967443061", lng: "3.81738000526255" },
					{ label: "Stade Philippidès", id_1: "1155", id_2: "1188", lat: "43.618989362045", lng: "3.8694638115266" },
					{ label: "Universités Sciences et Lettres", id_1: "1152", id_2: "1191", lat: "43.6291244626956", lng: "3.8615675881189" } ]);
			}
			
			return _data;
		}
	}
}