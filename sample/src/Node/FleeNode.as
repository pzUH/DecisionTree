package Node 
{
	import com.pzuh.ai.decisiontree.BaseActionNode;
	
	public class FleeNode extends BaseActionNode 
	{
		
		public function FleeNode(name:String) 
		{
			super(name);
			
		}
		
		override protected function action():void
		{
			trace("Flee");
		}
	}

}