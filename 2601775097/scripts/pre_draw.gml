// pre-draw

shader_start();
//credit to Ability for helping me out on this!
if (state == PS_RESPAWN || attack == AT_TAUNT && state == PS_ATTACK_GROUND && free == true) draw_sprite(sprite_get("plat_pre"), 0, x, y);
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
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], _img[7], _img[8] * _percent);
	}
    gpu_set_blendmode(bm_normal);
}

if (lightstun) draw_sprite_ext(fx_lightstunned, fx_lightstunned_frame, x, y - (char_height / 2 + 6), 1, 1, fx_lightstunned_rot, c_white, fx_lightstunned_alpha);

//helel skin motion blur
if (get_player_color(player) == 30)
{
	if (state == PS_DOUBLE_JUMP && vsp < 0 || state == PS_DASH_START || fast_falling)
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

gpu_set_blendmode(bm_add);
if (theikos_active || godpower) draw_sprite_ext(sprite_get("theikos_aura"), aura_frame, x, y-28, 1, 1, hsp*4, aura_color, aura_alpha); //theikos aura
gpu_set_blendmode(bm_normal);