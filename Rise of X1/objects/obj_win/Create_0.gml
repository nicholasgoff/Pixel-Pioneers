cutscene_timer = 0;
target_y = room_height / 2;
descend_speed = 2;
path_started = false;

look_timer = 0;

player = instance_create_layer(room_width/2, -100, "Instances", obj_static_x01);