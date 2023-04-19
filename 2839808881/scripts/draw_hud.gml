//draw_hud.gml
if(TCG_Kirby_Copy != -1){
draw_sprite_ext(sprite_get("hud_abilities"), TCG_Kirby_Copy, temp_x - 4, temp_y - 40, 2, 2, 0,c_white, 1);
} else {
draw_sprite_ext(sprite_get("hud_abilities"), 16, temp_x - 4, temp_y - 40, 2, 2, 0,c_white, 1);
}
draw_sprite_ext(sprite_get("hud_abilities_overlay"), 0, temp_x - 4, temp_y - 40, 2, 2, 0,get_player_hud_color(player), 1);

if (TCG_Kirby_Copy == 11){
	if (mike_level == 1){
		draw_debug_text(temp_x+4,temp_y-32,"3")
	} else if (mike_level == 2){
		draw_debug_text(temp_x+4,temp_y-32,"2")
	} else if (mike_level == 3){
		draw_debug_text(temp_x+4,temp_y-32,"1")
	}
}

if (get_match_setting(SET_PRACTICE)){
	draw_debug_text(temp_x+70,temp_y-32," Hold Up + Taunt to")
	draw_debug_text(temp_x+70,temp_y-16,"select a Copy Ability!")
}