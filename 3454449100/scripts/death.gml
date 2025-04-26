// death.gml

// play stuff on death here

// death sfx
sound_play(sfx_nsmbds_death);

// kill shell
if (carryingShell){
	
	carryingShell = false;
} else {
	// destroy shell instance here
	if (instance_exists(currKoopaShell)){
		with (currKoopaShell){
			shouldBeDestroyed = true;
		}
	}
}

if (sprite_index == sprite_get("fspecial") || sprite_index == sprite_get("nspecial_air")){
	sound_stop(sfx_ttydR_koops_field_spin);
}


move_cooldown[AT_NSPECIAL] = 0;	// just in case!
move_cooldown[AT_FSPECIAL] = 0;	// just in case!
move_cooldown[AT_DSPECIAL] = 0;	// just in case!