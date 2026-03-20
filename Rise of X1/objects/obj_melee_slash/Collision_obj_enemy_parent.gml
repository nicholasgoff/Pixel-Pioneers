if (ds_list_find_index(hit_list, other.id) == -1) {
    
    // Deal damage
    other.hp -= damage;
    other.flash = 3; // Trigger that red hit-flash
    
    // Add this specific enemy to the "Done" list
    ds_list_add(hit_list, other.id);
    
    // knockback to enemy
    var _dir = point_direction(x, y, other.x, other.y);
    other.x += lengthdir_x(5, _dir);
    other.y += lengthdir_y(5, _dir);
}