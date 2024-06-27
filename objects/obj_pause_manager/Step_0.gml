if(keyboard_check_pressed(vk_escape)){
	if(global.game_state == GAME_STATE.RUNNING){
		global.game_state = GAME_STATE.PAUSE
	} else {
		if(global.game_state == GAME_STATE.PAUSE) {
		global.game_state = GAME_STATE.RUNNING
		}
	};
};