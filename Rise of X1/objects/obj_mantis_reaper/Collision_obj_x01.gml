

// Push player back
var _dir = point_direction(x, y, obj_x01.x, obj_x01.y);
obj_x01.h_speed = lengthdir_x(10, _dir);
obj_x01.v_speed = lengthdir_y(10, _dir);

if (obj_x01.can_be_hit && !obj_x01.god_mode_is_active) {
    obj_x01.hp -= 10;
	audio_play_sound(snd_dmg_player, 10, false);
    
    obj_x01.can_be_hit = false;
    obj_x01.alarm[3] = 45; 
    
    state = "retreat";
    speed = 6;
    
	obj_x01.image_blend = c_red;
	obj_x01.alarm[2] = 5;
}