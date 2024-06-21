/// @description Insert description here

instanceList = ds_list_create();
for (var i = 0; i < instance_number(obj_parent); i++){
	var inst = instance_find(obj_parent, i);
	ds_list_add(instanceList,inst);
};

player = instance_find(obj_player,0);
playerPosX = player.x;
playerPosY = player.y;