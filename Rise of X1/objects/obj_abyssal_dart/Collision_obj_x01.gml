
if (state == "dashing") {
    if (obj_x01.can_be_hit) {
		// Push player back
		var _dir = point_direction(x, y, obj_x01.x, obj_x01.y);
		obj_x01.h_speed = lengthdir_x(10, _dir);
		obj_x01.v_speed = lengthdir_y(10, _dir);
		
	     // Base damage
        var dmg = 20;

        // Trench Cracker upgrade reduces incoming damage
        if (obj_game_manager.has_hardened_shell) {
            dmg = 10;
        }
	if (!obj_x01.god_mode_is_active){
        obj_x01.hp -= dmg;
	}
        
	    // Safety for player
	    obj_x01.can_be_hit = false;
	    obj_x01.alarm[3] = 60; 
        
	    // Bounce the Dart back and make him tired
		direction = point_direction(obj_x01.x, obj_x01.y, x, y);
		speed = 4;
		
	    state = "resting";
	    cooldown_timer = 120;
    }
}