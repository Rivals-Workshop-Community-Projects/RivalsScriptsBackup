exct_prehit = excitement;

switch (attack){

case AT_NSPECIAL:


	if (my_hitboxID.hbox_num != 6){
		// grabbed_player = hit_player_obj;
		hit_player_obj.should_make_shockwave = false;
		if (!hit_player_obj.super_armor){
		grabbed_player = hit_player_obj;
		}
	}
	else{


		//nero sound
		if (nero_voice){
			var sound_file;
			var voice_randomizer = random_func( 1, 2, 1 );

			sound_file = "nero_spike_" + string(voice_randomizer);
			sound_play(sound_get(sound_file));

			if (excited || tab_is_dummy)
			sound_play(sound_get(sound_file + "_exct"));
		}



	}


break;

case AT_USTRONG:

	if (my_hitboxID.hbox_num == 3){
		if (!hit_player_obj.super_armor)
		grabbed_player = hit_player_obj;

	}

break;


case AT_FSPECIAL:

	if (my_hitboxID.hbox_num == 1){
		hit_player_obj.should_make_shockwave = false
		if (!hit_player_obj.super_armor){
		grabbed_player = hit_player_obj;
		window = 3;
		window_timer = 0;

		if (collision_line(x, y - 26, x + (130 * spr_dir), y - 26, asset_get("solid_32_obj"), false, true) == noone)
		x += 130 * spr_dir;
		else{
		x = hit_player_obj.x + 30*spr_dir;
		}
		
		if (!exct_has_healed && excited)
		sound_play(sound_get("succ"));


		spr_dir *= -1;
		grabbed_player.spr_dir = -spr_dir;
		my_hitboxID.destroyed = true;
		}
	}

	if (my_hitboxID.hbox_num == 2){
		grabbed_player.x = x - (1 * spr_dir);


		//nero sound
		if (nero_voice){
			var sound_file;
			var voice_randomizer = random_func( 1, 2, 1 );

			sound_file = "nero_grab_" + string(voice_randomizer);
			sound_play(sound_get(sound_file));

			if (excited || tab_is_dummy)
			sound_play(sound_get(sound_file + "_exct"));
		}


	if (!exct_has_healed && excited){
		sound_play(sound_get("slicef"));
		sound_play(asset_get("sfx_blow_heavy2"));
	}
	else{
		sound_play(asset_get("sfx_leafy_hit1"));
		sound_play(asset_get("sfx_leafy_hit2"));
		sound_play(asset_get("sfx_blow_heavy2"));
	}
	
	}

	

break;

case AT_USPECIAL:

if (my_hitboxID.hbox_num == 1){

	//nero sound
	if (nero_voice){
		var sound_file;
		var voice_randomizer = random_func( 1, 2, 1 );

		sound_file = "nero_grab_" + string(voice_randomizer);
		sound_play(sound_get(sound_file));

		if (excited || tab_is_dummy)
		sound_play(sound_get(sound_file + "_exct"));
	}

}

if (my_hitboxID.hbox_num == 2){

	sound_play(asset_get("sfx_leafy_hit2"));

	if (nero_voice){
		sound_play(sound_get("nero_sweetspot"));
		if (excited || tab_is_dummy)
		sound_play(sound_get("nero_sweetspot_exct"));
	}

}

if (my_hitboxID.hbox_num == 3){
	hit_player_obj.should_make_shockwave = false
}

if (my_hitboxID.hbox_num == 4){

	//nero sound
	if (nero_voice){
		var sound_file;
		var voice_randomizer = random_func( 1, 2, 1 );

		sound_file = "nero_grab_" + string(voice_randomizer);
		sound_play(sound_get(sound_file));

		if (excited || tab_is_dummy)
		sound_play(sound_get(sound_file + "_exct"));
	}

}


break;

case AT_UTILT:

	if (my_hitboxID.hbox_num == 2){
		if (hit_player_obj.y < (my_hitboxID.y - 10)) && (!hit_player_obj.super_armor)
			hit_player_obj.y += 10;
	}

break;




}

excitement -= get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HKR_CLAW);

if (excited && !exct_has_healed && get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HKR_HEAL) != 0){
take_damage( player, -1, -get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HKR_HEAL) );
exct_heal_cd = exct_heal_cd_default;
exct_has_healed = true;
}



excitement = clamp(excitement,max_exct , 100);













