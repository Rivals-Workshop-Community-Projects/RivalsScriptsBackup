//animation.gml

if (get_match_setting(SET_PRACTICE) && taunt_pressed && (down_down || up_down) && state != PS_DEAD && state != PS_RESPAWN) //practice mode meter debug
{
	if (down_down && charge_cur > 0) charge_cur -= 100;
	if (up_down && charge_cur < charge_max) charge_cur += 100;
	
	clear_button_buffer(PC_TAUNT_PRESSED);
	set_state(free ? PS_IDLE_AIR : PS_IDLE);
}

//fix weird jittering that can happen when it tries to return to 0
if (abs(hud_offset) < 1) hud_offset = 0;

if (!s_alt && halloween_costume)
{
	sprite_index = sprite_get("nurse_idle");
	image_index = state_timer * idle_anim_speed;
}
if (sprite_index == wait_sprite && !stopped_intro_idle) stopped_intro_idle = true;
if (attack == AT_INTRO && (state == PS_SPAWN && state_timer >= intro_total_time || state == PS_IDLE && !stopped_intro_idle))
{
	fake_img_index = (state_timer - intro_total_time) * idle_anim_speed; //i hate doing this lol
	image_index = fake_img_index;
}

switch (state)
{
	case PS_ROLL_FORWARD: case PS_ROLL_BACKWARD: case PS_TECH_FORWARD: case PS_TECH_BACKWARD:
		sprite_index = sprite_get("roll");
		break;
	case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
		switch (attack)
		{
			case AT_JAB:
				var start_fake_jump = floor(window_end/get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES));
        		if (window == 10 && window_timer >= start_fake_jump)
				{
					draw_y = ease_sineOut(0, -12, window_timer-start_fake_jump, floor((window_end-start_fake_jump)/2));
				}
				else if (window > 10 && draw_y != 0) draw_y = 0;
				break;
			case AT_USTRONG: case AT_FSTRONG: case AT_DSTRONG:
				if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW))
				{
					var max_frame = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES) + get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START) - 1;

					if (image_index + strong_charge/4 < max_frame) image_index += strong_charge/4;
					else image_index = max_frame;
				}
				break;
			case AT_NSPECIAL:
				if (image_index == 4)
				{
					hurtboxID.sprite_index = sprite_get(free ? "nspecial_aim_air_hurt" : "nspecial_aim_hurt");
					sprite_index = sprite_get(free ? "nspecial_aim_air" : "nspecial_aim");
					
					if (!free) //aim sprite calculation
					{
						if (spr_dir) image_index = ceil((nspec_dir-22.5)/45);
						else image_index = ceil((nspec_dir-180-22.5)/45)*spr_dir;
					}
					else //air version has 16 sprites that change based on her speed
					{
						if (spr_dir) image_index = ceil((nspec_dir-22.5)/45) * 2 + (vsp > 3);
						else image_index = ceil((nspec_dir-180-22.5)/45) * spr_dir * 2 + (vsp > 3);
					}
				}
				else hurtboxID.sprite_index = get_attack_value(attack, free ? AG_HURTBOX_AIR_SPRITE : AG_HURTBOX_SPRITE);
				break;
			case AT_FSPECIAL:
				spr_angle = (on_rune && window == 3) ? rune_surface_angle-90 : 0;
				if (window == 13)
				{
					sprite_index = sprite_get("fspecial_swiftjump");
					hurtboxID.sprite_index = sprite_get("fspecial_swiftjump_hurt");
					image_index = lerp(0, 4, window_timer/window_end);

					var end_time = window_end * get_window_value(attack, window, AG_WINDOW_LOOP_TIMES);
					var cur_time = window_timer + window_end * window_loops;
					spr_angle = lerp(-90, -255, cur_time/end_time) * spr_dir;
					draw_y = -32;
				}
				else
				{
					hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
					draw_y = 0;
				}
				break;
			case 2: //intro
				if (window < 5)
				{
					intro_start_offset = -16 * spr_dir;
					draw_x = intro_start_offset;
				}
				if (state_timer <= intro_hair_fade_time)
				{
					colorO[0 + 1 * 4] = lerp(static_colorO[0 + 6 * 4], static_colorO[0 + 1 * 4], state_timer/intro_hair_fade_time);
					colorO[1 + 1 * 4] = lerp(static_colorO[1 + 6 * 4], static_colorO[1 + 1 * 4], state_timer/intro_hair_fade_time);
					colorO[2 + 1 * 4] = lerp(static_colorO[2 + 6 * 4], static_colorO[2 + 1 * 4], state_timer/intro_hair_fade_time);
					colorO[0 + 8 * 4] = lerp(static_colorO[0 + 6 * 4]/2, orig_line[0], state_timer/intro_hair_fade_time);
					colorO[1 + 8 * 4] = lerp(static_colorO[1 + 6 * 4]/2, orig_line[1], state_timer/intro_hair_fade_time);
					colorO[2 + 8 * 4] = lerp(static_colorO[2 + 6 * 4]/2, orig_line[2], state_timer/intro_hair_fade_time);

					//byakuren alt needs to change the transperency of the hair too cuz of the way the mask works
					if (!s_alt && alt_cur == 10) colorO[3 + 1 * 4] = lerp(0.5, 0, state_timer/intro_hair_fade_time);
				}
				if (window > 2) intro_light_size -= 0.07;
				else intro_light_size = 2;

				if (window == 1) draw_y = ease_cubeIn(-24, 0, window_timer, window_end);
				else if (window == 5)
				{
					draw_x = lerp(intro_start_offset, 0, window_timer/window_end);
					//if (window_timer > window_end/2) draw_y = ease_cubeIn(-4, 0, window_timer, window_end);
					//else draw_y = ease_cubeOut(0, -4, window_timer, window_end);
				}
				else draw_y = 0;

				if (window == window_last && window_timer == 0)
				{
					sound_play(asset_get("sfx_land"), false, 0, 0.8, 0.9)
				}
				break;
			case 49: //final smash
				if (spr_angle != 0) spr_angle = 0;
				if (draw_x != 0) draw_x = 0;
				if (draw_y != 0) draw_y = 0;
				break;
		}
		break;
	case PS_WALL_JUMP:
		if (state_timer < 4) image_index = 0;
		else
		{
			if (wall_jump_timer <= 1)
			{
				sprite_index = sprite_get("wallslide");
				if (vsp/max_slide_speed > 1) image_index = image_number-1;
				else image_index = lerp(0, image_number, vsp/max_slide_speed);
			}
			else
			{
				sprite_index = sprite_get(used_wallkick ? "wallkick" : "walljump");
				image_index = lerp((wall_frames + 0.9) * !used_wallkick, image_number, (wall_jump_timer-4)/(walljump_time-4));
			}
		}
		break;
	case PS_AIR_DODGE: //changes the first sprite of the airdodge for wavelanding
		if (!free && image_index == 0)
		{
			sprite_index = sprite_get("jumpstart");
			image_index = 1;
		}
		break;
	case PS_PRATLAND:
		sprite_index = sprite_get("tech");

		//this complicated math allows the player to animate properly when in pratland
		var timer_to_index_math = state_timer / (extended_parry_lag ? clamp(parry_distance * 8.8, 60, 110) : parry_lag);

		if (extended_parry_lag || was_parried) image_index = lerp(0, image_number, timer_to_index_math); //parrystun
		else image_index = lerp(0, image_number, state_timer/prat_land_time); //pratland
		break;
	case PS_PRATFALL:
		//if (pratfall_type == 1) sprite_index = sprite_get("pratfall_uspec");
		image_index = state_timer * pratfall_anim_speed;
		break;
	case PS_TUMBLE: case PS_HITSTUN_LAND:
		hurt_img = 5;
		break;
	case PS_FLASHED: case PS_FROZEN:
		hurt_img = 1;
		break;
	case PS_BURIED:
		hurt_img = 2;
		break;
}

//custom dash stop anim
if (state == PS_DASH_STOP && state_timer == 0) dashstop_time = 0;
if (dashstop_time < dashstop_time_max && (state == PS_IDLE || state == PS_DASH_STOP))
{
	dashstop_time ++;
	sprite_index = sprite_get("dashstop");
	dashstop_frame = lerp(0, image_number-0.99, dashstop_time/dashstop_time_max);
	image_index = dashstop_frame;
}
else dashstop_time = dashstop_time_max;

if (state == PS_DASH_TURN && state_timer >= dash_turn_time-1) reset_dash_anim = true;
if (state == PS_DASH && reset_dash_anim && state_timer > 0)
{
	state_timer = 0;
	image_index = 0;
	reset_dash_anim = false;
}

//sets image_index to hurt_img. this allows us to put all the hurt sprites in one strip
if (state_cat == SC_HITSTUN || state == PS_TUMBLE)
{
	aftimg_active = false;
	
	sprite_index = sprite_get("hurt");
	image_index = hurt_img;

	if (hurt_img == 5 && free) //PS_TUMBLE shenanigans
	{
		sprite_index = sprite_get("hurt_tumble");
		image_index = state_timer * 0.1;
	}

	if (crystalized_damage_remaining > 0 || state == PS_CRYSTALIZED)

	//ranno bubble
	if (bubbled) hurt_img = 1;
}

//motion trail
if (aftimg_active && aftimg_drawn < aftimg_total) aftimg_drawn ++;
else if (!aftimg_active && aftimg_drawn > 0) aftimg_drawn --;
if (aftimg_active)
{
    aftimg[cur_aftimg].spr = sprite_index;
    aftimg[cur_aftimg].img = image_index;
    aftimg[cur_aftimg].xpos = x + draw_x;
    aftimg[cur_aftimg].ypos = y + draw_y;
    aftimg[cur_aftimg].dir = spr_dir;
    aftimg[cur_aftimg].rot = spr_angle;

    cur_aftimg --;
    if (cur_aftimg < 0) cur_aftimg = aftimg_total - 1;
}


//dust effects
if (is_attacking)
{
	switch (attack)
	{
		case AT_JAB:
			spawn_base_dust(x, y, "dash", 0, 0, 4, 0);
			spawn_base_dust(x, y, "dash", 0, 0, 7, 0);
			spawn_base_dust(x + 32 * spr_dir, y, "dash_start", -spr_dir, 0, 7, window_end-1);
			spawn_base_dust(x, y, "dattack", 0, 0, 10, 0);
			spawn_base_dust(x, y, "land", 0, 0, 10, window_end-1);
			spawn_base_dust(x + 32 * spr_dir, y, "dattack", -spr_dir, 0, 10, window_end-1);
			break;
		case AT_UTILT:
			spawn_base_dust(x, y, "walk", 0, 0, 1, 0);
			break
		case AT_FTILT:
			spawn_base_dust(x, y, "dash", 0, 0, 1, 0);
			if (!free) spawn_base_dust(x, y, "walk", 0, 0, 3, 10);
			break;
		case AT_DTILT:
			spawn_base_dust(x + 64 * spr_dir, y, "dash", -spr_dir, 0, 1, window_end-1);
			spawn_base_dust(x - 16 * spr_dir, y, "dattack", 0, 0, 2, 1);
			break;
		case AT_DATTACK:
			if (has_hit) spawn_base_dust(x, y, "djump_small", 0, 0, 5, 0);
			break;
		case AT_USTRONG:
			spawn_base_dust(x + 32 * spr_dir, y, "dash", -spr_dir, 0, 1, 2);
			spawn_base_dust(x - 32 * spr_dir, y, "dash", 0, 0, 1, 6);
			spawn_base_dust(x, y, "jump", 0, 0, 3, window_end-1);
			if (!hitpause && (window == 4 || window == 6) && window_timer == window_end-1)
			{
				var fx = spawn_hit_fx(x, y, window == 4 ? fx_ustrong_smear1 : fx_ustrong_smear2);
				fx.depth = depth - 1;
				fx.hsp = hsp/2;
				fx.vsp = -3;
				fx.grav = 0.15;
			}
			break;
		case AT_FSTRONG:
			spawn_base_dust(x, y, "dash_start", 0, 0, 3, window_end-1);
			spawn_base_dust(x + 64 * spr_dir, y, "dattack", 0, 0, 6, 0);
			if (!hitpause && window_timer == window_end-1)
			{
				if (window == 4)
				{
					var fx = spawn_hit_fx(x, y, fx_fstrong_smear1);
					fx.depth = depth - 1;
					fx.hsp = 1.5 * spr_dir;
					fx.grav = 0.01;
				}
				if (window == 6)
				{
					var fx = spawn_hit_fx(x, y, fx_fstrong_smear2);
					fx.depth = depth - 1;
					fx.hsp = 0.5 * spr_dir;
					fx.vsp = -0.25;
					fx.grav = 0.05;
				}
			}
			break;
		case AT_DSTRONG:
			if (!hitpause && window == 4 && window_timer == window_end-1)
			{
				var fx = spawn_hit_fx(x, y, fx_dstrong_smear);
				fx.depth = depth - 1;
			}
			break;
		case AT_FSPECIAL:
			spawn_base_dust(x, y - 16 * free, free ? "djump" : "dash_start", 0, 60 * -spr_dir * free, 1, 1);
			spawn_base_dust(x + hsp * 4 * spr_dir * (on_rune == noone), y, "land", 0, (rune_surface_angle - 90) * (on_rune != noone), 3, 0);
			spawn_base_dust(x, y - 32, "djump_small", 0, 60 * -spr_dir, 5, 0);
			spawn_base_dust(x + 32 * spr_dir, y, "dattack", 0, 0, 9, 0);

			if (window == 3 && window_timer == 0) white_flash_timer = 10;

			if (window == 12 && window_timer == 0) spawn_base_dust(x, y - vsp, "jump", 1, 0);
			else if ((window == 12 || window == 13) && state_timer % 5 == 0 && vsp < -5) spawn_base_dust(x, y, "djump", 1, 0);
			break;
		case AT_USPECIAL:
			if (window < window_last)
			{
				var fx = spawn_hit_fx(x + (random_func(2, 8, true)-4)*8, y - random_func(3, 8, true)*8, fx_light_follow);
				fx.hsp = hsp/8;
				fx.vsp = vsp/8;
			}
			if (window == 4 && window_timer % floor(window_end/2) == 0)
			{
				var fx = spawn_hit_fx(x, y - 32, fx_uspec_smear);
				fx.depth = depth - 1;
				fx.draw_angle = spr_angle;
			}
			break;
		case AT_DSPECIAL:
			if (window == 2 && state_timer % 2 == 0 && !healing_dspec)
			{
				var fx = spawn_hit_fx(x + (random_func(2, 7, true)-3)*12, y - random_func(3, 4, true)*8 - 16, fx_light_follow);
				fx.vsp = -random_func(4, 4, true) - 2;
				fx.depth = random_func(5, 2, true) == 0 ? depth - 1 : depth + 1;
			}
			break;
		case 2: //intro
			spawn_base_dust(x + draw_x, y, "land", 0, 0, 1, window_end-1);
			spawn_base_dust(x + draw_x, y, "walk", 0, 0, 5, window_end-1);
			break;
	}

	//extra sound effects
	if (!hitpause)
	{
		var time = get_window_value(attack, window, AG_WINDOW_SFX_FRAME)+1;
		switch (attack)
		{
			case AT_UAIR:
				if (get_window_value(attack, window, AG_WINDOW_HAS_SFX) && window_timer == time)
				{
					last_sound_to_stop = sound_play(sound_get("sfx_lightswipe1"), false, 0, 1, window <= 2 ? 0.99 : 1.01);
				}
				break;
			case AT_USTRONG:
				if (window == 3 && window_timer == time)
				{
					last_sound_to_stop = sound_play(sound_get("sfx_lightswipe1"));
					sound_play(sound_get("sfx_wateradd"), false, 0, 0.3, 1.3);
				}
				if (do_ustrong_ex && window == 6 && window_timer == 0) last_sound_to_stop = sound_play(sound_get("sfx_lightswipe2"));
				break;
			case AT_FSTRONG:
				if (window == 3 && window_timer == time)
				{
					last_sound_to_stop = sound_play(sound_get("sfx_lightswipe2"), false, 0, 0.9, 1.1);
					sound_play(sound_get("sfx_wateradd"), false, 0, 0.3, 1.3);
				}
				if (window == 6 && window_timer == 0) last_sound_to_stop = sound_play(sound_get("sfx_lightswipe2"), false, 0, 1, 1.1);
				break;
			case AT_DSTRONG:
				if (window == 3 && window_timer == time)
				{
					last_sound_to_stop = sound_play(sound_get("sfx_lightswipe2"), false, 0, 1, 1.03);
					sound_play(sound_get("sfx_wateradd"), false, 0, 0.3, 1.1);
				}
				break;
		}
	}
}

//wall slide dust
if (state == PS_WALL_JUMP)
{
    if (clinging && state_timer % 6 == 0) spawn_base_dust(x-20*spr_dir, y-char_height/2, "walk", spr_dir, spr_dir ? 270 : 90);
    else if (state_timer > 0 && !clinging && place_meeting(x - 1 * spr_dir, y, asset_get("par_block")) && !spawned_wall_dust)
    {
        if (walljump_hsp == walljump_hsp_norm && state_timer > 12) spawn_base_dust(x-20*spr_dir, y-char_height/2, "land", spr_dir, spr_dir ? 270 : 90);
        else if (walljump_hsp == wallkick_hsp) spawn_base_dust(x, y - 32, "djump_small", spr_dir, 0);
        spawned_wall_dust = true;
    }
}



//written by supersonic, modified by bar-kun
#define spawn_base_dust
{
    // spawn_base_dust(x, y, name)
    // spawn_base_dust(x, y, name, ?dir, ?angle, ?window, ?window_timer)

    // This function spawns base cast dusts. Names can be found below.
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
    var dir = argument_count > 3 ? argument[3] : 0;
    var angle = argument_count > 4 ? argument[4] : 0;
    var win = argument_count > 5 ? argument[5] : -10;
    var win_time = argument_count > 6 ? argument[6] : 0;

    if (!hitpause && (win > 0 && win == window && win_time == window_timer || win == -10) ) //spawns it whenever we want for 1 frame
    {
        switch (name) {
            default: 
            case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
            case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
            case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
            case "doublejump": 
            case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
            case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
            case "land": dlen = 24; dfx = 0; dfg = 2620; break;
            case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
            case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
            //
            //bar-kun additions (note: idk how fg_sprite work)
            //
            case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
            case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
            case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
            case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
            case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
            case "doublejump_small": 
            case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
        }
        var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), dlen);
        newdust.x = floor(x);
        newdust.y = floor(y);
        newdust.dust_fx = dfx; //set the fx id
        if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite

        newdust.dust_color = dust_color; //set the dust color

        if (dir != 0) newdust.spr_dir = dir; //set the spr_dir, if dir is 0 it will take the player's spr_dir
        else newdust.spr_dir = spr_dir;

        newdust.draw_angle = angle; //sets the angle of the dust sprite

        if (is_attacking && attack == AT_INTRO) newdust.depth = -7; //THERE IS AN EXCEPTION FOR THE INTRO TO SPAWN IT IN FRONT OF VENUS
        return newdust;
    }
}