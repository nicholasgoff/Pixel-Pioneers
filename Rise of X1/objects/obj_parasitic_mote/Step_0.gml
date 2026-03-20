event_inherited();

switch (state) {
    case "drift":
	
        // Slowly move toward player if they are close
        if (instance_exists(obj_x01)) {
            if (distance_to_object(obj_x01) < 200) {
                move_towards_point(obj_x01.x, obj_x01.y, 1.5);
            } else {
                speed = lerp(speed, 0, 0.05); // Slowly stop if player is far
            }
        }
    break;

    case "latched":
	
        // Follow the player exactly
        if (instance_exists(obj_x01)) {
            x = obj_x01.x + attach_offset_x;
            y = obj_x01.y + attach_offset_y;
			
			image_angle = point_direction(x, y, obj_x01.x, obj_x01.y);
            
            // Drain Health every 1 second (60 frames)
            drain_timer++;
            if (drain_timer >= 60) {
                obj_x01.hp -= 1; // Slow drain
                drain_timer = 0;
				
                // Mote pulses red when it bites
                image_blend = c_red;
				
            } else {
                image_blend = c_white;
            }
			
        } else {
            state = "drift"; // Fall off if player dies
        }
    break;
}