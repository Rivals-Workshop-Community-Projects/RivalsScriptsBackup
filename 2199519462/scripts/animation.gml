
if state == PS_SPAWN /*or state == PS_IDLE */&& intro  {
var img = 0;
	var landx = -90
	var len = 1;
	if state_timer > player*6 window_timer++;
	switch(window) {
		case 0: len = 28;
		
		img = ease_linear(0,6,window_timer, len) mod 3;
		draw_x = spr_dir * ease_linear(-400,landx,window_timer, len)
		draw_y = ease_cubeIn(-200,0,window_timer, len)
		if window_timer >= len {
			window++;
			window_timer = 0;
			sound_play(asset_get("sfx_land_heavy"));
		} else break;
		/////////////////////////////////////////////////////////
		case 1: len = 10;
		
		img = ease_linear(3,5,window_timer, len)
		draw_x = landx*spr_dir
//		draw_y = -dsin(ease_linear(0,180,window_timer, len))
		if window_timer >= len {
			window++;
			window_timer = 0;
			sound_play(sound_get("boing"));
		} else break;
		/////////////////////////////////////////////////////////
		case 2: len = 35;
		
		img = ease_linear(5,9,window_timer, len)
		draw_x = spr_dir * ease_linear(landx,0,window_timer, len)	
		draw_y = -dsin(ease_linear(180,0,window_timer, len))*60			
		if window_timer >= len {
			window++;
			window_timer = 0;
		} else break;		
		/////////////////////////////////////////////////////////
		case 3: len = 16;
		
		img = ease_linear(9,12,window_timer, len)
		
		if window_timer >= len {
			window++;
			window_timer = 0;
			
		} else break;			
		default: intro = false;
	}
if intro {
sprite_index = sprite_get("intro")
image_index = img;
}
} else intro = false;

if state == PS_TECH_BACKWARD {
	    if (window == 0) image_index = 1 + floor(roll_back_startup_frames * window_timer / 8);
	    if (window == 1) image_index = 1 + roll_back_startup_frames + floor(roll_back_active_frames * window_timer / 12 );
	    if (window == 2) image_index = 1 + roll_back_startup_frames + roll_back_active_frames + floor(roll_back_recovery_frames * window_timer / 14);
}

if state == PS_DASH_START {
		if state_timer == 0 && dashspin != 0 {
			dashspin = -(initial_dash_time-3);
		}
		if dashspin >= 0 dashspin = 3;
		
		if dashspin < 0 {
			sprite_index = sprite_get("dashspin")
		}
}
if dashspin < 0 dashspin++;
if dashspin > 0 dashspin--;

if state == PS_WALL_JUMP {
	if clinging {
		image_index = (state_timer*(0.3-(state_timer*0.001))) mod 4
		if floor(image_index) == 1 && floor(((state_timer-1)*(0.3-((state_timer-1)*0.001))) mod 4) != 1 {
			sound_play(asset_get("sfx_land_light"));

		}
	} else {
		image_index = (wall_jump_timer/walljump_time)*(image_number-wall_frames)+wall_frames
		if wall_jump_timer < 4 image_index = wall_frames-1
	}
}

if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	switch(attack) {
		default: break;
		case AT_FSPECIAL:
			if window == 4 && !hitpause {
				if free {
					image_index = 8 + clamp((vsp*0.1)+0.5, -1, 1)
				} else {
					var old = 8+(animation_time) mod 4
					
					animation_time += 0.18 + (strong_charge/60)*0.25
					
					image_index = 8+(animation_time) mod 4
					if floor(image_index) == 8 && floor(old) == 7 {
						sound_play(asset_get("sfx_land_heavy"))
					}
				}
			} else {animation_time = 0;}

		break;
		case AT_DSTRONG:
			if get_window_value(attack,window,AG_WINDOW_TYPE) == 9 {
			dstrong_frame += 3/get_window_value(attack,window,AG_WINDOW_LENGTH);
			dstrong_frame = (dstrong_frame) mod 6;
			
			if sign(hsp*spr_dir) < 0 {
				dstrong_dir = 12;
			} else if sign(hsp) == 0 {
				dstrong_dir = 6;
			} else {
				dstrong_dir = 0;
			}
			} else dstrong_frame = 0;
		break;
	}
}

if state == PS_FIRST_JUMP && (prev_prev_state == PS_DASH or prev_prev_state == PS_DASH_START) && image_index <= 1 {
	sprite_index = sprite_get("jump_dash")
}
if state == PS_DOUBLE_JUMP && animation_variant == 1 {
	sprite_index = sprite_get("doublejump_back")
}

if state == PS_IDLE && !intro {
	if window == 0 {
		if (state_timer > 200 && floor(image_index mod image_number) == 0) or bake_mode == 1  {
			window = 1;
			state_timer = 0;
		}
	}
	if window == 1 {
		sprite_index = sprite_get("idle2")
		var im = state_timer*idle_anim_speed;
		image_index = im;
		if im >= image_number-idle_anim_speed {window = 0; state_timer = 0;}
	}
}
if state == PS_CROUCH {
	if image_index = 0 or image_index == 4 blep = random_func(0, 4, 1)
	if blep == 1 sprite_index = sprite_get("crouch_blep")

	if image_index == 2 && state_timer < 7 image_index = 1;
}

if state == PS_WALK {
	image_index = state_timer*walk_anim_speed
}

if state == PS_WALK_TURN {
	hap++;
	if hap >= 0 {
		sprite_index = sprite_get("walkturn2");
		state_timer -= 0.3
	}
} else {hap = -6;}



/*
init_shader();
var c = get_player_color(player)
switch(effect) {

case 2:
set_character_color_slot(2, get_color_profile_slot_r(c, 0),  get_color_profile_slot_g(c, 0), get_color_profile_slot_b(c, 0), 1);
break;
default:
set_character_color_slot(2, get_color_profile_slot_r(c, 2),  get_color_profile_slot_g(c, 2), get_color_profile_slot_b(c, 2), 1);
break;
case 1:
set_character_color_slot(2, 255, 253, 253, 1);
break;
}
