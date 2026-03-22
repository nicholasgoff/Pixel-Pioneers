// Every second, make the spawn rate slightly faster
if (spawn_rate > 30) { // Don't let it go below 0.5 seconds
    spawn_rate -= 0.01; 
}

if (game_timer > 0) {
    game_timer -= 1; // Count down
} else {
    // TIMER IS UP!
    if (!boss_spawned) {
        boss_spawned = true;
        
        // 1. Kill all remaining small enemies for the boss fight
        with (obj_enemy_parent) {
            instance_destroy();
        }
        
        // 2. Spawn the Kraken in the center of the room
        instance_create_layer(room_width/2, room_height/2, "Instances", obj_kraken);
        
        // 3. Optional: Play boss music
        // audio_stop_all();
        // audio_play_sound(snd_kraken_theme, 10, true);
    }
}


//Cheat code to drop timer
if (keyboard_check_pressed(ord("B"))) {
	game_timer = 0
}

//Cheat code to spawn ectra life early
if keyboard_check_pressed(ord("L")) {
	var _margin = 64
	//spawn first extra life
	var _x1 = irandom_range(_margin, room_width - _margin)
	var _y1 = irandom_range(_margin, room_height - _margin)
	instance_create_layer(_x1, _y1, "Instances", obj_eternal_hydra)
	
	//spawn second
	var _x2, _y2
	do {
		_x2 = irandom_range(_margin, room_width - _margin)
		_y2 = irandom_range(_margin, room_height - _margin) 
	} until (point_distance(_x1, _y1, _x2, _y2) > 200)
	
	instance_create_layer(_x2, _y2, "Instances", obj_eternal_hydra)
}
	
