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
	
	public class Ligne14Data
	{
		public function Ligne14Data()
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
				_data = new ListCollection([ { label: "Boulevard des Sports", id_1: "335", id_2: "317", lat: "43.6194176635163", lng: "3.88923675162121" },
					{ label: "Ernest Renan", id_1: "338", id_2: "314", lat: "43.6154388503513", lng: "3.88521864675839" },
					{ label: "Estragon", id_1: "316", id_2: "336", lat: "43.6186897221808", lng: "3.88796719199086" },
					{ label: "Foyer des Aubes", id_1: "332", id_2: "319", lat: "43.6185005146602", lng: "3.89487908731948" },
					{ label: "Françoise", id_1: "334", id_2: "547", lat: "43.6199568052202", lng: "3.89113229456896" },
					{ label: "Garigliano", id_1: "331", id_2: "320", lat: "43.6186104269434", lng: "3.8972331425441" },
					{ label: "Jean Mermoz", id_1: "451", id_2: "126", lat: "43.612996593382", lng: "3.88877764763235" },
					{ label: "La Pompignane (Les Lacs)", id_1: "426", id_2: "329", lat: "43.625129494548", lng: "3.90024525472351" },
					{ label: "Léon Blum", id_1: "393", lat: "43.6092604458886", lng: "3.89040820282274" },
					{ label: "Les Aubes", id_1: "546", id_2: "549", lat: "43.6136788353833", lng: "3.88884567796858" },
					{ label: "Palombes", id_1: "318", id_2: "333", lat: "43.6194859845483", lng: "3.89386654377238" },
					{ label: "Pinsons", id_1: "337", id_2: "315", lat: "43.6171944414844", lng: "3.88629325771688" },
					{ label: "Saint-Maur", id_1: "548", id_2: "545", lat: "43.6210379342734", lng: "3.89409447648366" },
					{ label: "Salaison", id_1: "321", id_2: "330", lat: "43.6233822986463", lng: "3.89735116328188" } ]);
			}
			
			return _data;
		}
		
	}
}