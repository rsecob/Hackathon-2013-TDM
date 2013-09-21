package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne37Data
	{
		public function Ligne37Data()
		{
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Alfred Nobel", id_1: "531", id_2: "514", lat: "43.6157518349011", lng: "3.90963978499191" },
					{ label: "Cinq Chalets", id_1: "377", lat: "43.6085913727849", lng: "3.89879046096751" },
					{ label: "Eurêka", id_1: "513", id_2: "532", lat: "43.6180002968696", lng: "3.91265907079507" },
					{ label: "François Couperin", id_1: "479", id_2: "501", lat: "43.6127220678064", lng: "3.90283795378972" },
					{ label: "Marcel Dassault", id_1: "1119", id_2: "1118", lat: "43.6221186264535", lng: "3.91690590214554" },
					{ label: "Notre-Dame de Sablassou", id_1: "679", lat: "43.634744012537", lng: "3.9234193442594" },
					{ label: "Pinville", id_1: "478", id_2: "502", lat: "43.6138650561147", lng: "3.90585118228076" },
					{ label: "Place de l'Europe", id_1: "583", lat: "43.6081812548828", lng: "3.89418933635568" },
					{ label: "Saint-Michel", id_1: "378", lat: "43.6061314907569", lng: "3.89856236821735" },
					{ label: "Vieille Poste", id_1: "500", id_2: "480", lat: "43.6108074880023", lng: "3.90033574225849" } ]);
			}
			
			return _data;
		}
	}
}