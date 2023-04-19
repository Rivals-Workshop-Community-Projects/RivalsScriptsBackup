shader_start();
if get_player_color(player) == 0 {
	draw_sprite_ext(sprite_get("hud_icon_slot0"),1,temp_x+20,temp_y,1,1,0,c_white, 1);
}
if get_player_color(player) != 0 {
	draw_sprite_ext(sprite_get("hud_icon"),1,temp_x+20,temp_y,1,1,0,c_white, 1);
}
if(move_cooldown[AT_DSPECIAL] != 0){
	draw_sprite_ext(sprite_get("hud_icon"), 1, temp_x+20, temp_y, 1, 1, 0, c_black, (move_cooldown[AT_DSPECIAL]/(15*60)));
}
draw_sprite_ext(sprite_get("hud2_icon"),1,temp_x+60,temp_y,1,1,0,c_white, 1);
if(move_cooldown[AT_FSPECIAL] != 0){
	draw_sprite_ext(sprite_get("hud2_icon"), 1, temp_x+60, temp_y, 1, 1, 0, c_black, (move_cooldown[AT_FSPECIAL]/(5*60)));
}
shader_end();

if ("eust_inChair" in self){			//debug cleaning lol


if(eust_inChair){
	set_ui_element(UI_HUD_ICON, sprite_get("hud_nope"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_nope"));
}
if(!eust_inChair){
	set_ui_element(UI_HUD_ICON, sprite_get("hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_hurt"));
}

}

if(move_cooldown[AT_DSPECIAL] != 0){
	if(move_cooldown[AT_DSPECIAL] >= 540){
		draw_debug_text( temp_x + 12, temp_y - 20, string(ceil(move_cooldown[AT_DSPECIAL]/60)));
	}
	if(move_cooldown[AT_DSPECIAL] < 540){
		draw_debug_text( temp_x + 17, temp_y - 20, string(ceil(move_cooldown[AT_DSPECIAL]/60)));
	}
}

if(move_cooldown[AT_FSPECIAL] != 0){
	draw_debug_text( temp_x + 57, temp_y - 20, string(ceil(move_cooldown[AT_FSPECIAL]/60)))
}
