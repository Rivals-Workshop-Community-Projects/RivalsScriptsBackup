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
		
		if ("theikos_type" in self && theikos_type > 0)
		{
			do_theikos_colors();

			set_character_color_slot(6, 255, 246, 207); //LIGHT
			set_character_color_slot(7, 240, 205, 110); //FIRE

			set_article_color_slot(6, 255, 246, 207); //LIGHT
			set_article_color_slot(7, 240, 205, 110); //FIRE
		}
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
			set_color_profile_slot(alt_cur, 1, 102, 194, 241); //CLOTHWHITE
		    set_color_profile_slot(alt_cur, 2, 202, 114, 70); //HAIR
		    set_color_profile_slot(alt_cur, 3, 245, 181, 150); //SKIN
		    set_color_profile_slot(alt_cur, 4, 62, 101, 185); //CLOTHLIGHTBLUE
		    set_color_profile_slot(alt_cur, 0, 43, 60, 140); //CLOTHDARKBLUE
		    set_color_profile_slot(alt_cur, 5, 33, 43, 139); //CLOTHBLACK
			set_color_profile_slot(alt_cur, 6, 159, 241, 255); //LIGHT
			set_color_profile_slot(alt_cur, 7, 247, 149, 56); //FIRE
		
			line_color = [get_color_profile_slot_r(alt_cur, 7), get_color_profile_slot_g(alt_cur, 7), get_color_profile_slot_b(alt_cur, 7)]
		
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
	case 19: //nero reverse fire and light shading
		set_character_color_shading(6, -2); //LIGHT
		set_character_color_shading(7, -1); //FIRE
		break;
	case 20: case 21: //jurami and baysen alts reverse shading for fire
		set_character_color_shading(7, -1); //FIRE
		break;
	case 23: //splatracer's alt
		set_character_color_shading(3, 1.5); //CLOTHLIGHTBLUE
		set_character_color_shading(6, -3); //LIGHT
		set_character_color_shading(7, 2); //FIRE
		break;
	case 25: //helel alt shading tweaking and color swapping
		set_character_color_shading(6, 4); //LIGHT
		set_character_color_shading(7, -2); //FIRE

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
		break;
	case 18: //gold alt shading tweak
		set_character_color_shading(5, 2); //CLOTHBLACK
		break;
	case 26: //theikos alt hair color changing
		do_theikos_colors();
		break;
}

/* moved this all into the switch statement for optimization sake

//if (alt_cur == 14 || alt_cur == 15) set_color_profile_slot_range(1, 150, 10, 12);

//super secret alt that appears only once a year :)
if (alt_cur == 16 && "birthboy" in self && birthboy)
{
	set_color_profile_slot(alt_cur, 1, 102, 194, 241); //CLOTHWHITE
    set_color_profile_slot(alt_cur, 2, 202, 114, 70); //HAIR
    set_color_profile_slot(alt_cur, 3, 245, 181, 150); //SKIN
    set_color_profile_slot(alt_cur, 4, 62, 101, 185); //CLOTHLIGHTBLUE
    set_color_profile_slot(alt_cur, 0, 43, 60, 140); //CLOTHDARKBLUE
    set_color_profile_slot(alt_cur, 5, 33, 43, 139); //CLOTHBLACK
	set_color_profile_slot(alt_cur, 6, 159, 241, 255); //LIGHT
	set_color_profile_slot(alt_cur, 7, 247, 149, 56); //FIRE

	line_color = [get_color_profile_slot_r(alt_cur, 7), get_color_profile_slot_g(alt_cur, 7), get_color_profile_slot_b(alt_cur, 7)]

	//shading tweaks
	set_character_color_shading(5, 1); //CLOTHBLACK
	set_character_color_shading(7, 1.5); //FIRE

	//color slot stuff
	set_character_color_slot(6, 159, 241, 255, 1);
	set_character_color_slot(7, 255, 117, 33, 1);
	
	set_article_color_slot(6, 159, 241, 255, 1);
	set_article_color_slot(7, 255, 117, 33, 1);
}
*/

if (object_index == asset_get("draw_result_screen")) set_endgame_stuff();

#define do_theikos_colors
{
	var color_time_max = 30;
	if ("color_time" not in self)
	{
		color_time = 0;
		color_increase = true;
	}

	if (color_increase) color_time ++;
	else color_time --;
	
	if (color_time >= color_time_max || color_time <= 0) color_increase = !color_increase;

	var t_r = merge_color(70, 97, color_time/color_time_max)
	var t_g = merge_color(129, 174, color_time/color_time_max);
	var t_b = merge_color(195, 219, color_time/color_time_max);

	set_character_color_slot(2, floor(t_r), floor(t_g), floor(t_b), 1);
}
#define set_endgame_stuff
{
	//portrait image index basically
	switch (get_player_color(player))
	{
		default: var cur_pos = 0; break;
		case 14: cur_pos = 1; break;
		case 15: cur_pos = 2; break;
		case 25: cur_pos = 3; break;
		case 26: cur_pos = 4; break;
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