if (obj_game_manager.player_lives < obj_game_manager.max_lives) {
    obj_game_manager.player_lives += 1;
    
    // Visual and Audio feedback
    obj_game_manager.evolution_text = "Life Granted by the Hydra!";
	obj_game_manager.evolution_timer = 120
    
    instance_destroy(); 
} else {
    // If lives are full, maybe just heal the player instead?
    obj_x01.hp = 100;
    instance_destroy();
}