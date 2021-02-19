sound_play(sound_get("sfx_death"));

//Killing the lava if active
with(asset_get("obj_article1")){
	if (player_id == other.id){
		killarticles = true;
	}
}

if(instance_exists(grabbedid)){
	grabbedid.ungrab = 0;
	grabbedid = noone;
}

charge_gauge = 0;

move_cooldown[AT_DSPECIAL] = 0;
move_cooldown[AT_NSPECIAL] = 0;
move_cooldown[AT_USPECIAL] = 0;