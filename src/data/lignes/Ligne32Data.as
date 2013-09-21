package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne32Data
	{
		public function Ligne32Data()
		{
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Arnel", id_1: "958", id_2: "984", lat: "43.5380719128249", lng: "3.86908689441648" },
					{ label: "Avenue de la Gare", id_1: "967", id_2: "976", lat: "43.5371611208793", lng: "3.85720048593524" },
					{ label: "Boulevard des Écoles", id_1: "986", id_2: "959", lat: "43.5335169936917", lng: "3.86127975271466" },
					{ label: "Boulevard du Chapitre", id_1: "966", id_2: "983", lat: "43.5333370270195", lng: "3.86447501135246" },
					{ label: "Céreirède", id_1: "569", id_2: "558", lat: "43.5813126190581", lng: "3.89846527518945" },
					{ label: "Chemin de Lattes", id_1: "559", id_2: "568", lat: "43.5723996223071", lng: "3.89628059130463" },
					{ label: "Domenoves", id_1: "962", id_2: "979", lat: "43.5306881374108", lng: "3.85406325353955" },
					{ label: "Font Majour", id_1: "985", id_2: "969", lat: "43.5348434354081", lng: "3.85964708525957" },
					{ label: "Garcia Lorca", id_1: "66", lat: "43.5911671394424", lng: "3.89021305241502" },
					{ label: "Gramenet", id_1: "566", lat: "43.5488187026357", lng: "3.89453748467952" },
					{ label: "Les Moures", id_1: "990", id_2: "973", lat: "43.5241498803238", lng: "3.86004182934098" },
					{ label: "Les Salins", id_1: "971", id_2: "988", lat: "43.5306534356568", lng: "3.85844829682539" },
					{ label: "Maison d'Arrêt", id_1: "968", id_2: "975", lat: "43.5463104011327", lng: "3.82829084276402" },
					{ label: "Myosotis", id_1: "982", id_2: "965", lat: "43.528673185325", lng: "3.86500522680014" },
					{ label: "Oasis Palavasienne", id_1: "567", id_2: "560", lat: "43.5552593698877", lng: "3.89361291428774" },
					{ label: "Olivier de Bohême", id_1: "964", id_2: "981", lat: "43.5272523311226", lng: "3.86313885481008" },
					{ label: "Pèlerine", id_1: "972", id_2: "989", lat: "43.5265484380905", lng: "3.8550405882026" },
					{ label: "Pilou", id_1: "970", id_2: "987", lat: "43.5294310270757", lng: "3.86544553183772" },
					{ label: "Pont de Villeneuve", id_1: "974", lat: "43.5546250032145", lng: "3.84451388863446" },
					{ label: "Stade", id_1: "960", id_2: "977", lat: "43.5333687571556", lng: "3.85520928988838" },
					{ label: "Tadornes", id_1: "963", id_2: "980", lat: "43.5270813243766", lng: "3.86124411805879" },
					{ label: "Vignes Vierges", id_1: "961", id_2: "978", lat: "43.532273493681", lng: "3.85254856030176" } ]);
			}
			
			return _data;
		}
	}
}