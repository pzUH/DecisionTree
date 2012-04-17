package com.pzuh.ai.decisiontree
{
	public class DecisionTree implements INode
	{
		protected var decisionNodeArray:Array;
		protected var actionNodeArray:Array;
		
		protected var decisionNodeNum:int;
		
		public function DecisionTree() 
		{
			decisionNodeArray = new Array();
			actionNodeArray = new Array();
			
			init();
		}
		
		protected function init():void
		{
			for (var i:int = 0; i < decisionNodeNum; i++)
			{
				decisionNodeArray.push(new DecisionNode());
			}	
			
			constructTree();
		}
		
		protected function constructTree():void
		{
			//must be overriden
			throw new Error("ERROR: Method constructTree() cannot empty and must be overriden");
		}
		
		protected function defineQuery():void
		{
			//must be overriden
			throw new Error("ERROR: Method defineQuery() cannot empty and must be overriden");
		}
		
		public function makeDecision():void
		{
			defineQuery();
			
			decisionNodeArray[0].makeDecision();
		}
	}
}