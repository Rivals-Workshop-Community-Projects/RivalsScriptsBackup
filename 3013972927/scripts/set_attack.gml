///#args attack
//  ^ this line up here makes gmedit not freak out

//set_attack.gml
//this script runs at on the first frame of an attack, sort of like an init.gml but for attack_update.gml

/*
switch (attack)
{
        case AT_JAB:
           // sound_play(sound_get("chai_jab_beat_3"));
        	if(is_onBeat)
        	{
        	 // sound_play(sound_get("chai_perfect_beat"));
        	 sound_play(beat_hit_sfx[1],0,0,.2);
    	    }
    	break;
    	
    	case AT_FTILT:
    		if(is_onBeat)
        	{
        	  sound_play(beat_hit_sfx[0],0,0,.2);
    	    }
    	break;
    	
    	case AT_NAIR:
    	    if(is_onBeat)
        	{
        	  sound_play(beat_hit_sfx[3],0,0,.2);
    	    }
    	break;
    
}
*/

nspec_dir_arr = [90];
uspec_angle = 0;

if (attack == AT_TAUNT && down_down) 
	{
		attack = AT_TAUNT_2;
		if(window_timer = 0) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
		{
		sound_play(sound_get("chai_partner_select_01"));	
		if(assist_index < 2)
			{
			assist_index++;
			}
				 else
					{
					assist_index = 0;
					}
		}
	}
	
	if (attack == AT_TAUNT && left_down && get_match_setting(SET_PRACTICE)) 
	{
		if(tut_sound == true)
		{
			tut_sound = false;
			sound_play(sound_get("chai_tut_bell"),0,0,.4);
		}
			else {
				tut_sound = true;
				sound_play(sound_get("chai_tut_bell"),0,0,.4);
			}
	}
	
	if (attack == AT_TAUNT && right_down) 
	{
		if(bpm_toggle == true)
		{
			bpm_toggle = false;
			sound_play(sound_get("chai_tut_bell"),0,0,.4);
		}
			else {
				bpm_toggle = true;
				sound_play(sound_get("chai_tut_bell"),0,0,.4);
			}
	}

if (attack == AT_DSPECIAL)
{
    if(instance_exists(assist_call))
		{
            window = 1;
        }
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion