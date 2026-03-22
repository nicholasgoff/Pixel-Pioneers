if (!visible) {
    wait_timer--;
    
    if (wait_timer <= 0) {
        visible = true;
        show_timer = irandom_range(30, 150); // 1.5–2.5 seconds
    }
}
else {
    // Showing phase
    show_timer--;
    
    if (show_timer <= 0) {
        visible = false;
        wait_timer = irandom_range(240, 360); // 4–6 seconds
    }
}