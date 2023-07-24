//article flash white when swapping


if(get_match_setting(SET_HITBOX_VIS)){
	if(other.state != 3){
		draw_sprite_ext(sprite_get("sb_hurtbox"), 0, x, y, 1, 1, 0, c_white, 0.5);
	}
}