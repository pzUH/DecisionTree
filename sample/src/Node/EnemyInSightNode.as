package Node 
{
	import com.pzuh.ai.decisiontree.BaseDecisionNode;
	
	public class EnemyInSightNode extends BaseDecisionNode 
	{
		
		public function EnemyInSightNode(name:String, properties:Object = null) 
		{
			super(name, properties);			
		}	
		
		override protected function query():Boolean
		{
			return Main.inSight;
		}
	}
}