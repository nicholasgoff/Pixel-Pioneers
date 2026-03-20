event_inherited();

switch (state) {
    case "idle":
        // Look for player
        if (instance_exists(obj_x01)) {
            if (distance_to_object(obj_x01) < 300) {
                state = "aiming";
                alarm[1] = 30; // Wait 0.5s before lunging (Telegraphing)
                speed = 0;
            }
        }
    break;

    case "aiming":
        // Point at player while preparing to dash
        if (instance_exists(obj_x01)) {
            image_angle = point_direction(x, y, obj_x01.x, obj_x01.y);
        }
		
    break;

    case "dashing":
		// Dash
    break;

    case "resting":
        // Sit still and be vulnerable
        speed = 0;
        cooldown_timer--;
        image_alpha = 0.7; // Visual cue he's tired
        if (cooldown_timer <= 0) {
            state = "idle";
            image_alpha = 1.0;
        }
    break;
}