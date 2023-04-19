// 

if(my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 3){
	sound_play(asset_get("sfx_ell_steam_hit"));
}

if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
	hbox = create_hitbox(AT_FSPECIAL, 2, my_hitboxID.x, my_hitboxID.y + 10);
	hbox.spr_dir = my_hitboxID.spr_dir;
}

if(my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 1){
	sound_play(sound_get("sword_hit_m"), 0, noone, .9, 1);
}
if(my_hitboxID.attack == AT_TAUNT && my_hitboxID.hbox_num == 1){
	sound_play(asset_get("sfx_ell_steam_hit"), 0, noone, .3, 1);
}

//scalding (malding lol)

if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
	if(was_parried == false && hit_player_obj.clone == false){
		if(hit_player_obj != self){
		hit_player_obj.other_scalding = true;
		hit_player_obj.other_scalding_timer = 360;
		//other_is_scalding = true;
		}if(hit_player_obj = self){
			gumbo_scalding = true;
			gumbo_scalding_timer = 360;
			gumbo_is_scalding = true;
			hit_player_obj.gumbo_scalding = true;
		}
		sound_play(asset_get("sfx_hod_steamhit1"));
	}
}
if(my_hitboxID.attack == AT_DSPECIAL){
	if(was_parried == false && hit_player_obj.clone == false){
		hit_player_obj.other_scalding = true;
		hit_player_obj.other_scalding_timer = 360;
		//other_is_scalding = true;
		sound_play(asset_get("sfx_hod_steamhit2"));
	}
}
if(my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 1){
	if(was_parried == false && hit_player_obj.clone == false){
		hit_player_obj.other_scalding = true;
		hit_player_obj.other_scalding_timer = 360;
		//other_is_scalding = true;
		sound_play(asset_get("sfx_hod_steamhit3"));
	}
}
if(my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 1){
	if(was_parried == false && hit_player_obj.clone == false){
		hit_player_obj.other_scalding = true;
		hit_player_obj.other_scalding_timer = 360;
		//other_is_scalding = true;
		sound_play(asset_get("sfx_hod_steamhit3"));
	}
}
if(my_hitboxID.attack == AT_USPECIAL){
	if(was_parried == false && hit_player_obj.clone == false){
		if(hit_player_obj != self){
		hit_player_obj.other_scalding = true;
		hit_player_obj.other_scalding_timer = 360;
		//other_is_scalding = true;
		}if(hit_player_obj = self){
			gumbo_scalding = true;
			gumbo_scalding_timer = 360;
			gumbo_is_scalding = true;
			hit_player_obj.gumbo_scalding = true;
		}
		sound_play(asset_get("sfx_hod_steamhit1"));
	}
}
if(my_hitboxID.attack == AT_DSTRONG){
	if(was_parried == false && hit_player_obj.clone == false){
		hit_player_obj.other_scalding = true;
		hit_player_obj.other_scalding_timer = 360;
		//other_is_scalding = true;
		sound_play(asset_get("sfx_hod_steamhit3"));
	}
}

if(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
	djumps = 0;
}if(my_hitboxID.attack == AT_DSPECIAL_2 && my_hitboxID.hbox_num == 1){
	djumps = 0;
}

if(my_hitboxID.attack == AT_EXTRA_2) {
	if (my_hitboxID.hbox_num == 1) {
	pumbo_pot_ID.artificial_hitstop = my_hitboxID.hitpause*1.5;
			if(instance_exists(pumbo_pot_ID.pot_hitbox)){
		pumbo_pot_ID.pot_hitbox.destroyed = true;
			}
			if(hit_player_obj.other_scalding){
				hit_player_obj.hitstop = 2;
				hit_player_obj.hitpause = true;
				pumbo_pot_ID.pot_trapped = hit_player_obj;
				pumbo_pot_ID.explode_owner = pumbo_pot_ID.player;
				pumbo_pot_ID.pot_hitbox_active = false;
				pumbo_pot_ID.pot_has_trapped = true;
				pumbo_pot_ID.pot_trapped_gumbo = false;
				pumbo_pot_ID.state = 5;
				pumbo_pot_ID.state_timer = 0;
			}
	}
}
