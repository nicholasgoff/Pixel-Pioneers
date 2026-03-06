event_inherited();

// Special: Sine Wave movement (Wobbling)
// We add a small vertical "wobble" to the horizontal movement
y += sin(get_timer() * 0.000005) * 2;

