//
//css draw
//Trying something different for CSS draw to learn
//more of GML dialect like Switch and For statements

//Timer for Fading out text
image_alpha = max(image_alpha - 0.1, 0);
image_speed = 0;

display = image_alpha * 10;

// Variables for positioning of visuals
var temp_x = x + 12;
var temp_y = y + 140;
var alts = 0;

var color = get_player_color(player);
var name = " ";

var ColorPrev = [0, 0, 0];
var ColorNext = [0, 0, 0];
var soundtime = 0;

var css_ex_x = temp_x + 164;
var css_ex_y = temp_y - 30;

var charuuid = string(sprite_get("idle"));
if ("css_char" not in self || css_char != charuuid) {
    css_char = charuuid;
    fur_col = array_create(32);
    init_shader();
}
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

// Updating image_alpha when a new color is selected
if (color <= 16){
    if (color != image_index){
    	image_alpha = 1; //Set to 3 to make it take a long time for the text to fade
    	sound_stop(asset_get("mfx_change_color"));
    	sound_stop(sound_get("CSS_select"));
    	sound_play(sound_get("CSS_select"));
    	soundtime++;
    }
}

if (color >= 17){
    if (color != image_index + 17){
    	image_alpha = 1; //Set to 3 to make it take a long time for the text to fade
    	sound_stop(asset_get("mfx_change_color"));
    	sound_stop(sound_get("CSS_select"));
    	sound_play(sound_get("CSS_select"));
    	soundtime++;
    }
}

switch(color){
	case 10:
	case 14:
	case 15:
	case 16:
	case 19:
		set_ui_element(UI_CHARSELECT, sprite_get("charselect"));
		set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait"));
		draw_sprite_ext(sprite_get("cssextras"), 0, css_ex_x, css_ex_y, 1, 1, 0, c_white, 1);
		break;
	case 17:
		set_ui_element(UI_CHARSELECT, sprite_get("poolparty_charselect"));
		set_ui_element(UI_WIN_PORTRAIT, sprite_get("poolparty_portrait"));
		draw_sprite_ext(sprite_get("cssextras"), 0, css_ex_x, css_ex_y, 1, 1, 0, c_white, 1);
		break;
	case 11:
		draw_sprite_ext(sprite_get("cssextras"), 2, css_ex_x, css_ex_y, 1, 1, 0, c_white, 1);
		break;
	case 12:
		draw_sprite_ext(sprite_get("cssextras"), 3, css_ex_x, css_ex_y, 1, 1, 0, c_white, 1);
		break;
	case 13:
		draw_sprite_ext(sprite_get("cssextras"), 1, css_ex_x, css_ex_y, 1, 1, 0, c_white, 1);
		break;
	default:
		set_ui_element(UI_CHARSELECT, sprite_get("charselect"));
		set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait"));
		break;
}

image_index = color;

// USES FUR COLOR FOR THE RGB
for(var c = 0; c < 32; c++){
	fur_col[c] = make_color_rgb(get_color_profile_slot_r(c, 0), get_color_profile_slot_g(c, 0), get_color_profile_slot_b(c, 0));
}

//switch(cPage) {
//	case 1:
		switch(color) {
			case 0:
			name = " 1: Default";
			var position = 0;
			ColorPrev = fur_col[19];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 0 && path_scale == 0){
				path_position = 1;
			}
				break;

			case 1:
			name = " 2: Aura";
			var position = 1;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 1 && path_scale == 1){
				path_position = 2;
			}
				break;

				case 2:
			name = " 3: The Boss";
			var position = 2;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 2 && path_scale == 0){
				path_position = 3;
			}
				break;

				case 3:
			name = " 4: Sylvanos";
			var position = 3;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 3 && path_scale == 0){
				path_position = 4;
			}
				break;

				case 4:
			name = " 5: Solid";
			var position = 4;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 4 && path_scale == 0){
				path_position = 5;
			}
			    break;

				case 5:
			name = " 6: Ancestor";
			var position = 5;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 5 && path_scale == 0){
				path_position = 6;
			}
			    break;

				case 6:
			name = " 7: Clairen";
			var position = 6;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 6 && path_scale == 0){
				path_position = 7;
			}
			    break;

				case 7:
			name = " 8: Dusty";
			var position = 7;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 7 && path_scale == 0){
				path_position = 8;
			}
			    break;

				case 8:
			name = " 9: Forza";
			var position = 8;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 8 && path_scale == 0){
				path_position = 9;
			}
			    break;

				case 9:
				name = " 10: Burnette";
			var position = 9;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 9 && path_scale == 0){
				path_position = 10;
			}
			    break;

				case 10:
			name = " 11: Vaporwave";
			var position = 10;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 10 && path_scale == 0){
				path_position = 11;
			}
			    break;

				case 11:
			name = " 12: Seasonal";
			var position = 11;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 11 && path_scale == 0){
				path_position = 12;
			}
			    break;

				case 12:
			name = " 13: SSL";
			var position = 12;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 12 && path_scale == 0){
				path_position = 13;
			}
				break;

				case 13:
			name = " 14: Abyss";
			var position = 13;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 13 && path_scale == 0){
				path_position = 14;
			}
				break;
				
				case 14:
			name = " 15: Cashbox";
			var position = 14;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 14 && path_scale == 0){
				path_position = 15;
			}
				break;
				
				case 15:
			name = " 16: Hitfall";
			var position = 15;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 15 && path_scale == 0){
				path_position = 16;
			}
				break;
				
				case 16:
			name = " 17: Genesis";
			var position = 16;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 16 && path_scale == 0){
				path_position = 17;
			}
				break;
				
				case 17:
			name = " 18: Pool Party";
			var position = 17;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 17 && path_scale == 0){
				path_position = 18;
			}
				break;
			
				case 18:
			name = " 19: Golden";
			var position = 18;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 18 && path_scale == 0){
				path_position = 19;
			}
				break;
				
				case 19:
			name = " 20: Heatwave";
			var position = 19;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 19 && path_scale == 0){
				path_position = 20;
			}
				break;
				
				case 20:
			name = " 21: Sunny";
			var position = 20;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 20 && path_scale == 0){
				path_position = 21;
			}
				break;
				
				case 21:
			name = " 22: Freya";
			var position = 21;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 21 && path_scale == 0){
				path_position = 22;
			}
				break;
				
				case 22:
			name = " 23: Hero of Hell";
			var position = 22;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 22 && path_scale == 0){
				path_position = 23;
			}
				break;
				
				case 23:
			name = " 24: Lumi";
			var position = 23;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 23 && path_scale == 0){
				path_position = 24;
			}
				break;
				
				case 24:
			name = " 25: Inner Strength";
			var position = 24;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 24 && path_scale == 0){
				path_position = 25;
			}
				break;
				
				case 25:
			name = " 26: Cotton Candy";
			var position = 25;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[0];
			if (path_position == 25 && path_scale == 0){
				path_position = 26;
			}
				break;
			
				case 26:
			name = " 27: Awoo";
			var position = 26;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 26 && path_scale == 0){
				path_position = 27;
			}
				break;
				
				case 27:
			name = " 28: Winter's Fury";
			var position = 27;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[0];
			if (path_position == 27 && path_scale == 0){
				path_position = 28;
			}
				break;
				
				case 28:
			name = " 29: Vulnita";
			var position = 28;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 28 && path_scale == 0){
				path_position = 29;
			}
				break;
				
				case 29:
			name = " 30: Tictacticol";
			var position = 29;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[color+2];
			if (path_position == 29 && path_scale == 0){
				path_position = 30;
			}
				break;
				
				case 30:
			name = " 31: Look A Star!";
			var position = 30;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[color+1];
			ColorNextNext = fur_col[0];
			if (path_position == 30 && path_scale == 0){
				path_position = 31;
			}
				break;
				
				case 31:
			name = " 32: Dog Time";
			var position = 31;
			ColorPrev = fur_col[color-1];
			ColorNext = fur_col[0];
			ColorNextNext = fur_col[1];
			if (path_position == 31 && path_scale == 0){
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

	var col_r = get_color_profile_slot_r(color, 3);
	var col_g = get_color_profile_slot_g(color, 3);
	var col_b = get_color_profile_slot_b(color, 3);
	
	var col_com = make_color_rgb(col_r, col_g, col_b)
//black border
	draw_text_plus(temp_x + 4, temp_y - 6, "Alt" + name, 1, c_white);
	draw_text_plus(temp_x, y-10, "Mod By: Team Rose Petals", 1, col_com);
//}

// Secret Colors //

// IMPORTANT: The 12 (first argument) in this function should be the same number as the user event.
player_tag_palettes(12);
// Ideally, this is above all #defines, but below everything else.

// As usual, #defines all go at the bottom of the script.
#define player_tag_palettes
///(user_event, ?arg)
__ssnk_tagpal_scr = script_get_name(1);
__ssnk_tagpal_arg = argument_count > 1 ? argument[1] : 0;
user_event(argument[0]);
return "__ssnk_tagpal_res" in self ? __ssnk_tagpal_res : 0;

#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.
var x/*:int*/ = argument[0], y/*:int*/ = argument[1], text/*:string*/ = argument[2], font/*:int*/ = argument[3];
var color = argument_count > 4 ? argument[4] : c_white;
if draw_get_font() != font {
    draw_set_font(font);
}
draw_text_color(x+2,y,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x+2,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x+2,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y,text,color,color,color,color,1);