alt_cur = get_player_color("online_fix" in self ? online_fix : player) //sprite_get_xoffset(sprite_get("alts"));
//GB Alt
if (alt_cur == 7){
	for(i = 0; i < 6; i++){
		set_character_color_shading(i, 0);
	}
}
if (alt_cur == 18){
	for(i = 0; i < 6; i++){
		set_character_color_shading(i, 1.75);
	}
}