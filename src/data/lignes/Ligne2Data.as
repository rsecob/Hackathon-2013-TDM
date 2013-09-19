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
		
		private static var _ligneData:Object;
		
		public static function get ligneData():Object
		{
			if (!_ligneData)
				_ligneData = {value: "2", label: "Ligne 2", icon: EmbeddedAssets.LIGNE_2_ICON};
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ {value: "Jacou", lat: "43.6546675997294", lon: "3.91287901714606", label: "Jacou"}
					,{value: "Georges Pompidou", lat: "43.6492675103209", lon: "3.9209940235933", label: "Georges Pompidou"}
					,{value: "Via Domitia", lat: "43.646533744598", lon: "3.9299308869608", label: "Via Domitia"}
					,{value: "Aube Rouge", lat: "43.638823297571", lon: "3.92463023253584", label: "Aube Rouge"}
					,{value: "Nd Sablassou", lat: "43.6342167", lon: "3.9222389", label: "Notre-Dame de Sablassou"}
					,{value: "Centurions", lat: "43.6328121706313", lon: "3.91571036685606", label: "Centurions"}
					,{value: "La Galine", lat: "43.6314710883365", lon: "3.90902692889704", label: "La Galine"}
					,{value: "Clairval", lat: "43.6302068915517", lon: "3.90259345465358", label: "Clairval"}
					,{value: "Ch. De Gaulle", lat: "43.6286278", lon: "3.8977556", label: "Charles de Gaulle"}
					,{value: "Saint Lazare", lat: "43.6268759405604", lon: "3.88887948575112", label: "Saint-Lazare"}
					,{value: "Aiguelongue", lat: "43.626288258453", lon: "3.88267570357473", label: "Aiguelongue"}
					,{value: "Mail Des Abbes", lat: "43.6202114299498", lon: "3.88407346232511", label: "Jeu de Mail des Abbés"}
					,{value: "Beaux Arts", lat: "43.6170097934758", lon: "3.88353508608718", label: "Beaux-Arts"}
					,{value: "Corum T2", lat: "43.6142802818104", lon: "3.88191577851311", label: "Corum"}
					,{value: "Comedie", lat: "43.6083669324149", lon: "3.87970706244691", label: "Comédie"}
					,{value: "Gare St-roch T1", lat: "43.6051626028276", lon: "3.87967353379184", label: "Gare Saint-Roch"}
					,{value: "Rondelet", lat: "43.6034872110247", lon: "3.87548882128635", label: "Rondelet"}
					,{value: "Nouveau St Roch", lat: "43.599395112599", lon: "3.87561775687671", label: "Nouveau Saint-Roch"}
					,{value: "Saint Cleophas", lat: "43.5952387065616", lon: "3.87597087503277", label: "Saint-Cléophas"}
					,{value: "Lemasson", lat: "43.5937243564051", lon: "3.87328816206305", label: "Lemasson"}
					,{value: "Mas Drevon", lat: "43.5954773263634", lon: "3.8678991780415", label: "Mas Drevon"}
					,{value: "Croix D'argent", lat: "43.592369313903", lon: "3.86646157077226", label: "Croix d'Argent"}
					,{value: "Vil. D'angoule", lat: "43.5887390354323", lon: "3.86572127816322", label: "Villeneuve d'Angoulême"}
					,{value: "Sabines", lat: "43.5839248820984", lon: "3.86000905573683", label: "Sabines"}
					,{value: "Victoire 2", lat: "43.5747900370058", lon: "3.84955881084678", label: "Victoire 2"}
					,{value: "La Condamine", lat: "43.5716016489988", lon: "3.84420750606309", label: "La Condamine"}
					,{value: "St Jean Le Sec", lat: "43.570682407301", lon: "3.83759046060594", label: "Saint-Jean le Sec"}
					,{value: "St Jean Centre", lat: "43.5747533904863", lon: "3.83042612680245", label: "Saint-Jean de Védas Centre"} ]);
			}
			
			return _data;
		}
		
		public static var directionsArray:Array = [ {value: "Jacou", label: "Jacou"} 
												   ,{value: "Sablassou", label: "Notre-Dame de Sablassou"} 
												   ,{value: "Sabines", label: "Sabines"} 
												   ,{value: "St-jean De Vedas", label: "Saint-Jean de Védas Centre"} ];
	}
}


