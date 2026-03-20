if (evolution_timer > 0)
{
    evolution_timer--;
}

// Check for death
if (hp_current <= 0) {
    player_lives -= 1;