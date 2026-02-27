event_inherited();

// Special: Sine Wave movement (Wobbling)
// We add a small vertical "wobble" to the horizontal movement
y += sin(get_timer() * 0.000005) * 2;

// Slowly drift toward player
x += sign(obj_x01.x - x) * 0.5;