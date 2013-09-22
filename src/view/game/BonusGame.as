package view.game
{
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.textures.Texture;
	
	public class BonusGame extends Sprite
	{
		public static const BONUS:Boolean = true;
		public static const MALUS:Boolean = false;
		
		protected var angle:Number = 0;
		protected var speed:Number = 0;
		protected var applied:Boolean = false;
		
		[Embed(source="../../../assets/images/game/stop.png")]
		public static const ImgTexture:Class;
		public static var imgTexture:Texture;
		protected var imgImage:Image = null;
		
		protected var _img:Image;
		
		public function set img(i:Image):void
		{
			this._img = i;
			if (this.imgImage)
				this.imgImage.y = i.y;
		}
		
		public function BonusGame(type:Boolean, x:Number)
		{
			super();
			
			this.speed = Math.random() * 0.5;
			if (type == BONUS)
				this.speed += 1;
			else
				this.speed += 0.5;
			this.angle = Math.random() * Math.PI / 2;
			this.x = x;
			if (type == MALUS)
				this.angle -= Math.PI / 2;
			if (type == MALUS)
			{
				this.imgImage = new Image(imgTexture);
				this.imgImage.width /= 2;
				this.imgImage.height /= 2;
				this.imgImage.x = this.x - this.imgImage.width / 2;
			}
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		protected function onAddedToStage():void
		{
			this._img.x = this.x;
			if (this.imgImage)
				stage.addChild(this.imgImage);
			stage.addChild(_img);
			this.addEventListener(Event.REMOVED_FROM_STAGE, onRemovedFromStage);
		}
		
		protected function onRemovedFromStage():void
		{
			if (this.imgImage)
				stage.removeChild(this.imgImage);
			stage.removeChild(this._img);
		}
		
		public function refresh(speed:Number):void
		{
			this.x -= speed;
			this._img.x -= speed;
			if (this.imgImage)
				this.imgImage.x -= speed;
		}
		
		public function apply(game:GamePlaying):void
		{
			if (applied)
				return ;
			game.speed *= speed;
			game.angle = angle;
			if (game.angle > Math.PI / 2)
				game.angle = Math.PI / 2;
			else if (game.angle < - Math.PI / 2)
				game.angle = - Math.PI / 2;
			applied = true;
		}
		
		public function isColliding(sp:Image):Boolean
		{
			var bounds1:Rectangle = sp.bounds;
			var bounds2:Rectangle = this._img.bounds;
			
			if (bounds1.intersects(bounds2))
				return true;
			return false;
		}
		
		public function hide():void
		{
			_img.visible = false;
			if (imgImage)
				imgImage.visible = false;
		}
	}
}