// pre-draw

shader_start();
if (is_attacking)
{
	switch (attack)
	{
		case 2: //intro
			gpu_set_blendmode(bm_add);
			draw_sprite_ext(sprite_get("fx_intro_back"), intro_pillar_fx_frame, x-20*spr_dir, y, intro_alpha*4, 28, 0, c_white, intro_alpha);
			gpu_set_blendmode(bm_normal);
			break;
		case 49: //lord's punishment
        	draw_sprite_stretched_ext(spr_pixel, 0, view_get_xview(), view_get_yview(), view_get_wview()+1, view_get_hview()+1, fire_col, od_bg_alpha*0.2);
			break;
	}
}

//respawn platform
if (state == PS_RESPAWN || attack == AT_TAUNT && state == PS_ATTACK_GROUND && free)
{
    draw_sprite_ext(sprite_get("plat_back"), get_gameplay_time()*bar_plat_speed, x, y, 2, 2, 0, c_white, 1);
}


//lightstunning effect
if (lightstun_active) with (oPlayer) if ("lightstun_type" in self && lightstun_type == 2) with (other)
{
	draw_sprite_ext(sprite_get("fx_lightstunned"), other.lightstun_timer*-0.25, other.x, other.y-other.char_height/2-4, 1, 1, -other.lightstun_timer*5, c_white, 0.6);
}
shader_end();



//trail effect
if (trail_draw_size > 1)
{
	gpu_set_blendmode(bm_add);
	gpu_set_fog(1, (theikos_type > 0) ? fire_col : light_col, 0, 1);
	for (var l = trail_draw_size-1; l > 0; l -= 2-is_accel_trail)
	{
		var pos = (trail_cur_num + l) % trail_total_size;

		draw_sprite_ext(
			trail_pos[pos].sprite,
			trail_pos[pos].subimg,
			floor(trail_pos[pos].x),
			floor(trail_pos[pos].y),
			trail_pos[pos].xscale,
			trail_pos[pos].yscale,
			trail_pos[pos].rot,
			trail_pos[pos].col,
			0.75 * (trail_draw_size - l) / trail_total_size
			);
	}
	gpu_set_fog(0, c_white, 0, 0);
	gpu_set_blendmode(bm_normal);
}


if (lightbuff_active)
{
	var aura_offset = 2;

	gpu_set_fog(1, light_col, 0, 1);
	//set X's and set Y's. also don't draw in the center cuz bar is there
	for (var i_x = -aura_offset; i_x <= aura_offset; i_x += aura_offset) for (var i_y = -aura_offset; i_y <= aura_offset; i_y += aura_offset) if (i_y != 0 && i_x != 0)
	{
		draw_sprite_ext(
			sprite_index,
			image_index,
			x+i_x+draw_x,
			y-i_y+draw_y,
			2*spr_dir,
			2,
			spr_angle,
			c_white,
			lerp(0, 0.75, mp_current/mp_max) //lightbuff_alpha
		);
	}
	gpu_set_fog(0, c_white, 0, 0);
}
