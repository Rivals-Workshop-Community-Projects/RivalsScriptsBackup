// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
	if (usednspec==0 && window == 2){
		vsp = clamp(vsp, -15, -5)	
		usednspec = 1;
	}

	hsp = clamp(hsp, -3, 3)
	//hsp = clamp(hsp, -2, 2)
	//vsp = clamp(vsp, -15, 2)
	can_fast_fall = false;
	
	move_cooldown[AT_NSPECIAL] = 30
}

if (attack == AT_FSPECIAL){
	can_move = false;
	if (window == 1){
		if (window_timer == 1){
			sound_play(sound_get("ding_3"));
			if (fsp_air_track>0){
				fsp_air_track=fsp_air_track-1;
				track_altered = true;
			}
		}
	}
	
	if (window == 2){
		vsp = clamp(vsp, -18, 0)
	}
	
	if (window == 3) {
	   	if (window_timer == 17){
	   		window = 7
	   		window_timer = 0
	   	}
	   	if (special_down) && (window_timer > 6) {
            window = 4;
            window_timer = 0;
        }
	}	
	
	if (window == 5){
		vsp = clamp(vsp, 15, 7)
	}
	
	
	if (!hitpause){
		if (fsp_air_track>0){
			if (window == 2 || window == 5){
				if (window_timer == 1){
					if (free){
						vsp = -4+down_down-up_down
						hsp = 7*spr_dir
					}else{
						hsp = 8.5*spr_dir
					}
				}
			}
		}
	}
	if (window == 7){
		if (!was_parried){
			can_wall_jump = true;
			can_jump = true;
		}
		move_cooldown[AT_FSPECIAL] = 20
	}
}

if (attack == AT_JAB){
	if (has_hit_player){
		if (!was_parried){
			if (window == 3 || window >= 6){
				can_jump = true;
			}
		}
	}
}

if (attack == AT_NAIR){
	if (window == 1){
		if (window_timer == 1){
			nair_did++;
		}
	}
	if (nair_did <= 1){
		if (attack_down){
			if (window == 2){
				gravity_speed = 0.3;
			}else{
				gravity_speed = 0.35;
			}
			grav_altered = true;
		}else{
			gravity_speed = orig_grav;
			grav_altered = false;
		}
	}
	if (nair_did == 2){
		if (attack_down){
			if (window == 2){
				gravity_speed = 0.4;
			}else{
				gravity_speed = 0.45;
			}
			grav_altered = true;
		}else{
			gravity_speed = orig_grav;
			grav_altered = false;
		}
	}
}

if (attack == AT_UAIR){
	if (window==1 && window_timer == 9 ){
		sound_play(asset_get("sfx_zetter_upb_hit"))
	}
	if (window==2 && window_timer == 3 ){
		sound_play(asset_get("sfx_zetter_upb_hit"))
	}
}

if (attack == AT_USTRONG){
	if (window==1){
		switch (window_timer){
			case 4://6
			sound_play(sound_get("hit_medium_3"));
			break;
			case 14://20
			sound_play(asset_get("sfx_watergun_fire"));
			break;
		}
	}
}

if (attack == AT_TAUNT_2){
	if (window==1){
		if (window_timer == 1){
			clear_button_buffer( PC_TAUNT_PRESSED )
		}
		if (taunt_pressed&&down_down){
			window_timer = 0;
			sound_stop(sound_get("wii"))
		}
	}
	if (window==2){
		t2_yes = true;
		iasa_script();
	}
}

if (attack == AT_USPECIAL){
	can_fast_fall = false;
	if (window>1 && window < 10){
		//can_move = false;
	}
	if (!hitpause){
		if (window==2){
			if (window_timer==4){
				sound_play(sound_get("wind_1"));
			}
		}
		if (window==3){
			if (window_timer==6||window_timer==12){
				sound_stop(sound_get("wind_1"));
				sound_play(sound_get("wind_1"));
			}
		}
		if (window==4){
			if (window_timer==6){
				sound_stop(sound_get("wind_1"));
				sound_play(sound_get("wind_1"));
			}
		}
		if (window==7){
			if (runeI){
				if (window_timer==1){
					sound_play(sound_get("wind_2"), false, noone, 1, 1.4);
				}
			}else{
				if (window_timer==5){
					sound_play(sound_get("wind_2"));
				}
			}
		}
	}
	if (window>4){
		can_wall_jump = true;
	}
}

if (attack == AT_DSPECIAL){
	if (window == 1){
		if (window_timer == 1){
			reset_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH);
			reset_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX_FRAME);
			reset_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH);
			if (dsp_air_track>0){
				dsp_air_track=dsp_air_track-1;
				track_altered = true;
			}
		}
	}
	can_move = false;
	if (!hitpause){
	if (dsp_air_track>0){
		if (window < 7){
			vsp = clamp(vsp, -15, 1)
		}
		if (window == 7){
			vsp = clamp(vsp, -15, 3)
		}
		}else{
		if (window < 7){
			vsp = clamp(vsp, -15, 6)
		}
		if (window == 7){
			vsp = clamp(vsp, -15, 6)
		}
	}
	if (window == 7){
		if (!was_parried){
			can_jump = true;
		}
	}
	if (window == 3||window == 5){
		if (window_timer == 1){
			if (right_down){
				dsp_dir = 1;
			}else if (left_down){
				dsp_dir = -1;
			}else{
				dsp_dir = 0;
			}
			if (dsp_dir!=0){
				hsp=10*dsp_dir
			}
			set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 14);
			set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX_FRAME, 13);
			if (has_hit_player){
			set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 9);
			}
		}
	}
	if (window == 4||window == 6){
		if (dsp_dir!=0){
			var tmp_wl = get_window_value(AT_DSPECIAL, window, AG_WINDOW_LENGTH);
			hsp = ease_linear( 10, 0, window_timer, tmp_wl )*dsp_dir
		}
	}
	
	}
}

if (attack == AT_DSTRONG){
	if (window == 3){
		if (window_timer == 8){
			var tv = instance_create(x, y+4, "obj_article1");
			tv.player_id = id;
			tv.player = player;
			tv.spr_dir = spr_dir;
		}
	}
	if (window < 6){
		can_move = false;
	}
}


//Thank you for contacting our law firm about the Nintendo Switch Joy-Con Drift litigation. 
//We are working on putting together a montage of video clips from Nintendo Switch owners 
//such as yourself as a way to give voice to the joy-con drift issues you’ve experienced. 
//This will be helpful to us in responding to Nintendo’s arguments about how this isn’t a 
//real problem or hasn’t caused anyone any inconvenience.


switch(attack){
	case AT_FSTRONG:
	case AT_USTRONG:
	if joycon_drift == "on"{
		if window == 1 && strong_charge > 0 {
			if (joycon_drift_dir == "right"){
					hsp = 6.25
				}
			if (joycon_drift_dir == "left"){
					hsp = -6.25
				}
		}
		if(!hitpause && get_gameplay_time() % 8 == 0 && !hitpause){
	    after_image_timer++;
	    if(after_image_timer == 10) after_image_timer = 0;
	    after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y, spr_dir:spr_dir, alpha:8};
		
		if window > 1{
			after_image_timer = 0
		}	
			
		}
	}
	break;
	
	case AT_NSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
	if (window == 1){
		if (window_timer == 1){
			if (joycon_drift_dir == "right"){
				joycon_drift_dir = "left";
			}
			else{
				joycon_drift_dir = "right";
			}
		}
	}
	break;	
	
	case AT_JAB:
	case AT_FSPECIAL:
	if (window == 1 or window == 4){
		if (window_timer == 1){
			if (joycon_drift_dir == "right"){
				joycon_drift_dir = "left";
			}
			else{
				joycon_drift_dir = "right";
			}
		}
	}	
	break;
	
	case AT_TAUNT_2:
	if joycon_drift == "on" {
		if joycon_drift_dir = "right"{
			hsp = 10;
		}
		if joycon_drift_dir = "left"{
			hsp = -10;
		}
		if(!hitpause && get_gameplay_time() % 8 == 0 && !hitpause){
	    after_image_timer++;
	    if(after_image_timer == 10) after_image_timer = 0;
	    after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y, spr_dir:spr_dir, alpha:8};
		}
	}
	
	case AT_NAIR:
	if joycon_drift == "on" && !hitpause {
		if joycon_drift_dir = "right"{
			if window != 2{
				hsp = 3.5
			}
			else{
				hsp = 7
				vsp = clamp(vsp, -15, 4);
			}
		}
		if joycon_drift_dir = "left"{
			if window != 2{
				hsp = -3.5
			}
			else{
				hsp = -7
				vsp = clamp(vsp, -15, 2);
			}
		}
		if(!hitpause && get_gameplay_time() % 8 == 0 && !hitpause){
	    after_image_timer++;
	    if(after_image_timer == 10) after_image_timer = 0;
	    after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y, spr_dir:spr_dir, alpha:8};
		}
	}
	break;
	
	case AT_FAIR:
	if joycon_drift == "on" && !hitpause {
		if joycon_drift_dir = "right"{
			if window =! 2 and window =! 5{
				hsp = 2
			}

			else{
				vsp = clamp(vsp, -15, 4);
				if spr_dir == 1{
					hsp = 8.5;
					
				}
				else{
					hsp = 6;
					
				}
			}
		}
		if joycon_drift_dir = "left"{
			if window =! 2 and window =! 5{
				hsp = -2
			}

			else{
				vsp = clamp(vsp, -15, 4);
				if spr_dir == -1{
					hsp = -8.5;
				}
				else{
					hsp = -6;
				}
			}
		}
		if(!hitpause && get_gameplay_time() % 8 == 0 && !hitpause){
	    after_image_timer++;
	    if(after_image_timer == 10) after_image_timer = 0;
	    after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y, spr_dir:spr_dir, alpha:8};
		}
	}
	break;
	
	case AT_BAIR:
	if joycon_drift == "on" && !hitpause {
		if joycon_drift_dir = "right"{
			if window < 2 or window > 3{
				hsp = 3
			}
			else{
				if spr_dir == 1{
					hsp = 7;
					vsp = clamp(vsp, -15, 4);
				}
				else{
					hsp = 9;
					vsp = clamp(vsp, -15, 4);
				}
			}
		}
		if joycon_drift_dir = "left"{
			if window < 2 or window > 3{
				hsp = -3
			}
			else{
				if spr_dir == -1{
					hsp = -7;
					vsp = clamp(vsp, -15, 4);
				}
				else{
					hsp = -9;
					vsp = clamp(vsp, -15, 4);
				}
			}
		}
		if(!hitpause && get_gameplay_time() % 8 == 0 && !hitpause){
	    after_image_timer++;
	    if(after_image_timer == 10) after_image_timer = 0;
	    after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y, spr_dir:spr_dir, alpha:8};
		}
	}
	break;
	
	case AT_DAIR:
	if joycon_drift == "on" && !hitpause {
		if joycon_drift_dir = "right"{
			if window != 2 && window != 3{
				hsp = 4
			}
			else{
				hsp = 7.5
				vsp = clamp(vsp, -15, 3);
			}
		}
		if joycon_drift_dir = "left"{
			if window != 2 && window != 3{
				hsp = -3
			}
			else{
				hsp = -7.5
				vsp = clamp(vsp, -15, 3);
			}
		}
		if(!hitpause && get_gameplay_time() % 8 == 0 && !hitpause){
	    after_image_timer++;
	    if(after_image_timer == 10) after_image_timer = 0;
	    after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y, spr_dir:spr_dir, alpha:8};
		}
	}
	break;
	
	case AT_UAIR:
	if joycon_drift == "on" && !hitpause {
		if joycon_drift_dir = "right"{
			if window != 2 && window != 3{
				hsp = 2
			}
			else{
				hsp = 7
				vsp = clamp(vsp, -15, 2);
			}
		}
		if joycon_drift_dir = "left"{
			if window != 2 && window != 3{
				hsp = -2
			}
			else{
				hsp = -7
				vsp = clamp(vsp, -15, 2);
			}
		}
		if(!hitpause && get_gameplay_time() % 8 == 0 && !hitpause){
	    after_image_timer++;
	    if(after_image_timer == 10) after_image_timer = 0;
	    after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y, spr_dir:spr_dir, alpha:8};
		}
	}
	break;
	
	
	case AT_DSTRONG:
	if joycon_drift == "on" {
		if window == 1 && strong_charge > 0 {
			if (joycon_drift_dir == "right"){
					hsp = 5
				}
			if (joycon_drift_dir == "left"){
					hsp = -5
				}
		}
		if(!hitpause && get_gameplay_time() % 8 == 0 && !hitpause){
	    after_image_timer++;
	    if(after_image_timer == 10) after_image_timer = 0;
	    after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y, spr_dir:spr_dir, alpha:8};
		}
		
		if window>=4{
			if joycon_drift_dir = "right"{
				hsp = 5
			}
			if joycon_drift_dir = "left"{
				hsp = -5
			}
			//afterimage instance
			if(!hitpause && get_gameplay_time() % 8 == 0 && !hitpause){
	    	after_image_timer++;
	    	if(after_image_timer == 10) after_image_timer = 0;
	    	after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y, spr_dir:spr_dir, alpha:8};
			
		}
	}}
	
	break;
}



if (state == PS_SPAWN) {
    if (state_timer = 15) {
		if spr_dir = 1 {
			joycon_drift_dir = "right";
		}
		else {
			joycon_drift_dir = "left";
		}
	}
}
  

if (attack==AT_FAIR){
	if (joycon_drift == "on"){
		set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 11);
	}
}   

if (attack==AT_USTRONG){
	if (joycon_drift == "on"){
		if(joycon_drift_dir == "right" && spr_dir == 1){
			set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 70);
			set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 0);
		}
		if(joycon_drift_dir == "right" && spr_dir == -1){
			set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 110);
			set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 0);
		}
		if(joycon_drift_dir == "left" && spr_dir == -1){
			set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 70);
			set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 0);
		}
		if(joycon_drift_dir == "left" && spr_dir == 1){
			set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 110);
			set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 0);
		}
	}
}   

//exernal rune code
if (runeE){
	if (attack == AT_JAB){
		if (window == 6&&window_timer>5||window==8){
			if (attack_down){
				window=1
				window_timer=0
				attack_end()
			}
		}
	}
}

if (runeK){
	if (attack == AT_FSPECIAL){
		if (window == 1){
			if (window_timer == 1){
				window_timer = 11
				sound_play(sound_get("decisive"))
			}
		}
	}
}
if (runeI){
	if (attack == AT_USPECIAL){
		if (window == 3){
			if (window_timer == 1){
				window = 4
				window_timer = 1
			}
		}
	}
}

if (runeM){
	if (attack == AT_USTRONG){
		if (window == 3){
			if (window_timer == 4){
				var tmp_x_off = 20
				var tmp_y_off = 9
				var hb_tmp = create_hitbox( AT_USTRONG, 1, x+(16+tmp_x_off)*spr_dir, y-80+tmp_y_off )
				hb_tmp.hsp = 2*spr_dir
				hb_tmp.vsp = -7.5
				var tmp_x_off = 20
				var tmp_y_off = 9
				var hb_tmp = create_hitbox( AT_USTRONG, 1, x+(16-tmp_x_off)*spr_dir, y-80+tmp_y_off )
				hb_tmp.hsp = -2*spr_dir
				hb_tmp.vsp = -7.5
			}
		}
	}
}

