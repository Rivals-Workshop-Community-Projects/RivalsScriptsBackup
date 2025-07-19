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
var alts = 26;

var color = get_player_color(player);
var name = " ";

var ColorPrev = [0, 0, 0];
var ColorNext = [0, 0, 0];
var soundtime = 0;

var charuuid = string(sprite_get("idle"));
if ("css_char" not in self || css_char != charuuid) {
    css_char = charuuid;
    sword_col = array_create(27);
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

draw_sprite_ext(sprite_get("css_soul"), 0, x, y, 2, 2, 0, get_player_hud_color(player), 1);

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
    	soundtime++;
    }
}

image_index = color;

// USES SWORD COLOR FOR THE RGB
for(var c = 0; c < 29; c++){
	sword_col[c] = make_color_rgb(get_color_profile_slot_r(c,0), get_color_profile_slot_g(c,0), get_color_profile_slot_b(c,0))
}

//switch(cPage) {
//	case 1:
		switch(color) {
			case 0:
			name = " 1: Lightener";
			var position = 0;
			ColorPrev = sword_col[24];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 0 && path_scale == 0){
				path_position = 1;
			}
				break;

			case 1:
			name = " 2: Burghley";	// Berdly (look into making it change later)
			var position = 1;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 1 && path_scale == 1){
				path_position = 2;
			}
				break;

				case 2:
			name = " 3: Violent Ax";    // SUSie
			var position = 2;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 2 && path_scale == 0){
				path_position = 3;
			}
				break;

				case 3:
			name = " 4: Prince of Darkness";    // Ralsei Chapter 1
			var position = 3;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 3 && path_scale == 0){
				path_position = 4;
			}
				break;

				case 4:
			name = " 5: The Girl Nextdoor";		// Noelle
			var position = 4;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 4 && path_scale == 0){
				path_position = 5;
			}
			    break;

				case 5:
			name = " 6: Scarlet Forest";	// yes
			var position = 5;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 5 && path_scale == 0){
				path_position = 6;
			}
			    break;

				case 6:
			name = " 7: The Bad Guy";	// Lancer
			var position = 6;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 6 && path_scale == 0){
				path_position = 7;
			}
			    break;

				case 7:
			name = " 8: Overworld";
			var position = 7;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 7 && path_scale == 0){
				path_position = 8;
			}
			    break;

				case 8:
			name = " 9: I CAN DO ANYTHING";
			var position = 8;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 8 && path_scale == 0){
				path_position = 9;
			}
			    break;

				case 9:
				name = " 10:[[Hyperlink Blocked]]";
			var position = 9;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 9 && path_scale == 0){
				path_position = 10;
			}
			    break;

				case 10:
			name = " 11: Champion";
			var position = 10;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 10 && path_scale == 0){
				path_position = 11;
			}
			    break;

				case 11:
			name = " 12: Seasonal";
			var position = 11;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 11 && path_scale == 0){
				path_position = 12;
			}
			    break;

				case 12:
			name = " 13: Gameboy";
			var position = 12;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 12 && path_scale == 0){
				path_position = 13;
			}
				break;

				case 13:
			name = " 14: Abyss";
			var position = 13;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 13 && path_scale == 0){
				path_position = 14;
			}
				break;

				case 14:
			name = " 15: Frisk";
			var position = 14;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 14 && path_scale == 0){
				path_position = 15;
			}
				break;

				case 15:
			name = " 16: Strong One";
			var position = 15;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 15 && path_scale == 0){
				path_position = 16;
			}
				break;
				
				case 16:
			name = " 17: Slimepuffen";
			var position = 16;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 16 && path_scale == 0){
				path_position = 17;
			}
				break;
				
				case 17:
			name = " 18: Ztatic";
			var position = 17;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 17 && path_scale == 0){
				path_position = 18;
			}
				break;
			
				case 18:
			name = " 19: Inner Strength";
			var position = 18;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 18 && path_scale == 0){
				path_position = 19;
			}
				break;
				
				case 19:
			name = " 20: Stardrop";
			var position = 19;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 19 && path_scale == 0){
				path_position = 20;
			}
				break;
				
				case 20:
			name = " 21: The Legend";
			var position = 20;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 20 && path_scale == 0){
				path_position = 21;
			}
				break;
				
				case 21:
			name = " 22: Rudebuster";
			var position = 21;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 21 && path_scale == 0){
				path_position = 22;
			}
				break;
				
				case 22:
			name = " 23: Discarded Vessel";
			var position = 22;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 22 && path_scale == 0){
				path_position = 23;
			}
				break;
				
				case 23:
			name = " 24: Genesis";
			var position = 23;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 23 && path_scale == 0){
				path_position = 24;
			}
				break;
			
				case 24:
			name = " 25: Fire's Last Hope";
			var position = 24;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 24 && path_scale == 0){
				path_position = 25;
			}
				break;
				
				case 25:
			name = " 26: Goober";
			var position = 25;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 25 && path_scale == 0){
				path_position = 26;
			}
				break;
				
				case 26:
			name = " 27: Penumbra";
			var position = 26;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[color+2];
			if (path_position == 26 && path_scale == 0){
				path_position = 27;
			}
				break;
				
				case 27:
			name = " 28: It's TV Time!!!";
			var position = 27;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[color+1];
			ColorNextNext = sword_col[0];
			if (path_position == 27 && path_scale == 0){
				path_position = 28;
			}
				break;
				
				case 28:
			name = " 29: Black Knife";
			var position = 28;
			ColorPrev = sword_col[color-1];
			ColorNext = sword_col[0];
			ColorNextNext = sword_col[1];
			if (path_position == 28 && path_scale == 0){
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

	var col_r = get_color_profile_slot_r(color, 0);
	var col_g = get_color_profile_slot_g(color, 0);
	var col_b = get_color_profile_slot_b(color, 0);
	
	var col_com = make_color_rgb(col_r, col_g, col_b)
//black border
	draw_text_plus(temp_x + 4, temp_y - 6, "Alt" + name, 1, c_white);
	draw_text_plus(temp_x, y-10, "Mod By: EquinoxDoodles", 1, col_com);
//}
var tmp_cur = 0;
var tmp_i = [0, 0, 0, 0, 0];
var tmp_x = [0, 0, 0, 0, 0];
var tmp_y = [0, 0, 0, 0, 0];
var tmp_pt = abs(player-5)-1
var tmp_xl = 88
var tmp_bw = 32
var tmp_yl = 86
var tmp_bh = 20
var tmp_xl1 = x+tmp_xl
var tmp_xl2 = tmp_xl1+tmp_bw
var tmp_yl1 = y+tmp_yl
var tmp_yl2 = tmp_yl1+tmp_bh

//draw_rectangle_color(tmp_xl1, tmp_yl1, tmp_xl2, tmp_yl2, c_white, c_white, c_white, c_white, 1)

//print(string(get_player_name(player)))

with(asset_get("cs_playercursor_obj")){
	tmp_cur = (!tmp_i[0])?0:(!tmp_i[1])?1:(!tmp_i[2])?2:(!tmp_i[3])?3:4
	tmp_i[tmp_cur] = 1
	tmp_x[tmp_cur] = get_instance_x( self )
	tmp_y[tmp_cur] = get_instance_y( self )
}

if (tmp_x[tmp_pt]>tmp_xl1 && tmp_x[tmp_pt]<tmp_xl2 && tmp_y[tmp_pt]>tmp_yl1 && tmp_y[tmp_pt]<tmp_yl2){
	do_soul_rgb_check = true;
	if !variable_instance_exists(self, "soul_col_override"){
		soul_col_override = false;
	}
} else {
	do_soul_rgb_check = false;
}

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