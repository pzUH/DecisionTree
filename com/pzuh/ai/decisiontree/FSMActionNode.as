package com.pzuh.ai.decisiontree
{
	import com.pzuh.ai.statemachine.IState;
	
	public class FSMActionNode implements INode
	{
		protected var myAgent:Object;
		protected var targetState:IState;
		
		public function FSMActionNode(agent:Object, targetState:IState)
		{
			myAgent = agent;
			this.targetState = targetState;
		}
		
		public function makeDecision():void
		{
			myAgent.getStateMachine().changeState(targetState);
		}
	}
}