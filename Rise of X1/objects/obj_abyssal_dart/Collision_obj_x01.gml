if (state == "dashing") {
    if (obj_x01.can_be_hit) {
        obj_game_manager.hp_current -= 1; // 1 HP damage (balance as needed)
        
        // Safety for player
        obj_x01.can_be_hit = false;
        obj_x01.alarm[3] = 60; 
        
        // Bounce the Dart back and make him tired
        state = "resting";
        cooldown_timer = 120;
        speed = -2; // Slight recoil
    }
}