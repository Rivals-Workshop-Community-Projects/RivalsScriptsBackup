//css draw

if (CSS_image_alpha == 0){
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

if (CSS_image_alpha != 0 && position = color){
	// The Selected Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+62 - display_alpha, 2, 2, 0, -1, 1 - CSS_image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 0, x+12, y+62 - display_alpha, 2, 2, 0, -1, 1 - CSS_image_alpha);
	
	// The Previous Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+42 - display_alpha, 2, 2, 0, -1, .6 - CSS_image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+42 - display_alpha, 2, 2, 0, ColorPrev, .6 - CSS_image_alpha);
	
	// The Next Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+82 - display_alpha, 2, 2, 0, -1, .6 - CSS_image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+82 - display_alpha, 2, 2, 0, ColorNext, .6 - CSS_image_alpha);
	
	// The NextNext Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+102 - display_alpha, 2, 2, 0, -1, .4 - CSS_image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+102 - display_alpha, 2, 2, 0, ColorNextNext, .4 - CSS_image_alpha);
}

if (CSS_image_alpha != 0 && position = color){
	// The Selected Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+62 + display_alpha, 2, 2, 0, -1, 1.6 - CSS_image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 0, x+12, y+62 + display_alpha, 2, 2, 0, -1, 1.6 - CSS_image_alpha);
	
	// The Previous Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+42 + display_alpha, 2, 2, 0, -1, .6 - CSS_image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+42 + display_alpha, 2, 2, 0, ColorPrev, .6 - CSS_image_alpha);
	
	// The Next Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+82 + display_alpha, 2, 2, 0, -1, .6 - CSS_image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+82 + display_alpha, 2, 2, 0, ColorNext, .6 - CSS_image_alpha);

	// The NextNext Color
	draw_sprite_ext(sprite_get("CSSicon"), 1, x+12, y+102 + display_alpha, 2, 2, 0, -1, .4 - CSS_image_alpha);
	draw_sprite_ext(sprite_get("CSSicon"), 2, x+12, y+102 + display_alpha, 2, 2, 0, ColorNextNext, .4 - CSS_image_alpha);
}

// Shaders end

shader_end();

draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_text_color(x + 4, y + 215, "v1.9.1", c_gray, c_gray, c_gray, c_gray, 1);

// Date Display
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text_color(x + 218, y + 215, "May 5th, 2023", c_gray, c_gray, c_gray, c_gray, 1);

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