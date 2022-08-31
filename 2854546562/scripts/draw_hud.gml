if (get_gameplay_time() <= 120) {
    draw_debug_text(temp_x - 8, temp_y - 30, "Press SPECIAL to enable voices!");
}

if (debug_text) {
    var line_y = 200;
    var step_y = 14
    var col_one_lbl = 10;
    var col_one_val = col_one_lbl + 120;
    var col_two_lbl = 160;
    var col_two_val = col_two_lbl + 120;

    draw_debug_text(col_one_lbl, line_y, "X:");
    draw_debug_text(col_one_val, line_y, string(x));
    line_y += step_y;
    draw_debug_text(col_one_lbl, line_y, "Y:");
    draw_debug_text(col_one_val, line_y, string(y));
    line_y += step_y;
    line_y += step_y;
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
    draw_debug_text(col_one_lbl, line_y, "GROUDNED:");
    draw_debug_text(col_one_val, line_y, string(free));
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

    draw_debug_text(col_one_lbl, line_y, "MAGIC_CHARGES:");
    draw_debug_text(col_one_val, line_y, string(magic_charges));
    draw_debug_text(col_two_lbl, line_y, "PARRIED:");
    draw_debug_text(col_two_val, line_y, string(grab_parried));
    line_y += step_y;
    //draw_debug_text(col_one_lbl, line_y, "PEPSI_FSPECIAL:");
    //draw_debug_text(col_one_val, line_y, string(pepsi_fspecial));
    draw_debug_text(col_two_lbl, line_y, "PARRY_FLAG:");
    draw_debug_text(col_two_val, line_y, string(to_parry_wrap));
    //line_y += step_y;
    //line_y += step_y;
    //draw_debug_text(col_one_lbl, line_y, "PEPSID:");
    //draw_debug_text(col_one_val, line_y, string(pepsid));
    //draw_debug_text(col_two_lbl, line_y, "COMBO:");
    //draw_debug_text(col_two_val, line_y, string(combo));
    //line_y += step_y;
    //draw_debug_text(col_one_lbl, line_y, "PAUSE_TIMER:");
    //draw_debug_text(col_one_val, line_y, string(pause_timer));
    //draw_debug_text(col_two_lbl, line_y, "COMBO_TIMER:");
    //draw_debug_text(col_two_val, line_y, string(combo_timer));
    //line_y += step_y;
    //draw_debug_text(col_one_lbl, line_y, "HAS_HIT:");
    //draw_debug_text(col_one_val, line_y, string(has_hit));
}

draw_sprite(sprite_get("meter"), magic_charges, temp_x + 6, temp_y);