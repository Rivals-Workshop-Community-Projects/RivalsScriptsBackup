//draw_hud.gml
if(TCG_Kirby_Copy != -1){
draw_sprite_ext(sprite_get("hud_abilities"), TCG_Kirby_Copy, temp_x - 4, temp_y - 40, 2, 2, 0,c_white, 1);
} else {
draw_sprite_ext(sprite_get("hud_abilities"), 16, temp_x - 4, temp_y - 40, 2, 2, 0,c_white, 1);
}
draw_sprite_ext(sprite_get("hud_abilities_overlay"), 0, temp_x - 4, temp_y - 40, 2, 2, 0,get_player_hud_color(player), 1);


