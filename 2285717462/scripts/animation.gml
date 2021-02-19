if attacking switch(attack){
	case AT_UAIR:
		if (window < 7 && !(window == 1 && window_timer < window_end / 2)) hud_offset = lerp(hud_offset, 40, 0.5);
		break;
	case AT_DSTRONG:
		var off = 0;
		switch(image_index){
			case 0:
			case 1:
			case 2:
			case 3:
			case 4:
			case 5:
				off = 60;
				break;
			case 6:
			case 7:
				off = -40;
				break;
			case 8:
			case 9:
				off = 30;
				break;
			case 10:
			case 11:
			case 12:
		}
		
		if !playtest hud_offset = lerp(hud_offset, off, 0.5);
		break;
}



if abs(hud_offset) < 1 hud_offset = 0;



// if (state == PS_IDLE && prev_state == PS_DASH_STOP && state_timer < 5){
// 	sprite_index = spr_dashstop;
// 	image_index = 0;
// }

if (state == PS_IDLE_AIR) image_index = max(image_index, 8);

if (state == PS_DASH_STOP || state == PS_DASH_TURN) && state_timer == 0{
	if ("skid_sfx" in self) sound_stop(skid_sfx);
	skid_sfx = sound_play(sfx_sonic_skid, 0, noone, 0.7);
}

if (state == PS_DASH_START) && state_timer == 1 sound_play(sfx_sonic_dash, 0, noone, 0.7);

if (state == PS_FIRST_JUMP || state == PS_WALL_JUMP) && state_timer == 0 jump_sfx = sound_play(sfx_sonic_jump);

// if (state == PS_WAVELAND) && state_timer == 0 && "jump_sfx" in self sound_stop(jump_sfx);



if (attacking && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && window == 1 && strong_charge){
	image_index += (strong_charge % 6 < 3);
}



if sprite_index == spr_fspecial || sprite_index == spr_uspecial || sprite_index == spr_dspecial draw_y = -26;
else{
	draw_y = 0;
	spr_angle = 0;
}



if state == PS_PRATFALL && !was_parried{
	if (vsp >= max_fall / 2){
		var amt = 0.5;
		if down_down{
			vsp = lerp(vsp, fast_fall, amt);
			image_index = 1;
		}
		else{
			vsp = lerp(vsp, max_fall * 0.5, amt);
			image_index = 0;
		}
	}
	else image_index = 0;
}



//Intro anim

if (state == PS_SPAWN){
    var frame_dur = 5;
    var amt_frames = 15;
    var dur = frame_dur * amt_frames;
    var delay = 30;
    var s_t = state_timer - delay + player * 5;
    
    frame_dur = dur / amt_frames;
    
    if (s_t < dur){
        sprite_index = spr_intro;
        image_index = max(lerp(-1, amt_frames, s_t / dur), 0);
        hud_offset = 1000;
    }
    
    if s_t == 0{
    	sound_play(sfx_sonic_ring);
    }
    
    if s_t == frame_dur * 3{
    	sound_play(sfx_sonic_woosh_1);
    }
}

//125