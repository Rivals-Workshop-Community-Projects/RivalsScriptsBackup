var col_w = c_white;
var col_b = c_black;

if(state != 7){
if(state != 6){
if(!has_shrimp){
draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, floor(x) - 7, floor(y) - 80, 1, 1, 0, get_player_hud_color(player), 1);
if(!can_be_hit){
  draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, floor(x) - 7, floor(y) - 80, 1, 1, 0, c_dkgray, 1);
    }
}
if(has_shrimp){
draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, floor(x) - 7, floor(y) - 110, 1, 1, 0, get_player_hud_color(player), 1);
draw_sprite_ext(sprite_get("cook_meter"), 0, floor(x) + 26, floor(y) - 55, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("cook_bar"), 0, floor(x) + 36, floor(y) + 3, 1, (-explode_timer/120), 0, c_white, 1);
if(!can_be_hit){
  draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, floor(x) - 7, floor(y) - 110, 1, 1, 0, c_dkgray, 1);
    }
}
}
//draw_debug_text(x-7, y + -100,string(pot_salt));
draw_debug_text(floor(x)-12, floor(y) + 15,string(spice_level));
draw_sprite_ext(sprite_get("spice_icon"), 0, floor(x) - 7, floor(y) +5, 1, 1, 0, c_white, 1);
if(spice_cooldown > 0){
  draw_sprite_ext(sprite_get("spice_icon_cooldown"), 0, floor(x) - 7, floor(y) +5, 1, 1, 0, c_white, 1);  
}
}

if(!can_opponent_hit){
    draw_sprite_ext(sprite_index, image_index, floor(x), floor(y), 1, 1, image_angle, c_black, 0.5);
}

