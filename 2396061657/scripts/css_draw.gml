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
var alts = 25;

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

// Determines CSS icon colors
if (color == 0 || color == alts - 1 || color == alts){
	if (color == 0){
		ColorPrev = make_color_rgb(get_color_profile_slot_r(25, 0 ), get_color_profile_slot_g(25, 0 ), get_color_profile_slot_b(25, 0 ));
		ColorNext = make_color_rgb(get_color_profile_slot_r(color + 1, 0 ), get_color_profile_slot_g(color + 1, 0 ), get_color_profile_slot_b(color + 1, 0 ));
		ColorNextNext = make_color_rgb(get_color_profile_slot_r(color + 2, 0 ), get_color_profile_slot_g(color + 2, 0 ), get_color_profile_slot_b(color + 2, 0 ));
	}
	if (color == alts - 1){
		ColorPrev = make_color_rgb(get_color_profile_slot_r(color - 1, 0 ), get_color_profile_slot_g(color - 1, 0 ), get_color_profile_slot_b(color - 1, 0 ));
		ColorNext = make_color_rgb(get_color_profile_slot_r(color + 1, 0 ), get_color_profile_slot_g(color + 1, 0 ), get_color_profile_slot_b(color + 1, 0 ));
		ColorNextNext = make_color_rgb(get_color_profile_slot_r(0, 0 ), get_color_profile_slot_g(0, 0 ), get_color_profile_slot_b(0, 0 ));
	}
	if (color == alts){
		ColorPrev = make_color_rgb(get_color_profile_slot_r(color - 1, 0 ), get_color_profile_slot_g(color - 1, 0 ), get_color_profile_slot_b(color - 1, 0 ));
		ColorNext = make_color_rgb(get_color_profile_slot_r(0, 0 ), get_color_profile_slot_g(0, 0 ), get_color_profile_slot_b(0, 0 ));
		ColorNextNext = make_color_rgb(get_color_profile_slot_r(1, 0 ), get_color_profile_slot_g(1, 0 ), get_color_profile_slot_b(0, 0 ));
	}
}
else {
	ColorPrev = make_color_rgb(get_color_profile_slot_r(color - 1, 0 ), get_color_profile_slot_g(color - 1, 0 ), get_color_profile_slot_b(color - 1, 0 ));
	ColorNext = make_color_rgb(get_color_profile_slot_r(color + 1, 0 ), get_color_profile_slot_g(color + 1, 0 ), get_color_profile_slot_b(color + 1, 0 ));
	ColorNextNext = make_color_rgb(get_color_profile_slot_r(color + 2, 0 ), get_color_profile_slot_g(color + 2, 0 ), get_color_profile_slot_b(color + 2, 0 ));
}

//switch(cPage) {
//	case 1:
		switch(color) {
				case 0:
			name = " 1: Date Girl"; 
			var position = 0;
				break;
			
				case 1: 
			name = " 2: Mermaid"; 
			var position = 1;
				break;
			
				case 2: 
			name = " 3: Spice"; 
			var position = 2;
				break;
			
				case 3: 
			name = " 4: Druid"; 
			var position = 3;
				break;
				
				case 4: 
			name = " 5: Royal"; 
			var position = 4;
				break;
			
				case 5: 
			name = " 6: Ghost"; 
			var position = 5;
				break;
			
				case 6: 
			name = " 7: Abyss"; 
			var position = 6;
				break;
			
				case 7:
			name = " 8: LR 35902"; 	
			if (get_player_color(player) == 7){
				for(i = 0; i < 8; i++){
					set_character_color_shading(i, 0);
				}
			}
			var position = 7;
				break;
			
				case 8: 
			name = " 9: Pride"; 
			var position = 8;
				break;
			
				case 9: 
			name = " 10: No. 10"; 
			var position = 9;
				break;
			
				case 10: 
			name = " 11: Miku CV01"; 
			var position = 10;
				break;	
			
				case 11: 
			name = " 12: DateTaker"; 
			var position = 11;
				break;
			
				case 12: 
			name = " 13: Digital Girl"; 
			var position = 12;
				break;	
				
				case 13: 
			name = " 14: Acidic.of"; 
			var position = 13;
			draw_sprite_ext( sprite_get("acidchar"), 0, x + 70, y + 48, 1, 1, 0, c_white, 1);
				break;	
			
				case 14: 
			name = " 15: Syu Madness"; 
			var position = 14;
				break;	
				
				case 15: 
			name = " 16: Date_Girl.chr"; 
			var position = 15;
				break;
				
				case 16: 
			name = " 17: Date.GIF"; 
			var position = 16;
				break;	
			
				case 17: 
			name = " 18: Breaker"; 
			var position = 17;
				break;	
				
				case 18: 
			name = " 19: Metallic"; 
			var position = 18;
				break;	
				
				case 19: 
			name = " 20: Anarchy"; 
			draw_sprite_ext( sprite_get("css_cal_icon"), 0, x + 176, y + 108, 1, 1, 0, c_white, 1);
			var position = 19;
				break;	
				
				case 20: 
			name = " 21: Deputy"; 
			var position = 20;
				break;	
				
				case 21: 
			name = " 22: Inked Up"; 
			var position = 21;
				break;	
				
				case 22: 
			name = " 23: February"; 
			var position = 22;
				break;	
				
				case 23: 
			name = " 24: Osohe"; 
			var position = 23;
				break;	
				
				case 24: 
			name = " 25: Apostle"; 
			var position = 24;
				break;	
				
				case 25: 
			name = " 26: Event"; 
			draw_sprite_ext( sprite_get("css_cal_icon"), 0, x + 176, y + 108, 1, 1, 0, c_white, 1);
			var position = 25;
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


draw_set_font(1);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_text_color(x + 4, y + 231, "v1.9.2", c_gray, c_gray, c_gray, c_gray, 1);

// Date Display
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text_color(x + 218, y + 214, "October 24th, 2021", c_gray, c_gray, c_gray, c_gray, 1);

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