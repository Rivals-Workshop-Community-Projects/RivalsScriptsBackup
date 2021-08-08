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

var ColorPrev = [0, 0, 0];
var ColorNext = [0, 0, 0];

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
			name = " 1: Default"; 
			var position = 0;
			ColorPrev = make_color_rgb(204, 240, 154)
			ColorNext = make_color_rgb(35, 46, 54);
			ColorNextNext = make_color_rgb(252, 178, 98)
				break;
			
				case 1: 
			name = " 2: Nebula"; 
			var position = 1;
			ColorPrev = make_color_rgb(250, 253, 255);
			ColorNext = make_color_rgb(252, 178, 98)
			ColorNextNext = make_color_rgb(128, 222, 45)
				break;
			
				case 2: 
			name = " 3: Radiator"; 
			var position = 2;
			ColorPrev = make_color_rgb(35, 46, 54);
			ColorNext = make_color_rgb(128, 222, 45)
			ColorNextNext = make_color_rgb(232, 196, 65)
				break;
			
				case 3: 
			name = " 4: String"; 
			var position = 3;
			ColorPrev = make_color_rgb(252, 178, 98)
			ColorNext = make_color_rgb(232, 196, 65)
			ColorNextNext = make_color_rgb(77, 73, 72)
				break;
				
				case 4: 
			name = " 5: Urchin"; 
			var position = 4;
			ColorPrev = make_color_rgb(128, 222, 45)
			ColorNext = make_color_rgb(77, 73, 72)
			ColorNextNext = make_color_rgb(166, 172, 214)
				break;
			
				case 5: 
			name = " 6: Cucumber"; 
			var position = 5;
			ColorPrev = make_color_rgb(232, 196, 65)
			ColorNext = make_color_rgb(166, 172, 214)
			ColorNextNext = make_color_rgb(211, 226, 154)
				break;
			
				case 6: 
			name = " 7: Abyss"; 
			var position = 6;
			ColorPrev = make_color_rgb(77, 73, 72)
			ColorNext = make_color_rgb(211, 226, 154)
			ColorNextNext = make_color_rgb(243, 150, 175)
				break;
			
				case 7:
			name = " 8: Retro"; 	
			if (get_player_color(player) == 7){
				for(i = 0; i < 8; i++){
					set_character_color_shading(i, 0);
				}
			}
			var position = 7;
			ColorPrev = make_color_rgb(166, 172, 214)
			ColorNext = make_color_rgb(243, 150, 175)
			ColorNextNext = make_color_rgb(143, 59, 54)
				break;
			
				case 8: 
			name = " 9: Cottonweed"; 
			var position = 8;
			ColorPrev = make_color_rgb(211, 226, 154)
			ColorNext = make_color_rgb(143, 59, 54)
			ColorNextNext = make_color_rgb(234, 245, 162)
				break;
			
				case 9: 
			name = " 10: Renegade"; 
			var position = 9;
			ColorPrev = make_color_rgb(243, 150, 175)
			ColorNext = make_color_rgb(234, 245, 162)
			ColorNextNext = make_color_rgb(207, 196, 224)
				break;
			
				case 10: 
			name = " 11: Attached"; 
			var position = 10;
			ColorPrev = make_color_rgb(143, 59, 54)
			ColorNext = make_color_rgb(207, 196, 224)
			ColorNextNext = make_color_rgb(62, 61, 59)
				break;	
			
				case 11: 
			name = " 12: Soft Tissue"; 
			var position = 11;
			ColorPrev = make_color_rgb(234, 245, 162)
			ColorNext = make_color_rgb(62, 61, 59)
			ColorNextNext = make_color_rgb(137, 174, 166)
				break;
			
				case 12: 
			name = " 13: Torch"; 
			var position = 12;	
			ColorPrev = make_color_rgb(207, 196, 224)
			ColorNext = make_color_rgb(137, 174, 166)
			ColorNextNext = make_color_rgb(204, 240, 154)
				break;	
				
				case 13: 
			name = " 14: Bagworm"; 
			var position = 13;	
			ColorPrev = make_color_rgb(62, 61, 59)
			ColorNext = make_color_rgb(204, 240, 154)
			ColorNextNext = make_color_rgb(207, 214, 236)
				break;	
			
				case 14: 
			name = " 15: Shiny"; 
			var position = 14;
			ColorPrev = make_color_rgb(137, 174, 166)
			ColorNext = make_color_rgb(219, 115, 94);
			ColorNextNext = make_color_rgb(35, 46, 54)
				break;	
			}
//	break;
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
draw_text_color(x + 4, y + 215, "v1.3.0", c_gray, c_gray, c_gray, c_gray, 1);

// Date Display
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text_color(x + 218, y + 215, "August 3rd, 2021", c_gray, c_gray, c_gray, c_gray, 1);

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