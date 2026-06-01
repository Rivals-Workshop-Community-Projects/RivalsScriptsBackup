switch my_hitboxID.attack {
    case AT_FSPECIAL:
        if my_hitboxID.hbox_num == 1{
        	window = 3;
		    window_timer = 0;
		    old_vsp = -8;
		    old_hsp /= 1.4
        }
    break;
}


if !instance_exists(jake_obj) exit
jake_obj.vertical_attack = false

var arr = array_find_index(jake_obj.grab_opps, hit_player_obj) 

if arr != -1 {
	jake_obj.grab_opps[arr] = noone
}

var do_not_prime = false

switch my_hitboxID.attack {
	case AT_UAIR:
		if my_hitboxID.hbox_num < 4 {
			do_not_prime = true
		}
	break;
	case AT_NSPECIAL:
		if my_hitboxID.hbox_num == 1 { 
			sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1, 1)
			sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1, 1.5)
		}
		else {
			sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.6, 1.3)
		}
	break;
	case AT_NSPECIAL_2:
		if my_hitboxID.hbox_num == 1 {
			do_not_prime = true
			array_push(nspecial_grabbed_opps, hit_player_obj)
		}
		else {
			jake_obj.vertical_attack = true
		}
	break;
    case AT_FSTRONG:
        if !instance_exists(jake_obj) and my_hitboxID.hb_num == 1 {
            hit_player_obj.should_make_shockwave = false
            hit_player_obj.activated_kill_effect = false
        }
    break;
    case AT_EXTRA_1:
        jake_obj.hitstop = ceil(get_hitstop_formula(get_player_damage(hit_player_obj.player), my_hitboxID.hbox_num, my_hitboxID.hitpause, my_hitboxID.hitpause_growth, 0));

		
        switch my_hitboxID.hbox_num {
            case 1:
                jake_obj.vsp = -2
                jake_obj.hsp *= -0.7
            break;
            case 2:
    			array_push(jake_obj.grab_opps, hit_player_obj)
    			
    			with jake_obj {
    				stretch_position = {x: other.hit_player_obj.x, y: other.hit_player_obj.y}
    				vsp = -2
    				hsp = 0
    			}
    		break;
        }
    break;
}


if do_not_prime or hit_player_obj.clone exit
with jake_obj {
    hit_player_obj = other.hit_player_obj
    primed = true
}