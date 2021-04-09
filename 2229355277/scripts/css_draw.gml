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
var alts = 28;

var color = get_player_color(player);
var name = " ";

var ColorPrev = [0, 0, 0];
var ColorNext = [0, 0, 0];

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
    }
}

if (color >= 17){
    if (color != image_index + 17){ 
    	image_alpha = 1; //Set to 3 to make it take a long time for the text to fade
    	sound_stop(asset_get("mfx_change_color"));
    	sound_stop(sound_get("CSS_select"));
    	sound_play(sound_get("CSS_select"));
    }
}


image_index = color;

//switch(cPage) {
//	case 1:
		switch(color) {
				case 0:
			name = " 1: Saffron"; 
			var position = 0;
			ColorPrev = make_color_rgb(67, 0, 156);
			ColorNext = make_color_rgb(98, 87, 227 );
			ColorNextNext = make_color_rgb(81, 28, 31);
			if (path_position == 0 && path_scale == 0){
				path_position = 1;
			}
				break;
			
				case 1: 
			name = " 2: Selicy"; 
			var position = 1;
			ColorPrev = make_color_rgb(250, 212, 122);
			ColorNext = make_color_rgb(81, 28, 31);
			ColorNextNext = make_color_rgb(138, 211, 167);
			if (path_position == 1 && path_scale == 1){
				path_position = 2;
			}
				break;
			
				case 2: 
			name = " 3: Hazel"; 
			var position = 2;
			ColorPrev = make_color_rgb(98, 87, 227 );
			ColorNext = make_color_rgb(138, 211, 167);
			ColorNextNext = make_color_rgb(58, 47, 64 );
			if (path_position == 2 && path_scale == 0){
				path_position = 3;
			}
				break;
			
				case 3: 
			name = " 4: Violette"; 
			var position = 3;
			ColorPrev = make_color_rgb(81, 28, 31);
			ColorNext = make_color_rgb(58, 47, 64  );
			ColorNextNext = make_color_rgb(109, 92, 66);
			if (path_position == 3 && path_scale == 0){
				path_position = 4;
			}
				break;
				
				case 4: 
			name = " 5: Terra"; 
			var position = 4;
			ColorPrev = make_color_rgb(138, 211, 167);
			ColorNext = make_color_rgb(109, 92, 66);
			ColorNextNext = make_color_rgb(71, 59, 83);
			if (path_position == 4 && path_scale == 0){
				path_position = 5;
			}
			    break;
			
				case 5: 
			name = " 6: Gunner"; 
			var position = 5;
			ColorPrev = make_color_rgb(58, 47, 64);
			ColorNext = make_color_rgb(71, 59, 83);
			ColorNextNext = make_color_rgb(137, 223, 189);
			if (path_position == 5 && path_scale == 0){
				path_position = 6;
			}
			    break;
			
				case 6: 
			name = " 7: Abyssal"; 
			var position = 6;
			ColorPrev = make_color_rgb(109, 92, 66);
			ColorNext = make_color_rgb(137, 223, 189);
			ColorNextNext = make_color_rgb(46, 66, 156);
			if (path_position == 6 && path_scale == 0){
				path_position = 7;
			}
			    break;
			
				case 7:
			name = " 8: Reva"; 	
			var position = 7;
			ColorPrev = make_color_rgb(71, 59, 83);
			ColorNext = make_color_rgb(46, 66, 156);
			ColorNextNext = make_color_rgb(195, 163, 131);
			if (path_position == 7 && path_scale == 0){
				path_position = 8;
			}
			    break;
			
				case 8: 
			name = " 9: Shiso"; 
			var position = 8;
			ColorPrev = make_color_rgb(137, 223, 189);
			ColorNext = make_color_rgb(195, 163, 131);
			ColorNextNext = make_color_rgb(163, 121, 98);
			if (path_position == 8 && path_scale == 0){
				path_position = 9;
			}
			    break;
			
				case 9: 
			name = " 10: Shopkeeper"; 
			var position = 9;
			ColorPrev = make_color_rgb(46, 66, 156);
			ColorNext = make_color_rgb(163, 121, 98);
			ColorNextNext = make_color_rgb(255, 154, 67);
			if (path_position == 9 && path_scale == 0){
				path_position = 10;
			}
			    break;
			
				case 10: 
			name = " 11: Player 2"; 
			var position = 10;
			ColorPrev = make_color_rgb(195, 163, 131);
			ColorNext = make_color_rgb(255, 154, 67);
			ColorNextNext = make_color_rgb(121, 11, 34 );
			if (path_position == 10 && path_scale == 0){
				path_position = 11;
			}
			    break;	
			
				case 11: 
			name = " 12: Sonia"; 
			var position = 11;
			ColorPrev = make_color_rgb(163, 121, 98);
			ColorNext = make_color_rgb(121, 11, 34 );
			ColorNextNext = make_color_rgb(255, 255, 255);
			if (path_position == 11 && path_scale == 0){
				path_position = 12;
			}
			    break;
			
				case 12: 
			name = " 13: Exusiai"; 
			var position = 12;	
			ColorPrev = make_color_rgb(255, 154, 67);
			ColorNext = make_color_rgb(255, 255, 255);		
			ColorNextNext = make_color_rgb(205, 230, 249);
			if (path_position == 12 && path_scale == 0){
				path_position = 13;
			}
				break;	
			
				case 13: 
			name = " 14: Ashley"; 
			var position = 13;
			ColorPrev = make_color_rgb(121, 11, 34 );
			ColorNext = make_color_rgb(205, 230, 249);
			ColorNextNext = make_color_rgb(130, 125, 255);
			if (path_position == 13 && path_scale == 0){
				path_position = 14;
			}
				break;	
				
				case 14: 
			name = " 15: smol"; 
			var position = 14;
			ColorPrev = make_color_rgb(255, 255, 255);
			ColorNext = make_color_rgb(130, 125, 255);
			ColorNextNext = make_color_rgb(232, 74, 42);
			if (path_position == 14 && path_scale == 0){
				path_position = 15;
			}
				break;	
				
				case 15: 
			name = " 16: Lea"; 
			var position = 15;
			ColorPrev = make_color_rgb(205, 230, 249);
			ColorNext = make_color_rgb(232, 74, 42);
			ColorNextNext = make_color_rgb(111, 160, 83);
			if (path_position == 15 && path_scale == 0){
				path_position = 16;
			}
				break;	
				
				case 16: 
			name = " 17: Archytas"; 
			var position = 16;
			ColorPrev = make_color_rgb(130, 125, 255);
			ColorNext = make_color_rgb(111, 160, 83);
			ColorNextNext = make_color_rgb(237, 179, 21);
			if (path_position == 16 && path_scale == 0){
				path_position = 17;
			}
			    break;
			
				case 17: 
			name = " 18: Album"; 
			var position = 17;
			ColorPrev = make_color_rgb(232, 74, 42);
			ColorNext = make_color_rgb(237, 179, 21);
			ColorNextNext = make_color_rgb(30, 34, 71 );
			if (path_position == 17 && path_scale == 0){
				path_position = 18;
			}
			    break;	
			
				case 18: 
			name = " 19: Golden"; 
			var position = 18;
			ColorPrev = make_color_rgb(111, 160, 83);
			ColorNext = make_color_rgb(30, 34, 71 );
			ColorNextNext = make_color_rgb(209, 111, 19);
			if (path_position == 18 && path_scale == 0){
				path_position = 19;
			}
			    break;
			
				case 19: 
			name = " 19: Mega Man.EXE"; 
			var position = 19;
			ColorPrev = make_color_rgb(237, 179, 21);
			ColorNext = make_color_rgb(72, 71, 111 );
			ColorNextNext = make_color_rgb(209, 111, 19);
			if (path_position == 19 && path_scale == 0){
				path_position = 20;
			}
			    break;
			
				case 20: 
			name = " 20: Sabrina"; 
			var position = 20;	
			ColorPrev = make_color_rgb(30, 34, 71);
			ColorNext = make_color_rgb(209, 111, 19);		
			ColorNextNext = make_color_rgb(107, 125, 215);
			if (path_position == 20 && path_scale == 0){
				path_position = 21;
			}
				break;	
			
				case 21: 
			name = " 21: Athena Cykes"; 
			var position = 21;
			ColorPrev = make_color_rgb(72, 71, 111 );
			ColorNext = make_color_rgb(107, 125, 215);
			ColorNextNext = make_color_rgb(31, 31, 31);
			if (path_position == 21 && path_scale == 0){
				path_position = 22;
			}
				break;	
				
				case 22: 
			name = " 22: Miyuki"; 
			var position = 22;
			ColorPrev = make_color_rgb(209, 111, 19);
			ColorNext = make_color_rgb(31, 31, 31);
			ColorNextNext = make_color_rgb(227, 118, 40);
			if (path_position == 22 && path_scale == 0){
				path_position = 23;
			}
				break;	
				
				case 23: 
			name = " 23: Cotton Candy"; 
			var position = 23;
			ColorPrev = make_color_rgb(107, 125, 215);
			ColorNext = make_color_rgb(227, 118, 40);
			ColorNextNext = make_color_rgb(73, 54, 48);
			if (path_position == 23 && path_scale == 0){
				path_position = 24;
			}
				break;
				
				case 24: 
			name = " 24: Daisy"; 
			var position = 24;
			ColorPrev = make_color_rgb(31, 31, 31);
			ColorNext = make_color_rgb(73, 54, 48);
			ColorNextNext = make_color_rgb(41, 41, 41);
			if (path_position == 24 && path_scale == 0){
				path_position = 25;
			}
			    break;
			
				case 25: 
			name = " 25: Reimu"; 
			var position = 25;
			ColorPrev = make_color_rgb(227, 118, 40);
			ColorNext = make_color_rgb(41, 41, 41);
			ColorNextNext = make_color_rgb(67, 0, 156 );
			if (path_position == 25 && path_scale == 0){
				path_position = 26;
			}
			    break;	
			
				case 26: 
			name = " 26: Oreo"; 
			var position = 26;
			ColorPrev = make_color_rgb(73, 54, 48);
			ColorNext = make_color_rgb(67, 0, 156 );
			ColorNextNext = make_color_rgb(250, 212, 122);
			if (path_position == 26 && path_scale == 0){
				path_position = 27;
			}
			    break;
			
				case 27: 
			name = " 27: Aesthetic"; 
			var position = 27;	
			ColorPrev = make_color_rgb(41, 41, 41);
			ColorNext = make_color_rgb(250, 212, 122);		
			ColorNextNext = make_color_rgb(98, 87, 227);
			if (path_position == 27 && path_scale == 0){
				path_position = 0;
			}
				break;	
				
		}
	//break;
//}

// Version Display // -------------------------------------------------------------------------------------
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_color(x + 10, y - 6, "Version 1.1.0", c_white, c_white, c_white, c_white, 1);

// Date Display
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text_color(x + 210, y - 6, "April 3rd, 2021", c_white, c_white, c_white, c_white, 1);

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