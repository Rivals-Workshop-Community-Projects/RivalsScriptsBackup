/*if("countdown" in hit_player_obj && hit_player_obj.countdown > 0 && my_hitboxID.attack != AT_NSPECIAL){
	hit_player_obj.countdown -= 30;
	if(hit_player_obj.countdown <= 15) hit_player_obj.countdown = 15;
}*/

switch (my_hitboxID.attack){
	
	case AT_UTILT:
		if(my_hitboxID.hbox_num == 1){
			hit_player_obj.old_hsp = -10 * spr_dir;
			hit_player_obj.old_vsp = -11;
		}
		break;
	
	case AT_UAIR:
		/*if(my_hitboxID.hit_flipper == 10){
			hit_player_obj.x = lerp(hit_player_obj.x, (x + 9), 0.1);
			hit_player_obj.y = lerp(hit_player_obj.y, (y - 65), 0.1);
		}*/
		break;
	
	case AT_BAIR:
		if(my_hitboxID.hbox_num == 3){
			sound_play(asset_get("sfx_icehit_heavy2"));
		}
		break;

	case AT_FSTRONG:
		sound_play(sound_get("sfx_knifehit_l"));
		break;
	
	case AT_USTRONG:
		if(my_hitboxID.hbox_num == 1){
			if(!hit_player_obj.clone && !hit_player_obj.super_armor && hit_player_obj.soft_armor < 8){
				grab = hit_player_obj;
				set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 8);
				set_window_value(AT_USTRONG, 3, AG_WINDOW_GOTO, 5);
			}
		}else if(my_hitboxID.hbox_num == 3){
				grab = noone;
		}
		break;
	//case AT_NSPECIAL:
		//rocc check
        //if(my_hitboxID.hit_priority == 1) exit;
        
		/*hit_player_obj.countdown += 75;
		if(hit_player_obj.countdown > 400){
			hit_player_obj.countdown = 400;
		}*/
		//break;
	
	case AT_FSPECIAL:
	case AT_FSPECIAL_AIR:
		sound_play(asset_get("sfx_icehit_heavy1"));
		fspec_fog_timer = floor(hit_player_obj.hitstop);
		break;
	
	case AT_USPECIAL:
		if(my_hitboxID.hbox_num == 1){
			sound_play(sound_get("sfx_knifehit_l"));
			sound_stop(asset_get("sfx_spin_longer"));
			uspec_bounce++;
		}
		break;
		
	case AT_DSPECIAL:
		/*if(hit_player_obj.knife_stack == 6){
			hit_player_obj.knife_stack = 0;
			hit_player_obj.countdown = 400;
			spawn_hit_fx( hit_player_obj.x, hit_player_obj.y - char_height/2, vfx_ring_flash );
		}*/
		/*if(hit_player_obj.countdown > 0){
			hit_player_obj.countdown = 10;
		}*/
		break;
}	 

if(my_hitboxID.kb_scale > 0 && my_hitboxID.type == 1 && "knife_stack" in hit_player_obj){
    if(hit_player_obj.knife_stack >= 3 && my_hitboxID.type = 1){
        can_dspec = true;
    }
    hit_player_obj.hitstun_counter = floor(hit_player_obj.hitstun);
}

//stack gain
if(my_hitboxID.sprite_index == sprite_get("nspec_proj") || (my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_FSPECIAL_AIR) && "knife_stack" in hit_player_obj){
	var not_max = true;
	hit_player_obj.knife_stack += 1;
	if(hit_player_obj.knife_stack > 6){
		hit_player_obj.knife_stack = 6;
		not_max = false;
	}
	if(not_max && hit_player_obj.knife_stack == 3){
		spawn_hit_fx( hit_player_obj.x, hit_player_obj.y - (char_height/2 + 10), vfx_ring_flash );
		//sound_play(sound_get("sfx_can_freeze"));
	}
}