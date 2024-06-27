if(keyboard_check_pressed(vk_escape)){
	if(global.game_state == GAME_STATE.RUNNING){
		global.game_state = GAME_STATE.PAUSE
		
		for(var index = 0; index < instance_count; index++){
			var instance = instance_id_get(index);
			
			for(var alarm_index = 0; alarm_index < 10; alarm_index++){
				var value = instance.alarm[alarm_index];
				
				if(value >= 0) {
					add_alarm(instance, alarm_index, value);
			};
		}
		if(instance.speed > 0){
			add_speed(instance, instance.speed);
		};
	};
} else {
		if(global.game_state == GAME_STATE.PAUSE) {
		global.game_state = GAME_STATE.RUNNING
		
		for(var index = 0; index < array_length(arr_alarms); index++){
			try{
				var instance = arr_alarms[index].insance;
				var alarm_index = arr_alarms[index].index;
				var value = arr_alarms[index].value;
			} catch(_exeption) {
			
			};
		};
		
		for(var index = 0; index < array_length(arr_speed); index++){
			try{
				var instance = arr_speed[index].insance;
				var value = arr_speed[index].value;
				
				instance.speed = value;
			} catch(_exeption) {
			
			};
		};
	};
};
};