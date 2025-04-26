// got_hit.gml

// resetting stuff if hit in hitstun
if (state == PS_HITSTUN || state == PS_HITSTUN_LAND){
	/*
	if (sprite_index == sprite_get("nspecial") || sprite_index == sprite_get("nspecial_air")){
		//print("true...");
	}
	*/
}



// no fspec spin sfx if hit out of it
if (state == PS_HITSTUN || state == PS_HITSTUN_LAND){
	if (attack == AT_FSPECIAL){
		sound_stop(sfx_ttydR_koops_field_spin);
	}
	
	// remove shell entirely if hit with something that causes hitstun
	if (carryingShell){
		// print("adssd")
		
		carryingShell = false;
			
		var droppedShell = instance_create(x + (4 * spr_dir), y - 2, "obj_article3");
			
		droppedShell.spr_dir = spr_dir;
		droppedShell.hsp = 3.5 * spr_dir;
		droppedShell.vsp = -9;
	}
}