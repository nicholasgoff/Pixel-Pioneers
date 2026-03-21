// 1. INPUTS
var _key_right = keyboard_check(ord("D"));
var _key_left = keyboard_check(ord("A"));
var _key_up = keyboard_check(ord("W"));
var _key_down = keyboard_check(ord("S"));

// 2. MOVEMENT
var _h_move = _key_right - _key_left;
var _v_move = _key_down - _key_up;

h_speed += _h_move * accel;
v_speed += _v_move * accel;

// Apply Friction
if (_h_move == 0) h_speed = lerp(h_speed, 0, friction_amount);
if (_v_move == 0) v_speed = lerp(v_speed, 0, friction_amount);

h_speed = clamp(h_speed, -move_speed, move_speed);
v_speed = clamp(v_speed, -move_speed, move_speed);

x += h_speed;
y += v_speed;

// 3. AIMING
aim_dir = point_direction(x, y, mouse_x, mouse_y);

// Rotate normally for 180 degrees, then flip when aiming behind
if (aim_dir > 90 && aim_dir < 270)
{
    image_xscale = -1;
    image_angle = aim_dir - 180;
}
else
{
    image_xscale = 1;
    image_angle = aim_dir;
}



// 4. CHECK FOR NEXT LEVEL
/*
if (instance_number(obj_enemy_parent) <= 0) {
    if (room_exists(room_next(room))) room_goto_next();
    else room_goto(rm_win);
}
*/ //uncheck when closer to finishing game

// --- RANGED ATTACK (Left Click) ---
if (mouse_check_button(mb_left) && can_attack) {
    var _bullet = instance_create_layer(x, y, "Instances", obj_projectile);
    _bullet.direction = aim_dir;
    _bullet.speed = 10;
    _bullet.image_angle = aim_dir;
	_bullet.max_range = 300 + obj_game_manager.range_boost;
	_bullet.damage = 1 + obj_game_manager.projectile_damage;
    
    can_attack = false;
    alarm[0] = ranged_delay; // Reset timer
}

// --- MELEE ATTACK (Right Click or Space) ---
// Since Left Click is for Ranged/Upgrades, let's use Right Click for Melee
if (mouse_check_button_pressed(mb_right) && can_melee) {
    var _slash = instance_create_layer(x, y, "Instances", obj_melee_slash);
	_slash.image_angle = aim_dir
    can_melee = false;
    alarm[1] = melee_delay;
}

// --- DART EVOLUTION PATH ---
// Focuses on mobility and fast combat.
// Stage 1 unlocks dash, Stage 2 improves it, Stage 3 adds burst attack
if (obj_game_manager.has_dash && can_dash && keyboard_check_pressed(vk_shift))
{
    var dash_dir = point_direction(x, y, mouse_x, mouse_y);
    var dash_dist = obj_game_manager.dash_distance;

    var new_x = x + lengthdir_x(dash_dist, dash_dir);
    var new_y = y + lengthdir_y(dash_dist, dash_dir);

    if (!place_meeting(new_x, y, obj_wall))
        x = new_x;

    if (!place_meeting(x, new_y, obj_wall))
        y = new_y;

    can_dash = false;
    alarm[4] = obj_game_manager.dash_cooldown;
}

// --- BURST ATTACK (E key) ---
if (obj_game_manager.has_burst_ability && can_burst && keyboard_check_pressed(ord("E")))
{
    var base_dir = point_direction(x, y, mouse_x, mouse_y);

    // fire 3-shot burst with increased damage
    for (var i = -1; i <= 1; i++)
    {
        var _bullet = instance_create_layer(x, y, "Instances", obj_projectile);

        var dir = base_dir + (i * 10); // spread
        _bullet.direction = dir;
        _bullet.speed = 10;
        _bullet.image_angle = dir;

        // APPLY UPGRADES
        _bullet.max_range = 300 + obj_game_manager.range_boost;
        _bullet.damage = 3 + obj_game_manager.projectile_damage; 
    }

    can_burst = false;
    alarm[5] = burst_cooldown;
}

// --- HEALTH REGEN ---
if (hp < max_hp)
{
    hp += obj_game_manager.regen_rate;
    hp = min(hp, max_hp);
}