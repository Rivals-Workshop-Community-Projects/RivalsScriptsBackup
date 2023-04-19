if ("rollArray" in self)
{
	// attacks
	if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	{
		switch (attack)
		{
			case AT_TAUNT_2:
				var colDansen = [c_red, c_lime, c_blue, c_orange, c_fuchsia, c_yellow, c_aqua][round((get_gameplay_time()/29))%7];
				draw_set_alpha(min(state_timer*0.01, 0.2));
				draw_rectangle_color(0,0,room_width,room_height,colDansen,colDansen,colDansen,colDansen,false);
				draw_set_alpha(1);
				break;
			case AT_FAIR:
				if (image_index == 3) 
				{
					shader_start();
					draw_sprite_ext(sprite_get("sweetspot"), 0, x+spr_dir*60, y-32, 2, 2, 0, c_white, 1);
					shader_end();
				}
				break;
			case AT_FTILT:
				if (image_index == 2)
				{
					shader_start();
					draw_sprite_ext(sprite_get("sweetspot"), 0, x+spr_dir*80, y-24, 2, 2, 0, c_white, 1);
					shader_end();
				}
				break;
			case AT_NSPECIAL:
				var tempCol = GetColourPlayer(0);
				if (get_player_color(player)==21)
				{
				    var color_rgb1=make_color_rgb(255, 255, 128);
					tempCol = make_color_hsv((color_get_hue(color_rgb1)+hue)%255,color_get_saturation(color_rgb1),color_get_value(color_rgb1));
				}
				var tempCol2 = GetColourPlayer(5);
				var opacity = 1;
				if (window == 1) opacity = window_timer/get_window_value(AT_NSPECIAL, window, AG_WINDOW_LENGTH);
				else if (window == 4 || window == 8 || window == 9) opacity = 1-window_timer/get_window_value(AT_NSPECIAL, window, AG_WINDOW_LENGTH);
				else if (window == 5) opacity = 0;
				var boxScale = (1-opacity)*2;

				draw_set_alpha(opacity);
				draw_rectangle_color(x-50+boxScale,y+6+boxScale,x+50-boxScale,y+34-boxScale,tempCol2,tempCol2,tempCol2,tempCol2,false);
				draw_rectangle_color(x-48+boxScale,y+8+boxScale,x+48-boxScale,y+32-boxScale,c_black,c_black,c_black,c_black,false);
				draw_rectangle_color(x-48+boxScale,y+4+boxScale,x-40-boxScale,y+36-boxScale,tempCol,tempCol,tempCol,tempCol,false);
				draw_rectangle_color(x-46+boxScale,y+6+boxScale,x-42-boxScale,y+34-boxScale,c_black,c_black,c_black,c_black,false);
				draw_set_alpha(1);

				if (window == 2 || window == 3 || window == 6 || window == 9)
				{
					var offset = round((115-nspecMeter*2)/2)*2;
					var scale = 0;
					if (window == 3 || window == 6 || window == 9)
					{
						if (window != 9) scale = (window_timer/4);
						draw_set_alpha(1-window_timer/12);
					}
					var col = (window == 6)?c_yellow:c_white
					draw_rectangle_color(x-46+offset-scale,y+6-scale*2,x-42+offset+scale,y+34+scale*2,col,col,col,col,false);

					if (window == 2 || window == 9)
					{
						gpu_set_blendmode(bm_add);
						draw_rectangle_color(x-41+offset,y+6,x-33+offset,y+34,c_white,c_black,c_black,c_white,false);
						gpu_set_blendmode(bm_normal);
					}
				}
				draw_set_alpha(1);
				break;
		}
	}
	
	// projectiles
	var snowflake = sprite_get("snowflake");
	shader_start();
	with (pHitBox) if (player_id == other)
	{
		if (attack == AT_NSPECIAL)
		{
			if (hbox_num == 2)
			{
				shader_end();
				draw_set_alpha((hitbox_timer-32)/length*0.5);
				draw_circle_colour(x, y, 80, c_white, c_white, 0);
				draw_set_alpha(1);
				with(other) shader_start();
			}
			else if (hbox_num == 3) for (var i = 0; i < 3; ++i)
			{
				var ang = -spr_dir*(i*120+hitbox_timer*8);
				draw_sprite_ext(snowflake, 0, x+lengthdir_x(32, ang), y+lengthdir_y(32, ang), -2, 2, -spr_dir*hitbox_timer*4, c_white, 0.5-cos(hitbox_timer/3));
			}
			else if (hbox_num == 4) for (var i = 0; i < 6; ++i)
			{
				var dist = 32+hitbox_timer*3;
				var ang = -spr_dir*(i*60+hitbox_timer*4);
				draw_sprite_ext(snowflake, 0, x+lengthdir_x(dist, ang), y+lengthdir_y(dist, ang), -2, 2, -spr_dir*hitbox_timer*4, c_white, 0.5-cos(hitbox_timer/4));
			}
		}
	}

	// fspec meter
	if (draw_indicator && fspecMeter.opacity>0)
	{
		var tempCol = GetColourPlayer(4);
		var tempCol2 = GetColourPlayer(1);
		var width = 80;
		draw_set_alpha(fspecMeter.opacity);
		draw_rectangle_color(x-width/2-2,y-char_height-30,x+width/2+2,y-char_height-25,c_black,c_black,c_black,c_black,false);
		draw_rectangle_color(x-width/2,y-char_height-28,x-width/2+lerp(0,width,min(fspecMeter.charge,70)/fspecMeter.chargeMax)-1,y-char_height-27,tempCol,tempCol,tempCol,tempCol,false);
		if (fspecMeter.charge>70)
			draw_rectangle_color(x-width/2+lerp(0,width,70/fspecMeter.chargeMax),y-char_height-28,x-width/2+lerp(0,width,fspecMeter.charge/fspecMeter.chargeMax),y-char_height-27,tempCol2,tempCol2,tempCol2,tempCol2,false);
		draw_set_alpha(1);
	}
	shader_end();
}

#define GetColourPlayer(_index)
{
	return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),get_color_profile_slot_g(get_player_color(player), _index),get_color_profile_slot_b(get_player_color(player), _index));
}