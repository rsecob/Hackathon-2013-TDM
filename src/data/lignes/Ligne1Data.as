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
		
		private static var _ligneData:Object;
		
		public static function get ligneData():Object
		{
			if (!_ligneData)
				_ligneData = {value: "1", label: "Ligne 1", icon: EmbeddedAssets.LIGNE_1_ICON};
			
			return _ligneData;
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ {value: "Mosson", lat: "43.617367080407",	lon: "3.8191557315836", label: "Mosson"}
					,{value: "Stade Mosson", lat: "43.6212526955867", lon: "3.81736026665412", label: "Stade de la Mosson"}
					,{value: "Halles Paillade", lat: "43.6275706681589", lon: "3.81748695420868", label: "Halles de la Paillade"}
					,{value: "Saint Paul", lat: "43.6306723785302", lon: "3.8210760860865", label: "Saint-Paul"}
					,{value: "Hauts De Massane", lat: "43.636303785454", lon: "3.82276040290018", label: "Hauts de Massane"}
					,{value: "Euromedecine", lat: "43.6390920095547", lon: "3.82808319142705", label: "Euromédecine"}
					,{value: "Malbosc", lat: "43.634605679547", lon: "3.83345655902627", label: "Malbosc"}
					,{value: "Chateau D'o", lat: "43.6314850756983", lon: "3.84287255949927", label: "Château d'Ô"}
					,{value: "Occitanie", lat: "43.6345370485572", lon: "3.84848571021074", label: "Occitanie"}
					,{value: "Hop. Lapeyronie", lat: "43.6316604855493", lon: "3.8525879159284", label: "Hôpital Lapeyronie"}
					,{value: "Universites", lat: "43.6292824134212", lon: "3.86140778504302", label: "Universités des Sciences et Lettres"}
					,{value: "Saint Eloi", lat: "43.6266341914944", lon: "3.86617020184665", label: "Saint-Éloi"}
					,{value: "Boutonnet", lat: "43.6227119628888", lon: "3.86817771124942", label: "Boutonnet"}
					,{value: "Philippides", lat: "43.6189897295652", lon: "3.86948234669712", label: "Stade Philippidès"}
					,{value: "Albert 1er", lat: "43.6165153431063", lon: "3.87407454752208", label: "Place Albert 1er"}
					,{value: "Louis Blanc", lat: "43.6147452179528", lon: "3.87812239265931", label: "Louis Blanc"}
					,{value: "Corum T1", lat: "43.6142802818104", lon: "3.88191577851311", label: "Corum"}
					,{value: "Comedie", lat: "43.6083669324149", lon: "3.87970706244691", label: "Comédie"}
					,{value: "Gare St-roch T1", lat: "43.6051626028276", lon: "3.87967353379184", label: "Gare Saint-Roch"}
					,{value: "Du Guesclin", lat: "43.607132", lon: "3.883176", label: "Du Guesclin"}
					,{value: "Antigone", lat: "43.6085958455429", lon: "3.8866476240206", label: "Antigone"}
					,{value: "Leon Blum", lat: "43.6091600297124", lon: "3.89014150106837", label: "Léon Blum"}
					,{value: "Pl. De L'europ", lat: "43.6077163182588", lon: "3.89405785651245", label: "Place de l'Europe"}
					,{value: "Rives Du Lez T1", lat: "43.6040853836827", lon: "3.89446422116891", label: "Rives du Lez"}
					,{value: "Moulares", lat: "43.600602470239", lon: "3.89551657652068", label: "Moularès (Hôtel de Ville)"}
					,{value: "Port Marianne", lat: "43.6016070775761", lon: "3.89940970766382", label: "Port Marianne"}
					,{value: "Mondial 98", lat: "43.6026313539925", lon: "3.90410760430929", label: "Mondial 98"}
					,{value: "Millenaire", lat: "43.6028151798548", lon: "3.90955880226052", label: "Millénaire"}
					,{value: "Place De France", lat: "43.6037388756489", lon: "3.91572943453595", label: "Place De France"}
					,{value: "Odysseum", lat: "43.6040175140864", lon: "3.91788472850587", label: "Odysseum"} ]);
			}
			
			return _data;
		}
		
		public static var directionsArray:Array = [ {value: "Mosson", label: "Mosson"}
												   ,{value: "Odysseum", label: "Odysseum"} ];
		
	}
}