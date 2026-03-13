// 1. Reduce the manager's health variable specifically
obj_game_manager.hp_current -= 1;

// 2. Destroy the orb so it doesn't hit multiple times
instance_destroy();

// 3. Optional: Add a 'hit' effect to the player
with(obj_x01) {
    flash = 3; // If you have hit-flash code
}