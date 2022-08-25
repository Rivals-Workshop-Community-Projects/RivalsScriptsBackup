// debug
/*
draw_debug_text(temp_x + 200, temp_y - 32, string(combo_num));
draw_debug_text(temp_x + 100, temp_y - 32, string("combo_num"));
draw_debug_text(temp_x + 200, temp_y - 52, string(instrum_num));
draw_debug_text(temp_x + 100, temp_y - 52, string("inst_num"));
if(combo_cooldown > 0){
draw_debug_text(temp_x + 200, temp_y - 92, string(combo_cooldown));
}
draw_debug_text(temp_x + 100, temp_y - 72, string("combo_tim"));
draw_debug_text(temp_x + 200, temp_y - 72, string(combo_timer));
*/
draw_sprite(sprite_get("combometer_outline"), 0, temp_x + 16, temp_y + -26);
draw_sprite(sprite_get("combo_nummeter"), hud_combo_num, temp_x + 76, temp_y + -26);
draw_sprite(sprite_get("note"), 0, temp_x - 6, temp_y + -26);
if(combo_num > 0){
    if(combo_timer >= 120){
draw_sprite_ext(sprite_get("combometer_bar"), 0, temp_x + 24, temp_y + -18, (combo_timer/420), 1, 0, c_white, 1);
}    if(combo_timer < 120){
draw_sprite_ext(sprite_get("combometer_bar3"), 0, temp_x + 24, temp_y + -18, (combo_timer/420), 1, 0, c_white, 1);
}
}
if(combo_cooldown > 0){
draw_sprite_ext(sprite_get("combometer_bar2"), 0, temp_x + 24, temp_y + -18, (hud_combo_cooldown/ (300*hud_cooldown_mult)), 1, 0, c_white, 1);
}

if(bomb_state = true){
   draw_sprite(sprite_get("hudsmokebomb1"), 0, temp_x + 180, temp_y + -38);
   draw_sprite(sprite_get("fly_meter"), 0, temp_x + 170, temp_y + -46);
   draw_sprite_ext(sprite_get("bomb_bar"), 0, temp_x + 176, temp_y + -46, (bomb_timer/300), 1, 0, c_white, 1);
}

if(duster_muted = true){
  draw_sprite(sprite_get("muted_hud"), 0, temp_x + 66, temp_y + 6);  
}
if (get_gameplay_time() < 120){
    if(duster_muted = false){
    draw_debug_text(temp_x+0, temp_y-48,string("Hold [TAUNT] to mute Duster"));
    }
}

if(move_cooldown[AT_DSPECIAL] > 0){
    draw_sprite_ext(sprite_get("hudsmokebomb1"), 0, temp_x + 180, temp_y + -38, 1, 1, 0, c_gray, 1);
}
if(move_cooldown[AT_NSPECIAL] > 0){
    draw_sprite_ext(sprite_get("hudwallstaple"), 0, temp_x + 140, temp_y + -34, 1, 1, 0, c_gray, 1);
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
/*
muno_event_type = 5; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
user_event(14);
*/