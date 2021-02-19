//
if (my_hitboxID.attack == AT_DSPECIAL){
    if (my_hitboxID.hbox_num == 1){
        hit_counter = 0;
        hit_timer = 0;
        move_cooldown[AT_DSPECIAL] = 180;
        with(bones){
            state = 3;
            state_timer = 0;
        }
    }
}

if (instance_exists((obj_article2))){
    with(obj_article2){
	    if(player_id == other){
        spawn_hit_fx( floor(x-4), floor(y-34), 256 );
        sound_play(asset_get("sfx_clairen_tip_med"));
        instance_destroy(id);
	    }
	}
}