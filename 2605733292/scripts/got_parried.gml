//got_parried.gml

if (my_hitboxID.attack == AT_NAIR){
	prat_land_time = 80;
	set_state(PS_PRATFALL);
	sound_stop(sfx_hammer_swipe_spin);
}

if (my_hitboxID.attack == AT_DSPECIAL){
	essence_got_parried = true
	//prat_land_time = 80;
	//set_state(PS_PRATLAND);
	/*
    with (asset_get("obj_article1")){
        if (player_id.player == other.player){
            spr_dir *= -1;
            hsp *= -1
			vsp *= -1
        }
    }
	*/
}

if (my_hitboxID.attack == AT_NSPECIAL){
	//print(parry_lag);
	set_state(PS_PRATLAND);
	parry_lag = 80;
	was_parried = true;
} else {
	parry_lag = 40;
}

if (my_hitboxID.attack != AT_NAIR && my_hitboxID.attack != AT_NSPECIAL){
	prat_land_time = 10;
}

if (burst_bubble_is_charged == true){
	burst_bubble_is_charged = false;
	sound_play(sfx_canvas_curse_balloon_pop);
}