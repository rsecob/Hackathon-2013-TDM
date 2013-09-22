package core.database
{
	import flash.data.SQLConnection;
	import flash.data.SQLStatement;
	import flash.filesystem.File;

	public class StopDatabase
	{
		////////////////////////////
		// Constructor
		////////////////////////////
		
		public function StopDatabase()
		{
			initSQLConnection();
			_updateCallback = null;
		}
		
		////////////////////////////
		// Properties
		////////////////////////////
		
		private var _sqlConnection:SQLConnection;
		private var _updateCallback:Function;
		
		////////////////////////////
		// Static Methods
		////////////////////////////
		
		private static var _instance:StopDatabase;
		
		public static function getInstance():StopDatabase
		{
			if (!_instance)
				_instance = new StopDatabase();
			
			return _instance;
		}
		
		////////////////////////////
		// Methods
		////////////////////////////
		
		private function initSQLConnection():void
		{
			_sqlConnection = new SQLConnection();
			var stmt:SQLStatement = new SQLStatement();
			
			_sqlConnection.open(File.applicationStorageDirectory.resolvePath("stops.db"));
			stmt.sqlConnection = _sqlConnection;
			stmt.text = "CREATE TABLE IF NOT EXISTS stops (line SMALLINT, label TEXT, index_list SMALLINT)";
			stmt.execute();
		}
		
		private function updateCallback():void
		{
			if (_updateCallback != null)
				_updateCallback();
		}
		
		public function addUpdateCallback(callback:Function):void
		{
			_updateCallback = callback;
		}
		
		public function addFavoriteStop(line:int, stop:String, index_list:int):void
		{
			var stmt:SQLStatement = new SQLStatement();
			
			stmt.text = "INSERT INTO stops (line, label, index_list) VALUES (:line, :stop, :index_list)";
			stmt.sqlConnection = _sqlConnection;
			stmt.parameters[":line"] = line;
			stmt.parameters[":stop"] = stop;
			stmt.parameters[":index_list"] = index_list;
			stmt.execute();
			
			updateCallback();
		}
		
		public function removeFavoriteStop(line:int, stop:String):void
		{
			var stmt:SQLStatement = new SQLStatement();
			
			stmt.text = "DELETE FROM stops WHERE :line = stops.line AND :stop = stops.label";
			stmt.sqlConnection = _sqlConnection;
			stmt.parameters[":line"] = line;
			stmt.parameters[":stop"] = stop;
			stmt.execute();
			
			updateCallback();
		}
		
		public function getData():Array
		{
			var stmt:SQLStatement = new SQLStatement();
			
			stmt.sqlConnection = _sqlConnection;
			stmt.text = "SELECT * FROM stops";
			stmt.execute();
			
			return (stmt.getResult().data);
		}
		
		public function isExist(line:int, label:String):Boolean
		{
			var stmt:SQLStatement = new SQLStatement();
			
			stmt.sqlConnection = _sqlConnection;
			stmt.text = "SELECT * FROM stops";
			stmt.execute();
			
			for each (var stop:Object in stmt.getResult().data)
			{
				if ((stop.line == line) && (stop.label == label))
					return true;
			}
			
			return false;
		}
		
		public function deleteTable():void
		{
			var stmt:SQLStatement = new SQLStatement();

			stmt.text = "DROP TABLE stops";
			stmt.sqlConnection = _sqlConnection;
			stmt.execute();
		}
	}
}