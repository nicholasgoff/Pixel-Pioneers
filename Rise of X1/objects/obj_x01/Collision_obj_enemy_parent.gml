// --- Collision with obj_enemy_parent ---
hp -= 10; // Take 10 damage

// Visual Feedback: Flash Red
image_blend = c_red;
alarm[2] = 5; // Reset color in 5 frames

// Check for Death
if (hp <= 0) {
    room_goto(rm_lose); // Go to lose screen from your doc
}

// Knockback: Push X-01 away from the enemy
var _dir = point_direction(other.x, other.y, x, y);
h_speed = lengthdir_x(10, _dir);
v_speed = lengthdir_y(10, _dir);