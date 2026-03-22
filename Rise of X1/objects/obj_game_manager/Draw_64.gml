// Check player exists
if (!instance_exists(obj_x01)) exit;

// --- SCREEN SIZE ---
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();
var margin = 20;

// ===========
// HEALTH BAR 
// ============
var _bar_width = 200;
var _bar_height = 20;
var _margin = 40;

draw_set_color(c_black);
draw_rectangle(_margin, gui_h - _margin - _bar_height, _margin + _bar_width, gui_h - _margin, false);

var _hp_fill = (obj_x01.hp / obj_x01.max_hp) * _bar_width;

var _color = c_lime;
if (obj_x01.hp <= 40) _color = c_red;
else if (obj_x01.hp <= 60) _color = c_yellow;

draw_set_color(_color);
draw_rectangle(_margin, gui_h - _margin - _bar_height, _margin + _hp_fill, gui_h - _margin, false);

// ============
// PLAYER LIVES 
// ============
var life_y = gui_h - _margin - _bar_height - 28;
var life_x = _margin;

// small label
draw_set_font(fnt_small);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(life_x, life_y, "Lives:");

// draw one player sprite for each extra life
var icon_x = life_x + 50;
for (var i = 0; i < obj_game_manager.player_lives; i++)
{
    draw_sprite_ext(
        obj_x01.sprite_index,
        0,
        icon_x + (i * 18),
        life_y + 10,
        0.3, 0.3,
        0,
        c_white,
        1
    );
}

// =================
// EVOLUTION MESSAGE 
// =================
draw_set_font(-1); // default font

if (evolution_timer > 0)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_yellow);
    draw_text(gui_w / 2, 60, evolution_text);
}

// ==========
// UPGRADE UI 
// ==========
draw_set_font(fnt_small);

draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

var y_pos = gui_h - margin;
var spacing = 14;

// Dart
if (dart_stage > 0)
{
    if (dart_stage >= 3)
        draw_text(gui_w - margin, y_pos, "DART: MAX");
    else
        draw_text(gui_w - margin, y_pos, "DART: Lvl " + string(dart_stage) + " - " + string(dna_dart) + "/" + string(3 + dart_stage * 2));
    y_pos -= spacing;
}

// Crab
if (crab_stage > 0)
{
    if (crab_stage >= 3)
        draw_text(gui_w - margin, y_pos, "CRAB: MAX");
    else
        draw_text(gui_w - margin, y_pos, "CRAB: Lvl " + string(crab_stage) + " - " + string(dna_crab) + "/" + string(3 + crab_stage * 2));
    y_pos -= spacing;
}

// Witch
if (witch_stage > 0)
{
    if (witch_stage >= 3)
        draw_text(gui_w - margin, y_pos, "WITCH: MAX");
    else
        draw_text(gui_w - margin, y_pos, "WITCH: Lvl " + string(witch_stage) + " - " + string(dna_witch) + "/" + string(3 + witch_stage * 2));
    y_pos -= spacing;
}

// Mantis
if (mantis_stage > 0)
{
    if (mantis_stage >= 3)
        draw_text(gui_w - margin, y_pos, "MANTIS: MAX");
    else
        draw_text(gui_w - margin, y_pos, "MANTIS: Lvl " + string(mantis_stage) + " - " + string(dna_mantis) + "/" + string(3 + mantis_stage * 2));
    y_pos -= spacing;
}

// Mote
if (mote_stage > 0)
{
    if (mote_stage >= 3)
        draw_text(gui_w - margin, y_pos, "MOTE: MAX");
    else
        draw_text(gui_w - margin, y_pos, "MOTE: Lvl " + string(mote_stage) + " - " + string(dna_mote) + "/" + string(3 + mote_stage * 2));
    y_pos -= spacing;
}

// Hydra
if (hydra_stage > 0)
{
    if (hydra_stage >= 3)
        draw_text(gui_w - margin, y_pos, "HYDRA: MAX");
    else
        draw_text(gui_w - margin, y_pos, "HYDRA: Lvl " + string(hydra_stage) + " - " + string(dna_hydra) + "/" + string(3 + hydra_stage * 2));
    y_pos -= spacing;
}

// --- ABILITY COOLDOWNS (Top Left) ---
if (instance_exists(obj_x01))
{
    draw_set_font(fnt_small);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    var ui_x = 20;
    var ui_y = 20;
    var cd_spacing = 14;
    var _fps = game_get_speed(gamespeed_fps);

    // DASH
    if (has_dash)
    {
        var dash_text;
        if (obj_x01.can_dash)
        {
            draw_set_color(c_lime);
            dash_text = "Dash: READY";
        }
        else
        {
            draw_set_color(c_red);
            dash_text = "Dash: Cooling Down"
        }

        draw_text(ui_x, ui_y, dash_text);
        ui_y += cd_spacing;
    }

    // BURST
    if (has_burst_ability)
    {
        var burst_text;
        if (obj_x01.can_burst)
        {
            draw_set_color(c_lime);
            burst_text = "Burst: READY";
        }
        else
        {
            draw_set_color(c_red);
            burst_text = "Burst: Cooling Down"
        }

        draw_text(ui_x, ui_y, burst_text);
    }

    draw_set_color(c_white);
}

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);

