user_event(13);  

    if get_player_color( player ) == 25 || get_player_color( player ) == 24 || get_player_color( player ) == 23 && attack == AT_TAUNT{
    if (taunt_pressed || taunt_down) && (object_index == oTestPlayer || !joy_pad_idle){
	attack = AT_TAUNT_2;
    }
	}

if nspecial_grabbed_player != noone
{
	if(nspecial_prevangleturn != spr_dir){
		attack_end();
		
		switch attack
		{
			//Down throw
			case AT_DAIR:
			case AT_DTILT:
			case AT_DSPECIAL:
			case AT_DSTRONG:
				attack = AT_DTHROW;
			break;
				
			//Up throw
			case AT_UAIR:
			case AT_UTILT:
			case AT_USPECIAL:
			case AT_USTRONG:
				attack = AT_UTHROW;
			break;
			
			//Forward/Back throw
			default:
				var usebthrow = false;
				
				if (left_down - right_down == -spr_dir) && (left_down - right_down != 0)
					usebthrow = true;
				
				if (usebthrow){
					spr_dir = -spr_dir;
					attack = AT_EXTRA_1;
				}
				else
					attack = AT_FTHROW;
			break;
		}
	}
	else{
		attack_end();
		
		//attack_end();
		switch attack
		{
			//Forward throw
			case AT_FTILT:
			case AT_FSTRONG:
			case AT_FAIR:
			case AT_FSPECIAL:
			case AT_JAB:
			case AT_NSPECIAL:
			case AT_DATTACK:
			case AT_NAIR:
				attack = AT_FTHROW;
			break;
				
			//Down throw
			case AT_DAIR:
			case AT_DTILT:
			case AT_DSPECIAL:
			case AT_DSTRONG:
				attack = AT_DTHROW;
			break;
				
			//Up throw
			case AT_UAIR:
			case AT_UTILT:
			case AT_USPECIAL:
			case AT_USTRONG:
				attack = AT_UTHROW;
			break;
			
			//Back throw
			case AT_BAIR:
				attack = AT_EXTRA_1;
			break;
		}
	}
}