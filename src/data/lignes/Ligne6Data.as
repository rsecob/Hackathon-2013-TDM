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
	
	public class Ligne6Data
	{
		public function Ligne6Data()
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
				_ligneData = {value: "6", label: "Ligne 6", icon: EmbeddedAssets.LIGNE_6_ICON};
			
			return _ligneData;
		}
		
		private static var _data:ListCollection;
		
		public static function get data():ListCollection
		{
			if (!_data)
			{
				_data = new ListCollection([{value: "Alco", lat: "43.6258509402572", lon: "3.83985411125395", label: "Alco" }
					, {value: "Ambroise Pare", lat: "43.6381268226019", lon: "3.84789501692879", label: "Ambroise Paré" }
					, {value: "Anatole France", lat: "43.60548721122", lon: "3.87644991098142", label: "Anatole France" }
					, {value: "Antennes", lat: "43.6447206403263", lon: "3.84210264961506", label: "Antennes" }
					, {value: "Apothicaires", lat: "43.6414785930971", lon: "3.83473845141172", label: "Apothicaires" }
					, {value: "Appel Du 18 Juin", lat: "43.6362727429097", lon: "3.83056676504965", label: "Appel du 18 Juin" }
					, {value: "Arceaux", lat: "43.6099276928617", lon: "3.86219950837959", label: "Les Arceaux" }
					, {value: "Av. De Toulouse", lat: "43.5915771925959", lon: "3.85793116558353", label: "Avenue de Toulouse" }
					, {value: "Berthelot", lat: "43.6019363750556", lon: "3.8694825084272", label: "Berthelot" }
					, {value: "Cevennes", lat: "43.6220672259635", lon: "3.84624498544891", label: "Cévennes" }
					, {value: "Chateau D'o", lat: "43.6314850756983", lon: "3.84287255949927", label: "Château d'Ô" }
					, {value: "Coll. C. Claudel", lat: "43.6164285091452", lon: "3.86210711080997", label: "Collège Camille Claudel" }
					, {value: "Doria", lat: "43.612511836206", lon: "3.8679537173011", label: "Doria" }
					, {value: "Estanove", lat: "43.5978036311888", lon: "3.84822621421824", label: "Estanove" }
					, {value: "Euromedecine", lat: "43.6390920095547", lon: "3.82808319142705", label: "Euromédecine" }
					, {value: "Font Couverte", lat: "43.593503963304", lon: "3.85163128106791", label: "Font Couverte" }
					, {value: "G. Janvier", lat: "43.5973640777133", lon: "3.8641585597822", label: "Guillaume Janvier" }
					, {value: "Gare Saint-roch", lat: "43.6051626028276", lon: "3.87967353379184", label: "Gare Saint-Roch" }
					, {value: "Georges Brassens", lat: "43.5958055516172", lon: "3.86248419133896", label: "Georges Brassens" }
					, {value: "Jean Bart", lat: "43.6251204895797", lon: "3.83742790570092", label: "Jean Bart" }
					, {value: "La Gaillarde", lat: "43.6162329368977", lon: "3.85843937421461", label: "La Gaillarde" }
					, {value: "Las Rebes", lat: "43.6207800393193", lon: "3.84926122909585", label: "Las Rébès" }
					, {value: "Le Grand M", lat: "43.5910003521571", lon: "3.85473313987319", label: "Le Grand M" }
					, {value: "Louis Ravas", lat: "43.6198176735933", lon: "3.851865240344", label: "Louis Ravaz" }
					, {value: "Lycee Clemenceau", lat: "43.6030927432043", lon: "3.87161652630821", label: "Lycée Georges Clemenceau" }
					, {value: "Observatoire", lat: "43.6064049501532", lon: "3.87670970189679", label: "Observatoire" }
					, {value: "Occitanie", lat: "43.6345370485572", lon: "3.84848571021074", label: "Occitanie" }
					, {value: "Pas Du Loup", lat: "43.600373423026", lon: "3.84863437674063", label: "Pas du Loup" }
					, {value: "Peyrou", lat: "43.6112145997352", lon: "3.87195231161577", label: "Peyrou" }
					, {value: "Pierre Viala", lat: "43.616825691947", lon: "3.8549596610351", label: "Pierre Viala" }
					, {value: "Pitot", lat: "43.6121000801743", lon: "3.87036768662885", label: "Pitot" }
					, {value: "Place Du 8 Mai", lat: "43.5997810375499", lon: "3.86678991265418", label: "Place du 8 Mai" }
					, {value: "Puech Villa", lat: "43.6402505273", lon: "3.82992813926925", label: "Puech Villa" }
					, {value: "Ronceray", lat: "43.5936228835974", lon: "3.86012537262586", label: "Ronceray" }
					, {value: "Rondelet", lat: "43.6034872110247", lon: "3.87548882128635", label: "Rondelet" }
					, {value: "Rte De Ganges", lat: "43.6429289232461", lon: "3.84520588372826", label: "Route de Ganges" }
					, {value: "Saint Denis", lat: "43.6056360717793", lon: "3.87388382293218", label: "Saint-Denis" }
					, {value: "Saint Guilhem", lat: "43.6087919866427", lon: "3.87289550019621", label: "Saint-Guilhem" }
					, {value: "Saint Priest", lat: "43.6344993026344", lon: "3.84371451190719", label: "Saint-Priest" }
					, {value: "Sainte Genevieve", lat: "43.6231363732993", lon: "3.84435515042488", label: "Sainte-Geneviève" }
					, {value: "Sainte Therese", lat: "43.6141977149679", lon: "3.86538822419031", label: "Sainte-Thérèse" }
					, {value: "Val D'aurelle", lat: "43.642769808039", lon: "3.83627638489363", label: "Val d'Aurelle" }
					, {value: "Vega", lat: "43.5956487574372", lon: "3.84964728629091", label: "Véga" } ]);
			}
			
			return _data;
		}
		
		public static var directionsArray:Array = [ {value: "Pas Du Loup", label: "Pas Du Loup"}
			,{value: "Euromedecine", label: "Euromédecine"} ];
		
	}
}