// pre-draw

shader_start();
//credit to Ability for helping me out on this!
if (state == PS_RESPAWN || attack == AT_TAUNT && state == PS_ATTACK_GROUND && free == true) draw_sprite(plat_pre_sprite, 0, x, y);
//Turns out having a pre-draw not actually draw anything when taunting in the air with a state that should be on the ground means something.

//intro pillar
if (intro_timer < 15 && state == PS_SPAWN && !was_reloaded)
{
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(fx_introlight, intro_pillar_fx_frame, x-20*spr_dir, y, intro_alpha*4, 28, 0, c_white, intro_alpha);
	gpu_set_blendmode(bm_normal);
}

//accel blitz motion blur
if (accelblitz_active)
{
    gpu_set_blendmode(bm_add);
    for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		if (attack == AT_SKILL4 && (window < 5 || window == 5 && window_timer < 2))
		{
			if (window <= 2) 
			{
				cur_dir = spr_dir;
				cur_sprite = sprite_index;
				cur_image = image_index;
			}
			else if (window < 5)
			{
				//makes sure that the afterimages have a set direction at all times
				if (window == 3 && window_timer == 0) last_dir = cur_dir;

				//image setup
				if (!free)
				{
					cur_sprite = sprite_get("dashstart");
					cur_image = 2;
				}
        		else
				{
					if (accel_dir >= 30 && accel_dir < 150)
					{
						cur_sprite = sprite_get("jump");
						cur_image = 0;
					}
					else if (accel_dir >= 210 && accel_dir < 330)
					{
						cur_sprite = sprite_get("jump");
						cur_image = 6;
					}
					else
					{
						cur_sprite = sprite_get("dashstart");
						cur_image = 2;
					}
				}

				//direction setup
				
				if (accel_temp_x > x) cur_dir = 1;
				else if (accel_temp_x < x) cur_dir = -1;
				else cur_dir = last_dir;
			}
			draw_sprite_ext(cur_sprite, cur_image, _img[2], _img[3], cur_dir, _img[5], _img[6], _img[7], _img[8] * _percent);
		}
		else draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], _img[7], _img[8] * _percent);
		
		
		//draw_sprite_ext(sprite/id, subimg/number, x/2, y/3, xscale/4, yscale/5, rot/6, col/7, alpha/8)
	}
    gpu_set_blendmode(bm_normal);
}

if (lightstun) draw_sprite_ext(fx_lightstunned, fx_lightstunned_frame, x, y - (char_height / 2 + 6), 1, 1, fx_lightstunned_rot, c_white, fx_lightstunned_alpha);

//helel skin motion blur
if (helel_alt)
{
	if (state == PS_DOUBLE_JUMP && vsp < 0 || state == PS_DASH_START || fast_falling || state == PS_WAVELAND || state == PS_ROLL_BACKWARD
	|| state == PS_ROLL_FORWARD || state == PS_AIR_DODGE || attack == AT_SKILL2 && (window == 4 || window == 5)
	|| (attack == AT_SKILL1 || attack == AT_SKILL1_AIR) && window == 10 || attack == AT_SKILL6 && window < 6 && window > 3
	|| attack == AT_SKILL9 && window == 5 || attack == AT_SKILL9 && state == PS_IDLE_AIR && prev_state == PS_ATTACK_AIR)
	{
		gpu_set_blendmode(bm_add);
    	for(var m = 0; m < array_length_1d(helel_blur); m++)
		{
			var _img = helel_blur[m];
			var _percent = 1 - (m / array_length_1d(helel_blur));
			draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], _img[7], _img[8] * _percent);
		}
    	gpu_set_blendmode(bm_normal);
	}
	
}
shader_end();


//"guard" aura outline cuz it doesn't have armor
//credit to some random dude on reddit and lukaru
if (polaris_active)
{
	var col_light = 6;
	var aura_offset = 2;

	var light_red = get_color_profile_slot_r(alt_cur, col_light);
	var light_green = get_color_profile_slot_g(alt_cur, col_light);
	var light_blue = get_color_profile_slot_g(alt_cur, col_light);
	var color = make_colour_rgb(light_red, light_green, light_blue);

	gpu_set_fog(1, color, 0, 1);
	//set X's and set Y's
	for (var i_x = -aura_offset; i_x <= aura_offset; i_x += aura_offset) for (var i_y = -aura_offset; i_y <= aura_offset; i_y += aura_offset)
	{  
		//don't draw in the center cuz bar is there
		if (i_y != 0 && i_x != 0) draw_sprite_ext(sprite_index, image_index, x + i_x, y - i_y, 1*spr_dir, 1, spr_angle, c_white, homing_outline_alpha);
	}
	gpu_set_fog(0, c_white, 0, 0);
}


//theikos aura
if ((theikos_active || godpower) && !accel_vulnerability)
{
	gpu_set_blendmode(bm_add);
	if (!is_8bit) draw_sprite_ext(sprite_get("theikos_aura"), aura_frame, x, y-28, 1, 1, hsp*4, aura_color, aura_alpha);
	gpu_set_blendmode(bm_normal);

	if (is_8bit) draw_sprite_ext(sprite_get("theikos_aura"), aura_frame, x, y-28, 1, 1, hsp*4, aura_color, aura_alpha); 
}