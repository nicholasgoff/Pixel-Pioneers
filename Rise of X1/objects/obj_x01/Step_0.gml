//###########
//Movement
//###########
var _key_right = keyboard_check(ord("D"));
var _key_left = keyboard_check(ord("A"));
var _key_up = keyboard_check(ord("W"));
var _key_down = keyboard_check(ord("S"));

//Direction
var _move_h = _key_right - _key_left;
var _move_v = _key_down - _key_up;

//Apply acceleration and friction
if (_move_h != 0) {
	h_speed += _move_h * accel;
} else {
	h_speed = lerp(h_speed, 0, friction_power);
}

if (_move_v != 0) {
	v_speed += _move_v * accel;
} else {
	v_speed = lerp(v_speed, 0, friction_power);
}

//Cap speed
h_speed = clamp(h_speed, -move_speed, move_speed);
v_speed = clamp(v_speed, -move_speed, move_speed);

//###########
//Aiming
//###########

//Face Cursor
image_angle = point_direction(x, y, mouse_x, mouse_y);

//###########
//Wall Colisions
//###########

//Horizontal
if (place_meeting(x + h_speed, y, obj_wall)) {
	while (!place_meeting(x + sign(h_speed), y, obj_wall)) {
		x += sign(h_speed);
	}
	h_speed = 0;
} 
x += h_speed;

//Vertical
if (place_meeting(x, y + v_speed, obj_wall)) {
	while (!place_meeting(x, y + sign(v_speed), obj_wall)) {
		y += sign(v_speed);
	}
	v_speed = 0;
}
y += v_speed;


//###########
//Level Clear Check
//###########

//if no enemies remaining, go to next level(room)
//if (instance_number(obj_enemy_parent) <= 0 ) {
//	room_goto_next();
//}


//Bounds
x = clamp(x, sprite_width/2, room_width-sprite_width/2)
y = clamp(y, sprite_height/2, room_height-sprite_height/2)