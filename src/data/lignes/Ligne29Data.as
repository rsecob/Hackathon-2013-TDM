package data.lignes
{
	import feathers.data.ListCollection;

	public class Ligne29Data
	{
		public function Ligne29Data()
		{
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([ { label: "Biste", id_1: "934", id_2: "911", lat: "43.6558247439801", lng: "4.00014392067802" },
					{ label: "Castelnau Zone d'Activités", id_1: "605", id_2: "637", lat: "43.6365033072149", lng: "3.92728064593749" },
					{ label: "Châtaigniers", id_1: "652", id_2: "677", lat: "43.6509331536916", lng: "3.95932893397192" },
					{ label: "Collège Le Bérange", id_1: "926", id_2: "918", lat: "43.6673317650399", lng: "4.02342862183461" },
					{ label: "Fenouillet", id_1: "917", id_2: "927", lat: "43.6635904255646", lng: "4.02178240531404" },
					{ label: "François Perroux", id_1: "919", id_2: "936", lat: "43.6536354310951", lng: "4.00103352330552" },
					{ label: "Gaston Baissette", id_1: "928", lat: "43.664580696569", lng: "4.01706843958037" },
					{ label: "Golf", id_1: "920", lat: "43.6520219610824", lng: "4.00481238250628" },
					{ label: "Le Crès", id_1: "650", lat: "43.6389738949026", lng: "3.93410813967641" },
					{ label: "Le Grès", id_1: "931", id_2: "914", lat: "43.662522738433", lng: "4.01004809954575" },
					{ label: "Le Levant", id_1: "916", lat: "43.6617039022968", lng: "4.01764007130183" },
					{ label: "Mairie", id_1: "915", id_2: "930", lat: "43.6611525526901", lng: "4.01319050481901" },
					{ label: "Meyrargues", id_1: "935", id_2: "910", lat: "43.6538663579128", lng: "3.96814151932332" },
					{ label: "Micocoulier", id_1: "938", id_2: "922", lat: "43.6669087711918", lng: "4.02979433296822" },
					{ label: "Notre-Dame de Sablassou", id_1: "679", lat: "43.634744012537", lng: "3.9234193442594" },
					{ label: "Olivette", id_1: "923", id_2: "937", lat: "43.665591204711", lng: "4.03183585596886" },
					{ label: "Paradis", id_1: "929", lat: "43.664095417784", lng: "4.01415623946003" },
					{ label: "Paul Cézanne", id_1: "932", id_2: "913", lat: "43.6601363860912", lng: "4.00680799260802" },
					{ label: "Pointes", id_1: "636", lat: "43.63865085189", lng: "3.93284887834069" },
					{ label: "Route de Nîmes", id_1: "678", id_2: "651", lat: "43.6417851621353", lng: "3.94218372455138" },
					{ label: "Saint-Brès", id_1: "925", lat: "43.6648851280403", lng: "4.0367315161038" },
					{ label: "Sophoras", id_1: "939", id_2: "921", lat: "43.668152478037", lng: "4.02672256016637" },
					{ label: "Treille", id_1: "912", id_2: "933", lat: "43.6572436316497", lng: "4.00316950573506" },
					{ label: "Versant", id_1: "924", lat: "43.6642724636242", lng: "4.03624265950085" } ]);
			}
			
			return _data;
		}
	}
}