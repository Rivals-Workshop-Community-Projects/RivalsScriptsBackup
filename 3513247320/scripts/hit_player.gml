switch my_hitboxID.attack{
    case AT_DATTACK:
    if(my_hitboxID.force_flinch == 1 && hit_player_obj.state == PS_HITSTUN_LAND && !free)
    {
        var hsp_value = (point_distance(hit_player_obj.x, 0, x + 30 * spr_dir + hsp * 3, 0) + .5 * hit_player_obj.ground_friction * (8*8))/8; // (#*#))/#, # = number of frames to get to intended position
        hit_player_obj.old_hsp = -hsp_value * hit_player_obj.spr_dir;
    }
    break;
	case AT_FSTRONG:
		if my_hitboxID.hbox_num == 3 my_hitboxID.hashitplayer = true;
	break;
	case AT_BAIR:
		if my_hitboxID.hbox_num < 3 sound_play(asset_get("sfx_icehit_weak2"));
		else sound_play(asset_get("sfx_icehit_medium1"));
	break;
	case AT_DAIR:
		if my_hitboxID.hbox_num == 1 my_hitboxID.hashit = true;
	break;
	case AT_FSPECIAL:
		fspec_damage_reduction++;
		// if my_hitboxID.hbox_num > 1 && my_hitboxID < 4 && !hit_player_obj.clone{
		// 	hit_player_obj.x = lerp(hit_player_obj.x, x + (90 * spr_dir), 1);
		// 	hit_player_obj.y = lerp(hit_player_obj.y, y + vsp, 1);
		// }
		// else if my_hitboxID.hbox_num == 4{
		// 	if (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && was_parried == false && hit_player_obj.clone == false{
		// 		var grabbed = false;
		// 		for (var g = 0; g < array_length(fspec_grab); g++;) if fspec_grab[g] == hit_player_obj grabbed = true;
		// 		if !grabbed fspec_grab[array_length(fspec_grab)] = hit_player_obj;
		// 	}		
		// }
	break;
	case AT_DSPECIAL:
		if(hit_player_obj.state == PS_HITSTUN){
			my_grab_id = hit_player_obj;
			dspec_grab_timer = 60 + get_player_damage(player)/2;
			has_rock = true;
			set_window(4);
		}
	break;
	case AT_DSPECIAL_2:
		if my_hitboxID.hbox_num == 2{
			dspec_rock.hitstop = hit_player_obj.hitpause + 1;
			if(my_hitboxID.kb_angle != 361){
			dspec_rock.old_hsp = 0;
			dspec_rock.old_vsp = - 6;
			} else {
				dspec_rock.old_hsp = -2 * dspec_rock.spr_dir;
				dspec_rock.old_vsp = -5;
			}
			
			dspec_rock.attack_hits[hit_player_obj.player] = false;
		}
	break;
}
#define set_window(_new_window)
window = _new_window;
window_timer = 0;
#define fixed_set_state(state)
{
	set_state(state);
	hurtboxID.sprite_index = free? air_hurtbox_spr:hurtbox_spr;
}
#define fixed_set_attack(attack)
{
	set_attack(attack);
	if free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_AIR_SPRITE);
	else hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}