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
var alts = 15;

var color = get_player_color(player);
var name = " ";


// Updating image_alpha when a new color is selected
if (color <= 16){
	if (color != image_index){ 
		image_alpha = 1; //Set to 3 to make it take a long time for the text to fade
		sound_stop(sound_get("CSS_select"));
		sound_play(sound_get("CSS_select"));
	}
}

if (color >= 17){
	if (color != image_index + 17){ 
		image_alpha = 1; //Set to 3 to make it take a long time for the text to fade
		sound_stop(sound_get("CSS_select"));
		sound_play(sound_get("CSS_select"));
	}
}

image_index = color;

//switch(cPage) {
//	case 1:
		switch(color) {
				case 0:
			name = " 1: Tomo"; 
			var position = 0;
			ColorPrev = make_color_rgb(216, 62, 219);
			ColorNext = make_color_rgb(57, 116, 204 );
			ColorNextNext = make_color_rgb(138, 32, 47);
			if (path_position == 0 && path_scale == 0){
				path_position = 1;
			}
				break;
			
				case 1: 
			name = " 2: Blueberry"; 
			var position = 1;
			ColorPrev = make_color_rgb(212, 51, 78);
			ColorNext = make_color_rgb(138, 32, 47);
			ColorNextNext = make_color_rgb(82, 181, 82);
			if (path_position == 1 && path_scale == 1){
				path_position = 2;
			}
				break;
			
				case 2: 
			name = " 3: Pomegranate"; 
			var position = 2;
			ColorPrev = make_color_rgb(57, 116, 204 );
			ColorNext = make_color_rgb(82, 181, 82);
			ColorNextNext = make_color_rgb(94, 75, 117  );
			if (path_position == 2 && path_scale == 0){
				path_position = 3;
			}
				break;
			
				case 3: 
			name = " 4: Melon"; 
			var position = 3;
			ColorPrev = make_color_rgb(138, 32, 47);
			ColorNext = make_color_rgb(94, 75, 117  );
			ColorNextNext = make_color_rgb(132, 46, 163);
			if (path_position == 3 && path_scale == 0){
				path_position = 4;
			}
				break;
				
				case 4: 
			name = " 5: Blackberry"; 
			var position = 4;
			ColorPrev = make_color_rgb(82, 181, 82);
			ColorNext = make_color_rgb(132, 46, 163);
			ColorNextNext = make_color_rgb(97, 106, 150);
			if (path_position == 4 && path_scale == 0){
				path_position = 5;
			}
			break;
			
				case 5: 
			name = " 6: Eggplant"; 
			var position = 5;
			ColorPrev = make_color_rgb(94, 75, 117);
			ColorNext = make_color_rgb(97, 106, 150);
			ColorNextNext = make_color_rgb(211, 226, 154);
			if (path_position == 5 && path_scale == 0){
				path_position = 6;
			}
			break;
			
				case 6: 
			name = " 7: Abyssalmato"; 
			var position = 6;
			ColorPrev = make_color_rgb(132, 46, 163);
			ColorNext = make_color_rgb(211, 226, 154);
			ColorNextNext = make_color_rgb(230, 92, 0);
			if (path_position == 6 && path_scale == 0){
				path_position = 7;
			}
			break;
			
				case 7:
			name = " 8: Retromato"; 	
			if (get_player_color(player) == 7){
				for(i = 0; i < 8; i++){
					set_character_color_shading(i, 0);
				}
			}
			var position = 7;
			ColorPrev = make_color_rgb(97, 106, 150);
			ColorNext = make_color_rgb(230, 92, 0);
			ColorNextNext = make_color_rgb(214, 217, 22);
			if (path_position == 7 && path_scale == 0){
				path_position = 8;
			}
			break;
			
				case 8: 
			name = " 9: Pumpkin"; 
				draw_sprite_ext( sprite_get("css_cal_icon"), 0, x + 176, y + 108, 1, 1, 0, c_white, 1);
			var position = 8;
			ColorPrev = make_color_rgb(211, 226, 154);
			ColorNext = make_color_rgb(214, 217, 22);
			ColorNextNext = make_color_rgb(104, 208, 212);
			if (path_position == 9 && path_scale == 0){
				path_position = 10;
			}
			break;
			
				case 9: 
			name = " 10: Lemon"; 
			var position = 9;
			ColorPrev = make_color_rgb(230, 92, 0);
			ColorNext = make_color_rgb(104, 208, 212);
			ColorNextNext = make_color_rgb(85, 194, 116);
			if (path_position == 1 && path_scale == 0){
				path_position = 2;
			}
			break;
			
				case 10: 
			name = " 11: Cotton Candy"; 
			var position = 10;
			ColorPrev = make_color_rgb(214, 217, 22);
			ColorNext = make_color_rgb(85, 194, 116);
			ColorNextNext = make_color_rgb(222, 95, 131 );
			if (path_position == 1 && path_scale == 0){
				path_position = 2;
			}
			break;	
			
				case 11: 
			name = " 12: Pogg"; 
			var position = 11;
			ColorPrev = make_color_rgb(104, 208, 212);
			ColorNext = make_color_rgb(222, 95, 131 );
			ColorNextNext = make_color_rgb(242, 191, 212);
			if (path_position == 1 && path_scale == 0){
				path_position = 2;
			}
			break;
			
				case 12: 
			name = " 13: Puff"; 
			var position = 12;	
			ColorPrev = make_color_rgb(85, 194, 116);
			ColorNext = make_color_rgb(242, 191, 212);		
			ColorNextNext = make_color_rgb(53, 186, 255);	
				break;	
			
				case 13: 
			name = " 14: Datemato"; 
			var position = 13;
			ColorPrev = make_color_rgb(222, 95, 131 );
			ColorNext = make_color_rgb(53, 186, 255);
			ColorNextNext = make_color_rgb(216, 62, 219);
				break;	
				
				case 14: 
			name = " 15: Event"; 
			var position = 14;
			ColorPrev = make_color_rgb(242, 191, 212);
			ColorNext = make_color_rgb(216, 62, 219);
			ColorNextNext = make_color_rgb(212, 51, 78);
			draw_sprite_ext(sprite_get("slime_charselect"), 0, x + 8, y + 8, 2, 2, 0, -1, 1);
			draw_sprite_ext( sprite_get("css_cal_icon"), 0, x + 176, y + 108, 1, 1, 0, c_white, 1);
				break;	
				
				case 15: 
			name = " 16: Vapor"; 
			var position = 15;
			ColorPrev = make_color_rgb(53, 186, 255);
			ColorNext = make_color_rgb(212, 51, 78);
			ColorNextNext = make_color_rgb(57, 116, 204 );
				break;	
		}
	//break;
//}

// Version Display // -------------------------------------------------------------------------------------

if (image_alpha == 0){
	// The Selected Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+62, 2, 2, 0, -1, 1);
	draw_sprite_ext(sprite_get("CSSicon"), 0, x+12, y+62, 2, 2, 0, -1, 1);
	
	// The Previous Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+42, 2, 2, 0, -1, 0.5);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+42, 2, 2, 0, ColorPrev, 0.5);
	
	// The Next Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+82, 2, 2, 0, -1, 0.5);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+82, 2, 2, 0, ColorNext, 0.5);

	// The NextNext Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+102, 2, 2, 0, -1, .2);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+102, 2, 2, 0, ColorNextNext, .2);
}

if (image_alpha != 0 && position = color){
	// The Selected Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+62 - display, 2, 2, 0, -1, 1 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 0, x+12, y+62 - display, 2, 2, 0, -1, 1 - image_alpha);
	
	// The Previous Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+42 - display, 2, 2, 0, -1, .6 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+42 - display, 2, 2, 0, ColorPrev, .6 - image_alpha);
	
	// The Next Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+82 - display, 2, 2, 0, -1, .6 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+82 - display, 2, 2, 0, ColorNext, .6 - image_alpha);
	
	// The NextNext Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+102 - display, 2, 2, 0, -1, .4 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+102 - display, 2, 2, 0, ColorNextNext, .4 - image_alpha);
}

if (image_alpha != 0 && position = color){
	// The Selected Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+62 + display, 2, 2, 0, -1, 1.6 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 0, x+12, y+62 + display, 2, 2, 0, -1, 1.6 - image_alpha);
	
	// The Previous Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+42 + display, 2, 2, 0, -1, .6 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+42 + display, 2, 2, 0, ColorPrev, .6 - image_alpha);
	
	// The Next Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+82 + display, 2, 2, 0, -1, .6 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+82 + display, 2, 2, 0, ColorNext, .6 - image_alpha);

	// The NextNext Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+102 + display, 2, 2, 0, -1, .4 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+102 + display, 2, 2, 0, ColorNextNext, .4 - image_alpha);
}

/*
// Image Index checker
draw_text_color(temp_x + 100, temp_y - 40, "image_alpha " + string(image_alpha), c_white, c_white, c_white, c_white, 1);
draw_text_color(temp_x + 100, temp_y - 100, "color " + string(color), c_white, c_white, c_white, c_white, 1);
draw_text_color(temp_x + 100, temp_y - 80, "pos " + string(position), c_white, c_white, c_white, c_white, 1);
draw_text_color(temp_x + 100, temp_y - 60, "index " + string(image_index), c_white, c_white, c_white, c_white, 1);
*/

// Shaders end

shader_end();

draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_text_color(x + 4, y + 215, "v1.8.1", c_gray, c_gray, c_gray, c_gray, 1);

// Date Display
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text_color(x + 218, y + 215, "October 24th, 2021", c_gray, c_gray, c_gray, c_gray, 1);

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
// There are none for Snom... at least for now