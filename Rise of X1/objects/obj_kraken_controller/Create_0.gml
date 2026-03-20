legs_remaining = 10;
for (var i = 0; i < legs_remaining; i++) {
    var _angle = (360 / legs_remaining) * i;
    var _lx = x + lengthdir_x(200, _angle);
    var _ly = y + lengthdir_y(200, _angle);
    instance_create_layer(_lx, _ly, "Instances", obj_kraken_leg);
}