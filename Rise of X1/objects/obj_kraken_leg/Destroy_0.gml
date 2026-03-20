if (instance_exists(obj_kraken_controller)) {
    obj_kraken_controller.legs_remaining -= 1;
    
    if (obj_kraken_controller.legs_remaining <= 0) {
        room_goto(rm_win); // Victory!
    }
}