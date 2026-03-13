// --- HEALTH BAR (Bottom Left) ---
var _bar_width = 200;
var _bar_height = 20;
var _margin = 40; // Distance from edge of screen


// Calculate height of screen
var _gui_h = display_get_gui_height();
var _gui_w = display_get_gui_width();

// Draw Background (Red/Black)
draw_set_color(c_black);
draw_rectangle(_margin, _gui_h - _margin - _bar_height, _margin + _bar_width, _gui_h - _margin, false);

// Draw Health (Green)
var _hp_fill = (hp_current / hp_max) * _bar_width;
var _color = c_lime;
if (hp_current <= 1) _color = c_red; 
else if (hp_current <= 2) _color = c_yellow;
draw_set_color(_color);
draw_rectangle(_margin, _gui_h - _margin - _bar_height, _margin + _hp_fill, _gui_h - _margin, false);

// --- ABILITY PROGRESS (Bottom Right) ---
draw_set_halign(fa_right);
draw_set_color(c_white);

var _dna_text = "DASH EVOLUTION: " + string(dna_dart) + " / " + string(dna_required);
draw_text(_gui_w - _margin, _gui_h - _margin - 10, _dna_text);

// Reset alignment so it doesn't mess up other text later
draw_set_halign(fa_left);