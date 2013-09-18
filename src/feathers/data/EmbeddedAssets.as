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
		}
	}
}
