var hitbox_applies_mummy = (enemy_hitboxID.type == 1);

if (hitbox_applies_mummy){
	if (!hit_player_obj.cofa_mummy)
		sound_play(sound_get("mcurse_apply"));
	hit_player_obj.cofa_mummy = true;
	hit_player_obj.cofa_mummy_id = id;
	hit_player_obj.cofa_mummy_timer = 180;
	hit_player_obj.cofa_mummy_outcol_time = 0;
	hit_player_obj.cofa_mummy_ui_spr = mummy_hudspr_stored;
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
