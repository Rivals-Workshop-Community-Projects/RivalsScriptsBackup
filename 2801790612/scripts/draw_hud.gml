// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;

if (debug_text) {
    var line_y = 200;
    var step_y = 14
    var col_one_lbl = 10;
    var col_one_val = col_one_lbl + 120;
    var col_two_lbl = 160;
    var col_two_val = col_two_lbl + 120;

    draw_debug_text(col_one_lbl, line_y, "STATE:");
    draw_debug_text(col_one_val, line_y, string(state));
    draw_debug_text(col_two_lbl, line_y, "HSP:");
    draw_debug_text(col_two_val, line_y, string(hsp));
    line_y += step_y;

    draw_debug_text(col_one_lbl, line_y, "STATE_TIMER:");
    draw_debug_text(col_one_val, line_y, string(state_timer));
    draw_debug_text(col_two_lbl, line_y, "VSP:");
    draw_debug_text(col_two_val, line_y, string(vsp));
    line_y += step_y;
    line_y += step_y;

    draw_debug_text(col_one_lbl, line_y, "ATTACK:");
    draw_debug_text(col_one_val, line_y, string(attack));
    draw_debug_text(col_two_lbl, line_y, "MAX_DJUMPS:");
    draw_debug_text(col_two_val, line_y, string(max_djumps));
    line_y += step_y;

    draw_debug_text(col_one_lbl, line_y, "WINDOW:");
    draw_debug_text(col_one_val, line_y, string(window));
    draw_debug_text(col_two_lbl, line_y, "DJUMPS:");
    draw_debug_text(col_two_val, line_y, string(djumps));
    line_y += step_y;

    draw_debug_text(col_one_lbl, line_y, "WINDOW_TIMER:");
    draw_debug_text(col_one_val, line_y, string(window_timer));
    draw_debug_text(col_two_lbl, line_y, "JOY_DIR:");
    draw_debug_text(col_two_val, line_y, string(joy_dir));
    line_y += step_y;
    line_y += step_y;

    draw_debug_text(col_one_lbl, line_y, "FSPECIAL_TIMER:");
    draw_debug_text(col_one_val, line_y, string(fspecial_timer));
    draw_debug_text(col_two_lbl, line_y, "PEPSI:");
    draw_debug_text(col_two_val, line_y, string(pepsi_meter));
    line_y += step_y;
    draw_debug_text(col_one_lbl, line_y, "PEPSI_FSPECIAL:");
    draw_debug_text(col_one_val, line_y, string(pepsi_fspecial));
    line_y += step_y;
    line_y += step_y;
    draw_debug_text(col_one_lbl, line_y, "PEPSID:");
    draw_debug_text(col_one_val, line_y, string(pepsid));
    draw_debug_text(col_two_lbl, line_y, "COMBO:");
    draw_debug_text(col_two_val, line_y, string(combo));
    line_y += step_y;
    draw_debug_text(col_one_lbl, line_y, "PAUSE_TIMER:");
    draw_debug_text(col_one_val, line_y, string(pause_timer));
    draw_debug_text(col_two_lbl, line_y, "COMBO_TIMER:");
    draw_debug_text(col_two_val, line_y, string(combo_timer));
    line_y += step_y;
    draw_debug_text(col_one_lbl, line_y, "HAS_HIT:");
    draw_debug_text(col_one_val, line_y, string(has_hit));
}
if (pepsi_meter >= 25) draw_sprite(spr_pepsi_meter, 25, temp_x + 4, temp_y - 30);
else draw_sprite(spr_pepsi_meter, pepsi_meter, temp_x + 4, temp_y - 30);

if (pepsi_meter < 26) draw_sprite(spr_pepsi_meter, 0, temp_x + 4 + 48, temp_y - 30);
else if (pepsi_meter >= 50) draw_sprite(spr_pepsi_meter, 25, temp_x + 4 + 48, temp_y - 30);
else draw_sprite(spr_pepsi_meter, pepsi_meter - 25, temp_x + 4 + 48, temp_y - 30);

if (pepsi_meter < 51) draw_sprite(spr_pepsi_meter, 0, temp_x + 4 + 96, temp_y - 30);
else if (pepsi_meter >= 75) draw_sprite(spr_pepsi_meter, 25, temp_x + 4 + 96, temp_y - 30);
else draw_sprite(spr_pepsi_meter, pepsi_meter - 50, temp_x + 4 + 96, temp_y - 30);

if (pepsi_meter < 76) draw_sprite(spr_pepsi_meter, 0, temp_x + 4 + 144, temp_y - 30);
else if (pepsi_meter >= 100) draw_sprite(spr_pepsi_meter, 25, temp_x + 4 + 144, temp_y - 30);
else draw_sprite(spr_pepsi_meter, pepsi_meter - 75, temp_x + 4 + 144, temp_y - 30);

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5;
user_event(14);