if (global.enemy_count < 10) {
    instance_create_layer(random(715), random(585), layer, obj_enemy_testing);
    global.enemy_count += 1;
}

time = max(time - 1, 10);
alarm[0] = time;
