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
	    fspecial_hit = true;
		sound_play(sound_get("bully_dink"));
		sound_play(sound_get("bully_noise"));
	break;
	
	case AT_FSTRONG:
	    sound_stop(asset_get("sfx_ell_small_missile_ground"));
	    sound_play(asset_get("sfx_ell_small_missile_ground"));
	case AT_DSTRONG:
	    if my_hitboxID.hbox_num = 6 {
		    //fake burn because it doesnt apply on hitboxes without kb thanks dan !!!!!!!!!!!
		        sound_play(asset_get("sfx_burnapplied"));
				hit_player_obj.burned = true;
				hit_player_obj.burnt_id = other;
				hit_player_obj.burn_timer = 0;
		        hit_player_obj.burned_color = bully_burn_colour;
		} else {
		    sound_stop(asset_get("sfx_burnapplied"));
		    sound_play(asset_get("sfx_burnapplied"));
		    hit_player_obj.burned_color = bully_burn_colour;
		}
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