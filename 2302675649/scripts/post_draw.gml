if ("rollArray" in self)
{
	var tempColour = make_colour_rgb(get_color_profile_slot_r(get_player_color( player ), 0),get_color_profile_slot_g(get_player_color( player ), 0),get_color_profile_slot_b(get_player_color( player ), 0));
	var outlineColour = make_colour_rgb(outline_color[0],outline_color[1],outline_color[2]);
	
	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
	{
		switch (attack)
		{
			case AT_NTHROW:
				shader_start();
				var lerpAmount = min(window_timer/6,1);
				var spriteIndex = floor(window==1?min(state_timer/6,3):window==4?2-window_timer/get_window_value(AT_NTHROW, window, AG_WINDOW_LENGTH):4);
				var xPos = floor(window==1?lerp(50, 2, lerpAmount):window==4?lerp(2, 50, lerpAmount):2);
				var yPos = floor(window==1?lerp(24, 30, lerpAmount):window==4?lerp(30, 24, lerpAmount):30);
				var rot = floor(window==1?lerp(0, FlipRotDir(strongAng), lerpAmount):window==4?lerp(FlipRotDir(strongAng), 0, lerpAmount):FlipRotDir(strongAng));
				var offset = window<=2?lerp(0, -30, strong_charge/60):window==3?lerp(20, 0, window_timer/get_window_value(AT_NTHROW, window, AG_WINDOW_LENGTH)):0;
				draw_sprite_ext(sprite_get("strongSword"), spriteIndex, x+xPos*spr_dir+lengthdir_x(offset, FlipRotDir(rot)), y-yPos+lengthdir_y(offset, FlipRotDir(rot)), spr_dir*2, 2, rot, c_white, 1);
				shader_end();
				break;
			case 49:
				if (window == 3)
				{
					shader_start();
					if (window_timer < 20)
					{
						// cry about it
					}
					else if (window_timer < 30)
					{
						draw_set_alpha((window_timer-20)/10);
						draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
						draw_set_alpha(1);
					}
					else
					{
						draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
						if (window_timer > 50 && window_timer <= 100)
						{
							for (var i = 0; i < 9; ++i)
								draw_sprite_ext(sprite_get("plat"), 0, i*192-(window_timer*8)%64*spr_dir, room_height/2+64, 4, 4, 0, c_white, (window_timer-50)/20);
							draw_rectangle_color(0,room_height/2+128,room_width,room_height,c_black,c_black,c_black,c_black,false);
							with (hit_player_obj)
							{
								shader_start();
								draw_sprite_ext(get_char_info(player,INFO_ICON), real(url)<100?real(url)-1%sprite_get_number(get_char_info(player,INFO_ICON)):0, other.spr_dir==1?1450-other.window_timer*8:room_width-1450+other.window_timer*8, room_height/2, 4, 4, 0, c_white, (other.window_timer-50)/20);
								shader_end();
							}
							shader_start();
							draw_sprite_ext(sprite_get("finalRun"), (window_timer/8)%2, spr_dir==1?500:room_width-500, room_height/2, 4*spr_dir, 4, 0, c_white, (window_timer-50)/20);
						}
						else if (window_timer > 100)
						{
							for (var i = 0; i < 9; ++i)
								draw_sprite_ext(sprite_get("plat"), 0, i*192+24, room_height/2+64, 4, 4, 0, c_white, 1);
							draw_rectangle_color(0,room_height/2+128,room_width,room_height,c_black,c_black,c_black,c_black,false);
							if (window_timer < 120)
							{
								var slash = 16*(window_timer-100)/20;
								draw_rectangle_color(0,room_height/2+16+slash,room_width,room_height/2+48-slash,c_white,c_white,c_white,c_white,false);
							}
							with (hit_player_obj)
							{
								shader_start();
								draw_sprite_ext(get_char_info(player,INFO_ICON), real(url)<100?real(url)-1%sprite_get_number(get_char_info(player,INFO_ICON)):0, (other.spr_dir==1?650:room_width-650)+(floor(sin(other.window_timer)/4)*4-4)*other.spr_dir, room_height/2, 4, 4, 0, c_white, 1);
								shader_end();
							}
							shader_start();
							draw_sprite_ext(sprite_get("finalIdle"), (window_timer/16)%2, (spr_dir==1?850:room_width-850)+(window_timer<110?floor((window_timer-100)/4)*8:20)*spr_dir, room_height/2, 4*spr_dir, 4, 0, c_white, 1);
						}
					}
					shader_end();
				}
				break;
		}
	}

	// thonk
	if (thonkObj != -1 && thonkObj.alpha > 0)
	{
		draw_sprite_ext(sprite_get("thonk"), 0, thonkObj.x, thonkObj.y+thonkObj.alpha*4, 2, 2, 0, c_white, thonkObj.alpha/10);
	}
	
	// DSpec cooldown
	if (draw_indicator && move_cooldown[AT_DSPECIAL])
	{
		var fadeFrames = 6;
		var offset = clamp(abs(dspecCoolMax-move_cooldown[AT_DSPECIAL])-(dspecCoolMax-fadeFrames), 0, fadeFrames);
		draw_set_alpha(1-offset/fadeFrames);
		var col = get_player_color(player)==5?make_colour_rgb(get_color_profile_slot_r(5, 2), get_color_profile_slot_g(5, 2), get_color_profile_slot_b(5, 2)):make_colour_rgb(255*(move_cooldown[AT_DSPECIAL]/dspecCoolMax),255*((dspecCoolMax-move_cooldown[AT_DSPECIAL])/dspecCoolMax),0);
		var col2 = get_player_color(player)==5?make_colour_rgb(get_color_profile_slot_r(5, 4), get_color_profile_slot_g(5, 4), get_color_profile_slot_b(5, 4)):make_colour_rgb(128*(move_cooldown[AT_DSPECIAL]/dspecCoolMax),128*((dspecCoolMax-move_cooldown[AT_DSPECIAL])/dspecCoolMax),128);
		draw_rectangle_color(x-16,y+10+offset,x+11-floor(27*move_cooldown[AT_DSPECIAL]/dspecCoolMax/2)*2,y+15+offset,col,col,col,col,false);
		draw_rectangle_color(x-16,y+16+offset,x+11-floor(27*move_cooldown[AT_DSPECIAL]/dspecCoolMax/2)*2,y+21+offset,col2,col2,col2,col2,false);
		shader_start();
		draw_sprite_ext(sprite_get("battery"), 0, x, y+offset, 2, 2, 0, c_white, 1-offset/fadeFrames);
		shader_end();
		draw_set_alpha(1);
	}
}

#define FlipRotDir(_rot)
{
	if (spr_dir == 1)
	{
		if (_rot>180)
			return _rot-360;
		else
			return _rot;
	}
	else
	{
		if (_rot>0)
			return _rot-180;
		else
			return _rot+180;
	}
}