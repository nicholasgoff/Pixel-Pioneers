// Check what kind of DNA it is (we'll set 'type' when the enemy drops it)
switch(other.type) {
    case "dart": obj_game_manager.dna_dart += 1; break;
    case "crab": obj_game_manager.dna_crab += 1; break;
    // ... add others here
}

instance_destroy(other);

// Check for Evolution
if (obj_game_manager.dna_dart >= 3 && !obj_game_manager.has_dash) {
    obj_game_manager.has_dash = true;
    show_message("EVOLUTION: DASH UNLOCKED (Press Shift)");
}