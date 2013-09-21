package view.game
{
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	import starling.display.Image;
	import starling.display.Sprite;
	
	public class BonusGame extends Sprite
	{
		public static const BONUS:Boolean = true;
		public static const MALUS:Boolean = false;
		
		protected var angle:Number = 0;
		protected var speed:Number = 0;
		protected var applied:Boolean = false;
		
		public function BonusGame(type:Boolean, x:Number)
		{
			super();
			
			this.speed = Math.random() * 0.5;
			if (type == BONUS)
				this.speed += 1;
			else
				this.speed += 0.5;
			this.angle = Math.random() * Math.PI / 2;
			if (type == MALUS)
				this.angle -= Math.PI / 2;
			this.x = x;
		}
		
		public function refresh(speed:Number):void
		{
			this.x -= speed;
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
			var bounds2:Rectangle = this.bounds;
			
			if (bounds1.intersects(bounds2))
				return true;
			return false;
		}
	}
}