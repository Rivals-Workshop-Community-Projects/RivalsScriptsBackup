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
	break;
	
	case AT_DSTRONG:
	    switch my_hitboxID.hbox_num {
		    case 9:
		    //fake burn because it doesnt apply on hitboxes without kb thanks dan !!!!!!!!!!!
				hit_player_obj.burned = true;
				hit_player_obj.burnt_id = other;
				hit_player_obj.burn_timer = 0;
				sound_play(asset_get("sfx_burnapplied"));
			break;
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
		hit_player_obj.burned_color = bully_burn_colour;
	break;
	
	case AT_FSTRONG:
	    sound_stop(asset_get("sfx_ell_small_missile_ground"));
	    sound_play(asset_get("sfx_ell_small_missile_ground"));
		sound_stop(asset_get("sfx_burnapplied"));
		sound_play(asset_get("sfx_burnapplied"));
		hit_player_obj.burned_color = bully_burn_colour;
	break;
	
	case AT_NSPECIAL:
	case AT_USPECIAL:
	    sound_stop(asset_get("sfx_zetter_upb_hit"));
	    sound_play(asset_get("sfx_zetter_upb_hit"));
		sound_stop(asset_get("sfx_burnapplied"));
		sound_play(asset_get("sfx_burnapplied"));
	case AT_NAIR:
	    hit_player_obj.burned_color = bully_burn_colour;
	break;
	
	case AT_USTRONG:
        if my_hitboxID.hbox_num == 1 { 
		    shake_camera( 10, 20+ round(get_player_damage(hit_player_obj.player) / 4) );
		    sound_play(sound_get("bully_noise"));
		}
    break;
}