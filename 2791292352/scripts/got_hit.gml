if hit_player_obj.cofa_mummy == true && enemy_hitboxID.type == 1{
hit_player_obj.cofa_mummy = 0;
hit_player_obj.cofa_mummy_timer = 0;
hit_player_obj.cofa_mummy_outcol_time = 0;
    sound_play(sound_get("mcurse_apply"));
    cofa_mummy = true;
    cofa_mummy_id = id;
    cofa_mummy_timer = 180;
    cofa_mummy_outcol_time = 0;
}
else if (enemy_hitboxID.player_id.player == player && enemy_hitboxID.attack == AT_NSPECIAL){
    sound_play(sound_get("mcurse_apply"));
    cofa_mummy = true;
    cofa_mummy_id = id;
    cofa_mummy_timer = 180;
    cofa_mummy_outcol_time = 0;
}

// cancel cofa grab on hit
if (attack == AT_FSPECIAL && orig_knock != 0){ // the ridley
	window = 7;
	if (instance_exists(fspecial_grab_id)){ 
		with(fspecial_grab_id){
			// hitstop stuff
			hitstop = 0;
			hitstop_full = 1;
			hitpause = false;
			// reset speed
			vsp = 0;
			hsp = 0;
			old_vsp = vsp;
			old_hsp = hsp;
		}
	}
	fspecial_grab_id = noone;
}
