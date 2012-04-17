package 
{
	import com.pzuh.ai.decisiontree.BaseActionNode;
	import com.pzuh.ai.decisiontree.BaseDecisionNode;
	import com.pzuh.ai.decisiontree.INode;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import Node.AttackNode;
	import Node.EnemyInSightNode;
	import Node.LifeFullNode;
	import Node.FleeNode;
	import Node.IdleNode;
	
	public class Main extends Sprite 
	{
		public static var inSight:Boolean = true;
		public static var lifeFull:Boolean = false;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			var tree:Tree = new Tree();
			tree.makeDecision();
		}		
	}	
}