//update

if !free || state == PS_WALL_JUMP && state_timer == 1 {
	move_cooldown[AT_USPECIAL] = 0;
}

//Check if the firemen are out
var FiremenThereAre = false;

with(asset_get("obj_article1")){
    if(player_id == other.id){
        FiremenThereAre = true;
    }
}

if FiremenThereAre {
   	firemenOut = true;
} else { firemenOut = false; 
}

if nspecialProj > 3 {
	nspecialProj = 0;
}


//Sound effects
switch (state)
{
    case PS_CROUCH:
		if state_timer == 1 {
			sound_play(sound_get("beep9"));	
		}
    break;


    case PS_WALK:
		if state_timer mod 40 == 0 {
			sound_play(sound_get("beep7"), false, noone, .5, 1);	
		}
		if state_timer mod 40 == 20 {
			sound_play(sound_get("beep7"), false, noone, .5, .9);	
		}
    break;
    
	
    case PS_DASH:
		if state_timer mod 20 == 0 {
			sound_play(sound_get("beep7"), false, noone, .5, 1);	
		}
		if state_timer mod 20 == 10 {
			sound_play(sound_get("beep7"), false, noone, .5, 1.1);	
		}
    break;

    case PS_DASH_START:
		if state_timer == 1 {
			sound_play(sound_get("beep7"), false, noone, .5, 1.1);	
		}
    break;
	
    case PS_FIRST_JUMP:
		if state_timer == 1 {
			sound_play(sound_get("beep15"), false, noone, .5, 0.75);	
		}
    break;
	
    case PS_DOUBLE_JUMP:
		if state_timer == 1 {
			sound_play(sound_get("beep15"), false, noone, .5, 0.85);	
		}
    break;	
	
    case PS_WALL_JUMP:
		if state_timer == 1 {
			sound_play(sound_get("beep15"), false, noone, .5, 0.65);	
		}
    break;
}


//Roll thing
if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD) && 18 >= state_timer {
	if state_timer == 3 || state_timer == 8 || state_timer == 13 || state_timer == 17 { 
		hsp = -35*spr_dir;
		sound_play(sound_get("beep8"), false, noone, .5, 1);	
	} else {
		hsp = 0;
	}
}

if (state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD) && 21 >= state_timer {
	if state_timer == 8 || state_timer == 12 || state_timer == 16 || state_timer == 20 { 
		hsp = -40*spr_dir;
		sound_play(sound_get("beep8"), false, noone, .5, 1.1);	
	} else {
		hsp = 0;
	}
}