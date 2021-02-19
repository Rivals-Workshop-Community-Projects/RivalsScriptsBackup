//css draw
//Trying something different for CSS draw to learn
//more of GML dialect like Switch and For statements

//Timer for Fading out text
image_alpha = max(image_alpha - 0.01, 0);
image_speed = 0;

// Variables for positioning of visuals
var temp_x = x + 12;
var temp_y = y + 140;
var alts = 14;

var color = get_player_color(player);
var name = " ";

//path_scale = 0;
//path_position = 0;

switch (path_position){
	case 0:
		var cPage = 1;
	break;
	case 1:
		var cPage = 2;
	break;
}

// Updating image_alpha when a new color is selected
if (color != image_index){ 
	image_alpha = 3; //Set to 3 to make it take a long time for the text to fade
}
image_index = color;

// Trying my best to learn how to use switches (I think this is the right way to use them?)
// Trying some new stuff out to increase total amount of colors selectable on the CSS menu
switch(cPage) {
	case 1:
		switch(color) {
				case 0:
			name = "01: Default"; 
			var position = 0;
				break;
			
				case 1: 
			name = "02: Nebula"; 
			var position = 1;
				break;
			
				case 2: 
			name = "03: Radiator"; 
			var position = 2;
				break;
			
				case 3: 
			name = "04: String Spit"; 
			var position = 4;
				break;
				
				case 4: 
			name = "05: Sea Urchin"; 
			var position = 4;
				break;
			
				case 5: 
			name = "06: Sea Cucumber"; 
			var position = 5;
				break;
			
				case 6: 
			name = "07: Abyss"; 
			var position = 6;
				break;
			
				case 7:
			name = "08: Retro"; 	
			if (get_player_color(player) == 7){
				for(i = 0; i < 8; i++){
					set_character_color_shading(i, 0);
				}
			}
			var position = 7;
				break;
			
				case 8: 
			name = "09: Cottonweed"; 
			var position = 8;
				break;
			
				case 9: 
			name = "10: Renegade"; 
			var position = 9;
				break;
			
				case 10: 
			name = "11: Attaching"; 
			var position = 10;
				break;	
			
				case 11: 
			name = "12: Soft Tissue"; 
			var position = 11;
				break;
			
				case 12: 
			name = "13: Torch"; 
			var position = 12;				
				break;	
			
				case 13: 
			name = "14: Bagworm"; 
			var position = 13;
				break;	
				
				case 14: 
			name = "15: Shiny"; 
			var position = 14;
				break;	
		}
	break;
}

// Version Display // -------------------------------------------------------------------------------------
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_color(x + 10, y - 6, "Version 1.1.1", c_white, c_white, c_white, c_white, 1);

// Date Display
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text_color(x + 210, y - 6, "August 10th, 2020", c_white, c_white, c_white, c_white, 1);

// Border Rectangle Yo!
draw_rectangle_color(temp_x, temp_y + 4, temp_x + 40 + 10 * alts, temp_y + 12, c_black, c_black, c_black, c_black, false);

// Grey Rectangles Yo!!
for(i = 0; i < alts; i++){
	var draw_x = temp_x + 2 + 10 * i;
	if (cPage == 1){
		draw_rectangle_color(draw_x, temp_y + 8, draw_x + 7, temp_y + 11, c_gray, c_gray, c_gray, c_gray, false);
	}
	if (cPage == 2){
		draw_rectangle_color(draw_x, temp_y + 8, draw_x + 7, temp_y + 11, c_red, c_red, c_red, c_red, false);
	
	}
}

// Selected Rectangle Yo!!!
draw_rectangle_color(temp_x + 2 + 10 * position, temp_y + 6, temp_x + 9 + 10 * position, temp_y + 11, c_black, c_black, c_black, c_black, false);

// Initial Name	+ Rectangles
if (image_alpha > 0){
	draw_rectangle_color(temp_x, temp_y + 4, temp_x + 200, temp_y - 10, c_black, c_black, c_black, c_black, false);

	draw_set_font(asset_get("fName"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	draw_text_color(temp_x, temp_y - 6, "Alt " + name, c_white, c_white, c_white, c_white, image_alpha);
}

// Secret Colors //
// There are none for Snom