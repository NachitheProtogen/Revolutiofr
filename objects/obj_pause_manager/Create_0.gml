arr_alarms = [];
arr_speed = [];

add_alarm = function(instance, index, value){
	array_push(arr_alarms, {instance, index, value});
	
	instance.alarm[index] = -1;
}

add_speed = function(instance, value){
	array_push(arr_speed, {instance, value});
	
	instance.speed = 0;
}
