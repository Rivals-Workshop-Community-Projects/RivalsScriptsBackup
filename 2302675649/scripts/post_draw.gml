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
				draw_sprite_ext(sprite_get("strongSword"), spriteIndex, x+xPos*spr_dir, y-yPos, spr_dir, 1, rot, c_white, 1);
				shader_end();
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