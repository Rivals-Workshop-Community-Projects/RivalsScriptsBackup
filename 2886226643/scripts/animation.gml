if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL_2){
	if (window == 6 || window == 8){
		sprite_index = asset_get("empty_sprite");
		if (window_timer == 0){
			fspecial_posx = hit_player_obj.x;
			fspecial_posy = hit_player_obj.y;
		}
	}
	if (window == 7){
		sprite_index = sprite_get("dair");
		hurtboxID.sprite_index = sprite_get("dair_hurt");
	}
	if (window == 9){
		sprite_index = sprite_get("jab_push");
		hurtboxID.sprite_index = sprite_get("jab_push_hurt");
	}
	if (window == 1){
		sprite_index = sprite_get("fspecial");
		hurtboxID.sprite_index = sprite_get("fspecial_hurt");
	}
}

if (move_cooldown[AT_JAB] = 5){
	sound_play(asset_get("sfx_ell_steam_hit"));
	spawn_hit_fx( x, y+5, jab_smoke);
}