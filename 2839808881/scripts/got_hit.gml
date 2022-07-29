//ouchie
if (orig_knock > 5) {
    //sound_play(sound_get("hurt"))
}

if (attack == AT_COPY_ESP && (state == PS_HITSTUN || state == PS_HITSTUN_LAND)){
	esp_parried = true;
	move_cooldown[AT_COPY_ESP] = 60;
	window = 4;
	window_timer = 0;
	//sound_play(asset_get("sfx_ori_glide_start"));
}

if (attack == AT_COPY_ICE && (state == PS_HITSTUN || state == PS_HITSTUN_LAND)){
	sound_stop(sound_get("sfx_krdl_ice_breath_loop"));
}

if (attack == AT_COPY_SPARK && (state == PS_HITSTUN || state == PS_HITSTUN_LAND)){
	sound_stop(sound_get("sfx_krdl_spark"));
}

sound_stop(sound_get("sfx_charge"));

sound_stop(sound_get("inhale"));

move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_USPECIAL] = 0;
move_cooldown[AT_COPY_FIRE] = 0;
move_cooldown[AT_COPY_DRILL] = 0;

zoom = 2;