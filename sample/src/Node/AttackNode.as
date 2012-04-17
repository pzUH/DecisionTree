package Node 
{
	import com.pzuh.ai.decisiontree.BaseActionNode;
	
	public class AttackNode extends BaseActionNode 
	{
		
		public function AttackNode(name:String) 
		{
			super(name);			
		}	
		
		override protected function action():void
		{
			trace("attack");
		}
	}
}