//
//css draw
//Trying something different for CSS draw to learn
//more of GML dialect like Switch and For statements

// idk how you do this shit man


//Timer for Fading out text
image_alpha = max(image_alpha - 0.1, 0);
image_speed = 0;

display = image_alpha * 10;

// Variables for positioning of visuals
var temp_x = x + 12;
var temp_y = y + 140;
var alts = 26;

var color = get_player_color(player);
var name = " ";

var ColorPrev = [0, 0, 0];
var ColorNext = [0, 0, 0];

var soundtime = 0;

//path_scale = 0;
//path_position = 0;

//switch (path_position){
//	case 0:
//		var cPage = 1;
//	break;
//	case 1:
//		var cPage = 2;
//	break;
//}

/*
if "something" not in self and color == 0{
	sound_play(sound_get("sfx_charge1"));
	print_debug("TEST")
	something = 0;
}*/

var charuuid = string(sprite_get("idle"));
if ("css_char" not in self || css_char != charuuid) {
    css_char = charuuid;
    sound_play(sound_get("sfx_charge1"));
}

// Updating image_alpha when a new color is selected
if (color <= 16){
    if (color != image_index){
    	image_alpha = 1; //Set to 3 to make it take a long time for the text to fade
    	sound_stop(asset_get("mfx_change_color"));
    	sound_stop(sound_get("CSS_select"));
    	sound_play(sound_get("CSS_select"), false, 0);
    	soundtime++;
    }
}

if (color >= 17){
    if (color != image_index + 17){
    	image_alpha = 1; //Set to 3 to make it take a long time for the text to fade
    	sound_stop(asset_get("mfx_change_color"));
    	sound_stop(sound_get("CSS_select"));
    	sound_play(sound_get("CSS_select"), false, 0);
    	soundtime++
    }
    if color == 24 and soundtime == 1{
    	sound_stop(sound_get("CSS_select"));
    	sound_stop(sound_get("timestop"));
    	sound_play(sound_get("timestop"), false, 0);
    }
}

image_index = color;

// USES JACKET COLOR FOR THE RGB

//switch(cPage) {
//	case 1:
		switch(color) {
				case 0:
			name = " 1: Eirlys";
			var position = 0;
			ColorPrev = make_color_rgb(20, 120, 0 );
			ColorNext = make_color_rgb(163, 185, 196 );
			ColorNextNext = make_color_rgb(222, 44, 29);
			if (path_position == 0 && path_scale == 0){
				path_position = 1;
			}
				break;

				case 1:
			name = " 2: Everest";
			var position = 1;
			ColorPrev = make_color_rgb(53, 58, 157);
			ColorNext = make_color_rgb(222, 44, 29);
			ColorNextNext = make_color_rgb(137, 137, 87);
			if (path_position == 1 && path_scale == 1){
				path_position = 2;
			}
				break;

				case 2:
			name = " 3: Yukiko";
			var position = 2;
			ColorPrev = make_color_rgb(163, 185, 196 );
			ColorNext = make_color_rgb(137, 137, 87);
			ColorNextNext = make_color_rgb(199, 215, 248 );
			if (path_position == 2 && path_scale == 0){
				path_position = 3;
			}
				break;

				case 3:
			name = " 4: Emerald";
			var position = 3;
			ColorPrev = make_color_rgb(222, 44, 29);
			ColorNext = make_color_rgb(199, 215, 248  );
			ColorNextNext = make_color_rgb(167, 83, 132);
			if (path_position == 3 && path_scale == 0){
				path_position = 4;
			}
				break;

				case 4:
			name = " 5: Weiss";
			var position = 4;
			ColorPrev = make_color_rgb(137, 137, 87);
			ColorNext = make_color_rgb(167, 83, 132);
			ColorNextNext = make_color_rgb(48, 98, 48);
			if (path_position == 4 && path_scale == 0){
				path_position = 5;
			}
			    break;

				case 5:
			name = " 6: Pomme";
			var position = 5;
			ColorPrev = make_color_rgb(199, 215, 248);
			ColorNext = make_color_rgb(48, 98, 48);
			ColorNextNext = make_color_rgb(86, 84, 146);
			if (path_position == 5 && path_scale == 0){
				path_position = 6;
			}
			    break;

				case 6:
			name = " 7: Gameboy";
			var position = 6;
			ColorPrev = make_color_rgb(167, 83, 132);
			ColorNext = make_color_rgb(86, 84, 146);
			ColorNextNext = make_color_rgb(255,255,255);
			if (path_position == 6 && path_scale == 0){
				path_position = 7;
			}
			    break;

				case 7:
			name = " 8: Abyss";
			var position = 7;
			ColorPrev = make_color_rgb(48, 98, 48);
			ColorNext = make_color_rgb(255,255,255);
			ColorNextNext = make_color_rgb(242, 232, 221);
			if (path_position == 7 && path_scale == 0){
				path_position = 8;
			}
			    break;

				case 8:
			name = " 9: Seasonal";
			var position = 8;
			ColorPrev = make_color_rgb(86, 84, 146);
			ColorNext = make_color_rgb(242, 232, 221);
			ColorNextNext = make_color_rgb(247, 160, 168);
			if (path_position == 8 && path_scale == 0){
				path_position = 9;
			}
			    break;

				case 9:
			name = " 10: Neo Politon";
			var position = 9;
			ColorPrev = make_color_rgb(255,255,255);
			ColorNext = make_color_rgb(247, 160, 168);
			ColorNextNext = make_color_rgb(254, 253, 254);
			if (path_position == 9 && path_scale == 0){
				path_position = 10;
			}
			    break;

				case 10:
			name = " 11: Peach";
			var position = 10;
			ColorPrev = make_color_rgb(242, 232, 221);
			ColorNext = make_color_rgb(254, 253, 254);
			ColorNextNext = make_color_rgb(199, 162, 117 );
			if (path_position == 10 && path_scale == 0){
				path_position = 11;
			}
			    break;

				case 11:
			name = " 12: Dahlia";
			var position = 11;
			ColorPrev = make_color_rgb(247, 160, 168);
			ColorNext = make_color_rgb(199, 162, 117 );
			ColorNextNext = make_color_rgb(174, 193, 198);
			if (path_position == 11 && path_scale == 0){
				path_position = 12;
			}
			    break;

				case 12:
			name = " 13: Millia";
			var position = 12;
			ColorPrev = make_color_rgb(254, 253, 254);
			ColorNext = make_color_rgb(174, 193, 198);
			ColorNextNext = make_color_rgb(75, 77, 90);
			if (path_position == 12 && path_scale == 0){
				path_position = 13;
			}
				break;

				case 13:
			name = " 14: Hatsune Miku";
			var position = 13;
			ColorPrev = make_color_rgb(199, 162, 117 );
			ColorNext = make_color_rgb(75, 77, 90);
			ColorNextNext = make_color_rgb(133, 104, 187);
			if (path_position == 13 && path_scale == 0){
				path_position = 14;
			}
				break;

				case 14:
			name = " 15: Robin";
			var position = 14;
			ColorPrev = make_color_rgb(174, 193, 198);
			ColorNext = make_color_rgb(133, 104, 187);
			ColorNextNext = make_color_rgb(211, 98, 164);
			if (path_position == 14 && path_scale == 0){
				path_position = 15;
			}
				break;

				case 15:
			name = " 16: Hat Kid";
			var position = 15;
			ColorPrev = make_color_rgb(275, 77, 90);
			ColorNext = make_color_rgb(211, 98, 164);
			ColorNextNext = make_color_rgb(32, 98, 238);
			if (path_position == 15 && path_scale == 0){
				path_position = 16;
			}
				break;

				case 16:
			name = " 17: Lesbian Pride";
			var position = 16;
			ColorPrev = make_color_rgb(133, 104, 187);
			ColorNext = make_color_rgb(32, 98, 238);
			ColorNextNext = make_color_rgb(227, 156, 41);
			if (path_position == 16 && path_scale == 0){
				path_position = 17;
			}
			    break;

				case 17:
			name = " 18: Cirno";
			var position = 17;
			ColorPrev = make_color_rgb(211, 98, 164);
			ColorNext = make_color_rgb(227, 156, 41);
			ColorNextNext = make_color_rgb(235, 201, 201 );
			if (path_position == 17 && path_scale == 0){
				path_position = 18;
			}
			    break;

				case 18:
			name = " 19: Golden";
			var position = 18;
			ColorPrev = make_color_rgb(32, 98, 238);
			ColorNext = make_color_rgb(235, 201, 201 );
			ColorNextNext = make_color_rgb(42, 38, 49);
			if (path_position == 18 && path_scale == 0){
				path_position = 19;
			}
			    break;

				case 19:
			name = " 20: Maribelle";
			var position = 19;
			ColorPrev = make_color_rgb(227, 156, 41);
			ColorNext = make_color_rgb(42, 38, 49 );
			ColorNextNext = make_color_rgb(73, 57, 58 );
			if (path_position == 19 && path_scale == 0){
				path_position = 20;
			}
			    break;

				case 20:
			name = " 21: Beatrice";
			var position = 20;
			ColorPrev = make_color_rgb(235, 201, 201);
			ColorNext = make_color_rgb(255, 83, 124 );
			ColorNextNext = make_color_rgb(204, 179, 189);
			if (path_position == 21 && path_scale == 0){
				path_position = 22;
			}
			    break;

				case 21:
			name = " 22: Sweetheart";
			var position = 21;
			ColorPrev = make_color_rgb(73, 57, 58);
			ColorNext = make_color_rgb(204, 179, 189 );
			ColorNextNext = make_color_rgb(253, 250, 253);
			if (path_position == 22 && path_scale == 0){
				path_position = 23;
			}
			    break;

				case 22:
			name = " 23: Kaede";
			var position = 22;
			ColorPrev = make_color_rgb(255, 83, 124);
			ColorNext = make_color_rgb(253, 250, 253 );
			ColorNextNext = make_color_rgb(191, 54, 93);
			if (path_position == 23 && path_scale == 0){
				path_position = 24;
			}
			    break;

				case 23:
			name = " 24: Hilda";
			var position = 23;
			ColorPrev = make_color_rgb(204, 179, 189);
			ColorNext = make_color_rgb(191, 54, 93 );
			ColorNextNext = make_color_rgb(255, 220, 158);
			if (path_position == 24 && path_scale == 0){
				path_position = 25;
			}
				break;

				case 24:
			name = " 25: Elice";
			var position = 24;
			ColorPrev = make_color_rgb(253, 250, 253);
			ColorNext = make_color_rgb(255, 220, 158 );
			ColorNextNext = make_color_rgb(169, 169, 169);
			if (path_position == 25 && path_scale == 0){
				path_position = 26;
			}
			    break;

				case 25:
			name = " 26: Nia";
			var position = 25;
			ColorPrev = make_color_rgb(191, 54, 93);
			ColorNext = make_color_rgb(169, 169, 169 );
			ColorNextNext = make_color_rgb(180, 34, 36);
			if (path_position == 26 && path_scale == 0){
				path_position = 27;
			}
			    break;

				case 26:
			name = " 27: Okayu";
			var position = 26;
			ColorPrev = make_color_rgb(255, 220, 158);
			ColorNext = make_color_rgb(180, 34, 36 );
			ColorNextNext = make_color_rgb(191, 10, 48);
			if (path_position == 27 && path_scale == 0){
				path_position = 28;
			}
			    break;

				case 27:
			name = " 28: Genesis";
			var position = 27;
			ColorPrev = make_color_rgb(235, 201, 201);
			ColorNext = make_color_rgb(191, 10, 48 );
			ColorNextNext = make_color_rgb(20, 120, 0);
			if (path_position == 20 && path_scale == 0){
				path_position = 21;
			}
			    break;

				case 28:
			name = " 29: Heatwave";
			var position = 28;
			ColorPrev = make_color_rgb(180, 34, 36);
			ColorNext = make_color_rgb(20, 120, 0 );
			ColorNextNext = make_color_rgb(53, 58, 157);
			if (path_position == 28 && path_scale == 0){
				path_position = 0;
			}
			    break;
			    
				case 29:
			name = " 30: TAG";
			var position = 29;
			ColorPrev = make_color_rgb(191, 10, 48);
			ColorNext = make_color_rgb(53, 58, 157 );
			ColorNextNext = make_color_rgb(163, 185, 196);
			if (path_position == 29 && path_scale == 0){
				path_position = 0;
			}
			    break;
		}
	//break;
//}

var css_y = y + 94;
var css_prevc_x = x + 12;   // previous
var css_cc_x = x + 50;      // current
var css_nc_x = x + 88;      // next
var css_nnc_x = x + 126;     // next next

if (image_alpha == 0){
	// The Selected Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, css_cc_x, css_y, 2, 2, 0, -1, 1);
	draw_sprite_ext(sprite_get("CSSicon"), 0, css_cc_x, css_y, 2, 2, 0, -1, 1);

	// The Previous Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, css_prevc_x, css_y, 2, 2, 0, -1, 0.6);
	draw_sprite_ext(sprite_get("CSSicon"), 2, css_prevc_x, css_y, 2, 2, 0, -1, 1);
	draw_sprite_ext(sprite_get("CSSicon"), 2, css_prevc_x, css_y, 2, 2, 0, ColorPrev, 0.6);

	// The Next Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, css_nc_x, css_y, 2, 2, 0, -1, 0.6);
	draw_sprite_ext(sprite_get("CSSicon"), 2, css_nc_x, css_y, 2, 2, 0, -1, 1);
	draw_sprite_ext(sprite_get("CSSicon"), 2, css_nc_x, css_y, 2, 2, 0, ColorNext, 0.6);

	// The NextNext Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, css_nnc_x, css_y, 2, 2, 0, -1, .4);
	draw_sprite_ext(sprite_get("CSSicon"), 2, css_nnc_x, css_y, 2, 2, 0, -1, 1);
	draw_sprite_ext(sprite_get("CSSicon"), 2, css_nnc_x, css_y, 2, 2, 0, ColorNextNext, .4);
}

if (image_alpha != 0 && position == color){
	// The Selected Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, css_cc_x - display, css_y, 2, 2, 0, -1, 1 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 0, css_cc_x - display, css_y, 2, 2, 0, -1, 1 - image_alpha);

	// The Previous Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, css_prevc_x - display, css_y, 2, 2, 0, -1, .6 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, css_prevc_x - display, css_y, 2, 2, 0, ColorPrev, .6 - image_alpha);

	// The Next Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, css_nc_x - display, css_y, 2, 2, 0, -1, .6 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, css_nc_x - display, css_y, 2, 2, 0, ColorNext, .6 - image_alpha);

	// The NextNext Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, css_nnc_x - display, css_y, 2, 2, 0, -1, .4 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, css_nnc_x - display, css_y, 2, 2, 0, ColorNextNext, .4 - image_alpha);
}

if (image_alpha != 0 && position == color){
	// The Selected Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, css_cc_x + display, css_y, 2, 2, 0, -1, 1.6 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 0, css_cc_x + display, css_y, 2, 2, 0, -1, 1.6 - image_alpha);

	// The Previous Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, css_prevc_x + display, css_y, 2, 2, 0, -1, .6 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, css_prevc_x + display, css_y, 2, 2, 0, ColorPrev, .6 - image_alpha);

	// The Next Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, css_nc_x + display, css_y, 2, 2, 0, -1, .6 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, css_nc_x + display, css_y, 2, 2, 0, ColorNext, .6 - image_alpha);

	// The NextNext Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, css_nnc_x + display, css_y, 2, 2, 0, -1, .4 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, css_nnc_x + display, css_y, 2, 2, 0, ColorNextNext, .4 - image_alpha);
}

// Initial Name	+ Rectangles
//if (image_alpha > 0){

	draw_set_font(asset_get("fName"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

//black border
	draw_text_color(temp_x + 4, temp_y - 8, "Alt" + name, c_black, c_black, c_black, c_black, 1);
	draw_text_color(temp_x + 4, temp_y - 4, "Alt" + name, c_black, c_black, c_black, c_black, 1);
	draw_text_color(temp_x + 2, temp_y - 6, "Alt" + name, c_black, c_black, c_black, c_black, 1);
	draw_text_color(temp_x + 2, temp_y - 6, "Alt" + name, c_black, c_black, c_black, c_black, 1);
	draw_text_color(temp_x + 6, temp_y - 6, "Alt" + name, c_black, c_black, c_black, c_black, 1);
	draw_text_color(temp_x + 6, temp_y - 6, "Alt" + name, c_black, c_black, c_black, c_black, 1);
	draw_text_color(temp_x + 2, temp_y - 8, "Alt" + name, c_black, c_black, c_black, c_black, 1);
	draw_text_color(temp_x + 2, temp_y - 4, "Alt" + name, c_black, c_black, c_black, c_black, 1);
	draw_text_color(temp_x + 6, temp_y - 8, "Alt" + name, c_black, c_black, c_black, c_black, 1);
	draw_text_color(temp_x + 6, temp_y - 4, "Alt" + name, c_black, c_black, c_black, c_black, 1);

// white text
	draw_text_color(temp_x + 4, temp_y - 6, "Alt" + name, c_white, c_white, c_white, c_white, 1);
//}

// Secret Colors //
