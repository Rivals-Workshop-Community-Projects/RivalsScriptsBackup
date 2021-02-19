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
var alts = 14;

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
if (color != image_index){ 
	image_alpha = 1; //Set to 3 to make it take a long time for the text to fade
	sound_stop(sound_get("CSS_select"));
	sound_play(sound_get("CSS_select"));
}

image_index = color;

//switch(cPage) {
//	case 1:
		switch(color) {
				case 0:
			name = " 1: Tomo"; 
			var position = 0;
			ColorPrev = make_color_rgb(116, 227, 148);
			ColorNext = make_color_rgb(92, 154, 242 );
			ColorNextNext = make_color_rgb(2214, 68, 92);
			if (path_position == 0 && path_scale == 0){
				path_position = 1;
			}
				break;
			
				case 1: 
			name = " 2: Blueberry"; 
			var position = 1;
			ColorPrev = make_color_rgb(255, 103, 112);
			ColorNext = make_color_rgb(214, 68, 92);
			ColorNextNext = make_color_rgb(92, 204, 92);
			if (path_position == 1 && path_scale == 1){
				path_position = 2;
			}
				break;
			
				case 2: 
			name = " 3: Pomegranate"; 
			var position = 2;
			ColorPrev = make_color_rgb(92, 154, 242 );
			ColorNext = make_color_rgb(92, 204, 92);
			ColorNextNext = make_color_rgb(114, 92, 143 );
			if (path_position == 2 && path_scale == 0){
				path_position = 3;
			}
				break;
			
				case 3: 
			name = " 4: Youngling"; 
			var position = 3;
			ColorPrev = make_color_rgb(255, 112, 156);
			ColorNext = make_color_rgb(114, 92, 143 );
			ColorNextNext = make_color_rgb(177, 79, 214);
			if (path_position == 3 && path_scale == 0){
				path_position = 4;
			}
				break;
				
				case 4: 
			name = " 5: Blackberry"; 
			var position = 4;
			ColorPrev = make_color_rgb(92, 204, 92);
			ColorNext = make_color_rgb(177, 79, 214);
			ColorNextNext = make_color_rgb(166, 172, 214);
			if (path_position == 4 && path_scale == 0){
				path_position = 5;
			}
			break;
			
				case 5: 
			name = " 6: Eggplant"; 
			var position = 5;
			ColorPrev = make_color_rgb(114, 92, 143 );
			ColorNext = make_color_rgb(166, 172, 214);
			ColorNextNext = make_color_rgb(211, 226, 154);
			if (path_position == 5 && path_scale == 0){
				path_position = 6;
			}
			break;
			
				case 6: 
			name = " 7: Abyssalmato"; 
			var position = 6;
			ColorPrev = make_color_rgb(177, 79, 214);
			ColorNext = make_color_rgb(211, 226, 154);
			ColorNextNext = make_color_rgb(255, 102, 0);
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
			ColorPrev = make_color_rgb(166, 172, 214);
			ColorNext = make_color_rgb(255, 102, 0);
			ColorNextNext = make_color_rgb(251, 255, 48);
			if (path_position == 7 && path_scale == 0){
				path_position = 8;
			}
			break;
			
				case 8: 
			name = " 9: Pumpkin"; 
			var position = 8;
			ColorPrev = make_color_rgb(211, 226, 154);
			ColorNext = make_color_rgb(251, 255, 48);
			ColorNextNext = make_color_rgb(116, 227, 148);
			if (path_position == 9 && path_scale == 0){
				path_position = 10;
			}
			break;
			
				case 9: 
			name = " 10: Lemon"; 
			var position = 9;
			ColorPrev = make_color_rgb(255, 102, 0);
			ColorNext = make_color_rgb(116, 227, 148);
			ColorNextNext = make_color_rgb(255, 103, 112);
			if (path_position == 1 && path_scale == 0){
				path_position = 2;
			}
			break;
			
				case 10: 
			name = " 11: Pogg"; 
			var position = 10;
			ColorPrev = make_color_rgb(251, 255, 48);
			ColorNext = make_color_rgb(255, 103, 112);
			ColorNextNext = make_color_rgb(255, 169, 195);
			if (path_position == 1 && path_scale == 0){
				path_position = 2;
			}
			break;	
			
				case 11: 
			name = " 12: Date.GIF"; 
			var position = 11;
			ColorPrev = make_color_rgb(219, 115, 94);
			ColorNext = make_color_rgb(255, 169, 195);
			ColorNextNext = make_color_rgb(111, 237, 220);
			if (path_position == 1 && path_scale == 0){
				path_position = 2;
			}
			break;
			
				case 12: 
			name = "13: Torch"; 
			var position = 12;	
			ColorPrev = make_color_rgb(182, 73, 218);
			ColorNext = make_color_rgb(182, 73, 218);			
				break;	
			
				case 13: 
			name = "14: Bagworm"; 
			var position = 13;
			ColorPrev = make_color_rgb(182, 73, 218);
			ColorNext = make_color_rgb(182, 73, 218);
				break;	
				
				case 14: 
			name = "15: Shiny"; 
			var position = 14;
			ColorPrev = make_color_rgb(182, 73, 218);
			ColorNext = make_color_rgb(182, 73, 218);
				break;	
		}
	//break;
//}

// Version Display // -------------------------------------------------------------------------------------
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_color(x + 10, y - 6, "Version 1.0.0", c_white, c_white, c_white, c_white, 1);

// Date Display
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text_color(x + 210, y - 6, "February 15th, 2021", c_white, c_white, c_white, c_white, 1);


if (image_alpha == 0){
	// The Selected Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+62, 2, 2, 0, -1, 1);
	draw_sprite_ext(sprite_get("CSSicon"), 0, x+12, y+62, 2, 2, 0, -1, 1);
	
	// The Previous Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+42, 2, 2, 0, -1, 0.6);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+42, 2, 2, 0, -1, 1);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+42, 2, 2, 0, ColorPrev, 0.6);
	
	// The Next Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+82, 2, 2, 0, -1, 0.6);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+82, 2, 2, 0, -1, 1);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+82, 2, 2, 0, ColorNext, 0.6);

	// The NextNext Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+102, 2, 2, 0, -1, .4);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+102, 2, 2, 0, -1, 1);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+102, 2, 2, 0, ColorNextNext, .4);
}

if (image_alpha != 0 && position == color){
	// The Selected Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+62 - display, 2, 2, 0, -1, 1 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 0, x+12, y+62 - display, 2, 2, 0, -1, 1 - image_alpha);
	
	// The Previous Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+42 - display, 2, 2, 0, -1, .6 - image_alpha);
	//draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+42 - display, 2, 2, 0, -1, 1  - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+42 - display, 2, 2, 0, ColorPrev, .6 - image_alpha);
	
	// The Next Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+82 - display, 2, 2, 0, -1, .6 - image_alpha);
	//draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+82 - display, 2, 2, 0, -1, 1 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+82 - display, 2, 2, 0, ColorNext, .6 - image_alpha);
	
	// The NextNext Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+102 - display, 2, 2, 0, -1, .4 - image_alpha);
	//draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+102 - display, 2, 2, 0, -1, 1 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+102 - display, 2, 2, 0, ColorNextNext, .4 - image_alpha);
}

if (image_alpha != 0 && position == color){
	// The Selected Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+62 + display, 2, 2, 0, -1, 1.6 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 0, x+12, y+62 + display, 2, 2, 0, -1, 1.6 - image_alpha);
	
	// The Previous Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+42 + display, 2, 2, 0, -1, .6 - image_alpha);
	//draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+42 + display, 2, 2, 0, -1, 1  - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+42 + display, 2, 2, 0, ColorPrev, .6 - image_alpha);
	
	// The Next Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+82 + display, 2, 2, 0, -1, .6 - image_alpha);
	//draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+82 + display, 2, 2, 0, -1, 1 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+82 + display, 2, 2, 0, ColorNext, .6 - image_alpha);

	// The NextNext Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+102 + display, 2, 2, 0, -1, .4 - image_alpha);
	//draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+102 + display, 2, 2, 0, -1, 1 - image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+102 + display, 2, 2, 0, ColorNextNext, .4 - image_alpha);
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
// There are none for Tomo... at least for now