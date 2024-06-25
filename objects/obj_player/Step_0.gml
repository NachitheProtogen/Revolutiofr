right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));
sprint_key = keyboard_check(vk_shift) || keyboard_check(vk_space);

if(sprint_key=0){
xspd= (right_key - left_key) * playerspeed;
yspd= (down_key - up_key) * playerspeed;
} else {
xspd= (right_key - left_key) * sprintspeed;
yspd= (down_key - up_key) * sprintspeed;
}
x += xspd;
y += yspd;

var moving = false;

if (x > previous_x) {
    sprite_index = spr_new_player_right;
    moving = true;
} else if (x < previous_x) {
    sprite_index = spr_new_player_left;
    moving = true;
} else if (y > previous_y) {
    sprite_index = spr_new_player_forward;
    moving = true;
} else if (y < previous_y) {
    sprite_index = spr_new_player_backward;
    moving = true;
}

previous_x = x;
previous_y = y;

if (moving) {
    image_speed = 1;
} else {
    image_speed = 0;
}