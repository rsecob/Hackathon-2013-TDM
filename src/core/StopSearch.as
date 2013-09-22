package core
{
	import data.LignesData;
	import data.lignes.*;
	
	import flash.utils.getDefinitionByName;

	public class StopSearch
	{
		////////////////////////////
		// Constructor
		////////////////////////////
		
		public function StopSearch()
		{
		}
		
		////////////////////////////
		// Methods
		////////////////////////////
		
		Ligne1Data, Ligne2Data, Ligne3Data, Ligne4Data, Ligne6Data, Ligne7Data, Ligne8Data, Ligne9Data,
		Ligne10Data, Ligne11Data, Ligne12Data, Ligne13Data, Ligne14Data, Ligne15Data, Ligne16Data, Ligne17Data, Ligne18Data, Ligne19Data,
		Ligne20Data, Ligne21Data, Ligne22Data, Ligne23Data, Ligne24Data, Ligne25Data, Ligne28Data, Ligne29Data, 
		Ligne30Data, Ligne31Data, Ligne32Data, Ligne32Data, Ligne33Data, Ligne34Data, Ligne35Data, Ligne36Data, Ligne37Data, Ligne37Data, Ligne38Data, Ligne39Data,
		Ligne41Data
		
		public function searchStop(pattern:String):Array
		{
			if (pattern.length < 3)
				return null;

			pattern = pattern.replace(/ /g, "( |-)");
			
			var lines:Array = LignesData.getData();
			var stopsArray:Array = new Array();
			var regExp:RegExp = new RegExp(pattern, "i");
			
			for each (var line:Object in lines)
			{
				var lineData:Class = getDefinitionByName("data.lignes.Ligne" + line.value + "Data") as Class;
				var index:int = 0;

				for each (var stop:Object in lineData["data"].data)
				{
					var label:String = stop.label;
					
					if (stop.label.match(regExp))
					{
						var lineInfo:Object = LignesData.getLineInfo(line.value);
						
						if (lineInfo)
							stopsArray.push({line: line.value, text: stop.label, index: index, icon: lineInfo.icon});
					}
					index += 1;
				}
			}
			
			return stopsArray;
		}
	}
}