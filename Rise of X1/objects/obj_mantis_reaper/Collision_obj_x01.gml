if (obj_x01.can_be_hit) {
    obj_game_manager.hp_current -= 15; // Sharp, painful cut
    
    // Safety & Effects
    obj_x01.can_be_hit = false;
    obj_x01.alarm[3] = 45; 
    
    // Immediate retreat after successful hit
    state = "retreat";
    speed = 6;
    
    // Visual: Screen shake or blood/ink particles here
}