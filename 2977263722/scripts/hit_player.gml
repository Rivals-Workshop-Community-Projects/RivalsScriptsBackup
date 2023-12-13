switch my_hitboxID.attack {

    case AT_JAB:
	//infinite jablock prevention
	    if  hit_player_obj.bully_from_mario_jablock_cooldown = 0 {
		    var hitpauselol = get_hitstop_formula( get_player_damage( hit_player_obj.player ), my_hitboxID.damage, my_hitboxID.hitpause, my_hitboxID.hitpause_growth, 15 )
			hit_player_obj.hitstop_full = hitpauselol;
			hit_player_obj.hitstop = hitpauselol;
			hit_player_obj.bully_from_mario_jablock_cooldown = 20;
		}
	break;

    case AT_FSPECIAL:
	    fspecial_hit = 1;
		sound_play(sound_get("bully_dink"));
		sound_play(sound_get("bully_noise"));
		
		if has_rune("D") && hit_player_obj.bully_burn = true {
		    hit_player_obj.bully_burn_timer = 0;
			hitstop += 20;
			hitstop_full += 20;
			hit_player_obj.hitstop += 20;
			hit_player_obj.hitstop_full += 20;
			shake_camera(10, 20);
			
			sound_play(asset_get("sfx_burnconsume"));
			spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-32, hfx_fire_2);
			
			hit_player_obj.orig_knock = get_kb_formula(get_player_damage(hit_player_obj.player), hit_player_obj.knockback_adj, 1.0, my_hitboxID.damage, 10, 0.8);
		}
	break;
	
	case AT_DSTRONG:
	    switch my_hitboxID.hbox_num {
		    case 1:
		    case 3:
		    case 6:
			    sound_play(asset_get("sfx_ori_charged_flame_hit"));
		    break;
			case 2:
			case 4:
			case 7:
			    sound_play(asset_get("sfx_ell_small_missile_ground"));
			break;
			case 5:
			case 8:
			    sound_play(asset_get("sfx_zetter_upb_hit"));
			break;
		}
	break;
	
	case AT_FSTRONG:
	    sound_stop(asset_get("sfx_ell_small_missile_ground"));
	    sound_play(asset_get("sfx_ell_small_missile_ground"));
	break;
	
	case AT_NSPECIAL:
	case AT_USPECIAL:
	    sound_stop(asset_get("sfx_zetter_upb_hit"));
	    sound_play(asset_get("sfx_zetter_upb_hit"));
	break;
	
	case AT_USTRONG:
        if my_hitboxID.hbox_num == 1 { 
		    shake_camera( 10, 20+ round(get_player_damage(hit_player_obj.player) / 4) );
		    sound_play(sound_get("bully_noise"));
		}
    break;
}

if get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_BULLY_BURN) == 1 && !phone_cheats[CHEAT_BURNLESS] {
    sound_stop(asset_get("sfx_burnapplied"));
	sound_play(asset_get("sfx_burnapplied"));
	
	var alt = get_player_color(player);
	
	hit_player_obj.bully_burn = true;
	hit_player_obj.bully_burn_player = player;
	hit_player_obj.bully_burn_timer = 150;
	hit_player_obj.bully_burn_total = 150;
	if has_rune("I") hit_player_obj.bully_burn_timer = 450;
	if has_rune("I") hit_player_obj.bully_burn_total = 450;
	hit_player_obj.outline_color = [get_color_profile_slot_r( alt, 7 ), get_color_profile_slot_g( alt, 7 ), get_color_profile_slot_b( alt, 7 )];
    with hit_player_obj init_shader();
	
	if random_func(hit_player_obj.player, 4, true) = 0 {
	    hit_player_obj.talkingflower_voice_trigger = 1;
        hit_player_obj.talkingflower_set_line = 121;
        hit_player_obj.talkingflower_interrupt = false;
	}
}