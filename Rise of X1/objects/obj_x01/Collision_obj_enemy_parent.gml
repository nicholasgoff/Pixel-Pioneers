// Abyssal dart & Parasitic Mote handle own damage
if (other.object_index == obj_abyssal_dart) exit;
if (other.object_index == obj_parasitic_mote) exit;


// Take damage
if (can_be_hit) {
	hp -= 10;
	
	// Visual Feedback: Flash Red
	image_blend = c_red;
	alarm[2] = 5;

	// Knockback: Push X-01 away from the enemy
	var _dir = point_direction(other.x, other.y, x, y);
	h_speed = lengthdir_x(10, _dir);
	v_speed = lengthdir_y(10, _dir);

}