var uuid = sprite_get("idle");
if "char_uuid" not in self || char_uuid != uuid {
    sound_play(sound_get("rvx_hi"));
    
    char_uuid = uuid;
}

if (get_player_color( player ) == 7){
		draw_sprite_ext(sprite_get("gameboycss"),0,x+8,y+8,2,2,0,-1,1);
}
	