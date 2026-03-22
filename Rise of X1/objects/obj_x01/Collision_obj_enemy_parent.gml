// If god mode is on negate damage
if (god_mode_is_active) exit 

// Abyssal Dart & Parasitic Mote handle own damage
if (other.object_index == obj_abyssal_dart) exit;
if (other.object_index == obj_parasitic_mote) exit;
if (other.object_index == obj_eternal_hydra) exit

// Take damage
if (can_be_hit) {
    var dmg = 10;

    // Trench Cracker upgrade reduces incoming damage
    if (obj_game_manager.has_hardened_shell) {
        dmg = 5;
    }

    hp -= dmg;
    
    // Visual Feedback: Flash Red
    image_blend = c_red;
    alarm[2] = 5;

    // Knockback: Push X-01 away from the enemy
    var _dir = point_direction(other.x, other.y, x, y);
    h_speed = lengthdir_x(10, _dir);
    v_speed = lengthdir_y(10, _dir);
}