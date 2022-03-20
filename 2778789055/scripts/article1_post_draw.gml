var col_w = c_white;
var col_b = c_black;

if(state != 7){
if(state != 6){
if(!has_shrimp){
draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x - 7, y - 80, 1, 1, 0, get_player_hud_color(player), 1);
if(!can_be_hit){
  draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x - 7, y - 80, 1, 1, 0, c_dkgray, 1);
    }
}
if(has_shrimp){
draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x - 7, y - 110, 1, 1, 0, get_player_hud_color(player), 1);
draw_sprite_ext(sprite_get("cook_meter"), 0, x + 26, y - 55, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("cook_bar"), 0, x + 36, y + 3, 1, (-explode_timer/300), 0, c_white, 1);
if(!can_be_hit){
  draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x - 7, y - 110, 1, 1, 0, c_dkgray, 1);
    }
}
}
//draw_debug_text(x-7, y + -100,string(hsp));
draw_debug_text(x-12, y + 15,string(spice_level));
draw_sprite_ext(sprite_get("spice_icon"), 0, x - 7, y +5, 1, 1, 0, c_white, 1);
if(spice_cooldown > 0){
  draw_sprite_ext(sprite_get("spice_icon_cooldown"), 0, x - 7, y +5, 1, 1, 0, c_white, 1);  
}
}