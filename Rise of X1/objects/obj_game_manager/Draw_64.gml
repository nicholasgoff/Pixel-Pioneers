// Check player exists before drawing/updating drawing
if (instance_exists(obj_x01) == false) exit;

// --- HEALTH BAR (Bottom Left) ---
var _bar_width = 200;
var _bar_height = 20;
var _margin = 40; // Distance from edge of screen


// Calculate height of screen
var _gui_h = display_get_gui_height();
var _gui_w = display_get_gui_width();

// Draw Background
draw_set_color(c_black);
draw_rectangle(_margin, _gui_h - _margin - _bar_height, _margin + _bar_width, _gui_h - _margin, false);

// Draw Health
var _hp_fill = (obj_x01.hp / 100) * _bar_width;
var _color = c_lime;
if (obj_x01.hp <= 40) _color = c_red; 
else if (obj_x01.hp <= 60) _color = c_yellow;
draw_set_color(_color);
draw_rectangle(_margin, _gui_h - _margin - _bar_height, _margin + _hp_fill, _gui_h - _margin, false);

// --- ABILITY PROGRESS (Bottom Right) ---
draw_set_halign(fa_right);
draw_set_color(c_white);

var _dna_text = "DASH EVOLUTION: " + string(dna_dart) + " / " + string(dna_required);
draw_text(_gui_w - _margin, _gui_h - _margin - 10, _dna_text);

draw_set_halign(fa_left);