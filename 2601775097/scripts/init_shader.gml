//init_shader

var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player); //online player is actually player 0, thanks dan
set_character_color_shading(5, 1.5); //CLOTHBLACK

switch (alt_cur)
{
    case 0: //default
		set_character_color_slot(6, 165, 255, 255); //LIGHT
		set_character_color_slot(7, 61, 113, 224); //FIRE

		set_article_color_slot(6, 165, 255, 255); //LIGHT
		set_article_color_slot(7, 61, 113, 224); //FIRE
        break;
	case 1: //p2 alt light shading amplify + fire reverse
		set_character_color_shading(6, 1.5); //LIGHT
		set_character_color_shading(7, -1); //FIRE
		break;
	case 2: case 3: //venus + liav alt fire color shading amplify
		set_character_color_shading(7, 1.5); //FIRE
		break;
	case 16: // seasonal
		if ("birthboy" in self && birthboy)
		{
		    if ("theikos_type" in self)
			{
				if (theikos_type == 0) set_color_profile_slot(alt_cur, 2, 202, 114, 70); //HAIR
				else set_color_profile_slot(alt_cur, 2, 230, 230, 250); //HAIR
			}
		    set_color_profile_slot(alt_cur, 3, 245, 181, 150); //SKIN
			set_color_profile_slot(alt_cur, 1, 102, 194, 241); //CLOTHWHITE
		    set_color_profile_slot(alt_cur, 4, 62, 101, 185); //CLOTHLIGHTBLUE
		    set_color_profile_slot(alt_cur, 0, 43, 60, 140); //CLOTHDARKBLUE
		    set_color_profile_slot(alt_cur, 5, 33, 43, 139); //CLOTHBLACK
			set_color_profile_slot(alt_cur, 6, 159, 241, 255); //LIGHT
			set_color_profile_slot(alt_cur, 7, 247, 149, 56); //FIRE
		
			line_color = [get_color_profile_slot_r(alt_cur, 7), get_color_profile_slot_g(alt_cur, 7), get_color_profile_slot_b(alt_cur, 7)];
			no_effect_line_color = [0, 0, 0];
		
			//shading tweaks
			set_character_color_shading(5, 1); //CLOTHBLACK
			set_character_color_shading(7, 1.5); //FIRE
		
			//color slot stuff
			set_character_color_slot(6, 159, 241, 255, 1);
			set_character_color_slot(7, 255, 117, 33, 1);
			
			set_article_color_slot(6, 159, 241, 255, 1);
			set_article_color_slot(7, 255, 117, 33, 1);
		}
		set_character_color_shading(7, 1.5); //FIRE
		break;
	case 4: case 11: //roy and ain alts fire amplify
		set_character_color_shading(7, 1.5); //FIRE
		break;
	case 5: case 6: //asra and sahar alt reverse shading
		set_character_color_shading(6, -1.5); //LIGHT
		set_character_color_shading(7, -1.5); //FIRE
		break;
	case 14: //gameboy alt 8-bit shader + outline
		for(i = 0; i < 8; i++) set_character_color_shading(i, 0);
		outline_color = [15, 56, 15];
		set_color_profile_slot_range(1, 150, 10, 12);
		break;
	case 15: //NES alt 8-bit shader + outline
		for(i = 0; i < 6; i++) set_character_color_shading(i, 0);
		set_character_color_shading(6, 2);
		set_character_color_shading(7, 5);
		outline_color = [32, 0, 178];
		set_color_profile_slot_range(1, 150, 10, 12);
		break;
	case 13: case 9: case 12: //abyss, us!pap and childe alt reverse shading for fire
		set_character_color_shading(7, -1.5); //FIRE
		break;
	case 8: //shadow alt fire, light and light blue cloth amplify
		set_character_color_shading(3, 1.5); //CLOTHLIGHTBLUE
		set_character_color_shading(6, 1.5); //LIGHT
		set_character_color_shading(7, 1.5); //FIRE
		break;
	case 10: //okuu reverse fire and light shading
		set_character_color_shading(6, -3); //LIGHT
		set_character_color_shading(7, -1.5); //FIRE
		break;
	case 19: //genesis alt
		set_character_color_shading(1, 0.7); //white
		set_character_color_shading(2, 1.7); //hair
		set_character_color_shading(3, 1.6); //light blue
		set_character_color_shading(5, 2.5); //black
		break;
	case 20: //nero reverse fire and light shading
		set_character_color_shading(6, -2); //LIGHT
		set_character_color_shading(7, -1); //FIRE
		break;
	case 21: case 22: //jurami and baysen alts reverse shading for fire
		set_character_color_shading(7, -1); //FIRE
		break;
	case 24: //splatracer's alt
		set_character_color_shading(3, 1.5); //CLOTHLIGHTBLUE
		set_character_color_shading(6, -3); //LIGHT
		set_character_color_shading(7, 2); //FIRE
		break;
	case 25: //lakers
		set_character_color_shading(0, 1.5); //dark blue
		set_character_color_shading(1, -3.5); //cloth white
		set_character_color_shading(5, -1.5); //black
		set_character_color_shading(6, 2); //holy light
		set_character_color_shading(7, 2); //holy fire
		break;
	case 26: //helel alt shading tweaking and color swapping
		set_character_color_shading(6, 4); //LIGHT
		set_character_color_shading(7, -2); //FIRE

		if (object_index != oPlayer && object_index != oTestPlayer)
		{
			//color scroll shenanigans
			if ("helel_color" not in self) helel_color = 0;
			else
			{
				helel_color += 2;
				if (helel_color >= 255) helel_color = 0;

				var color_rgb = make_color_rgb(255, 0, 0);
				var hue = (color_get_hue(color_rgb)+helel_color) % 255;
				var helel_hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb));

				line_color = [color_get_red(helel_hsv),color_get_green(helel_hsv),color_get_blue(helel_hsv)];
				light_col = make_colour_rgb(color_get_red(helel_hsv),color_get_green(helel_hsv),color_get_blue(helel_hsv));

				set_character_color_slot(6, color_get_red(helel_hsv) ,color_get_green(helel_hsv) ,color_get_blue(helel_hsv)); //LIGHT
				set_character_color_slot(7, color_get_red(helel_hsv)-120 ,color_get_green(helel_hsv)-120 ,color_get_blue(helel_hsv)-120); //FIRE

				set_article_color_slot(6, color_get_red(helel_hsv) ,color_get_green(helel_hsv) ,color_get_blue(helel_hsv)); //LIGHT
				set_article_color_slot(7, color_get_red(helel_hsv)-120 ,color_get_green(helel_hsv)-120 ,color_get_blue(helel_hsv)-120); //FIRE
			}
		}
		break;
	case 18: //gold alt shading tweak
		set_character_color_shading(5, 2); //CLOTHBLACK
		break;
	case 27: //theikos alt hair color changing
		set_character_color_shading(2, 1.5); //hair shading
		break;
	case 28: //player color
		var hud_r = color_get_red(get_player_hud_color(player));
        var hud_g = color_get_green(get_player_hud_color(player));
        var hud_b = color_get_blue(get_player_hud_color(player));

		set_color_profile_slot(alt_cur, 4, floor(hud_r), floor(hud_g), floor(hud_b)); //CLOTHLIGHTBLUE
		set_color_profile_slot(alt_cur, 0, floor(hud_r/2), floor(hud_g/2), floor(hud_b/2)); //CLOTHDARKBLUE
		set_color_profile_slot(alt_cur, 5, floor(hud_r/4), floor(hud_g/4), floor(hud_b/4)); //CLOTHBLACK
		break;
}

if (alt_cur == 27 || "theikos_type" not in self || theikos_type > 0 && (alt_cur == 0 || alt_cur == 28)) user_event(1); //theikos color stuff

if (object_index == asset_get("draw_result_screen")) set_endgame_stuff(); //old portrait setup code lol

if ("od_fx_col_change" in self && od_fx_col_time > 0)
{
	colorO[6*4+0] = lerp(color_get_red(light_col)/255, theikos_light[0], od_fx_col_time/od_fx_col_time_max);
    colorO[6*4+1] = lerp(color_get_green(light_col)/255, theikos_light[1], od_fx_col_time/od_fx_col_time_max);
    colorO[6*4+2] = lerp(color_get_blue(light_col)/255, theikos_light[2], od_fx_col_time/od_fx_col_time_max);
    colorO[7*4+0] = lerp(color_get_red(fire_col)/255, theikos_fire[0], od_fx_col_time/od_fx_col_time_max);
    colorO[7*4+1] = lerp(color_get_green(fire_col)/255, theikos_fire[1], od_fx_col_time/od_fx_col_time_max);
    colorO[7*4+2] = lerp(color_get_blue(fire_col)/255, theikos_fire[2], od_fx_col_time/od_fx_col_time_max);
	
	light_col = make_colour_rgb(theikos_light[0]*255, theikos_light[1]*255, theikos_light[2]*255);
	line_color = [colorO[7*4+0]*255, colorO[7*4+1]*255, colorO[7*4+2]*255];

    static_colorO[6*4+0] = colorO[6*4+0];
    static_colorO[6*4+1] = colorO[6*4+1];
    static_colorO[6*4+2] = colorO[6*4+2];
    static_colorO[7*4+0] = colorO[7*4+0];
    static_colorO[7*4+1] = colorO[7*4+1];
    static_colorO[7*4+2] = colorO[7*4+2];
}

#define set_endgame_stuff
{
	//portrait image index basically
	switch (get_player_color(player))
	{
		default: var cur_pos = 0; break;
		case 14: cur_pos = 1; break;
		case 15: cur_pos = 2; break;
		case 26: cur_pos = 3; break;
		case 27: cur_pos = 4; break;
	}

	//results portrait
	//it seems to have the ability to be a single strip but i don't know if there's a way to access the image index
	set_victory_sidebar(sprite_get("results" + string(cur_pos)));

	//win portrait
	var win_img = "portraits";
	var y_off_w = sprite_get_height(sprite_get(win_img)) / 5 * cur_pos;

	set_victory_portrait(sprite_get(win_img));
	sprite_change_offset(win_img, 0, y_off_w);

	//win music
	if (cur_pos == 1 || cur_pos == 2) set_victory_theme(sound_get("mus_victory_demake"));
	else set_victory_theme(sound_get("mus_victory"));
}