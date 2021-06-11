// Grabbing state
if (wario_grab == true && grab_timer >= 0){
	hit_player_obj.x = x+20*spr_dir;
	hit_player_obj.y = y-50;
	hit_player_obj.spr_dir = spr_dir;
	hit_player_obj.hitstop = 1;
	grab_timer --;
	
	initial_dash_speed  = 3.30;
	dash_speed          = 3.30;
	dash_turn_time      = 6;	
	
	// Moving opponent when turning
	if (state == PS_WALK_TURN || state == PS_DASH_TURN){
		if (state_timer < 3){
			hit_player_obj.x = x-20*spr_dir;
			hit_player_obj.y = y-50;
		}
		if (state_timer == 3){
			hit_player_obj.x = x;
			hit_player_obj.y = y-50;
		}
		if (state_timer > 3){
			hit_player_obj.x = x+20*spr_dir;
			hit_player_obj.y = y-50;
		}
	}
	
	has_walljump = false;
	djumps = 1;
	
	
	if (state == PS_CROUCH){
		state = PS_IDLE;
	}
	
	// Moving opponent when getting ready to launch
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL_2){
		if (window == 1){
			hit_player_obj.x = x-35*spr_dir;
			hit_player_obj.y = y-55;	
		}
		if (window == 2){
			hit_player_obj.x = x-40*spr_dir;
			hit_player_obj.y = y-50;	
		}
		if (window == 3){
			hit_player_obj.x = x+20*spr_dir;
			hit_player_obj.y = y-50;
		}
		
	}
	if(has_hit_player &&  attack != AT_NSPECIAL){
		wario_grab = false;
	}
	
	if (shield_pressed && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
		wario_grab = false;
		move_cooldown[AT_NSPECIAL] = 60;
	}
}

// Grab timer ended
if (grab_timer < 0){
	wario_grab = false;
	hsp -= 5*spr_dir;
	vsp -= 3;
	state = PS_LANDING_LAG;
	djumps = 0;
	grab_timer = 0;
	
	initial_dash_speed  = 5.2;
	dash_speed          = 5.6;
	dash_turn_time      = 10;	
	dash_turn_accel     = 1.5;
}

if (wario_grab == false){
	initial_dash_speed  = 5.2;
	dash_speed          = 5.6;
	dash_turn_time      = 10;	
	dash_turn_accel     = 1.5;
}

if get_player_color(player) = 31 {
hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

color_rgb=make_color_rgb(70, 250, 112); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 31, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
set_color_profile_slot( 31, 2, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();
}
//Inspired by Tomongus's crawl code. Not a 1:1 copy. If you're here then uh, go get Tomongus.
if(state == PS_CROUCH){
    can_move = true;
    if (right_down){
        spr_dir = 1;
        hsp = 1;
        is_crawling = true;          
    }
    if (left_down){
        spr_dir = -1;
        hsp = -1;
        is_crawling = true;  
    }
    if (joy_pad_idle){
        hsp = 0;
        is_crawling = false;
    }
   
}else{
    is_crawling = false;
}

if (introTimer2 < 4) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 15) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.
// if(voice){
// with (oPlayer) {
//   if (id != other.id) {
// 	if ((state == PS_RESPAWN || state == PS_DEAD) && state_timer == 1) {
//         with other{
// 				sorry_voice_sfx =  random_func(0,2,true)
//     			sound_play(sorry_clip[sorry_voice_sfx]);
//     			}
// 			}
// 		}
// 	}
// }

//FS
       with (oPlayer) {
            if (self != other) {
                other.waluigi_target = self;
            }
        }