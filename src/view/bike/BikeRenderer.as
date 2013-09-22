package view.bike
{
	import feathers.controls.Button;
	import feathers.controls.Label;
	import feathers.controls.VGroup;
	
	import starling.events.Event;

	public class BikeRenderer extends Button
	{
		public function BikeRenderer()
		{
			_title = new Label();
			_title.nameList.add(Label.BIG_WHITE);
			
			_bikes = new Label();
			_bikes.nameList.add(Label.WHITE);
			
			_slots = new Label();
			_slots.nameList.add(Label.WHITE);
			
			_vGroup = new VGroup();
			_vGroup.addEventListener(Event.RESIZE, resize_handler);

			_vGroup.addLayoutItem(_title);
			_vGroup.addLayoutItem(_bikes);
			_vGroup.addLayoutItem(_slots);
			
			addChild(_vGroup);
		}
		
		private function resize_handler(event:Event):void
		{
			trace("DEK");
			this.height = _vGroup.height;
		}
		
		private var _title:Label;
		private var _bikes:Label;
		private var _slots:Label;
		private var _vGroup:VGroup;
		
		public function setTile(value:String):void
		{
			_title.text = value;
		}
		
		public function setBikes(value:String):void
		{
			_bikes.text = value;
		}
		
		public function setSlots(value:String):void
		{
			_slots.text = value;
		}
	}
}