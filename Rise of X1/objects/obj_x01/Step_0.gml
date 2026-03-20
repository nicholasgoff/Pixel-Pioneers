// Movement
var _key_right = keyboard_check(ord("D"));
var _key_left = keyboard_check(ord("A"));
var _key_up = keyboard_check(ord("W"));
var _key_down = keyboard_check(ord("S"));


var _h_move = _key_right - _key_left;
var _v_move = _key_down - _key_up;

// Diagonal speed normalizer
var _len = point_distance(0, 0, _h_move, _v_move);
if (_len > 0) {
    _h_move /= _len;
    _v_move /= _len;
}

// Acceleration
h_speed += _h_move * accel;
v_speed += _v_move * accel;

// Friction
if (_h_move == 0) h_speed = lerp(h_speed, 0, friction_amount);
if (_v_move == 0) v_speed = lerp(v_speed, 0, friction_amount);

// Clamp speed
h_speed = clamp(h_speed, -move_speed, move_speed);
v_speed = clamp(v_speed, -move_speed, move_speed);

// Apply movement
x += h_speed;
y += v_speed;

// Death logic
if (hp <= 0) {
    instance_destroy();
    room_goto(rm_lose);
}

// Aiming
var _dir = point_direction(x, y, mouse_x, mouse_y);

if (_dir > 90 && _dir < 270) {
	image_xscale = -1;
} else {
	image_xscale = 1;
}

// 4. CHECK FOR NEXT LEVEL
/*
if (instance_number(obj_enemy_parent) <= 0) {
    if (room_exists(room_next(room))) room_goto_next();
    else room_goto(rm_win);
}
*/ //uncheck when closer to finishing game

// Ranged attack
if (mouse_check_button(mb_left) && can_attack) {
    var _bullet = instance_create_layer(x, y, "Instances", obj_projectile);
    _bullet.direction = _dir;
    _bullet.speed = 10;
    _bullet.image_angle = _dir;
    
    can_attack = false;
    alarm[0] = ranged_delay;
}

// Melee
if (mouse_check_button_pressed(mb_right) && can_melee) {
    instance_create_layer(x, y, "Instances", obj_melee_slash);
    can_melee = false;
    alarm[1] = melee_delay;
}