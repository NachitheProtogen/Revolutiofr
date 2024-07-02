if(cankill=false){
	return;
};
x = x+lengthdir_x(1.5, point_direction(x,y,obj_player.x,obj_player.y));
y = y+lengthdir_y(1.5, point_direction(x,y,obj_player.x,obj_player.y));
if (hp <= 0) instance_destroy();

var moving = false;

if (x > previous_x) {
    sprite_index = spr_enemy_right_running;
	
	moving = true;
} else if (x < previous_x) {
    sprite_index = spr_enemy_left_running;
    
	moving = true;
} else if (y > previous_y) {
    sprite_index = spr_enemy_front;
    moving = true;
} else if (y < previous_y) {
    sprite_index = spr_enemy_back;
    moving = true;
}

previous_x = x;
previous_y = y;

if (moving) {
    image_speed = 1;
} else {
    image_speed = 0;
	if(sprite_index==spr_enemy_right_running) sprite_index = spr_enemy_right;
    if(sprite_index==spr_enemy_left_running) sprite_index = spr_enemy_left;
}