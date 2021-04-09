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
var alts = 18;

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
			name = " 1: Date Girl"; 
			var position = 0;
			ColorPrev = make_color_rgb(56, 76, 128);
			ColorNext = make_color_rgb(77, 176, 255);
			ColorNextNext = make_color_rgb(255, 56, 105);
				break;
			
				case 1: 
			name = " 2: Mermaid"; 
			var position = 1;
			ColorPrev = make_color_rgb(255, 169, 195);
			ColorNext = make_color_rgb(255, 56, 105);
			ColorNextNext = make_color_rgb(112, 186, 0);
				break;
			
				case 2: 
			name = " 3: Spice"; 
			var position = 2;
			ColorPrev = make_color_rgb(77, 176, 255);
			ColorNext = make_color_rgb(112, 186, 0);
			ColorNextNext = make_color_rgb(188, 73, 209);
				break;
			
				case 3: 
			name = " 4: Druid"; 
			var position = 3;
			ColorPrev = make_color_rgb(255, 56, 105);
			ColorNext = make_color_rgb(188, 73, 209);
			ColorNextNext = make_color_rgb(248, 247, 250);
				break;
				
				case 4: 
			name = " 5: Royal"; 
			var position = 4;
			ColorPrev = make_color_rgb(112, 186, 0);
			ColorNext = make_color_rgb(248, 247, 250);
			ColorNextNext = make_color_rgb(159, 70, 219);
				break;
			
				case 5: 
			name = " 6: Ghost"; 
			var position = 5;
			ColorPrev = make_color_rgb(188, 73, 209);
			ColorNext = make_color_rgb(159, 70, 219);
			ColorNextNext = make_color_rgb(167, 186, 74);
				break;
			
				case 6: 
			name = " 7: Abyss"; 
			var position = 6;
			ColorPrev = make_color_rgb(248, 247, 250);
			ColorNext = make_color_rgb(167, 186, 74);
			ColorNextNext = make_color_rgb(232, 73, 153);
				break;
			
				case 7:
			name = " 8: LR 35902"; 	
			if (get_player_color(player) == 7){
				for(i = 0; i < 8; i++){
					set_character_color_shading(i, 0);
				}
			}
			var position = 7;
			ColorPrev = make_color_rgb(159, 70, 219);
			ColorNext = make_color_rgb(232, 73, 153);
			ColorNextNext = make_color_rgb(252, 227, 121);
				break;
			
				case 8: 
			name = " 9: Pride"; 
			var position = 8;
			ColorPrev = make_color_rgb(167, 186, 74);
			ColorNext = make_color_rgb(252, 227, 121 );
			ColorNextNext = make_color_rgb(111, 237, 220);
				break;
			
				case 9: 
			name = " 10: No. 10"; 
			var position = 9;
			ColorPrev = make_color_rgb(232, 73, 153);
			ColorNext = make_color_rgb(111, 237, 220);
			ColorNextNext = make_color_rgb(255, 254, 252);
				break;
			
				case 10: 
			name = " 11: Miku CV01"; 
			var position = 10;
			ColorPrev = make_color_rgb(252, 227, 121 );
			ColorNext = make_color_rgb(255, 254, 252);
			ColorNextNext = make_color_rgb(255, 112, 156);
				break;	
			
				case 11: 
			name = " 12: DateTaker"; 
			var position = 11;
			ColorPrev = make_color_rgb(111, 237, 220);
			ColorNext = make_color_rgb(255, 112, 156);
			ColorNextNext = make_color_rgb(181, 74, 217);
				break;
			
				case 12: 
			name = " 13: Digital Girl"; 
			var position = 12;	
			ColorPrev = make_color_rgb(255, 254, 252);
			ColorNext = make_color_rgb(181, 74, 217);
			ColorNextNext = make_color_rgb(51, 213, 255);
				break;	
				
				case 13: 
			name = " 14: Acidic.of"; 
			var position = 13;	
			ColorPrev = make_color_rgb(255, 112, 156);
			ColorNext = make_color_rgb(51, 213, 255);
			ColorNextNext = make_color_rgb(219, 115, 94);
			draw_sprite_ext( sprite_get("acidchar"), 0, x + 70, y + 48, 1, 1, 0, c_white, 1);
				break;	
			
				case 14: 
			name = " 15: Syu Madness"; 
			var position = 14;
			ColorPrev = make_color_rgb(181, 74, 217);
			ColorNext = make_color_rgb(219, 115, 94);
			ColorNextNext = make_color_rgb(235, 110, 163);
				break;	
				
				case 15: 
			name = " 16: Date_Girl.chr"; 
			var position = 15;
			ColorPrev = make_color_rgb(51, 213, 255);
			ColorNext = make_color_rgb(235, 110, 163);
			ColorNextNext = make_color_rgb(167, 104, 191);
				break;
				
				case 16: 
			name = " 17: Date.GIF"; 
			var position = 16;	
			ColorPrev = make_color_rgb(219, 115, 94);
			ColorNext = make_color_rgb(167, 104, 191);
			ColorNextNext = make_color_rgb(191, 211, 219);
				break;	
			
				case 17: 
			name = " 18: Breaker"; 
			var position = 17;	
			ColorPrev = make_color_rgb(235, 110, 163);
			ColorNext = make_color_rgb(191, 211, 219);
			ColorNextNext = make_color_rgb(56, 76, 128);
				break;	
				
				case 18: 
			name = " 19: Metallic"; 
			var position = 18;	
			ColorPrev = make_color_rgb(167, 104, 191);
			ColorNext = make_color_rgb(56, 76, 128);
			ColorNextNext = make_color_rgb(255, 169, 195);
				break;	
				
				case 19: 
			name = " 20: Anarchy"; 
			var position = 19;	
			ColorPrev = make_color_rgb(191, 211, 219);
			ColorNext = make_color_rgb(255, 169, 195);
			ColorNextNext = make_color_rgb(77, 176, 255);
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

var Highlight = make_color_rgb(208, 255, 255);
draw_sprite_ext( sprite_get("select_highlight"), 0, x + 8, y + 8, 1, 1, 0, Highlight, 1);


draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_color(x + 10, y - 6, "Version 1.5.0", c_white, c_white, c_white, c_white, 1);

// Date Display
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text_color(x + 210, y - 6, "April 3rd, 2021", c_white, c_white, c_white, c_white, 1);

// Border Rectangle Yo!
//draw_rectangle_color(temp_x - 4, temp_y + 4, temp_x + 40 + 10 * alts, temp_y + 12, c_black, c_black, c_black, c_black, false);
//draw_rectangle_color(temp_x - 4, temp_y + 4, temp_x + 198, temp_y - 6, c_black, c_black, c_black, c_black, false);

// Selected Rectangle Yo!!!
//draw_rectangle_color(temp_x + 2 + 10 * position, temp_y + 6, temp_x + 9 + 10 * position, temp_y + 11, c_black, c_black, c_black, c_black, false);

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
// There are none for Date Girl... at least for now