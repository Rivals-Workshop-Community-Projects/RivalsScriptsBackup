if state_cat = SC_HITSTUN { 
sound_stop(sound_get("spookydance"));
sound_stop(sound_get("ragdoll"));
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
