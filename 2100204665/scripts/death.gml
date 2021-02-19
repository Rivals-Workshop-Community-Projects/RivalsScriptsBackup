
if (instance_exists(bones)){
	with(bones){
		state = 3;
		state_timer = 0;
	}
}
hit_counter = 0;
hit_timer = 0;

if (instance_exists((obj_article2))){
    with(obj_article2){
	    if(player_id == other){
        spawn_hit_fx( floor(x-4), floor(y-34), 256 );
        sound_play(asset_get("sfx_clairen_tip_med"));
        instance_destroy(id);
	    }
	}
}

if (move_cooldown[AT_USPECIAL] >= 0){
	move_cooldown[AT_USPECIAL] = 0;
	bone_usable = true;
	instance_destroy(bone);
	bone = noone;
}

if (get_player_stocks( player ) == 1) {
    sound_play(sound_get("sfx_monsterdeath"));
}