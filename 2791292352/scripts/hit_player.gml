var hitbox_applies_mummy = false; // makes things easier

if (my_hitboxID.hbox_num == 1 && (my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_USPECIAL) || my_hitboxID.attack == AT_DAIR)
	hitbox_applies_mummy = true;

switch(my_hitboxID.attack){
    case AT_DSTRONG:
	    if my_hitboxID.hbox_num = 2 {
		    sound_play(asset_get("sfx_boss_laser_hit"));
		}
	case AT_FSPECIAL:
		switch(my_hitboxID.hbox_num){
			case 1: //grab
				if (fspecial_grab_id == noone) && (!hit_player_obj.super_armor) && (hit_player_obj.soft_armor == 0 || hit_player_obj.soft_armor >= orig_knock) && ((hit_player_obj.cofa_mummy = true) || phone_cheats[CHEAT_SUDOCURSE]){ // grabby
					fspecial_grab_id = hit_player_obj;
					fspecial_grab_time_max = 10 + round(max(((get_player_damage(hit_player_obj.player) - 20) * 0.3), 0));
					fspecial_grab_time_max = min(fspecial_grab_time_max, 200);
					destroy_hitboxes();
				}
			
				if (hit_player_obj.cofa_mummy = true)
					hitbox_applies_mummy = true;
			break;
			case 2: // drag
				if (hit_player_obj.cofa_mummy = true) {
					hitbox_applies_mummy = true;
			    }
			break;
			case 3: // throw
				if (hit_player_obj = fspecial_grab_id){
					hit_player_obj.visible = true;
					if (hit_player_obj.cofa_mummy = true) // funny kb
						orig_knock = (my_hitboxID.kb_value+4) + (get_player_damage(hit_player_obj.player) * (my_hitboxID.kb_scale+.2) * 0.12 * hit_player_obj.knockback_adj);
					
					fspecial_grab_id = noone;
				}
			break;
			case 5: //release
			    hit_player_obj.hurt_img = 5;
			break;
			
			
		}
	break;
	case AT_DSPECIAL:
		if (hit_player_obj.cofa_mummy = true) || (phone_cheats[CHEAT_SUDOCURSE]){
		    sound_play(sound_get("hex_hit_strong"));
		
			hit_player_obj.orig_knock = 10 + (get_player_damage(hit_player_obj.player) * 1 * 0.12 * hit_player_obj.knockback_adj);
			take_damage(hit_player_obj.player, player, 5);
			
			// hitpause
			hit_player_obj.hitstop_full += 20;
			hitstop_full += 20;
			hit_player_obj.hitstop = hit_player_obj.hitstop_full;
			hitstop = hitstop_full;
			
			//custom galaxy
			dspec_galaxy = true;
			shake_camera(round(hit_player_obj.orig_knock), round(hitstop_full*.7));
		} else {
			sound_play(sound_get("hex_hit_weak"));
			window = 3;
			window_timer = 36;
			dspec_galaxy = false;
		}
	break;
	case AT_USPECIAL:
	   if (hit_player_obj.cofa_mummy = false){
	       spawn_hit_fx( hit_player_obj.x, hit_player_obj.y-20, wwisp_charge );
	   }
	break;
}

if (hitbox_applies_mummy) && !(cofa_mummy && my_hitboxID.type = 1) {
    if hit_player_obj.cofa_mummy = false {
	     sound_play(sound_get("mcurse_apply"));
	}
    hit_player_obj.cofa_mummy = true;
	hit_player_obj.cofa_mummy_owner = self;
	hit_player_obj.cofa_mummy_source = self;
	hit_player_obj.cofa_mummy_timer = 180;
}
