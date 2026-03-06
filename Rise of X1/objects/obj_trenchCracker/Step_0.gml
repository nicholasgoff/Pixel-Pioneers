// Simple back-and-forth patrol (horizontal)
hspeed = move_speed;

if (place_meeting(x + hspeed, y, obj_block)) {
    move_speed = -move_speed; // Flip direction on wall hit
}

// Flip sprite to face movement
if (hspeed != 0) image_xscale = sign(hspeed);