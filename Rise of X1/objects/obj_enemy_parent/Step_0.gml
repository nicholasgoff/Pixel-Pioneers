//Move the enemy 
h_speed = dir * move_speed; 

//Wall Collision
if (place_meeting(x + h_speed, y, obj_wall)) {
    // If we hit a wall, flip direction!
    dir *= -1; 
}

x += h_speed;

//Face direction of travel
image_xscale = dir;