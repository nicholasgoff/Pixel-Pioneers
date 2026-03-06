// Make it drift slowly
x += h_speed;
y += v_speed;

// Slowly slow down
h_speed = lerp(h_speed, 0, 0.05);
v_speed = lerp(v_speed, 0, 0.05);

// Add a cool 'magnetic' effect if X-01 is near
if (instance_exists(obj_x01)) {
    if (distance_to_object(obj_x01) < 100) {
        move_towards_point(obj_x01.x, obj_x01.y, 3);
    }
}