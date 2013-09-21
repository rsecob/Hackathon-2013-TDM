package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne30Data
	{
		public function Ligne30Data()
		{
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Arbousiers", id_1: "613", id_2: "627", lat: "43.6546518799841", lng: "3.94447722739425" },
					{ label: "Arènes", id_1: "635", id_2: "607", lat: "43.6429848563653", lng: "3.93705525168672" },
					{ label: "Baléares", id_1: "612", id_2: "628", lat: "43.6512900839398", lng: "3.94383776283102" },
					{ label: "Capri", id_1: "634", id_2: "608", lat: "43.6465889661743", lng: "3.93893903718679" },
					{ label: "Castelnau Zone d'Activités", id_1: "605", id_2: "637", lat: "43.6365033072149", lng: "3.92728064593749" },
					{ label: "Chênes", id_1: "609", id_2: "633", lat: "43.6451988568339", lng: "3.94174739510824" },
					{ label: "Cimetière", id_1: "629", id_2: "611", lat: "43.6511938375128", lng: "3.94062832396759" },
					{ label: "Fernand Rouché", id_1: "632", id_2: "610", lat: "43.6474799150244", lng: "3.94130393621185" },
					{ label: "Garenne", id_1: "631", lat: "43.6491999702133", lng: "3.94049801512273" },
					{ label: "Jean Jaurès", id_1: "626", id_2: "614", lat: "43.6566184693101", lng: "3.94281147482403" },
					{ label: "Mandel", id_1: "616", id_2: "624", lat: "43.656856496572", lng: "3.93827382621839" },
					{ label: "Maumarin", id_1: "942", id_2: "943", lat: "43.6613927884307", lng: "3.94398604210392" },
					{ label: "Monteroni d'Arbia", id_1: "944", id_2: "940", lat: "43.6601758930944", lng: "3.93631137705533" },
					{ label: "Mozart", id_1: "625", id_2: "615", lat: "43.6572077307511", lng: "3.94187460450758" },
					{ label: "Notre-Dame de Sablassou", id_1: "679", lat: "43.634744012537", lng: "3.9234193442594" },
					{ label: "Pointes", id_1: "606", id_2: "636", lat: "43.6397098568722", lng: "3.93419062498349" },
					{ label: "Rocailles", id_1: "617", id_2: "623", lat: "43.6568261578305", lng: "3.9360689079116" },
					{ label: "Sienne", id_1: "945", id_2: "941", lat: "43.6622907370776", lng: "3.94102688334114" },
					{ label: "Substantion", id_1: "630", id_2: "618", lat: "43.6502359600201", lng: "3.9397471212206" } ]);
			}
			
			return _data;
		}
	}
}