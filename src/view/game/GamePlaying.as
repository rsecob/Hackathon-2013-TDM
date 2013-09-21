package view.game
{
	import com.gamua.flox.AuthenticationType;
	import com.gamua.flox.Flox;
	import com.gamua.flox.Player;
	
	import flash.display.Bitmap;
	import flash.geom.Point;
	
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	import starling.textures.Texture;
	import starling.utils.deg2rad;
	import starling.utils.rad2deg;
	
	public class GamePlaying extends Sprite
	{
		private var game:Game;
		public var speed:Number = 0;
		public var angle:Number = 0;
		private var rotation_speed:Number = 0;
		
		[Embed(source="../../../assets/images/game/cloud.png")]
		public static const CloudTexture:Class;
		protected var cloudTexture:Texture;
		protected var cloudImage:Image;
		
		[Embed(source="../../../assets/images/game/meme.png")]
		public static const MemeTexture:Class;
		protected var memeTexture:Texture;
		protected var memeImage:Image;
		
		[Embed(source="../../../assets/images/game/line_1.png")]
		public static const TramwayTexture:Class;
		protected var tramwayTexture:Texture;
		protected var tramwayImage:Image;
		
		[Embed(source="../../../assets/images/game/ground.png")]
		public static const GroundTexture:Class;
		protected var groundTexture:Texture;
		protected var groundImage:Image;
		
		[Embed(source="../../../assets/images/game/houses.png")]
		public static const HousesTexture:Class;
		protected var housesTexture:Texture;
		protected var housesImage:Image;
		
		[Embed(source="../../../assets/images/game/trees.png")]
		public static const TreesTexture:Class;
		protected var treesTexture:Texture;
		protected var treesImage:Image;
		
		[Embed(source="../../../assets/images/game/rails.png")]
		public static const RailsTexture:Class;
		protected var railsTexture:Texture;
		protected var railsImage:Image;
		
		[Embed(source="../../../assets/images/game/bonus.jpg")]
		public static const BonusTexture:Class;
		protected var bonusTexture:Texture;
		
		[Embed(source="../../../assets/images/game/malus1.png")]
		public static const Malus1Texture:Class;
		protected var malus1Texture:Texture;
		
		[Embed(source="../../../assets/images/game/malus2.png")]
		public static const Malus2Texture:Class;
		protected var malus2Texture:Texture;
		
		private var real_begin:Touch = null;
		private var begin_time:Number = 0;
		private var baseTramwayPositionX:Number = 0;
		
		private var tramArrived:Boolean = false;
		private var memeFlying:Boolean = false;
		private var bonuses:Vector.<BonusGame>;

		public function GamePlaying(game:Game)
		{
			super();
			this.game = game;

			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			bonuses = new Vector.<BonusGame>();
		}

		protected function onAddedToStage(e:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			this.loadTextures();
			this.login();
			this.generateNewBonus();
			this.generateNewBonus();
			game.addEventListener(Event.ENTER_FRAME, newFrame);
		}
		
		protected function newFrame(e:Event):void
		{
			if (this.cloudImage && !memeFlying && !tramArrived)
			{
				if (this.tramwayImage.x < - this.tramwayImage.width + 200)
				{
					this.tramwayImage.x += 4.0 * (this.tramwayImage.x / (- this.tramwayImage.width + 200.0));
					this.baseTramwayPositionX = this.tramwayImage.x;
				}
				else
				{
					tramArrived = true;
					this.waitForPlayerMove();
				}
				return ;
			}
			if (!memeFlying)
				return ;
			this.moveGraphics();
			this.handleCollisions();
		}
		
		protected function moveGraphics() : void
		{
			var x_mov:Number = this.speed * Math.cos(this.angle);
			var y_mov:Number = this.speed * Math.sin(this.angle);

			this.memeImage.rotation = deg2rad((rad2deg(this.memeImage.rotation)  + this.speed / 4) % 360);
			
			this.cloudImage.x -= x_mov / 20;
			this.cloudImage.y += y_mov / 20;
			if (this.cloudImage.x <= - this.cloudImage.width / 2)
				this.cloudImage.x = 0;
			
			this.housesImage.x -= x_mov / 4;
			this.housesImage.y += y_mov;
			if (this.housesImage.x <= - this.housesImage.width / 2)
				this.housesImage.x = 0;
			
			this.treesImage.x -= x_mov / 3;
			this.treesImage.y += y_mov;
			if (this.treesImage.x <= - this.treesImage.width / 2)
				this.treesImage.x = 0;
			
			if (this.tramwayImage != null)
			{
				this.railsImage.x -= x_mov;
				this.railsImage.y += y_mov;
				this.tramwayImage.x -= x_mov;
				this.tramwayImage.y += y_mov;
				if (this.tramwayImage.x <= - this.tramwayImage.width)
				{
					removeChild(railsImage);
					railsImage = null;
					removeChild(tramwayImage);
					tramwayImage = null;
				}
			}
			this.groundImage.x -= x_mov;
			this.groundImage.y += y_mov;
			if (this.groundImage.x <= - this.groundImage.width / 2)
				this.groundImage.x = 0;
			
			this.moveBonuses(x_mov, y_mov);
			this.angle -= Math.PI / 300;
			if (this.angle < - Math.PI / 2)
				this.angle = - Math.PI / 2;
			this.speed -= Math.sin(this.angle) / 10;
		}
		
		protected function moveBonuses(x_mov:Number, y_mov:Number):void
		{			
			for each(var bonus:BonusGame in bonuses)
			{
				if (bonus)
				{
					bonus.y += y_mov;
					bonus.x -= x_mov;
				}
			}
		}
		
		public function loadTextures():void
		{
			if (!this.cloudTexture)
			{
				this.cloudTexture = Texture.fromBitmap(new CloudTexture());
				this.memeTexture = Texture.fromBitmap(new MemeTexture());
				this.tramwayTexture = Texture.fromBitmap(new TramwayTexture());
				this.railsTexture = Texture.fromBitmap(new RailsTexture());
				this.groundTexture = Texture.fromBitmap(new GroundTexture());
				this.housesTexture = Texture.fromBitmap(new HousesTexture());
				this.treesTexture = Texture.fromBitmap(new TreesTexture());
				this.bonusTexture = Texture.fromBitmap(new BonusTexture());
				this.malus1Texture = Texture.fromBitmap(new Malus1Texture());
				this.malus2Texture = Texture.fromBitmap(new Malus2Texture());
				BonusGame.imgTexture = Texture.fromBitmap(new BonusGame.ImgTexture());
			}
		}

		protected function login():void
		{/*
			if (Player.current.authType == AuthenticationType.GUEST)
			{
				// NOT LOGGED
				
				// get facebook key (using facebook api)
				var facebookKey:String = "test";
				Player.loginWithKey(facebookKey, function (player:Player):void {
					start();
				},
				function (message:String):void {
					// error
				});
			}
			else
			{
				Player.current.refresh(function (player:Player):void {
					start();
				}, function (message:String):void {
					// ERROR
				});
			}*/
			start();
		}
		
		protected function start():void
		{
			this.cloudTexture.repeat = true;
			cloudImage = new Image(this.cloudTexture);
			var coeff:int = Math.round(stage.stageHeight / cloudTexture.width + 1);
			cloudImage.width = cloudTexture.width * coeff;
			cloudImage.setTexCoords(1, new Point(coeff, 0));
			cloudImage.setTexCoords(3, new Point(coeff, 1));
			
			this.groundTexture.repeat = true;
			groundImage = new Image(this.groundTexture);
			coeff = Math.round(stage.stageHeight / groundTexture.width + 1);
			groundImage.width = groundTexture.width * coeff;
			groundImage.y = stage.stageWidth - groundImage.height;
			groundImage.setTexCoords(1, new Point(coeff, 0));
			groundImage.setTexCoords(3, new Point(coeff, 1));
			
			this.housesTexture.repeat = true;
			housesImage = new Image(this.housesTexture);
			coeff = Math.round(stage.stageHeight / housesTexture.width + 1);
			housesImage.width = housesTexture.width * coeff;
			housesImage.y = stage.stageWidth - 310;
			housesImage.setTexCoords(1, new Point(coeff, 0));
			housesImage.setTexCoords(3, new Point(coeff, 1));
			
			this.treesTexture.repeat = true;
			treesImage = new Image(this.treesTexture);
			coeff = Math.round(stage.stageHeight / treesTexture.width + 1);
			treesImage.width = treesTexture.width * coeff;
			treesImage.y = stage.stageWidth - 160;
			treesImage.setTexCoords(1, new Point(coeff, 0));
			treesImage.setTexCoords(3, new Point(coeff, 1));
			
			memeImage = new Image(this.memeTexture);
			memeImage.pivotX = memeImage.width  / 2.0;
			memeImage.pivotY = memeImage.height / 2.0;
			memeImage.height = 63;
			memeImage.width = 50;
			memeImage.y = stage.stageWidth - 90;
			memeImage.x = stage.stageHeight / 2 + 145;

			tramwayImage = new Image(this.tramwayTexture);
			tramwayImage.width = 511;
			tramwayImage.height = 87;
			tramwayImage.y = stage.stageWidth - 115;
			tramwayImage.x = this.baseTramwayPositionX = - tramwayImage.width;
			
			railsImage = new Image(this.railsTexture);
			railsImage.y = stage.stageWidth - 66;
			railsImage.x = - railsImage.width + stage.stageHeight / 2 + 100;

			addChild(groundImage);
			addChild(cloudImage);
			addChild(housesImage);
			addChild(treesImage);
			stage.addChild(memeImage);
			addChild(railsImage);
			addChild(tramwayImage);
		}
		
		public function handleCollisions():void
		{
			if (this.groundImage.y < (stage.stageHeight - this.groundImage.height))
			{
				this.angle = Math.abs(this.angle);
				this.speed /= 2;
				if (this.speed < 0.2)
					this.speed = 0;
			}
			
			var len:uint = this.bonuses.length;
			var bonus:BonusGame = null;
			while (len > 0)
			{
				bonus = bonuses.shift();
				if (bonus)
				{
					if (bonus.x < - bonus.width)
					{
						this.removeChild(bonus);
						this.generateNewBonus();
					}
					else
					{
						if (bonus.isColliding(memeImage))
						{
							bonus.apply(this);
						}
						bonuses.push(bonus);
					}
				}
				len--;
			}
		}
		
		protected function waitForPlayerMove():void
		{
			game.stage.addEventListener(TouchEvent.TOUCH, onTouchEvent);
		}
		
		protected function onTouchEvent(event:TouchEvent):void
		{
			var begin:Touch = event.getTouch(this, TouchPhase.BEGAN);
			var stationary:Touch = event.getTouch(this, TouchPhase.STATIONARY);
			var moved:Touch = event.getTouch(this, TouchPhase.MOVED);
			var end:Touch = event.getTouch(this, TouchPhase.ENDED);

			if (begin)
			{
				real_begin = begin.clone();
				begin_time = (new Date()).time;
			}

			if (moved && real_begin)
			{
				tramwayImage.x = this.baseTramwayPositionX + moved.globalX - real_begin.globalX;
			}
			
			if (real_begin && (end || moved))
			{
				if (!end)
					end = moved;
				else
					this.baseTramwayPositionX = this.tramwayImage.x;
				if (tramwayImage.x + tramwayImage.width >= this.memeImage.x)
				{
					var dist:Number = end.globalX - real_begin.globalX;
					var time:Number = (new Date()).time - begin_time;
				
					this.speed = dist / time * 50;
					this.pushMeme();
				}
			}
		}
		
		protected function pushMeme() : void
		{
			this.memeFlying = true;
			stage.removeEventListener(TouchEvent.TOUCH, onTouchEvent);
			this.angle = Math.random() * Math.PI;
			if (this.angle > Math.PI / 2)
				this.angle = this.angle - Math.PI;
			this.angle = Math.PI / 4; // REMOVE THIS LINE!
		}
		
		protected function generateNewBonus() : void
		{
			var last:BonusGame = this.bonuses.pop();
			var last_x:Number = Math.max(stage.stageHeight, stage.stageWidth);
			var type:Boolean = false;
			
			if (last)
				last_x = last.x;
			if (Math.random() <= 0.5)
				type = true;
			var newBonus:BonusGame = new BonusGame(type, last_x + Math.max(stage.stageHeight, stage.stageWidth) / 2 + Math.random() * 20);
			var img:Image;
			if (type == BonusGame.BONUS)
			{
				img = new Image(bonusTexture);
				img.height = 30;
				img.width = 50;
				img.y = groundImage.y + groundImage.height - 82;
			}
			else
			{
				if (Math.random() < 0.5)
					img = new Image(malus1Texture);
				else
					img = new Image(malus2Texture);
				img.width = 50 / 1.5;
				img.height = 116 / 1.5;
				img.y = groundImage.y + groundImage.height - img.height * 1.5;
			}
			newBonus.img = img;
			
			this.bonuses.push(last);
			this.bonuses.push(newBonus);
			this.addChild(newBonus);
		}
	}
}