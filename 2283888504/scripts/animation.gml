if phone_attacking switch(attack){
    case AT_UTILT:
        var low = 0;
        var high = 30;
        switch(window){
            case 1:
                if window_timer > 4 hud_offset = ease_quadIn(low, high, window_timer - 4, get_window_value(attack, window, AG_WINDOW_LENGTH) - 4);
                break;
            case 2:
                hud_offset = high;
                break;
            case 3:
                var min_time = 8;
                if window_timer <= min_time hud_offset = high;
                break;
        }
        break;
    case AT_USTRONG:
        var low = 0;
        var high = 50;
        switch(window){
            case 2:
                if window_timer > 4 hud_offset = ease_quadIn(low, high, window_timer - 4, get_window_value(attack, window, AG_WINDOW_LENGTH) - 4);
                break;
            case 3:
                hud_offset = high;
                break;
            case 4:
                var min_time = 8;
                if window_timer <= min_time hud_offset = high;
                break;
        }
        break;
}



//Intro anim

if (state == PS_SPAWN){
    var frame_dur = 6;
    var amt_frames = 10;
    var dur = frame_dur * amt_frames;
    var delay = 30;
    var s_t = state_timer - delay + player * 5;
    
    visible = s_t >= frame_dur;
    
    if (s_t < dur){
        sprite_index = sprite_get("intro");
        image_index = max(lerp(-1, amt_frames, s_t / dur), 0);
    }
    else if (s_t == dur){
        image_index = 0;
    }
    
    if (s_t == frame_dur * 5){
    	spawn_hit_fx(x, y, vfx_chord_flourish);
    	
    	note_sfx = sfx_guitar_note;
		note_not = [1, 3, 5];   //Note(s) to play in the key; use array for multiple; starts at 1 (so that fifths = 5, etc)
		note_key = 0;   //Key; 0 = A
		note_sca = 1;   //Choose the scale; 0 chromatic, 1 major, 2 minor
		note_oct = -1;   //Octave
		note_vol = 1;   //Volume
    	user_event(1);
    }
}

// if taunt_down{ state = PS_SPAWN; state_timer = 0;}

//125



if (prev_state == PS_ATTACK_AIR && state == PS_IDLE_AIR && attack == AT_NAIR && image_index == 4) image_index++;



if (phone_attacking && attack == AT_USPECIAL && image_index == clamp(image_index, 4, 7)){
	//sprite_index = asset_get("empty_sprite");
}



//Handle certain looping animations

if (state == PS_IDLE && prev_state == PS_WALK && !state_timer){
    state_timer = 30;
}
if (state == PS_DASH_TURN){
    do_turn_thing = true;
}
if (state == PS_DASH && prev_state == PS_DASH_TURN && do_turn_thing){
    do_turn_thing = false;
    state_timer = 0;
}

if (sprite_index == spr_idle){
    var frames = 8;
    var frame_dur = 6;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}
if (sprite_index == spr_walk){
	var speed_ratio = walk_speed / chord_objs[0].walk_speed;
    var frames = 8;
    var frame_dur = 5 / speed_ratio;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}
if (sprite_index == spr_dash){
	var speed_ratio = dash_speed / chord_objs[0].dash_speed;
    var frames = 8;
    var frame_dur = 4 / speed_ratio;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}
if (sprite_index == spr_crouch && !(prev_state == PS_ATTACK_GROUND && attack == AT_DTILT) && image_index < 11){
    if (state_timer < 16){
        image_index = floor(state_timer / 5);
    }
}



//FStrong

if (phone_attacking && attack == AT_FSTRONG && window == 2 && strong_charge){
	image_index = (strong_charge % 6 < 3) ? 3 : 4;
}



if (state == PS_WAVELAND){
	//image_index = clamp(image_index, 0, 1);
}