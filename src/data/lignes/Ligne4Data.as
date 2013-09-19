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
	
	public class Ligne4Data
	{
		public function Ligne4Data()
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
				_ligneData = {value: "4", label: "Ligne 4", color: EmbeddedAssets.LIGNE_4_ICON};
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ {value: "Albert 1er", lat: "43.6165153431063", lon: "3.87407454752208", label: "Place Albert 1er"}
					,{value: "Louis Blanc", lat: "43.6147452179528", lon: "3.87812239265931", label: "Louis Blanc"}
					,{value: "Corum T1", lat: "43.6142802818104", lon: "3.88191577851311", label: "Corum"}
					,{value: "Les Aubes", lat: "43.6138605371549", lon: "3.88860002739814", label: "Les Aubes"}
					,{value: "Pompignane", lat: "43.6127334667416", lon: "3.89493206402159", label: "Pompignane"}
					,{value: "Pl. De L'europ", lat: "43.6077163182588", lon: "3.89405785651245", label: "Place de l'Europe"}
					,{value: "Rives Du Lez T1", lat: "43.6040853836827", lon: "3.89446422116891", label: "Rives du Lez"}
					,{value: "Hotel De Ville", lat: "43.6139164528074", lon: "3.80521187339071", label: "Georges Frêche - Hôtel de Ville"}
					,{value: "La Rauze", lat: "43.5936138743612", lon: "3.8957711811221", label: "La Rauze"}
					,{value: "Garcia Lorca", lat: "43.5907999379787", lon: "3.8904751287886", label: "Garcia Lorca"}
					,{value: "Restanque", lat: "43.5903936546899", lon: "3.8852695849143", label: "Restanque"}
					,{value: "Saint-martin", lat: "43.5922337199633", lon: "3.88043400477089", label: "Saint-Martin"}
					,{value: "Nouveau St Roch", lat: "43.599395112599", lon: "3.87561775687671", label: "Nouveau Saint-Roch"}
					,{value: "Rondelet", lat: "43.6034872110247", lon: "3.87548882128635", label: "Rondelet"}
					,{value: "Gare St-roch T3", lat: "43.6051626028276", lon: "3.87967353379184", label: "Gare Saint-Roch"}
					,{value: "Observatoire", lat: "43.6064049501532", lon: "3.87670970189679", label: "Observatoire"}
					,{value: "Saint-denis", lat: "43.6056360717793", lon: "3.87388382293218", label: "Saint-Denis"} ]);
			}
			
			return _data;
		}
		
		public static var directionsArray:Array = [ {value: "Albert 1er", label: "Place Albert 1er"} 
									    			,{value: "Saint-denis", label: "Saint-Denis"} ];
	}
}


