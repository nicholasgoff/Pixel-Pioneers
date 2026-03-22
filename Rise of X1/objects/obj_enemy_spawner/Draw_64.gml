if (game_timer > 0) {
    var _minutes = floor(game_timer / (60 * 60));
    var _seconds = floor((game_timer / 60) % 60);
    
    // Formatting for "0:00" style
    var _time_string = string(_minutes) + ":" + ( _seconds < 10 ? "0" : "" ) + string(_seconds);
    
    draw_set_font(fnt_hud);
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    draw_text(room_width / 2, 50, "KRAKEN ARRIVAL: " + _time_string);
} else {
    draw_set_color(c_red);
    draw_text(room_width / 2, 50, "SURVIVE THE KRAKEN!");
}