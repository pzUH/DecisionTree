package com.pzuh.ai.decisiontree
{
	public class DecisionNode implements INode
	{
		public var falseNode:INode;
		public var trueNode:INode;
		
		public var query:Boolean;
		
		public function DecisionNode()
		{
			
		}
		
		public function makeDecision():void
		{
			if (query == true)
			{
				if (trueNode != null) 
				{
					trueNode.makeDecision();	
				}	
				else
				{
					return;
				}
			}
			else
			{				
				if (falseNode != null) 
				{
					falseNode.makeDecision();	
				}
				else
				{
					return;
				}
			}
		}
	}
}