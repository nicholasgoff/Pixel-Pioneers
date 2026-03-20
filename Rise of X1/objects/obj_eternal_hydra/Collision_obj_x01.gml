if (obj_game_manager.player_lives < obj_game_manager.max_lives) {
    obj_game_manager.player_lives += 1;
    
    // Visual and Audio feedback
    show_debug_message("Life Granted by the Hydra!");
    instance_create_layer(x, y, "Instances", obj_heal_effect); 
    
    instance_destroy(); 
} else {
    // If lives are full, maybe just heal the player instead?
    obj_x01.hp = 100;
    instance_destroy();
}