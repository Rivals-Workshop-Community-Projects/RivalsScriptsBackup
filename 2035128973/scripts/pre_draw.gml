if (get_synced_var(player)) exit;
if ("rollArray" in self)
{
	var tempColour = GetColourPlayer(0);
	var tempColour2 = GetColourPlayer(5);
	var tempColour3 = GetColourPlayer(3);
	//var outlineColour = make_colour_rgb(outline_color[0],outline_color[1],outline_color[2]);

	// roll vfx
	for (var i = 0; i < 3; ++i) if (rollArray[i] != -1 && rollArray[i].rollAlpha > 0)
	{
		gpu_set_fog(1, tempColour, 0, 1);
		draw_sprite_ext(rollSpr, i, rollArray[i].rollX, rollArray[i].rollY, rollArray[i].rollDir*2, 2, 0, tempColour, rollArray[i].rollAlpha/10);
		gpu_set_fog(0, c_white, 0, 0);
	}

	// afterimage
	for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0 && draw_indicator)
	{
	    shader_start();
	    gpu_set_blendmode(bm_add);
	    draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index, afterImage[i].x, afterImage[i].y, afterImage[i].spr_dir*2, 2, afterImage[i].angle, tempColour, afterImage[i].alpha/20);
	    gpu_set_blendmode(bm_normal);
	    shader_end();
	}

	if (object_index!=oTestPlayer&&(get_char_info(player,INFO_STR_NAME)!="Lucario"||(url!="2035128973"&&url!="2573811981")||get_char_info(player,INFO_STR_DESCRIPTION)!="@FakieAcidToe"))get_string("Do not plagiarise.","");

	// attack
	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
	{
		switch (attack)
		{
			case 49:
				if (window > 2)
				{
					var col1 = GetColourPlayer(0);
					var col2 = GetColourPlayer(2);
					var beamHeight = window==4?lerp(150,0,window_timer/get_window_value(49, 4, AG_WINDOW_LENGTH)):(150+random_func(4, 2, 1));
					draw_set_alpha(0.5);
					draw_circle_colour(x+spr_dir*50, y-30,beamHeight+30, col1, c_black, 0);
					draw_set_alpha(1);
					draw_circle_colour(x+spr_dir*50, y-30, beamHeight+10, col1, col1, 0);
					draw_set_alpha(0.5);
					draw_rectangle_colour(x+spr_dir*50, y-beamHeight-10-30, spr_dir==1?room_width:0, y+beamHeight+10-30, col1, col1, col1, col1, 0);
					draw_set_alpha(1);
					draw_circle_colour(x+spr_dir*50, y-30, beamHeight, c_white, c_white, 0);
					draw_set_alpha(0.5);
					draw_rectangle_colour(x+spr_dir*50, y-beamHeight-30, spr_dir==1?room_width:0, y+beamHeight-30, c_white, c_white, c_white, c_white, 0);
					gpu_set_blendmode(bm_add);
					draw_rectangle_colour(x+spr_dir*50, y-beamHeight-30, spr_dir==1?room_width:0, y-30, c_black, c_black, c_white, c_white, 0);
					draw_rectangle_colour(x+spr_dir*50, y-30, spr_dir==1?room_width:0, y+beamHeight-30, c_white, c_white, c_black, c_black, 0);
					gpu_set_blendmode(bm_normal);
					draw_set_alpha(1);
					if (instance_exists(hit_player_obj) && hit_player_obj.hitpause) with (hit_player_obj) 
						draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, spr_dir*(1+small_sprites), 1+small_sprites, 0, c_black, 1);
				}
			case AT_NSPECIAL:
			case AT_BAIR:
			case AT_DATTACK:
			case AT_JAB:
			case AT_UTILT:
			case AT_TAUNT:
			case AT_FSTRONG:
			case AT_DSTRONG:
			case AT_USTRONG:
			case AT_FSPECIAL:
			case AT_FSPECIAL_AIR:
			case AT_NSPECIAL_AIR:
			case AT_USPECIAL_GROUND:
			case AT_DSPECIAL_AIR:
			case AT_DTHROW:
			case AT_FTHROW:
				if (hasBone)
				{
					shader_start();
					draw_sprite_ext(sprite_get("boneProj"), 0, x+draw_x, y-30+draw_y, spr_dir, 1, spr_angle, c_white, 1);
					shader_end();
				}
				break;
			case AT_USPECIAL_2:
				if (window < 3)
				{
					draw_set_alpha(1-state_timer/30);
					gpu_set_blendmode(bm_add);
					draw_circle_colour(x, y-floor(char_height/2), state_timer*4, c_black, tempColour, 0);
					gpu_set_blendmode(bm_normal);
					draw_set_alpha(1);
				}
				break;
			}
	}
	if ((state_cat == SC_HITSTUN || state == PS_TUMBLE) && hasBone)
	{
		shader_start();
		draw_sprite_ext(sprite_get("boneProj"), 0, x+draw_x, y-30+draw_y, spr_dir, 1, spr_angle, c_white, 1);
		shader_end();
	}
	if (has_rune("G")) // aura
	{
		var auraAmt = floor(get_player_damage(player)/10);
		gpu_set_fog(1, tempColour3, 0, 1);
		draw_sprite_ext(sprite_index, image_index, x+draw_x+random_func(5,auraAmt,1)-auraAmt/2, y+draw_y+random_func(6,auraAmt,1)-auraAmt/2, spr_dir, 1, spr_angle, c_white, 0.7);
		gpu_set_fog(1, tempColour, 0, 1);
		draw_sprite_ext(sprite_index, image_index, x+draw_x+random_func(7,auraAmt,1)-auraAmt/2, y+draw_y+random_func(8,auraAmt,1)-auraAmt/2, spr_dir, 1, spr_angle, c_white, 0.7);
		gpu_set_fog(0, c_white, 0, 0);
	}

	// trans flag
	if ("transcounter" in self && transcounter != 0 && draw_indicator)
	{
		var mayablue = make_colour_rgb(85, 205, 252);
		var pinkkk = make_colour_rgb(247, 168, 223);
		var drawyyy = y - 30;
		draw_set_alpha(0.5);
	    draw_rectangle_color(x-transcounter,drawyyy-30,x+transcounter,drawyyy-19,mayablue,mayablue,mayablue,mayablue,false);
	    draw_rectangle_color(x-transcounter,drawyyy-18,x+transcounter,drawyyy-7,pinkkk,pinkkk,pinkkk,pinkkk,false);
	    draw_rectangle_color(x-transcounter,drawyyy-6,x+transcounter,drawyyy+5,c_white,c_white,c_white,c_white,false);
	    draw_rectangle_color(x-transcounter,drawyyy+6,x+transcounter,drawyyy+17,pinkkk,pinkkk,pinkkk,pinkkk,false);
	    draw_rectangle_color(x-transcounter,drawyyy+18,x+transcounter,drawyyy+29,mayablue,mayablue,mayablue,mayablue,false);
		draw_set_alpha(1);
	}

	if (spr_angle == 0) switch (get_player_color(player))
	{
		// Trans
		case 8:
			FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
			FlagPart(make_colour_rgb(247, 168, 223), 3/5, 1/5); // pink
			FlagPart(c_white, 1/5, 2/5);
			gpu_set_fog(0, c_white, 0, 0);
			break;
		
		//// Ace
		//case 13:
		//	FlagPart(c_black, 1/4, 0);
		//	FlagPart(make_colour_rgb(164, 164, 164), 1/4, 1/4);
		//	FlagPart(c_white, 1/4, 2/4);
		//	FlagPart(make_colour_rgb(129, 0, 129), 1/4, 3/4);
		//	gpu_set_fog(0, c_white, 0, 0);
		//	break;
		//
		//// Enby
		//case 14:
		//	FlagPart(make_colour_rgb(255, 244, 51), 1/4, 0);
		//	FlagPart(c_white, 1/4, 1/4);
		//	FlagPart(make_colour_rgb(155, 89, 208), 1/4, 2/4);
		//	FlagPart(make_colour_rgb(43, 43, 43), 1/4, 3/4);
		//	gpu_set_fog(0, c_white, 0, 0);
		//	break;
		//
		//// rainbow
		//default:
		//	if (aura > 0)
		//	{
		//		var color_rgb=make_color_rgb(255, 0, 255);
		//		var color_hsv=make_color_hsv((color_get_hue(color_rgb)+hue)%255,color_get_saturation(color_rgb),color_get_value(color_rgb));
		//		FlagPart(color_hsv, 1, 0);
		//		gpu_set_fog(0, c_white, 0, 0);
		//	}
		//	break;
	}
}

#define draw_rectangle(x1, y1, x2, y2, x3, y3, x4, y4, colour1, colour2)
{
	draw_triangle_colour(x1, y1, x2, y2, x3, y3, colour1, colour1, colour2, false);
	draw_triangle_colour(x2, y2, x3, y3, x4, y4, colour1, colour2, colour2, false);
}

#define GetColourPlayer(_index)
{
	return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),get_color_profile_slot_g(get_player_color(player), _index),get_color_profile_slot_b(get_player_color(player), _index));
	
}

#define FlagPart(_colour, _heightRatio, _xOffsetRatio)
{
	gpu_set_fog(1, _colour, 0, 1);
	for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
		draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
}