draw_set_halign(fa_center);
draw_set_valign(fa_middle);


if (room == rm_win) {
    draw_text(room_width/2, room_height/2 - 50, "CONGRATULATIONS X-01 YOU SAVED INVERTIBRATIA");
    draw_text(room_width/2, room_height/2 + 50, "Press R to test yourself again");
} else {
    draw_text(room_width/2, room_height/2 - 50, "EXTINCT");
    draw_text(room_width/2, room_height/2 + 50, "Press R to Try Again");
}