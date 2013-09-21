package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne23Data
	{
		public function Ligne23Data()
		{
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Ambroise Paré", id_1: "46", lat: "43.6380121390239", lng: "3.84769396815333" },
					{ label: "Aqueduc", id_1: "741", id_2: "785", lat: "43.6536849834474", lng: "3.85707302395963" },
					{ label: "Baillarguet", id_1: "752", id_2: "774", lat: "43.6777166136888", lng: "3.86718921325335" },
					{ label: "Cave Coopérative", id_1: "757", id_2: "769", lat: "43.6944440058287", lng: "3.86232257997101" },
					{ label: "Chemin du Cambas", id_1: "743", id_2: "783", lat: "43.6589409071051", lng: "3.850241630011" },
					{ label: "Chemin Neuf", id_1: "778", id_2: "748", lat: "43.6673291357507", lng: "3.85853874559877" },
					{ label: "Cirad de Baillarguet", id_1: "791", id_2: "762", lat: "43.6838344536627", lng: "3.87701601962849" },
					{ label: "Coste Rousse", id_1: "765", id_2: "788", lat: "43.6947795098159", lng: "3.87039771499351" },
					{ label: "Distillerie", id_1: "751", id_2: "775", lat: "43.6752963962588", lng: "3.86732247530793" },
					{ label: "Ducque", id_1: "789", id_2: "764", lat: "43.6972776336108", lng: "3.867937129467" },
					{ label: "Font de Salomé", id_1: "792", id_2: "766", lat: "43.6766424290713", lng: "3.87130987300005" },
					{ label: "Font du Noyer", id_1: "747", id_2: "779", lat: "43.6658835328596", lng: "3.8526425122086" },
					{ label: "Fontaine des Chênes", id_1: "781", id_2: "745", lat: "43.6616965219556", lng: "3.84733036142145" },
					{ label: "Frayssinet", id_1: "768", id_2: "758", lat: "43.6966715168887", lng: "3.86246889509736" },
					{ label: "Hortus", id_1: "201", lat: "43.6429753736315", lng: "3.85982070888433" },
					{ label: "La Grand Font", id_1: "749", id_2: "777", lat: "43.6689547517464", lng: "3.86120767327656" },
					{ label: "La Lironde", id_1: "744", id_2: "782", lat: "43.6603103419532", lng: "3.84874246872834" },
					{ label: "Les Baronnes", id_1: "760", lat: "43.693673551305", lng: "3.87231323887278" },
					{ label: "Lycée Frédéric Bazille", id_1: "191", lat: "43.6455571577945", lng: "3.86225411739591" },
					{ label: "Mairie", id_1: "759", id_2: "767", lat: "43.6972565345328", lng: "3.86369885689509" },
					{ label: "Mandarine", id_1: "770", id_2: "756", lat: "43.6932427377124", lng: "3.8620798202514" },
					{ label: "Mas de Gué", id_1: "784", id_2: "742", lat: "43.6572023099813", lng: "3.85178044972201" },
					{ label: "Moulin Neuf", id_1: "755", id_2: "771", lat: "43.6903352935939", lng: "3.86233659026386" },
					{ label: "Occitanie", id_1: "763", lat: "43.634622866537", lng: "3.84834691659984" },
					{ label: "Pendances", id_1: "773", id_2: "753", lat: "43.6841477783395", lng: "3.86313739760866" },
					{ label: "Picadou", id_1: "776", id_2: "750", lat: "43.6690153926238", lng: "3.86137029578767" },
					{ label: "Picheyrou", id_1: "786", id_2: "740", lat: "43.6530903501489", lng: "3.86036300410523" },
					{ label: "Plan des 4 Seigneurs", id_1: "790", lat: "43.6408110357181", lng: "3.85774524364199" },
					{ label: "Pont Vert", id_1: "772", id_2: "754", lat: "43.6865453216254", lng: "3.86333782306496" },
					{ label: "Quatre Chemins", id_1: "780", id_2: "746", lat: "43.6649897519127", lng: "3.84583239562169" },
					{ label: "Rapatel", id_1: "739", id_2: "787", lat: "43.6516428529494", lng: "3.86419963214759" },
					{ label: "Vincent Auriol", id_1: "761", id_2: "737", lat: "43.6506931562062", lng: "3.8646075483001" } ]);
			}
			
			return _data;
		}
	}
}