package Node 
{
	import com.pzuh.ai.decisiontree.BaseDecisionNode;
	
	public class LifeFullNode extends BaseDecisionNode 
	{
		
		public function LifeFullNode(name:String, properties:Object = null) 
		{
			super(name, properties);			
		}		
		
		override protected function query():Boolean
		{
			return Main.lifeFull;
		}
	}
}