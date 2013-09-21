package feathers.data
{
	import starling.textures.Texture;
	
	public class EmbeddedAssets
	{
		///////////////////////////
		// HOME VIEW EMBEDDED
		///////////////////////////

		// Embed
		
		[Embed(source="/../assets/icons/clock.png")]
		private static const CLOCK_ICON_EMBEDDED:Class;
		
		[Embed(source="/../assets/icons/compass.png")]
		private static const COMPASS_ICON_EMBEDDED:Class;
		
		[Embed(source="/../assets/icons/marker.png")]
		private static const MARKER_ICON_EMBEDDED:Class;
		
		// Image Loader
		
		public static var HOME_CLOCK_ICON:Texture;
		public static var HOME_COMPASS_ICON:Texture;
		public static var HOME_MARKER_ICON:Texture;
		
		///////////////////////////
		// LIST VIEW EMBEDDED
		///////////////////////////
		
		// Embed
		
		[Embed(source="/../assets/icons/home.png")]
		private static const HOME_ICON_EMBEDDED:Class;
		
		[Embed(source="/../assets/icons/list_clock.png")]
		private static const LIST_CLOCK_ICON_EMBEDDED:Class;

		[Embed(source="/../assets/icons/list_compass.png")]
		private static const LIST_COMPASS_ICON_EMBEDDED:Class;

		[Embed(source="/../assets/icons/list_marker.png")]
		private static const LIST_MARKER_ICON_EMBEDDED:Class;
		
		[Embed(source="/../assets/icons/list_star.png")]
		private static const LIST_STAR_ICON_EMBEDDED:Class;
		
		// Texture
		
		public static var LIST_HOME_ICON:Texture;
		public static var LIST_CLOCK_ICON:Texture;
		public static var LIST_COMPASS_ICON:Texture;
		public static var LIST_MARKER_ICON:Texture;
		public static var LIST_STAR_ICON:Texture;
		
		///////////////////////////
		// LIGNE DATA ICONS
		///////////////////////////
		
		// Embed
		
		[Embed(source="/../assets/icons/data/1.png")]
		private static const DATA_1_ICON:Class;
		
		[Embed(source="/../assets/icons/data/2.png")]
		private static const DATA_2_ICON:Class;
		
		[Embed(source="/../assets/icons/data/3.png")]
		private static const DATA_3_ICON:Class;
		
		[Embed(source="/../assets/icons/data/4.png")]
		private static const DATA_4_ICON:Class;
		
		[Embed(source="/../assets/icons/data/5.png")]
		private static const DATA_5_ICON:Class;
		
		[Embed(source="/../assets/icons/data/6.png")]
		private static const DATA_6_ICON:Class;
		
		[Embed(source="/../assets/icons/data/7.png")]
		private static const DATA_7_ICON:Class;
		
		[Embed(source="/../assets/icons/data/8.png")]
		private static const DATA_8_ICON:Class;
		
		[Embed(source="/../assets/icons/data/9.png")]
		private static const DATA_9_ICON:Class;
		
		[Embed(source="/../assets/icons/data/10.png")]
		private static const DATA_10_ICON:Class;
		
		[Embed(source="/../assets/icons/data/11.png")]
		private static const DATA_11_ICON:Class;
		
		[Embed(source="/../assets/icons/data/12.png")]
		private static const DATA_12_ICON:Class;
		
		[Embed(source="/../assets/icons/data/13.png")]
		private static const DATA_13_ICON:Class;
		
		[Embed(source="/../assets/icons/data/14.png")]
		private static const DATA_14_ICON:Class;
		
		[Embed(source="/../assets/icons/data/15.png")]
		private static const DATA_15_ICON:Class;
		
		[Embed(source="/../assets/icons/data/16.png")]
		private static const DATA_16_ICON:Class;
		
		[Embed(source="/../assets/icons/data/19.png")]
		private static const DATA_19_ICON:Class;
		
		// Texture
		
		public static var LIGNE_1_ICON:Texture;
		public static var LIGNE_2_ICON:Texture;
		public static var LIGNE_3_ICON:Texture;
		public static var LIGNE_4_ICON:Texture;
		public static var LIGNE_5_ICON:Texture;
		public static var LIGNE_6_ICON:Texture;
		public static var LIGNE_7_ICON:Texture;
		public static var LIGNE_8_ICON:Texture;
		public static var LIGNE_9_ICON:Texture;
		public static var LIGNE_10_ICON:Texture;
		public static var LIGNE_11_ICON:Texture;
		public static var LIGNE_12_ICON:Texture;
		public static var LIGNE_13_ICON:Texture;
		public static var LIGNE_14_ICON:Texture;
		public static var LIGNE_15_ICON:Texture;
		public static var LIGNE_16_ICON:Texture;
		public static var LIGNE_19_ICON:Texture;
		
		///////////////////////////
		// ITINERARY VIEW ICONS
		///////////////////////////
		
		// Embed
		
		[Embed(source="/../assets/icons/location.png")]
		private static const LOCATION_ICON:Class;
		
		[Embed(source="/../assets/icons/walk.png")]
		private static const WALK_ICON:Class;
		
		// Texture
		
		public static var ITINERARY_LOCATION_ICON:Texture;
		public static var WALK_LOCATION_ICON:Texture;
		
		public static function initialize():void
		{
			// Home View
			
			HOME_CLOCK_ICON = Texture.fromBitmap(new CLOCK_ICON_EMBEDDED());
			HOME_COMPASS_ICON = Texture.fromBitmap(new COMPASS_ICON_EMBEDDED());
			HOME_MARKER_ICON = Texture.fromBitmap(new MARKER_ICON_EMBEDDED());
			
			// LIST View
			
			LIST_HOME_ICON = Texture.fromBitmap(new HOME_ICON_EMBEDDED());
			LIST_CLOCK_ICON = Texture.fromBitmap(new LIST_CLOCK_ICON_EMBEDDED());
			LIST_COMPASS_ICON = Texture.fromBitmap(new LIST_COMPASS_ICON_EMBEDDED());
			LIST_MARKER_ICON = Texture.fromBitmap(new LIST_MARKER_ICON_EMBEDDED());
			LIST_STAR_ICON = Texture.fromBitmap(new LIST_STAR_ICON_EMBEDDED());
			
			// Data Ligne Icons
			
			LIGNE_1_ICON = Texture.fromBitmap(new DATA_1_ICON());
			LIGNE_2_ICON = Texture.fromBitmap(new DATA_2_ICON());
			LIGNE_3_ICON = Texture.fromBitmap(new DATA_3_ICON());
			LIGNE_4_ICON = Texture.fromBitmap(new DATA_4_ICON());
			LIGNE_5_ICON = Texture.fromBitmap(new DATA_5_ICON());
			LIGNE_6_ICON = Texture.fromBitmap(new DATA_6_ICON());
			LIGNE_7_ICON = Texture.fromBitmap(new DATA_7_ICON());
			LIGNE_8_ICON = Texture.fromBitmap(new DATA_8_ICON());
			LIGNE_9_ICON = Texture.fromBitmap(new DATA_9_ICON());
			LIGNE_10_ICON = Texture.fromBitmap(new DATA_10_ICON());
			LIGNE_11_ICON = Texture.fromBitmap(new DATA_11_ICON());
			LIGNE_12_ICON = Texture.fromBitmap(new DATA_12_ICON());
			LIGNE_13_ICON = Texture.fromBitmap(new DATA_13_ICON());
			LIGNE_14_ICON = Texture.fromBitmap(new DATA_14_ICON());
			LIGNE_15_ICON = Texture.fromBitmap(new DATA_15_ICON());
			LIGNE_16_ICON = Texture.fromBitmap(new DATA_16_ICON());
			LIGNE_19_ICON = Texture.fromBitmap(new DATA_19_ICON());
			
			// Itinerary View
			
			ITINERARY_LOCATION_ICON = Texture.fromBitmap(new LOCATION_ICON());
			WALK_LOCATION_ICON = Texture.fromBitmap(new WALK_ICON());
		}
	}
}
