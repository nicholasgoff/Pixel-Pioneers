cutscene_timer++;
    
// Move player to center of screen
if (!path_started) {
	if (player.y < target_y) {
	    player.y += descend_speed;

	    look_timer++;
	    if (look_timer mod 60 == 0) {
	        player.image_xscale *= -1;
	    }
	}
    
	if (player.y >= target_y) {
	    player.y = target_y;
	
		player.x = path_get_point_x(pth_win, 0);
	    player.y = path_get_point_y(pth_win, 0);

		with (player) {
	        path_start(pth_win, .5, path_action_continue, true);
	    }

	    path_started = true;
	}
}