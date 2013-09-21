package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne22Data
	{
		public function Ligne22Data()
		{
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Agropolis", id_1: "190", lat: "43.6467354791926", lng: "3.86857463844225" },
					{ label: "Bibliothèque", id_1: "738", id_2: "713", lat: "43.6591399476986", lng: "3.91130611736235" },
					{ label: "Cairons", id_1: "192", id_2: "180", lat: "43.6430245198712", lng: "3.86079997402942" },
					{ label: "Campus Agropolis", id_1: "544", lat: "43.6446657885406", lng: "3.86871717455537" },
					{ label: "Cap Alpha", id_1: "722", id_2: "694", lat: "43.65983430634", lng: "3.90061402039391" },
					{ label: "Château", id_1: "690", lat: "43.6554749160466", lng: "3.89119571104115" },
					{ label: "Cimetière", id_1: "692", lat: "43.6579911526276", lng: "3.89251487634728" },
					{ label: "Cimetière Jacou", id_1: "720", id_2: "696", lat: "43.6594498218847", lng: "3.90792175727016" },
					{ label: "CNRS", id_1: "194", id_2: "178", lat: "43.6385233517366", lng: "3.86570536659303" },
					{ label: "De Bocaud", id_1: "695", id_2: "721", lat: "43.6595636520239", lng: "3.90378900462935" },
					{ label: "Église", id_1: "691", lat: "43.6576165770198", lng: "3.88917379385947" },
					{ label: "Fac de Lettres", id_1: "176", id_2: "196", lat: "43.6301202658164", lng: "3.86998536762087" },
					{ label: "Henri Dunant", id_1: "407", lat: "43.6268703093627", lng: "3.86904418370386" },
					{ label: "Jacou", id_1: "707", lat: "43.6547029283364", lng: "3.91288002848885" },
					{ label: "La Croisée", id_1: "733", id_2: "709", lat: "43.6601384274227", lng: "3.89698175311954" },
					{ label: "Leenhardt", id_1: "725", lat: "43.6568035493371", lng: "3.88505315957712" },
					{ label: "Lucien Lambert", id_1: "1142", id_2: "1140", lat: "43.6569499199598", lng: "3.91229819835448" },
					{ label: "Lycée Frédéric Bazille", id_1: "542", id_2: "191", lat: "43.6447836226638", lng: "3.8622829647471" },
					{ label: "Médiathèque Albert Camus", id_1: "731", lat: "43.6555449063627", lng: "3.88127966727777" },
					{ label: "Montmaur", id_1: "179", id_2: "193", lat: "43.6411470739613", lng: "3.86325036470027" },
					{ label: "Moulières", id_1: "693", id_2: "723", lat: "43.6596783950155", lng: "3.89334099151526" },
					{ label: "Olivette", id_1: "724", lat: "43.6585929120048", lng: "3.88942323822112" },
					{ label: "Pigeonniers", id_1: "688", id_2: "726", lat: "43.6535381616301", lng: "3.88393691616955" },
					{ label: "Saint-Éloi", id_1: "538", lat: "43.6270105263017", lng: "3.86675843891466" },
					{ label: "Stade", id_1: "689", lat: "43.6534986333116", lng: "3.88921037094662" },
					{ label: "Vert Bois", id_1: "195", id_2: "177", lat: "43.6342201722793", lng: "3.86804083520621" },
					{ label: "Vincent Auriol", id_1: "737", lat: "43.6479666716656", lng: "3.86415078559688" } ]);
			}
			
			return _data;
		}
	}
}