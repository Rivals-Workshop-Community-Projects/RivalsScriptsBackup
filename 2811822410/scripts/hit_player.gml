/*
if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.player_id == id) {

}
*/

//#region Hit SFX Controller
var window_timer_last_frame = (get_window_value(attack,window,AG_WINDOW_LENGTH) - 1);
switch(my_hitboxID.attack){
		//Strong
		case AT_FSTRONG:
		case AT_FTHROW:
			insert_sfx_on_hit(sfx_veg_heavy2,1,1,0.9,true);
			insert_sfx_on_hit(sfx_veg_heavy2,2,1,0.9,true);
		break;
	
		case AT_DSTRONG:
		case AT_DSTRONG_2:
			insert_sfx_on_hit(sfx_veg_heavy2,1,1,1,true);
			insert_sfx_on_hit(sfx_veg_heavy2,2,1,1,true);		
		break;
		
		case AT_USTRONG:
		case AT_USTRONG_2:
			insert_sfx_on_hit(sfx_veg_heavy2,1,1,1.1,true);
		break;
		
		case AT_BAIR:
		case AT_FSTRONG_2:
			insert_sfx_on_hit(sfx_veg_heavy2,1,0.8,1,true);
		break;
		
		case AT_NAIR:
		case  AT_NTHROW:
			insert_sfx_on_hit(sfx_veg_light2,1,0.7,1.2,true);
			insert_sfx_on_hit(sfx_veg_light2,2,0.7,1.4,true);
			insert_sfx_on_hit(sfx_veg_light2,3,0.7,1.4,true);
		break;
		
		case AT_UAIR:
		case AT_USPECIAL_GROUND:
			insert_sfx_on_hit(sfx_veg_heavy2,1,0.8,1.1,true);
		break;
		
		case AT_DAIR:
		case AT_DSPECIAL_AIR:
			insert_sfx_on_hit(sfx_veg_heavy2,1,0.8,1.1,true);
			insert_sfx_on_hit(sfx_veg_heavy2,2,1,0.9,true);
			insert_sfx_on_hit(sfx_veg_heavy2,3,0.8,1.1,true);
		break;
		
		case AT_JAB:
		case AT_NSPECIAL_2:
			insert_sfx_on_hit(sfx_veg_light2,1,0.8,1.1,true);
			insert_sfx_on_hit(sfx_veg_light2,2,0.8,1.2,true);
		break;
		
		case AT_FAIR:
		case AT_FSPECIAL_AIR:
			insert_sfx_on_hit(sfx_veg_heavy2,1,0.8,1.2,true);
		break;
		
		case AT_DTILT:
		case AT_DSPECIAL_2:
			insert_sfx_on_hit(sfx_veg_light2,1,0.6,1,true);
		break;
		
		case AT_FTILT:
		case AT_FSPECIAL_2:
			insert_sfx_on_hit(sfx_veg_light2,1,0.7,0.9,true);
		break;
		
		case AT_UTILT:
		case AT_UTHROW:
			insert_sfx_on_hit(sfx_veg_heavy2,1,0.8,1,true);
			insert_sfx_on_hit(sfx_veg_light2,2,0.7,1,true);
			insert_sfx_on_hit(sfx_veg_light2,3,0.7,1,true);
			insert_sfx_on_hit(sfx_veg_light2,4,0.7,1.1,true);
		break;
		case AT_DATTACK:
		case 48:
			insert_sfx_on_hit(sfx_veg_light2,1,0.8,0.8,true)
		break;
		case AT_USPECIAL:
			insert_sfx_on_hit(sfx_veg_heavy2,1,0.8,0.9,true)
			insert_sfx_on_hit(sfx_veg_light2,2,0.8,1,true)
		
		//Other
		/*case AT_DAIR:
		case AT_DSPECIAL_AIR:
			if (my_hitboxID.hbox_num == 2) {
				sound_play(sfx_veg_heavy2)
			} else {
				sound_play(sfx_veg_light2)
			}*/
		break;
		
		case 40: //Grab
		case 41: //Hold
		case 42: //Pummel
		case 43: //Forward Throw
		case 44: //Down Throw
		case 45: //Back Throw
		case 46: //Up Throw
		break;
		
		//Weak
		default:
			sound_play(sfx_veg_light2)
		break;
		
		
	}
	//#endregion


if (my_hitboxID.attack != AT_PUMMEL) {
	grabbed_obj = -4;
}
if (my_hitboxID.orig_player == player) { 
	switch(my_hitboxID.attack) {
		//Grabs and Throws
		case 40: //Grab
			if (hit_player_obj.state_cat == SC_HITSTUN) {
				grabbed_obj = hit_player_obj;
				djumps = 0;
				if get_player_damage(hit_player_obj.player) < 999 {
					set_player_damage(hit_player_obj.player, get_player_damage(hit_player_obj.player) - 1);
				}
			}

	break;
	} 
	//Hit effect
	if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type ==2) {
		if (my_hitboxID.should_hfx) {
			spawn_hit_fx( hit_player_obj.x, hit_player_obj.y - (hit_player_obj.char_height / 2) , my_hitboxID.hit_effect );
		} else {
			my_hitboxID.should_hfx = true;
		}
		if (rune_follow_hit) {
			leak_proj.rune_follow = hit_player_obj;
		}
	}
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type ==2) {
	if (rune_teleport) {
		hit_player_obj.y = my_hitboxID.y + my_hitboxID.vsp;
		hit_player_obj.x = my_hitboxID.x + my_hitboxID.hsp;
	}
}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1) {
	uspecial_can_turn = true;
}

if (rune_hit_reset) {
	djumps = 0;
	has_airdodge = true;
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_DSPECIAL] = 0;
	move_cooldown[AT_NSPECIAL] = 0;
}


if (temp_level > 0) {
	in_advantage = advantage_time;
}

#define insert_sfx_on_hit(temp_sound_string,temp_hitbox_num,temp_volume,temp_pitch,use_asset_version)
{
	if(my_hitboxID.hbox_num == temp_hitbox_num){
		switch(use_asset_version){
			case 0: // False
				temp_sfx_obj = sound_play(temp_sound_string,false,noone,temp_volume,temp_pitch);
			break;
			case 1: // True
				temp_sfx_obj = sound_play(temp_sound_string,false,noone,temp_volume,temp_pitch);
			break;
			default: // Error
				temp_sfx_obj = noone; 
			break;
		}
		return temp_sfx_obj;
	}
}

