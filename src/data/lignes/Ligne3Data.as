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
		
		private static var _ligneData:Object;
		
		public static function get ligneData():Object
		{
			if (!_ligneData)
				_ligneData = {value: "3", label: "Ligne 3", icon: EmbeddedAssets.LIGNE_3_ICON};
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([{value: "Juvignac", lat: "43.616561661717",	lon: "3.80868253216491", label: "Juvignac"}
					,{value: "Mosson", lat: "43.617367080407",	lon: "3.8191557315836", label: "Mosson"}
					,{value: "Celleneuve", lat: "43.6155773219952",	lon: "3.82592689763045", label: "Celleneuve"}
					,{value: "Pilory", lat: "43.6195614151661",	lon: "3.83215899770569", label: "Pilory"}
					,{value: "H.du Departement", lat: "43.6220294301421",	lon: "3.83505739083583", label: "Hôtel du Département"}
					,{value: "Pergola", lat: "43.6179326326943",	lon: "3.83941680357955", label: "Pergola"}
					,{value: "Tonnelles", lat: "43.6142605034611",	lon: "3.83929957832716", label: "Tonnelles"}
					,{value: "Jules Guesde", lat: "43.611494659148",	lon: "3.84662131368789", label: "Jules Guesde"}
					,{value: "Astruc", lat: "43.6102238810038",	lon: "3.85488316568175", label: "Astruc"}
					,{value: "Les Arceaux", lat: "43.6099276928617",	lon: "3.86219950837959", label: "Les Arceaux"}
					,{value: "Plan Cabanes", lat: "43.6084121510351",	lon: "3.8681943511083", label: "Plan Cabanes"}
					,{value: "Saint-denis", lat: "43.6056360717793",	lon: "3.87388382293218", label: "Saint-Denis"}
					,{value: "Observatoire", lat: "43.6064049501532",	lon: "3.87670970189679", label: "Observatoire"}
					,{value: "Gare St-roch T3", lat: "43.6051626028276",	lon: "3.87967353379184", label: "Gare Saint-Roch"}
					,{value: "Place Carnot", lat: "43.603602897587",	lon: "3.88418440582361", label: "Place Carnot"}
					,{value: "Voltaire", lat: "43.6035252096922",	lon: "3.88918830487012", label: "Voltaire"}
					,{value: "Rives Du Lez T2", lat: "43.6040853836827",	lon: "3.89446422116891", label: "Rives du Lez"}
					,{value: "Moulares", lat: "43.600602470239",	lon: "3.89551657652068", label: "Moularès (Hôtel de Ville)"}
					,{value: "Port Marianne", lat: "43.6016070775761",	lon: "3.89940970766382", label: "Port Marianne"}
					,{value: "Pablo Picasso", lat: "43.5977761552793",	lon: "3.90354147210865", label: "Pablo Picasso"}
					,{value: "Boirargues", lat: "43.5826015938232",	lon: "3.92573091213745", label: "Boirargues"}
					,{value: "Cougourlude", lat: "43.571339472164",	lon: "3.914253285112", label: "Cougourlude"}
					,{value: "Lattes Centre", lat: "43.341394",	lon: "3.541722", label: "Lattes Centre"}
					,{value: "Ecopole", lat: "43.5779947902191",	lon: "3.93516119744009", label: "EcoPôle"}
					,{value: "Parc Expo", lat: "43.5730813648973",	lon: "3.94520575290014", label: "Parc Expo"}
					,{value: "Perols Centre", lat: "43.5641097642275",	lon: "3.95379246497042", label: "Pérols Centre"}
					,{value: "Etang De L'or", lat: "43.5575501730788",	lon: "3.96394679411979", label: "Pérols Étang de l'Or"} ]);
			}
			
			return _data;
		}
		
		public static var directionsArray:Array = [ {value: "Juvignac", label: "Juvignac"}
												   ,{value: "Mosson", label: "Mosson"}
												   ,{value: "Lattes Centre", label: "Lattes Centre"}
												   ,{value: "Perols Etangs", label: "Pérols Étang de l'Or"} ];
		
	}
}