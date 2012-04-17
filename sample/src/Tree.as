package  
{
	import com.pzuh.ai.decisiontree.BaseTree;
	import Node.AttackNode;
	import Node.EnemyInSightNode;
	import Node.FleeNode;
	import Node.IdleNode;
	import Node.LifeFullNode;
	
	import com.pzuh.ai.decisiontree.BaseDecisionNode;
	import com.pzuh.ai.decisiontree.BaseActionNode;
	
	public class Tree extends BaseTree
	{
		public static const ENEMY_CHECK:String = "enemy_check";
		public static const LIFE_CHECK:String = "life_check";
		public static const ATTACK:String = "attack";
		public static const FLEE:String = "flee";
		public static const IDLE:String = "idle";
		
		public function Tree() 
		{
			super();
		}
		
		override protected function constructTree():void
		{
			/*
			 * 		--------decison tree graph--------
			 * 
			 * 					[enemy check]
			 * 					/			\
			 * 			[life check]		[idle]
			 * 			/			\
			 * 		[attack]		[flee]
			 * 
			 * */
			
			//init all nodes
			var enemyCheckNode:BaseDecisionNode = new EnemyInSightNode(ENEMY_CHECK);
			var lifeCheckNode:BaseDecisionNode = new LifeFullNode(LIFE_CHECK);
			var attackNode:BaseActionNode = new AttackNode(ATTACK);
			var idleNode:BaseActionNode = new FleeNode(IDLE);
			var fleeNode:BaseActionNode = new IdleNode(FLEE);
			
			//specify each decision node's branch
			enemyCheckNode.addFalseNode(idleNode);
			enemyCheckNode.addTrueNode(lifeCheckNode);
			
			lifeCheckNode.addFalseNode(fleeNode);
			lifeCheckNode.addTrueNode(attackNode);
			
			//assign a root node
			rootNode = enemyCheckNode;
		}
	}
}