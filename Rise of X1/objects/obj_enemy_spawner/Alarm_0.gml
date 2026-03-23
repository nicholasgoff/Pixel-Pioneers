if (boss_spawned) exit;

if (instance_number(obj_enemy_parent) > 10){
    alarm[0] = spawn_rate; // Wait and try again
    exit;
}
// Only spawn small enemies if the timer hasn't run out
if (game_timer > 0) {
    var _side = irandom(3);
    var _spawn_x, _spawn_y;
    var _margin = 80;

    switch(_side) {
        case 0: _spawn_x = irandom_range(_margin, room_width - _margin); _spawn_y = _margin; break; //top
        case 1: _spawn_x = room_width - _margin; _spawn_y = irandom_range(_margin, room_height - _margin); break; //right
        case 2: _spawn_x = irandom_range(_margin, room_width - _margin); _spawn_y = room_height - _margin; break; //bottom
        case 3: _spawn_x = _margin; _spawn_y = irandom_range(_margin, room_height - _margin); break; //left
    }

  var _enemy = choose(obj_abyssal_dart, obj_ink_witch, obj_mantis_reaper, obj_parasitic_mote, obj_trench_cracker);
  var _inst = instance_create_layer(_spawn_x, _spawn_y, "Instances", _enemy);



// 3. Prevent spawning directly on top of the player
if (instance_exists(obj_x01)) {
    if (point_distance(x, y, obj_x01.x, obj_x01.y) > 300) {
        instance_create_layer(x, y, "Instances", _enemy);
    } else {
        // If too close to player, try again almost immediately
        alarm[0] = 10; 
        exit;
    }
}

// 5. Reset the alarm
alarm[0] = spawn_rate;
}