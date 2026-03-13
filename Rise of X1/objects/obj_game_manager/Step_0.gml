// Check for death
if (hp_current <= 0) {
    player_lives -= 1;
    
    if (player_lives > 0) {
        hp_current = hp_max; // Restore health
        // Optional: Move player back to a safe spot
    } else {
		room_restart(); // Truly game over
    }
}