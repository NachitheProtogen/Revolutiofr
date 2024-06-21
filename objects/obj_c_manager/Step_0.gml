switch(combatPhase){
	case phase.init:
		combatPhase = phase.startTurn
	break;
	
	case phase.startTurn:
		combatPhase = phase.process
	break;
	
	case phase.process:
		combatPhase = phase.checkFinish
	break;
	
	
	case phase.checkFinish:
		combatPhase = phase.endTurn
	break;
	
	case phase.endTurn:
		combatPhase = phase.startTurn;
	break;
	
	case phase.win:
		show_message("You won!")
		room_goto_previous();
	break;
	
	case phase.lose:
		show_message("You lose!")
	break;
}