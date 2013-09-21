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
	
	public class Ligne12Data
	{
		public function Ligne12Data()
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
				_data = new ListCollection([ { label: "Bellevue", id_1: "505", lat: "43.5966406633686", lng: "3.88087471266643" },
					{ label: "Catalpas", id_1: "530", lat: "43.5928145861454", lng: "3.88377682088568" },
					{ label: "Centrayrargues", id_1: "527", lat: "43.5968223270964", lng: "3.88074356117271" },
					{ label: "Coquelicots", id_1: "526", lat: "43.5977822668519", lng: "3.88024998820092" },
					{ label: "Descartes", id_1: "528", lat: "43.5966835558757", lng: "3.88353524757264" },
					{ label: "Frédéric Peysson", id_1: "523", lat: "43.6025294161159", lng: "3.8802050647848" },
					{ label: "Gare Saint-Roch", id_1: "4", id_2: "2", lat: "43.604132144047", lng: "3.87813296304905" },
					{ label: "Henri René", id_1: "327", lat: "43.6031682633384", lng: "3.88205317273247" },
					{ label: "Jean Vachet", id_1: "517", id_2: "537", lat: "43.5923482992442", lng: "3.88495154836371" },
					{ label: "Léon Cordès", id_1: "509", lat: "43.6015907148623", lng: "3.88298774997794" },
					{ label: "Maréchal Leclerc", id_1: "504", id_2: "536", lat: "43.5943315673444", lng: "3.88519082035123" },
					{ label: "Pâquerettes", id_1: "507", id_2: "525", lat: "43.5996525843702", lng: "3.88147565333063" },
					{ label: "Place Carnot", id_1: "326", lat: "43.6033043854567", lng: "3.88385059559379" },
					{ label: "Place de Strasbourg", id_1: "72", lat: "43.6031697265646", lng: "3.88006154730388" },
					{ label: "Porto", id_1: "524", id_2: "508", lat: "43.6003323975579", lng: "3.87982408849627" },
					{ label: "Primevères", id_1: "506", lat: "43.5981873165172", lng: "3.88147314342496" },
					{ label: "Razeteurs", id_1: "529", lat: "43.5956233398826", lng: "3.88412499227601" } ] );
			}
			
			return _data;
		}
		
		
	}
}