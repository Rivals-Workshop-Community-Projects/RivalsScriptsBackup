var hitbox_applies_mummy = false; // makes things easier

if (cofa_mummy == true && my_hitboxID.type == 1 && my_hitboxID.attack != AT_DSPECIAL){
    sound_play(sound_get("mcurse_apply"));
	hit_player_obj.cofa_mummy = true;
	hit_player_obj.cofa_mummy_timer = 180;
    hit_player_obj.cofa_mummy_id = id;
	hit_player_obj.cofa_mummy_outcol_time = 0;
	cofa_mummy = 0;
	cofa_mummy_timer = 0;
	cofa_mummy_outcol_time = 0;
}

if (my_hitboxID.hbox_num == 1 && (my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_USPECIAL) || my_hitboxID.attack == AT_DAIR)
	hitbox_applies_mummy = true;

switch(my_hitboxID.attack){
	case AT_FSPECIAL:
		switch(my_hitboxID.hbox_num){
			case 1:
				if (fspecial_grab_id == noone) && (!hit_player_obj.super_armor) && (hit_player_obj.soft_armor == 0 || hit_player_obj.soft_armor >= orig_knock) && ((hit_player_obj.cofa_mummy && hit_player_obj.cofa_mummy_timer < 180 ) || phone_cheats[CHEAT_SUDOCURSE]){ // grabby
					fspecial_grab_id = hit_player_obj;
					fspecial_grab_time_max = 30 + round(max((get_player_damage(hit_player_obj.player) - 20), 0));
					fspecial_grab_time_max = min(fspecial_grab_time_max, 200);
					destroy_hitboxes();
				}
			
				if (hit_player_obj.cofa_mummy)
					hitbox_applies_mummy = true;
			break;
			case 2: // grab
				if (hit_player_obj.cofa_mummy)
					hitbox_applies_mummy = true;
			break; 
			case 3: // throw
				if (hit_player_obj == fspecial_grab_id){
					hit_player_obj.visible = true;
					if (hit_player_obj.cofa_mummy) // funny kb
						orig_knock = (my_hitboxID.kb_value+4) + (get_player_damage(hit_player_obj.player) * (my_hitboxID.kb_scale+.2) * 0.12 * hit_player_obj.knockback_adj);
					
					fspecial_grab_id = noone;
				}
			break;
		}
		if (my_hitboxID.hbox_num != 3)
			hit_player_obj.should_make_shockwave = false;
	break;
	case AT_DSPECIAL:
		sound_play((hit_player_obj.cofa_mummy || phone_cheats[CHEAT_SUDOCURSE]) ? sound_get("hex_hit_strong") : sound_get("hex_hit_weak"));
		if (hit_player_obj.cofa_mummy) || (phone_cheats[CHEAT_SUDOCURSE]){
			hit_player_obj.orig_knock = 10 + (get_player_damage(hit_player_obj.player) * 1 * 0.12 * hit_player_obj.knockback_adj);
			take_damage(hit_player_obj.player, player, 5);
			
			// hitpause
			hit_player_obj.hitstop_full += 6;
			hitstop_full += 6;
			hit_player_obj.hitstop = hit_player_obj.hitstop_full;
			hitstop = hitstop_full;
			
			// shake & galaxy
			hit_player_obj.should_make_shockwave = true;
			
			shake_camera(round(hit_player_obj.orig_knock), round(hitstop_full*.7));
		} else {
		window = 3;
		window_timer = 36;
		}
	break;
	case AT_USPECIAL:
	   if (!hit_player_obj.cofa_mummy){
	   spawn_hit_fx( hit_player_obj.x, hit_player_obj.y-20, wwisp_charge );
	   }
	break;
}

if (hitbox_applies_mummy){
	if (!hit_player_obj.cofa_mummy)
		sound_play(sound_get("mcurse_apply"));
	hit_player_obj.cofa_mummy = true;
	hit_player_obj.cofa_mummy_id = id;
	hit_player_obj.cofa_mummy_outcol_time = 0;
	hit_player_obj.cofa_mummy_omen = false;
	hit_player_obj.cofa_mummy_omen_timer = 0;
	if !(hit_player_obj.selfinflict){
	hit_player_obj.cofa_mummy_timer = 180;
	}
}
