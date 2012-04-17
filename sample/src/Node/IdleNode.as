package Node 
{
	import com.pzuh.ai.decisiontree.BaseActionNode;
	
	public class IdleNode extends BaseActionNode 
	{
		
		public function IdleNode(name:String) 
		{
			super(name);			
		}
		
		override protected function action():void
		{
			trace("idle");
		}
	}
}