/// @description Insert description here

ds_list_delete(obj_controler.instanceList, ds_list_find_index(obj_controler.instanceList, id));
instance_destroy();
room_goto(rm_combat);