switch(state){
	case PS_CROUCH:
	    crouch_spr = sprite_index; //this should technically account for skin handler in most cases lol
	    if !ccrouch_playing {
	        ccrouch_playing = true;
	        ccrouch_phase = 0;
	        ccrouch_timer = 0;
	        ccrouch_percent = 0;
	    }
		break;
	case PS_AIR_DODGE:
		if state_timer == 0{
			air_dodge_spr = random_func(0, 3, true);
		}
		switch(air_dodge_spr){
			case 0:	// Shrug
				sprite_index = sprite_get("airdodge");
				break;
			case 1:	// Bleeeh
				sprite_index = sprite_get("airdodge_bleh");
				break;
			case 2: // Yawn
				sprite_index = sprite_get("airdodge_yawn");
				break;
		}
		break;
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
    	ccrouch_playing = false;
        switch(attack){
        	case AT_USPECIAL_GROUND:
        		if window == 2{
        			// ExW will clown on me but i don't fucking know code so :,)
        			switch(window_timer){
        				case 0:
        				case 1:
        				case 2:
        				case 12:
        				case 13:
        				case 14:
        				case 24:
        					image_index = 0;
        					break;
        				case 3:
        				case 4:
        				case 5:
        				case 15:
        				case 16:
        				case 17:
        					image_index = 1;
        					break;
        				case 6:
        				case 7:
        				case 8:
        				case 18:
        				case 19:
        				case 20:
        					image_index = 2;
        					break;
        				case 9:
        				case 10:
        				case 11:
        				case 21:
        				case 22:
        				case 23:
        					image_index = 3;
        					break;
        			}
        		}
        		break;
			case AT_FSPECIAL:
				if window == 4{
					if abs(vsp) < 2{
						image_index = 8;
					}
					else if vsp > 0 || !free{
						image_index = 7;
					}
				}
				break;
        }
        break;
}
if state != PS_CROUCH{
	ccrouch_playing = false;
}

#region	// Crouch Animation - Code by Supersonic
if ccrouch_playing {
    var duration
    switch (ccrouch_phase) {
        case 0: 
            duration = crouch_start_time;
            ccrouch_percent = clamp(ccrouch_timer/duration,0,1)
            image_index = lerp(0,crouch_startup_frames,ccrouch_percent)
            if ccrouch_percent == 1 { // to loop
                ccrouch_phase = 1;
                ccrouch_timer = 0;
            }else if !down_down { // to uncrouch
                ccrouch_timer = floor(crouch_end_time * (1-ccrouch_percent));
                ccrouch_phase = 2;
            }
            break;
        case 1:
            image_index = crouch_startup_frames + ( (ccrouch_timer) * crouch_anim_speed % crouch_active_frames )
            if !down_down {
                ccrouch_timer = 0;
                ccrouch_phase = 2;
            }
            break;
        case 2: // uncrouch
            duration = crouch_end_time+1; // the + 1 is so the frame time is accurate due to how i stop it
            ccrouch_percent = clamp(ccrouch_timer/duration,0,1)
            if !down_down && ccrouch_percent == 1 { // finish crouching. interrupting it here 
                ccrouch_playing = false;
                break;
            }
            sprite_index = crouch_spr; // this is the only part of crouch that needs the sprite to be set to crouch lol
            var start = crouch_startup_frames+crouch_active_frames;
            image_index = lerp(start, start+crouch_recovery_frames, ccrouch_percent)
            if down_down { // recrouch
                ccrouch_timer = floor(crouch_start_time * (1-ccrouch_percent))
                ccrouch_phase = 0;
            }
            break;
    }
    ccrouch_timer++;
}
#endregion