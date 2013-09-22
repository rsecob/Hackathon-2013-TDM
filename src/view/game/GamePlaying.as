package view.game
{
	import com.gamua.flox.AuthenticationType;
	import com.gamua.flox.Flox;
	import com.gamua.flox.Player;
	import com.gamua.flox.utils.setTimeout;
	
	import feathers.themes.MetalWorksMobileTheme;
	
	import flash.display.Bitmap;
	import flash.geom.Point;
	import flash.media.Sound;
	
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	import starling.text.TextField;
	import starling.textures.Texture;
	import starling.utils.Color;
	import starling.utils.HAlign;
	import starling.utils.VAlign;
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
		
		[Embed(source='../../../assets/sounds/tramway.mp3')]
		private const TramwaySound:Class;
		
		private var real_begin:Touch = null;
		private var begin_time:Number = 0;
		private var baseTramwayPositionX:Number = 0;
		
		private var tramArrived:Boolean = false;
		private var memeFlying:Boolean = false;
		private var bonuses:Vector.<BonusGame>;

		private var score:Number = 0;
		private var scoreText:TextField = null;
		private var gameEnded:Boolean = false;
		
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
			this.intro();
			
		}
		
		protected function intro()
		{
			var text:TextField = new TextField(Math.max(stage.stageHeight, stage.stageWidth), Math.min(stage.stageHeight, stage.stageWidth), "", "Arial", 30, Color.BLACK);
			text.text = "Mémé veut aller à \""+ game.scenario.name +"\",\nen partant de "+ game.scenario.place_from +" et en s'arrêtant à "+ game.scenario.place_to +"\n";
			text.text += "Aidez-la en lui donnant un petit coup de pouce !";
			text.hAlign = HAlign.CENTER;
			text.vAlign = VAlign.CENTER;
			addChild(text);
			setTimeout(function():void {
				removeChild(text);
				login();
				generateNewBonus();
				generateNewBonus();
				game.addEventListener(Event.ENTER_FRAME, newFrame);
			}, 5000);
		}
		
		protected function newFrame(e:Event):void
		{
			if (gameEnded)
				return ;
			if (this.cloudImage && !memeFlying && !tramArrived)
			{
				if (this.tramwayImage.x < - this.tramwayImage.width + 200)
				{
					this.tramwayImage.x += 4.0 * (this.tramwayImage.x / (- this.tramwayImage.width + 200.0));
					this.baseTramwayPositionX = this.tramwayImage.x;
				}
				else
				{
					var soundClip:Sound = new TramwaySound();
					soundClip.play();
					tramArrived = true;
					this.waitForPlayerMove();
				}
				return ;
			}
			if (!memeFlying)
				return ;
			this.moveGraphics();
			this.handleCollisions();
			this.refreshScores();
		}
		
		protected function moveGraphics() : void
		{
			var x_mov:Number = this.speed * Math.cos(this.angle);
			var y_mov:Number = this.speed * Math.sin(this.angle);

			this.score += x_mov / 10;
			this.memeImage.rotation = deg2rad((rad2deg(this.memeImage.rotation)  + this.speed / 4) % 360);
			
			this.cloudImage.x -= x_mov / 20;
//			this.cloudImage.y += y_mov / 20;
			if (this.cloudImage.x <= - this.cloudImage.width / 2)
				this.cloudImage.x += this.cloudImage.width / 2;
			
			this.housesImage.x -= x_mov / 4;
//			this.housesImage.y += y_mov;
			if (this.housesImage.x <= - this.housesImage.width / 2)
				this.housesImage.x += this.housesImage.width / 2;
			
			this.treesImage.x -= x_mov / 3;
//			this.treesImage.y += y_mov;
			if (this.treesImage.x <= - this.treesImage.width / 2)
				this.treesImage.x += this.treesImage.width / 2;
			
			if (this.tramwayImage != null)
			{
				this.railsImage.x -= x_mov;
//				this.railsImage.y += y_mov;
				this.tramwayImage.x -= x_mov;
//				this.tramwayImage.y += y_mov;
				if (this.tramwayImage.x <= - this.tramwayImage.width)
				{
					removeChild(railsImage);
					railsImage = null;
					removeChild(tramwayImage);
					tramwayImage = null;
				}
			}
			this.groundImage.x -= x_mov;
//			this.groundImage.y += y_mov;
			if (this.groundImage.x <= - this.groundImage.width / 2)
				this.groundImage.x += this.groundImage.width / 2;
			
			this.memeImage.y -= y_mov;
			
			this.moveBonuses(x_mov, y_mov);
			this.angle -= Math.PI / 300;
			if (this.angle < - Math.PI / 2)
				this.angle = - Math.PI / 2;
			this.speed -= Math.sin(this.angle) / 10;
			if (this.speed < 0)
				this.speed = 0.1;
		}
		
		protected function moveBonuses(x_mov:Number, y_mov:Number):void
		{			
			for each(var bonus:BonusGame in bonuses)
			{
				if (bonus)
				{
//					bonus.y += y_mov;
					bonus.refresh(x_mov);
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

		protected function refreshScores():void
		{
			if (scoreText == null)
			{
				scoreText = new TextField(Math.max(stage.stageHeight, stage.stageWidth) - 10 * Game.DPI, 40 * Game.DPI, "0", "Arial", 30, Color.GRAY);
				scoreText.hAlign = HAlign.RIGHT;
				scoreText.vAlign = VAlign.CENTER;
				addChild(scoreText);
			}
			scoreText.text = (Math.round(this.score)).toString();
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
			var coeff:Number = 2;
			cloudImage.width = cloudTexture.width * coeff;
			cloudImage.height *= Game.DPI;
			cloudImage.setTexCoords(1, new Point(coeff, 0));
			cloudImage.setTexCoords(3, new Point(coeff, 1));
			
			this.groundTexture.repeat = true;
			groundImage = new Image(this.groundTexture);
			coeff = 2;
			groundImage.width = groundTexture.width * coeff;
			groundImage.y = Math.min(stage.stageHeight, stage.stageWidth) - groundImage.height;
			groundImage.setTexCoords(1, new Point(coeff, 0));
			groundImage.setTexCoords(3, new Point(coeff, 1));
			
			this.housesTexture.repeat = true;
			housesImage = new Image(this.housesTexture);
			coeff = 2;
			housesImage.width = housesTexture.width * coeff;
			housesImage.height *= Game.DPI;
			housesImage.y = Math.min(stage.stageHeight, stage.stageWidth) - 310 * Game.DPI;
			housesImage.setTexCoords(1, new Point(coeff, 0));
			housesImage.setTexCoords(3, new Point(coeff, 1));
			
			this.treesTexture.repeat = true;
			treesImage = new Image(this.treesTexture);
			coeff = 2;
			treesImage.width = treesTexture.width * coeff;
			treesImage.height *= Game.DPI;
			treesImage.y = Math.min(stage.stageHeight, stage.stageWidth) - 160 * Game.DPI;
			treesImage.setTexCoords(1, new Point(coeff, 0));
			treesImage.setTexCoords(3, new Point(coeff, 1));
			
			memeImage = new Image(this.memeTexture);
			memeImage.pivotX = memeImage.width  / 2.0;
			memeImage.pivotY = memeImage.height / 2.0;
			memeImage.height = 63 * Game.DPI;
			memeImage.width = 50 * Game.DPI;
			memeImage.y = Math.min(stage.stageHeight, stage.stageWidth) - 90 * Game.DPI;
			memeImage.x = Math.max(stage.stageHeight, stage.stageWidth) / 2 + 145 * Game.DPI;

			tramwayImage = new Image(this.tramwayTexture);
			tramwayImage.width = 511 * Game.DPI;
			tramwayImage.height = 87 * Game.DPI;
			tramwayImage.y = Math.min(stage.stageHeight, stage.stageWidth) - 115 * Game.DPI;
			tramwayImage.x = this.baseTramwayPositionX = - tramwayImage.width;
			
			railsImage = new Image(this.railsTexture);
			railsImage.y = Math.min(stage.stageHeight, stage.stageWidth) - 66 * Game.DPI;
			railsImage.x = - railsImage.width + Math.max(stage.stageHeight, stage.stageWidth) / 2 + 100 * Game.DPI;

			addChild(groundImage);
			addChild(cloudImage);
			addChild(housesImage);
			addChild(treesImage);
			addChild(memeImage);
			addChild(railsImage);
			addChild(tramwayImage);
		}
		
		public function handleCollisions():void
		{
			if (this.memeImage.y >= (stage.stageHeight - 90 * Game.DPI))
			{
				this.angle = Math.abs(this.angle);
				if (this.angle > Math.PI / 2)
					this.angle = Math.PI / 4;
				this.speed /= 1.5;
				if (this.speed < 6)
				{
					this.speed = 0;
					this.angle = -Math.PI / 4;
					this.endGame();
				}
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
							bonus.hide();
						}
						bonuses.push(bonus);
					}
				}
				len--;
			}
		}
		
		public function endGame():void
		{
			gameEnded = true;
			
			this.removeChildren();
			var textField:TextField = new TextField(stage.stageWidth, stage.stageHeight, "", "Arial", 30, Color.BLACK, true);
			
			textField.text = "Vous vous êtes rapproché de "+ (Math.round(this.score)).toString() +"m de "+ this.game.scenario.place_to +".\n";
			textField.text += "La TAM fait mieux, elle vous y amène directement!";
			
			textField.hAlign = HAlign.CENTER;
			textField.vAlign = VAlign.CENTER;
			addChild(textField);
			game.stage.addEventListener(TouchEvent.TOUCH, quitGame);
		}
		
		protected function quitGame(e:TouchEvent):void
		{
			var begin:Touch = e.getTouch(game, TouchPhase.BEGAN);
			
			if (begin)
			{
				game.stage.removeEventListener(TouchEvent.TOUCH, quitGame);
				dispatchEvent(new Event("QUIT_GAME"));
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
			var newBonus:BonusGame = new BonusGame(type, last_x + Math.max(stage.stageHeight, stage.stageWidth) + Math.random() * 20);
			var img:Image;
			if (type == BonusGame.BONUS)
			{
				img = new Image(bonusTexture);
				img.height = 30 * Game.DPI;
				img.width = 50 * Game.DPI;
				img.y = Math.min(stage.stageHeight, stage.stageWidth) - 82 * Game.DPI;
//				img.y = groundImage.y + groundImage.height - 82 * Game.DPI;
			}
			else
			{
				if (Math.random() < 0.5)
					img = new Image(malus1Texture);
				else
					img = new Image(malus2Texture);
				img.width = 50 / 1.5 * Game.DPI;
				img.height = 116 / 1.5 * Game.DPI;
				img.y = Math.min(stage.stageHeight, stage.stageWidth) - img.height * 1.5;
//				img.y = groundImage.y + groundImage.height - img.height * 1.5;
			}
			newBonus.img = img;
			
			this.bonuses.push(last);
			this.bonuses.push(newBonus);
			this.addChild(newBonus);
		}
	}
}