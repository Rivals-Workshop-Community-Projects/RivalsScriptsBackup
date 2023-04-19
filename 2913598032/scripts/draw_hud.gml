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

    draw_debug_text(col_one_lbl, line_y, "ITEMS HELD:");
    draw_debug_text(col_one_val, line_y, string(items_held[0]) + " - " + string(items_held[1]) + " - " + string(items_held[2]) + " - " + string(items_held[3]));
    //draw_debug_text(col_two_lbl, line_y, "ITEMS:");
    //draw_debug_text(col_two_val, line_y, string(items_held[0]) + " - " + string(items_held[1]) + " - " + string(items_held[2]) + " - " + string(items_held[3]));
    line_y += step_y;
    draw_debug_text(col_one_lbl, line_y, "ITEMS:");
    draw_debug_text(col_one_val, line_y, string(items[0]) + " - " + string(items[1]) + " - " + string(items[2]) + " - " + string(items[3]));
    //draw_debug_text(col_two_lbl, line_y, "PARRY_FLAG:");
    //draw_debug_text(col_two_val, line_y, string(to_parry_wrap));
    line_y += step_y;
    line_y += step_y;
    draw_debug_text(col_one_lbl, line_y, "RATTLE LOOP:");
    draw_debug_text(col_one_val, line_y, string(rattle_loop));
    draw_debug_text(col_two_lbl, line_y, "RATTLE_COUNT:");
    draw_debug_text(col_two_val, line_y, string(rattle_count));
    //line_y += step_y;
    //draw_debug_text(col_one_lbl, line_y, "PAUSE_TIMER:");
    //draw_debug_text(col_one_val, line_y, string(pause_timer));
    //draw_debug_text(col_two_lbl, line_y, "COMBO_TIMER:");
    //draw_debug_text(col_two_val, line_y, string(combo_timer));
    //line_y += step_y;
    //draw_debug_text(col_one_lbl, line_y, "HAS_HIT:");
    //draw_debug_text(col_one_val, line_y, string(has_hit));
}
//draw_sprite(spr_therapist, 0, ther_dest_x, ther_dest_y);

if (move_cooldown[AT_FSPECIAL_2] != 0 && therapy) {
    var curr = move_cooldown[AT_FSPECIAL_2];
    if (curr > 45) {
        if (curr == 50) sound_play(sfx_toasty);
        ther_x = ther_orig_x - (therapist_timer - curr) * 20;
    }
    else if (curr < 15) {
        ther_x = ther_orig_x + -(curr) * 20;
    }
}
draw_sprite(spr_therapist, 0, ther_x, ther_dest_y);

shader_start();

for (var i = 0; i < 4; i++) {
    var offset_x = (temp_x + 76) + (34 * i);
    if (items[i] == noone) draw_sprite(spr_huditems, i, offset_x, temp_y - 30);
    else draw_sprite(spr_huditems, i + 4, offset_x, temp_y - 30);
}

if (move_cooldown[AT_FSPECIAL] == 0) draw_sprite(spr_huditems, 8, temp_x - 2, temp_y - 30);
else draw_sprite(spr_huditems, 9, temp_x - 2, temp_y - 30);

shader_end();