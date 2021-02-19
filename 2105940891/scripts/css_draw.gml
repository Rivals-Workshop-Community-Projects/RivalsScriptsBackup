//css draw
//Trying something different for CSS draw to learn
//more of GML dialect like Switch and For statements

//Timer for Fading out text
image_alpha = max(image_alpha - 0.01, 0);
image_speed = 0;

// Variables for positioning of visuals
var temp_x = x + 12;
var temp_y = y + 140;
var alts = 16;

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
			if (path_position == 0 && path_scale == 1){
				path_position = 1;
			}

			// Loving Hand
			set_color_profile_slot( 15, 0, 242, 92, 112 ); //Eyes/Magic
			set_color_profile_slot( 15, 1, 84, 110, 209 ); //Hair
			set_color_profile_slot( 15, 2, 255, 174, 205 ); //Clothes
			set_color_profile_slot( 15, 3, 249, 210, 201 ); //Skin
			set_color_profile_slot( 15, 4, 255, 255, 255 ); //Tiddy/Magic
			set_color_profile_slot( 15, 5, 248, 212, 76 ); //Broom
			set_color_profile_slot( 15, 6, 232, 232, 232 ); //Eye Whites
			// Blue
			set_color_profile_slot( 1, 0, 255, 238, 0 ); //Eyes/Magic
			set_color_profile_slot( 1, 1, 255, 238, 0 ); //Hair
			set_color_profile_slot( 1, 2, 35, 49, 186 ); //Clothes
			set_color_profile_slot( 1, 3, 0, 0, 0 ); //Skin
			set_color_profile_slot( 1, 4, 112, 89, 255 ); //Tiddy/Magic
			set_color_profile_slot( 1, 5, 230, 180, 85 ); //Broom
			set_color_profile_slot( 1, 6, 0, 0, 0 ); //Eye Whites
				break;
			
				case 1: 
			name = "02: Fantasy"; 
			var position = 1;
			
			// Red
			set_color_profile_slot( 2, 0, 194, 0, 0 ); //Eyes/Magic
			set_color_profile_slot( 2, 1, 255, 0, 89 ); //Hair
			set_color_profile_slot( 2, 2, 255, 18, 77 ); //Clothes
			set_color_profile_slot( 2, 3, 245, 183, 151 ); //Skin
			set_color_profile_slot( 2, 4, 194, 0, 178 ); //Tiddy/Magic
			set_color_profile_slot( 2, 5, 211, 200, 230 ); //Broom
			set_color_profile_slot( 2, 6, 255, 255, 255 ); //Eye Whites
			// Default
			set_color_profile_slot( 0, 0, 118, 0, 204 );
			set_color_profile_slot( 0, 1, 252, 228, 60 );
			set_color_profile_slot( 0, 2, 74, 78, 130 );
			set_color_profile_slot( 0, 3, 245, 183, 151 );
			set_color_profile_slot( 0, 4, 241, 37, 30 );
			set_color_profile_slot( 0, 5, 232, 184, 96 );
			set_color_profile_slot( 0, 6, 250, 245, 250 );
				break;
			
				case 2: 
			name = "03: Immolation"; 
			var position = 2;
			
			// Green
			set_color_profile_slot( 3, 0, 194, 194, 194 ); //Eyes/Magic
			set_color_profile_slot( 3, 1, 46, 43, 51 ); //Hair
			set_color_profile_slot( 3, 2, 0, 163, 114 ); //Clothes
			set_color_profile_slot( 3, 3, 0, 0, 0 ); //Skin
			set_color_profile_slot( 3, 4, 255, 54, 138 ); //Tiddy/Magic
			set_color_profile_slot( 3, 5, 255, 54, 138 ); //Broom
			set_color_profile_slot( 3, 6, 0, 0, 0 ); //Eye Whites
			// Blue
			set_color_profile_slot( 1, 0, 255, 238, 0 ); //Eyes/Magic
			set_color_profile_slot( 1, 1, 255, 238, 0 ); //Hair
			set_color_profile_slot( 1, 2, 35, 49, 186 ); //Clothes
			set_color_profile_slot( 1, 3, 0, 0, 0 ); //Skin
			set_color_profile_slot( 1, 4, 112, 89, 255 ); //Tiddy/Magic
			set_color_profile_slot( 1, 5, 230, 180, 85 ); //Broom
			set_color_profile_slot( 1, 6, 0, 0, 0 ); //Eye Whites
				break;
			
				case 3: 
			name = "04: Lonely"; 
			var position = 3;
			
			// Black
			set_color_profile_slot( 4, 0, 255, 238, 0 ); //Eyes/Magic
			set_color_profile_slot( 4, 1, 59, 55, 55 ); //Hair
			set_color_profile_slot( 4, 2, 56, 37, 61 ); //Clothes
			set_color_profile_slot( 4, 3, 34, 181, 40 ); //Skin
			set_color_profile_slot( 4, 4, 216, 102, 255 ); //Tiddy/Magic
			set_color_profile_slot( 4, 5, 230, 180, 85 ); //Broom
			set_color_profile_slot( 4, 6, 248, 255, 207 ); //Eye Whites
			// Red
			set_color_profile_slot( 2, 0, 194, 0, 0 ); //Eyes/Magic
			set_color_profile_slot( 2, 1, 255, 0, 89 ); //Hair
			set_color_profile_slot( 2, 2, 255, 18, 77 ); //Clothes
			set_color_profile_slot( 2, 3, 245, 183, 151 ); //Skin
			set_color_profile_slot( 2, 4, 194, 0, 178 ); //Tiddy/Magic
			set_color_profile_slot( 2, 5, 211, 200, 230 ); //Broom
			set_color_profile_slot( 2, 6, 255, 255, 255 ); //Eye Whites
				break;
			
			case 4: 
			name = "05: Tragedy"; 
			var position = 4;

			// Purple
			set_color_profile_slot( 5, 0, 214, 128, 1 ); //Eyes/Magic
			set_color_profile_slot( 5, 1, 255, 99, 125 ); //Hair
			set_color_profile_slot( 5, 2, 126, 8, 148 ); //Clothes
			set_color_profile_slot( 5, 3, 237, 192, 168 ); //Skin
			set_color_profile_slot( 5, 4, 209, 29, 128 ); //Tiddy/Magic
			set_color_profile_slot( 5, 5, 255, 0, 68 ); //Broom
			set_color_profile_slot( 5, 6, 0, 0, 0 ); //Eye Whites
			// Green
			set_color_profile_slot( 3, 0, 194, 194, 194 ); //Eyes/Magic
			set_color_profile_slot( 3, 1, 46, 43, 51 ); //Hair
			set_color_profile_slot( 3, 2, 0, 163, 114 ); //Clothes
			set_color_profile_slot( 3, 3, 0, 0, 0 ); //Skin
			set_color_profile_slot( 3, 4, 255, 54, 138 ); //Tiddy/Magic
			set_color_profile_slot( 3, 5, 255, 54, 138 ); //Broom
			set_color_profile_slot( 3, 6, 0, 0, 0 ); //Eye Whites
				break;
			
				case 5: 
			name = "06: Phantom"; 
			var position = 5;
			
			// V-sai
			set_color_profile_slot( 6, 0, 145, 255, 105 ); //Eyes/Magic
			set_color_profile_slot( 6, 1, 255, 255, 255 ); //Hair
			set_color_profile_slot( 6, 2, 27, 143, 27 ); //Clothes
			set_color_profile_slot( 6, 3, 255, 255, 255 ); //Skin
			set_color_profile_slot( 6, 4, 14, 69, 37 ); //Tiddy/Magic
			set_color_profile_slot( 6, 5, 153, 86, 44 ); //Broom
			set_color_profile_slot( 6, 6, 255, 255, 255 ); //Eye Whites
			// Black
			set_color_profile_slot( 4, 0, 255, 238, 0 ); //Eyes/Magic
			set_color_profile_slot( 4, 1, 59, 55, 55 ); //Hair
			set_color_profile_slot( 4, 2, 56, 37, 61 ); //Clothes
			set_color_profile_slot( 4, 3, 34, 181, 40 ); //Skin
			set_color_profile_slot( 4, 4, 216, 102, 255 ); //Tiddy/Magic
			set_color_profile_slot( 4, 5, 230, 180, 85 ); //Broom
			set_color_profile_slot( 4, 6, 248, 255, 207 ); //Eye Whites
				break;
			
				case 6: 
			name = "07: Challenger"; 
			var position = 6;

			// Pride
			set_color_profile_slot( 7, 0, 128, 0, 128 ); //Eyes/Magic
			set_color_profile_slot( 7, 1, 255, 255, 255 ); //Hair
			set_color_profile_slot( 7, 2, 128, 0, 128 ); //Clothes
			set_color_profile_slot( 7, 3, 163, 163, 163 ); //Skin
			set_color_profile_slot( 7, 4, 89, 89, 89 ); //Tiddy/Magic
			set_color_profile_slot( 7, 5, 0, 0, 0 ); //Broom
			set_color_profile_slot( 7, 6, 255, 255, 255 ); //Eye Whites
			// Purple
			set_color_profile_slot( 5, 0, 214, 128, 1 ); //Eyes/Magic
			set_color_profile_slot( 5, 1, 255, 99, 125 ); //Hair
			set_color_profile_slot( 5, 2, 126, 8, 148 ); //Clothes
			set_color_profile_slot( 5, 3, 237, 192, 168 ); //Skin
			set_color_profile_slot( 5, 4, 209, 29, 128 ); //Tiddy/Magic
			set_color_profile_slot( 5, 5, 255, 0, 68 ); //Broom
			set_color_profile_slot( 5, 6, 0, 0, 0 ); //Eye Whites
				break;
			
				case 7:
			name = "08: Pride"; 
			var position = 7;

			// Special 1
			set_color_profile_slot( 8, 0, 255, 238, 0 ); //Eyes/Magic
			set_color_profile_slot( 8, 1, 255, 238, 0 ); //Hair
			set_color_profile_slot( 8, 2, 54, 55, 59 ); //Clothes
			set_color_profile_slot( 8, 3, 245, 183, 151 ); //Skin
			set_color_profile_slot( 8, 4, 255, 255, 255 ); //Tiddy/Magic
			set_color_profile_slot( 8, 5, 230, 180, 85 ); //Broom
			set_color_profile_slot( 8, 6, 255, 255, 255 ); //Eye Whites
			// V-sai
			set_color_profile_slot( 6, 0, 145, 255, 105 ); //Eyes/Magic
			set_color_profile_slot( 6, 1, 255, 255, 255 ); //Hair
			set_color_profile_slot( 6, 2, 27, 143, 27 ); //Clothes
			set_color_profile_slot( 6, 3, 255, 255, 255 ); //Skin
			set_color_profile_slot( 6, 4, 14, 69, 37 ); //Tiddy/Magic
			set_color_profile_slot( 6, 5, 153, 86, 44 ); //Broom
			set_color_profile_slot( 6, 6, 255, 255, 255 ); //Eye Whites
				break;
			
				case 8: 
			name = "09: Gensokyo"; 
			var position = 8;
			
			// Special 2
			set_color_profile_slot( 9, 0, 223, 118, 38 ); //Eyes/Magic
			set_color_profile_slot( 9, 1, 172, 138, 168 ); //Hair
			set_color_profile_slot( 9, 2, 78, 65, 102 ); //Clothes
			set_color_profile_slot( 9, 3, 233, 202, 174 ); //Skin
			set_color_profile_slot( 9, 4, 124, 205, 224 ); //Tiddy/Magic
			set_color_profile_slot( 9, 5, 255, 255, 255 ); //Broom
			set_color_profile_slot( 9, 6, 255, 255, 255 ); //Eye Whites
			// Pride
			set_color_profile_slot( 7, 0, 128, 0, 128 ); //Eyes/Magic
			set_color_profile_slot( 7, 1, 255, 255, 255 ); //Hair
			set_color_profile_slot( 7, 2, 128, 0, 128 ); //Clothes
			set_color_profile_slot( 7, 3, 163, 163, 163 ); //Skin
			set_color_profile_slot( 7, 4, 89, 89, 89 ); //Tiddy/Magic
			set_color_profile_slot( 7, 5, 0, 0, 0 ); //Broom
			set_color_profile_slot( 7, 6, 255, 255, 255 ); //Eye Whites
				break;
			
				case 9: 
			name = "10: Data Overmind"; 
			var position = 9;
						
			// Abyss
			set_color_profile_slot( 10, 0, 255, 135, 16 ); //Eyes/Magic
			set_color_profile_slot( 10, 1, 220, 113, 255 ); //Hair
			set_color_profile_slot( 10, 2, 79, 61, 94 ); //Clothes
			set_color_profile_slot( 10, 3, 166, 172, 214 ); //Skin
			set_color_profile_slot( 10, 4, 220, 113, 255 ); //Tiddy/Magic
			set_color_profile_slot( 10, 5, 86, 84, 146 ); //Broom
			set_color_profile_slot( 10, 6, 0, 0, 0 ); //Eye Whites
			// Special 1
			set_color_profile_slot( 8, 0, 255, 238, 0 ); //Eyes/Magic
			set_color_profile_slot( 8, 1, 255, 238, 0 ); //Hair
			set_color_profile_slot( 8, 2, 54, 55, 59 ); //Clothes
			set_color_profile_slot( 8, 3, 245, 183, 151 ); //Skin
			set_color_profile_slot( 8, 4, 255, 255, 255 ); //Tiddy/Magic
			set_color_profile_slot( 8, 5, 230, 180, 85 ); //Broom
			set_color_profile_slot( 8, 6, 255, 255, 255 ); //Eye Whites
				break;
			
				case 10: 
			name = "11: Abyss"; 
			var position = 10;
			
			// Gameboy
			set_color_profile_slot( 11, 0, 35, 67, 49 ); //Eyes/Magic
			set_color_profile_slot( 11, 1, 83, 122, 62 ); //Hair
			set_color_profile_slot( 11, 2, 35, 67, 49 ); //Clothes
			set_color_profile_slot( 11, 3, 167, 186, 74 ); //Skin
			set_color_profile_slot( 11, 4, 83, 122, 62 ); //Tiddy/Magic
			set_color_profile_slot( 11, 5, 167, 186, 74 ); //Broom
			set_color_profile_slot( 11, 6, 255, 249, 249 ); //Eye Whites
			// Special 2
			set_color_profile_slot( 9, 0, 223, 118, 38 ); //Eyes/Magic
			set_color_profile_slot( 9, 1, 172, 138, 168 ); //Hair
			set_color_profile_slot( 9, 2, 78, 65, 102 ); //Clothes
			set_color_profile_slot( 9, 3, 233, 202, 174 ); //Skin
			set_color_profile_slot( 9, 4, 124, 205, 224 ); //Tiddy/Magic
			set_color_profile_slot( 9, 5, 255, 255, 255 ); //Broom
			set_color_profile_slot( 9, 6, 255, 255, 255 ); //Eye Whites
				break;	
			
				case 11: 
			name = "12: Retro"; 
			var position = 11;
			if (get_player_color(player) == 11){
				for(i = 0; i < 8; i++){
					set_character_color_shading(i, 0);
				}
			}
			
			// True Colors
			set_color_profile_slot( 12, 0, 255, 230, 41 ); //Eyes/Magic
			set_color_profile_slot( 12, 1, 68, 59, 104 ); //Hair
			set_color_profile_slot( 12, 2, 57, 51, 79 ); //Clothes
			set_color_profile_slot( 12, 3, 68, 59, 104 ); //Skin
			set_color_profile_slot( 12, 4, 117, 92, 134 ); //Tiddy/Magic
			set_color_profile_slot( 12, 5, 55, 39, 65 ); //Broom
			set_color_profile_slot( 12, 6, 255, 124, 0 ); //Eye Whites
			// Abyss
			set_color_profile_slot( 10, 0, 255, 135, 16 ); //Eyes/Magic
			set_color_profile_slot( 10, 1, 220, 113, 255 ); //Hair
			set_color_profile_slot( 10, 2, 79, 61, 94 ); //Clothes
			set_color_profile_slot( 10, 3, 166, 172, 214 ); //Skin
			set_color_profile_slot( 10, 4, 220, 113, 255 ); //Tiddy/Magic
			set_color_profile_slot( 10, 5, 86, 84, 146 ); //Broom
			set_color_profile_slot( 10, 6, 0, 0, 0 ); //Eye Whites			
				break;
			
				case 12: 
			name = "13: True Colors"; 
			var position = 12;			

			// EXW
			set_color_profile_slot( 13, 0, 67, 168, 67 ); //Eyes/Magic
			set_color_profile_slot( 13, 1, 37, 93, 37 ); //Hair
			set_color_profile_slot( 13, 2, 190, 230, 164 ); //Clothes
			set_color_profile_slot( 13, 3, 245, 183, 151 ); //Skin
			set_color_profile_slot( 13, 4, 255, 255, 255 ); //Tiddy/Magic
			set_color_profile_slot( 13, 5, 190, 230, 164 ); //Broom
			set_color_profile_slot( 13, 6, 255, 255, 255 ); //Eye Whites
			// Gameboy
			set_color_profile_slot( 11, 0, 35, 67, 49 ); //Eyes/Magic
			set_color_profile_slot( 11, 1, 83, 122, 62 ); //Hair
			set_color_profile_slot( 11, 2, 35, 67, 49 ); //Clothes
			set_color_profile_slot( 11, 3, 167, 186, 74 ); //Skin
			set_color_profile_slot( 11, 4, 83, 122, 62 ); //Tiddy/Magic
			set_color_profile_slot( 11, 5, 167, 186, 74 ); //Broom
			set_color_profile_slot( 11, 6, 255, 249, 249 ); //Eye Whites			
				break;	
			
				case 13: 
			name = "14: Workshop"; 
			var position = 13;

			if (path_orientation == 2){
				path_orientation = 0;
			}
			
			// Successor
			set_color_profile_slot( 14, 0, 78, 97, 202 ); //Eyes/Magic
			set_color_profile_slot( 14, 1, 133, 148, 239 ); //Hair
			set_color_profile_slot( 14, 2, 198, 152, 245 ); //Clothes
			set_color_profile_slot( 14, 3, 245, 183, 151 ); //Skin
			set_color_profile_slot( 14, 4, 183, 200, 254 ); //Tiddy/Magic
			set_color_profile_slot( 14, 5, 242, 190, 126 ); //Broom
			set_color_profile_slot( 14, 6, 255, 255, 255 ); //Eye Whites
			// True Colors
			set_color_profile_slot( 12, 0, 255, 230, 41 ); //Eyes/Magic
			set_color_profile_slot( 12, 1, 68, 59, 104 ); //Hair
			set_color_profile_slot( 12, 2, 57, 51, 79 ); //Clothes
			set_color_profile_slot( 12, 3, 68, 59, 104 ); //Skin
			set_color_profile_slot( 12, 4, 117, 92, 134 ); //Tiddy/Magic
			set_color_profile_slot( 12, 5, 55, 39, 65 ); //Broom
			set_color_profile_slot( 12, 6, 255, 124, 0 ); //Eye Whites
			path_scale = 0; // Makes color 1 not change to color 17 going backward
				break;	

				case 14: 
			name = "15: Successor"; 
			var position = 14;

			if (path_orientation == 0){
				path_orientation = 2;
			}

			// Muma
			set_color_profile_slot( 15, 0, 202, 91, 100 ); //Eyes/Magic
			set_color_profile_slot( 15, 1, 207, 121, 131 ); //Hair
			set_color_profile_slot( 15, 2, 61, 113, 135 ); //Clothes
			set_color_profile_slot( 15, 3, 90, 138, 158 ); //Skin
			set_color_profile_slot( 15, 4, 241, 93, 118 ); //Tiddy/Magic
			set_color_profile_slot( 15, 5, 223, 99, 110 ); //Broom
			set_color_profile_slot( 15, 6, 245, 206, 127 ); //Eye Whites
			// EXW
			set_color_profile_slot( 13, 0, 67, 168, 67 ); //Eyes/Magic
			set_color_profile_slot( 13, 1, 37, 93, 37 ); //Hair
			set_color_profile_slot( 13, 2, 190, 230, 164 ); //Clothes
			set_color_profile_slot( 13, 3, 245, 183, 151 ); //Skin
			set_color_profile_slot( 13, 4, 255, 255, 255 ); //Tiddy/Magic
			set_color_profile_slot( 13, 5, 190, 230, 164 ); //Broom
			set_color_profile_slot( 13, 6, 255, 255, 255 ); //Eye Whites
			path_scale = 1;	// Makes color 16 not change to color 32 going backward
				break;	
				
				case 15: 
			name = "16: Muma"; 
			var position = 15;
			if (path_position == 0 && path_scale == 0){
				path_position = 1;
			}
			
			if (path_orientation == 2){
				path_orientation = 0;
			}
			
			// Successor
			set_color_profile_slot( 14, 0, 78, 97, 202 ); //Eyes/Magic
			set_color_profile_slot( 14, 1, 133, 148, 239 ); //Hair
			set_color_profile_slot( 14, 2, 198, 152, 245 ); //Clothes
			set_color_profile_slot( 14, 3, 245, 183, 151 ); //Skin
			set_color_profile_slot( 14, 4, 183, 200, 254 ); //Tiddy/Magic
			set_color_profile_slot( 14, 5, 242, 190, 126 ); //Broom
			set_color_profile_slot( 14, 6, 255, 255, 255 ); //Eye Whites

				break;	
		}
	break;
	case 2:
		switch(color) {	
				case 0:
			name = "Default - Page 2"; 
			var position = 0;
			if (path_position == 1 && path_scale == 0){
				path_position = 0;
				
				if (path_orientation == 1){
					path_orientation = 0;
				}
				else{
					path_orientation = 1;
				}
			}
			// Muma
			set_color_profile_slot( 15, 0, 202, 91, 100 ); //Eyes/Magic
			set_color_profile_slot( 15, 1, 207, 121, 131 ); //Hair
			set_color_profile_slot( 15, 2, 61, 113, 135 ); //Clothes
			set_color_profile_slot( 15, 3, 90, 138, 158 ); //Skin
			set_color_profile_slot( 15, 4, 241, 93, 118 ); //Tiddy/Magic
			set_color_profile_slot( 15, 5, 223, 99, 110 ); //Broom
			set_color_profile_slot( 15, 6, 245, 206, 127 ); //Eye Whites
			// Shu
			set_color_profile_slot( 1, 0, 128, 90, 69 ); //Eyes/Magic
			set_color_profile_slot( 1, 1, 95, 75, 77 ); //Hair
			set_color_profile_slot( 1, 2, 223, 58, 74 ); //Clothes
			set_color_profile_slot( 1, 3, 236, 167, 162 ); //Skin
			set_color_profile_slot( 1, 4, 61, 57, 56 ); //Tiddy/Magic
			set_color_profile_slot( 1, 5, 230, 57, 76 ); //Broom
			set_color_profile_slot( 1, 6, 251, 253, 250 ); //Eye Whites
				break;	
				
				case 1: 
			name = "17: Shu"; 
			var position = 1;


			// Chestnut
			set_color_profile_slot( 2, 0, 76, 219, 11 ); //Eyes/Magic
			set_color_profile_slot( 2, 1, 255, 133, 157 ); //Hair
			set_color_profile_slot( 2, 2, 147, 207, 186 ); //Clothes
			set_color_profile_slot( 2, 3, 252, 217, 187 ); //Skin
			set_color_profile_slot( 2, 4, 244, 170, 61 ); //Tiddy/Magic
			set_color_profile_slot( 2, 5, 81, 98, 108 ); //Broom
			set_color_profile_slot( 2, 6, 255, 255, 255 ); //Eye Whites
				break;
			
				case 2: 
			name = "18: Chestnut"; 
			var position = 2;
			
			// Rose
			set_color_profile_slot( 3, 0, 96, 84, 230 ); //Eyes/Magic
			set_color_profile_slot( 3, 1, 125, 80, 66 ); //Hair
			set_color_profile_slot( 3, 2, 97, 59, 67 ); //Clothes
			set_color_profile_slot( 3, 3, 249, 167, 147 ); //Skin
			set_color_profile_slot( 3, 4, 127, 89, 173 ); //Tiddy/Magic
			set_color_profile_slot( 3, 5, 35, 161, 23 ); //Broom
			set_color_profile_slot( 3, 6, 255, 255, 255 ); //Eye Whites
			// Shu
			set_color_profile_slot( 1, 0, 128, 90, 69 ); //Eyes/Magic
			set_color_profile_slot( 1, 1, 95, 75, 77 ); //Hair
			set_color_profile_slot( 1, 2, 223, 58, 74 ); //Clothes
			set_color_profile_slot( 1, 3, 236, 167, 162 ); //Skin
			set_color_profile_slot( 1, 4, 61, 57, 56 ); //Tiddy/Magic
			set_color_profile_slot( 1, 5, 230, 57, 76 ); //Broom
			set_color_profile_slot( 1, 6, 251, 253, 250 ); //Eye Whites
				break;
			
				case 3: 
			name = "19: Rose"; 
			var position = 3;
			
			// Eccentric
			set_color_profile_slot( 4, 0, 255, 154, 54 ); //Eyes/Magic
			set_color_profile_slot( 4, 1, 243, 227, 212 ); //Hair
			set_color_profile_slot( 4, 2, 105, 188, 196 ); //Clothes
			set_color_profile_slot( 4, 3, 224, 144, 94 ); //Skin
			set_color_profile_slot( 4, 4, 83, 83, 83 ); //Tiddy/Magic
			set_color_profile_slot( 4, 5, 255, 158, 183 ); //Broom
			set_color_profile_slot( 4, 6, 248, 255, 207 ); //Eye Whites
			// Chestnut
			set_color_profile_slot( 2, 0, 76, 219, 11 ); //Eyes/Magic
			set_color_profile_slot( 2, 1, 255, 133, 157 ); //Hair
			set_color_profile_slot( 2, 2, 147, 207, 186 ); //Clothes
			set_color_profile_slot( 2, 3, 252, 217, 187 ); //Skin
			set_color_profile_slot( 2, 4, 244, 170, 61 ); //Tiddy/Magic
			set_color_profile_slot( 2, 5, 81, 98, 108 ); //Broom
			set_color_profile_slot( 2, 6, 255, 255, 255 ); //Eye Whites
				break;
			
			case 4: 
			name = "20: Eccentric"; 
			var position = 4;

			// Board
			set_color_profile_slot( 5, 0, 237, 44, 63 ); //Eyes/Magic
			set_color_profile_slot( 5, 1, 131, 227, 184 ); //Hair
			set_color_profile_slot( 5, 2, 66, 49, 117 ); //Clothes
			set_color_profile_slot( 5, 3, 255, 240, 233 ); //Skin
			set_color_profile_slot( 5, 4, 83, 125, 214 ); //Tiddy/Magic
			set_color_profile_slot( 5, 5, 70, 216, 199 ); //Broom
			set_color_profile_slot( 5, 6, 253, 250, 251 ); //Eye Whites
			// Rose
			set_color_profile_slot( 3, 0, 96, 84, 230 ); //Eyes/Magic
			set_color_profile_slot( 3, 1, 125, 80, 66 ); //Hair
			set_color_profile_slot( 3, 2, 97, 59, 67 ); //Clothes
			set_color_profile_slot( 3, 3, 249, 167, 147 ); //Skin
			set_color_profile_slot( 3, 4, 127, 89, 173 ); //Tiddy/Magic
			set_color_profile_slot( 3, 5, 35, 161, 23 ); //Broom
			set_color_profile_slot( 3, 6, 255, 255, 255 ); //Eye Whites
				break;
			
				case 5: 
			name = "21: Board"; 
			var position = 5;
			
			// Ducky
			set_color_profile_slot( 6, 0, 106, 200, 225 ); //Eyes/Magic
			set_color_profile_slot( 6, 1, 105, 78, 78 ); //Hair
			set_color_profile_slot( 6, 2, 88, 209, 225 ); //Clothes
			set_color_profile_slot( 6, 3, 253, 213, 190 ); //Skin
			set_color_profile_slot( 6, 4, 231, 237, 114 ); //Tiddy/Magic
			set_color_profile_slot( 6, 5, 242, 48, 48 ); //Broom
			set_color_profile_slot( 6, 6, 255, 255, 255 ); //Eye Whites
			// Eccentric
			set_color_profile_slot( 4, 0, 255, 154, 54 ); //Eyes/Magic
			set_color_profile_slot( 4, 1, 243, 227, 212 ); //Hair
			set_color_profile_slot( 4, 2, 105, 188, 196 ); //Clothes
			set_color_profile_slot( 4, 3, 224, 144, 94 ); //Skin
			set_color_profile_slot( 4, 4, 83, 83, 83 ); //Tiddy/Magic
			set_color_profile_slot( 4, 5, 255, 158, 183 ); //Broom
			set_color_profile_slot( 4, 6, 248, 255, 207 ); //Eye Whites
				break;
			
				case 6: 
			name = "22: Ducky"; 
			var position = 6;
						
			// Advanced
			set_color_profile_slot( 7, 0, 89, 179, 223 ); //Eyes/Magic
			set_color_profile_slot( 7, 1, 165, 120, 96 ); //Hair
			set_color_profile_slot( 7, 2, 222, 58, 66 ); //Clothes
			set_color_profile_slot( 7, 3, 236, 167, 162 ); //Skin
			set_color_profile_slot( 7, 4, 80, 101, 133 ); //Tiddy/Magic
			set_color_profile_slot( 7, 5, 241, 212, 104 ); //Broom
			set_color_profile_slot( 7, 6, 255, 255, 255 ); //Eye Whites
			// Board
			set_color_profile_slot( 5, 0, 237, 44, 63 ); //Eyes/Magic
			set_color_profile_slot( 5, 1, 131, 227, 184 ); //Hair
			set_color_profile_slot( 5, 2, 66, 49, 117 ); //Clothes
			set_color_profile_slot( 5, 3, 255, 240, 233 ); //Skin
			set_color_profile_slot( 5, 4, 83, 125, 214 ); //Tiddy/Magic
			set_color_profile_slot( 5, 5, 70, 216, 199 ); //Broom
			set_color_profile_slot( 5, 6, 253, 250, 251 ); //Eye Whites

				break;
			
				case 7:
			name = "23: Advanced"; 
			var position = 7;

			// Kyun
			set_color_profile_slot( 8, 0, 156, 47, 33 ); //Eyes/Magic
			set_color_profile_slot( 8, 1, 166, 188, 252 ); //Hair
			set_color_profile_slot( 8, 2, 83, 30, 70 ); //Clothes
			set_color_profile_slot( 8, 3, 235, 204, 174 ); //Skin
			set_color_profile_slot( 8, 4, 208, 208, 212 ); //Tiddy/Magic
			set_color_profile_slot( 8, 5, 227, 44, 30 ); //Broom
			set_color_profile_slot( 8, 6, 255, 255, 255 ); //Eye Whites
			// Ducky
			set_color_profile_slot( 6, 0, 106, 200, 225 ); //Eyes/Magic
			set_color_profile_slot( 6, 1, 105, 78, 78 ); //Hair
			set_color_profile_slot( 6, 2, 88, 209, 225 ); //Clothes
			set_color_profile_slot( 6, 3, 253, 213, 190 ); //Skin
			set_color_profile_slot( 6, 4, 231, 237, 114 ); //Tiddy/Magic
			set_color_profile_slot( 6, 5, 242, 48, 48 ); //Broom
			set_color_profile_slot( 6, 6, 255, 255, 255 ); //Eye Whites
				break;
			
				case 8: 
			name = "24: Kyun"; 
			var position = 8;

			// Charm
			set_color_profile_slot( 9, 0, 237, 191, 0 ); //Eyes/Magic
			set_color_profile_slot( 9, 1, 153, 54, 74 ); //Hair
			set_color_profile_slot( 9, 2, 42, 42, 44 ); //Clothes
			set_color_profile_slot( 9, 3, 255, 199, 212 ); //Skin
			set_color_profile_slot( 9, 4, 212, 21, 120 ); //Tiddy/Magic
			set_color_profile_slot( 9, 5, 248, 66, 177 ); //Broom
			set_color_profile_slot( 9, 6, 255, 255, 255 ); //Eye Whites
			// Advanced
			set_color_profile_slot( 7, 0, 89, 179, 223 ); //Eyes/Magic
			set_color_profile_slot( 7, 1, 165, 120, 96 ); //Hair
			set_color_profile_slot( 7, 2, 222, 58, 66 ); //Clothes
			set_color_profile_slot( 7, 3, 236, 167, 162 ); //Skin
			set_color_profile_slot( 7, 4, 80, 101, 133 ); //Tiddy/Magic
			set_color_profile_slot( 7, 5, 241, 212, 104 ); //Broom
			set_color_profile_slot( 7, 6, 255, 255, 255 ); //Eye Whites
				break;
			
				case 9: 
			name = "25: Charm"; 
			var position = 9;
			
			// Sacred
			set_color_profile_slot( 10, 0, 52, 134, 209 ); //Eyes/Magic
			set_color_profile_slot( 10, 1, 91, 185, 199 ); //Hair
			set_color_profile_slot( 10, 2, 147, 29, 42 ); //Clothes
			set_color_profile_slot( 10, 3, 236, 167, 162 ); //Skin
			set_color_profile_slot( 10, 4, 243, 238, 119 ); //Tiddy/Magic
			set_color_profile_slot( 10, 5, 203, 208, 215 ); //Broom
			set_color_profile_slot( 10, 6, 255, 255, 255 ); //Eye Whites
			// Kyun
			set_color_profile_slot( 8, 0, 156, 47, 33 ); //Eyes/Magic
			set_color_profile_slot( 8, 1, 166, 188, 252 ); //Hair
			set_color_profile_slot( 8, 2, 83, 30, 70 ); //Clothes
			set_color_profile_slot( 8, 3, 235, 204, 174 ); //Skin
			set_color_profile_slot( 8, 4, 208, 208, 212 ); //Tiddy/Magic
			set_color_profile_slot( 8, 5, 227, 44, 30 ); //Broom
			set_color_profile_slot( 8, 6, 255, 255, 255 ); //Eye Whites
				break;
			
				case 10: 
			name = "26: Sacred"; 
			var position = 10;

			// Shield
			set_color_profile_slot( 11, 0, 150, 28, 140 ); //Eyes/Magic
			set_color_profile_slot( 11, 1, 255, 186, 199 ); //Hair
			set_color_profile_slot( 11, 2, 56, 47, 66 ); //Clothes
			set_color_profile_slot( 11, 3, 241, 207, 197 ); //Skin
			set_color_profile_slot( 11, 4, 139, 70, 201 ); //Tiddy/Magic
			set_color_profile_slot( 11, 5, 163, 134, 194 ); //Broom
			set_color_profile_slot( 11, 6, 255, 255, 255 ); //Eye Whites
			// Charm
			set_color_profile_slot( 9, 0, 237, 191, 0 ); //Eyes/Magic
			set_color_profile_slot( 9, 1, 153, 54, 74 ); //Hair
			set_color_profile_slot( 9, 2, 42, 42, 44 ); //Clothes
			set_color_profile_slot( 9, 3, 255, 199, 212 ); //Skin
			set_color_profile_slot( 9, 4, 212, 21, 120 ); //Tiddy/Magic
			set_color_profile_slot( 9, 5, 248, 66, 177 ); //Broom
			set_color_profile_slot( 9, 6, 255, 255, 255 ); //Eye Whites
				break;	
			
				case 11: 
			name = "27: Shield"; 
			var position = 11;
			Character_Color = 18;

			// Merchant
			set_color_profile_slot( 12, 0, 135, 199, 81 ); //Eyes/Magic
			set_color_profile_slot( 12, 1, 189, 113, 82 ); //Hair
			set_color_profile_slot( 12, 2, 232, 214, 209 ); //Clothes
			set_color_profile_slot( 12, 3, 244, 207, 178 ); //Skin
			set_color_profile_slot( 12, 4, 194, 138, 54 ); //Tiddy/Magic
			set_color_profile_slot( 12, 5, 227, 196, 105 ); //Broom
			set_color_profile_slot( 12, 6, 255, 255, 255 ); //Eye Whites
			// Sacred
			set_color_profile_slot( 10, 0, 52, 134, 209 ); //Eyes/Magic
			set_color_profile_slot( 10, 1, 91, 185, 199 ); //Hair
			set_color_profile_slot( 10, 2, 147, 29, 42 ); //Clothes
			set_color_profile_slot( 10, 3, 236, 167, 162 ); //Skin
			set_color_profile_slot( 10, 4, 243, 238, 119 ); //Tiddy/Magic
			set_color_profile_slot( 10, 5, 203, 208, 215 ); //Broom
			set_color_profile_slot( 10, 6, 255, 255, 255 ); //Eye Whites
				break;
			
				case 12: 
			name = "28: Merchant"; 
			var position = 12;

			// Piano Woman
			set_color_profile_slot( 13, 0, 230, 48, 95 ); //Eyes/Magic
			set_color_profile_slot( 13, 1, 230, 48, 95 ); //Hair
			set_color_profile_slot( 13, 2, 212, 44, 87 ); //Clothes
			set_color_profile_slot( 13, 3, 253, 223, 236 ); //Skin
			set_color_profile_slot( 13, 4, 250, 234, 252 ); //Tiddy/Magic
			set_color_profile_slot( 13, 5, 224, 36, 84 ); //Broom
			set_color_profile_slot( 13, 6, 255, 255, 255 ); //Eye Whites
			// Shield
			set_color_profile_slot( 11, 0, 150, 28, 140 ); //Eyes/Magic
			set_color_profile_slot( 11, 1, 255, 186, 199 ); //Hair
			set_color_profile_slot( 11, 2, 56, 47, 66 ); //Clothes
			set_color_profile_slot( 11, 3, 241, 207, 197 ); //Skin
			set_color_profile_slot( 11, 4, 139, 70, 201 ); //Tiddy/Magic
			set_color_profile_slot( 11, 5, 163, 134, 194 ); //Broom
			set_color_profile_slot( 11, 6, 255, 255, 255 ); //Eye Whites
				break;	
			
				case 13: 
			name = "29: Piano Woman"; 
			var position = 13;
			// Serene
			set_color_profile_slot( 14, 0, 87, 83, 83 ); //Eyes/Magic
			set_color_profile_slot( 14, 1, 69, 65, 65 ); //Hair
			set_color_profile_slot( 14, 2, 184, 47, 72 ); //Clothes
			set_color_profile_slot( 14, 3, 247, 195, 183 ); //Skin
			set_color_profile_slot( 14, 4, 186, 217, 115 ); //Tiddy/Magic
			set_color_profile_slot( 14, 5, 240, 122, 175 ); //Broom
			set_color_profile_slot( 14, 6, 255, 255, 255 ); //Eye Whites
			// Merchant
			set_color_profile_slot( 12, 0, 135, 199, 81 ); //Eyes/Magic
			set_color_profile_slot( 12, 1, 189, 113, 82 ); //Hair
			set_color_profile_slot( 12, 2, 232, 214, 209 ); //Clothes
			set_color_profile_slot( 12, 3, 244, 207, 178 ); //Skin
			set_color_profile_slot( 12, 4, 194, 138, 54 ); //Tiddy/Magic
			set_color_profile_slot( 12, 5, 227, 196, 105 ); //Broom
			set_color_profile_slot( 12, 6, 255, 255, 255 ); //Eye Whites

			path_scale = 1;	// Makes color 17 not change to color 1 going backward
				break;	

				case 14: 
			name = "30: Serene"; 
			var position = 14;
			
			// Loving Hand
			set_color_profile_slot( 15, 0, 242, 92, 112 ); //Eyes/Magic
			set_color_profile_slot( 15, 1, 84, 110, 209 ); //Hair
			set_color_profile_slot( 15, 2, 255, 174, 205 ); //Clothes
			set_color_profile_slot( 15, 3, 249, 210, 201 ); //Skin
			set_color_profile_slot( 15, 4, 255, 255, 255 ); //Tiddy/Magic
			set_color_profile_slot( 15, 5, 248, 212, 76 ); //Broom
			set_color_profile_slot( 15, 6, 232, 232, 232 ); //Eye Whites
			// Piano Woman
			set_color_profile_slot( 13, 0, 230, 48, 95 ); //Eyes/Magic
			set_color_profile_slot( 13, 1, 230, 48, 95 ); //Hair
			set_color_profile_slot( 13, 2, 212, 44, 87 ); //Clothes
			set_color_profile_slot( 13, 3, 253, 223, 236 ); //Skin
			set_color_profile_slot( 13, 4, 250, 234, 252 ); //Tiddy/Magic
			set_color_profile_slot( 13, 5, 224, 36, 84 ); //Broom
			set_color_profile_slot( 13, 6, 255, 255, 255 ); //Eye Whites
			
//			path_orientation = 0;
			path_scale = 0; // Makes color 32 not change to color 16 going forward
				break;

				case 15: 
			name = "31: Loving Hand"; 
			var position = 15;
			// Default
			set_color_profile_slot( 0, 0, 118, 0, 204 );
			set_color_profile_slot( 0, 1, 252, 228, 60 );
			set_color_profile_slot( 0, 2, 74, 78, 130 );
			set_color_profile_slot( 0, 3, 245, 183, 151 );
			set_color_profile_slot( 0, 4, 241, 37, 30 );
			set_color_profile_slot( 0, 5, 232, 184, 96 );
			set_color_profile_slot( 0, 6, 250, 245, 250 );

			// Serene
			set_color_profile_slot( 14, 0, 87, 83, 83 ); //Eyes/Magic
			set_color_profile_slot( 14, 1, 69, 65, 65 ); //Hair
			set_color_profile_slot( 14, 2, 184, 47, 72 ); //Clothes
			set_color_profile_slot( 14, 3, 247, 195, 183 ); //Skin
			set_color_profile_slot( 14, 4, 186, 217, 115 ); //Tiddy/Magic
			set_color_profile_slot( 14, 5, 240, 122, 175 ); //Broom
			set_color_profile_slot( 14, 6, 255, 255, 255 ); //Eye Whites
			if (path_position == 1 && path_scale == 1){
				path_position = 0;
			}
				break;	
		}
	break;
}

if (path_orientation == 1){
	set_color_profile_slot( 14, 6, 254, 254, 254); //Eye Whites // Alt Portrait
	draw_sprite_ext(sprite_get("charselect2"), 0, x + 8, y + 9, 1, 1, 0, c_white, 1)
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_color(x + 10, y + 155, "Portrait Art:", c_white, c_white, c_white, c_white, 1);
	draw_text_color(x + 10, y + 162, "Phobic", c_white, c_white, c_white, c_white, 1);
}

if (path_orientation == 0){
	set_color_profile_slot( 14, 6, 255, 255, 255); //Eye Whites // Serene
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_color(x + 10, y + 155, "Portrait Art:", c_white, c_white, c_white, c_white, 1);
	draw_text_color(x + 10, y + 162, "Default", c_white, c_white, c_white, c_white, 1);
}

if (path_orientation == 2){ // Art reference of Kokoro from Touhou 14.5, specially art made by Moe Harukawa
	set_color_profile_slot( 14, 6, 251, 253, 250); //Eye Whites // Successor
	draw_sprite_ext(sprite_get("charselect3"), 0, x + 8, y + 9, 1, 1, 0, c_white, 1)
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_color(x + 10, y + 155, "Portrait Art:", c_white, c_white, c_white, c_white, 1);
	draw_text_color(x + 10, y + 162, "Successor", c_white, c_white, c_white, c_white, 1);
}

// Version Display // -------------------------------------------------------------------------------------
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_color(x + 10, y - 6, "Version 1.6", c_white, c_white, c_white, c_white, 1);

// Date Display
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text_color(x + 210, y - 6, "July 21st, 2020", c_white, c_white, c_white, c_white, 1);

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

// Initial Name	+ Rectangle
if (image_alpha > 0){
	draw_rectangle_color(temp_x, temp_y + 4, temp_x + 200, temp_y - 10, c_black, c_black, c_black, c_black, false);

	draw_set_font(asset_get("fName"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	draw_text_color(temp_x, temp_y - 6, "Alt " + name, c_white, c_white, c_white, c_white, image_alpha);
}

// Secret Colors //

// -- C0 Variations -- //
if (image_alpha == 0 && position == 0){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 90, temp_y - 50, c_black, c_black, c_black, c_black, false);

	// Some Fancy Things I Like
	draw_text_color(temp_x, temp_y, "Shiny = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Genny = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Jam = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Melody = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "True = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Lasagna = Attack", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 36, "Glass = Special", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 42, "Ghost = Parry", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 48, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C1 Variations -- //
if (image_alpha == 0 && position == 1){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 90, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 1 Secret Alts
	draw_text_color(temp_x, temp_y, "Red Mage = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "White Mage = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Blue Mage = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C2 Variations -- //
if (image_alpha == 0 && position == 2){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 90, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 2 Secret Alts
	draw_text_color(temp_x, temp_y, "Astolfo = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Jotaro = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Green Lad = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C3 Variations -- //
if (image_alpha == 0 && position == 3){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 90, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 3 Secret Alts
	draw_text_color(temp_x, temp_y, "Chara = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Monika = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Madeline = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C4 Variations -- //
if (image_alpha == 0 && position == 4){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 90, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 4 Secret Alts
	draw_text_color(temp_x, temp_y, "Magilou = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Crafter = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Koopa = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C5 Variations -- //
if (image_alpha == 0 && position == 5){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 90, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 5 Secret Alts
	draw_text_color(temp_x, temp_y, "Blair = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Megumin = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Akko = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C6 Variations -- //
if (image_alpha == 0 && position == 6){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 90, temp_y - 56, c_black, c_black, c_black, c_black, false);

	// Versus Sai Challengers
	draw_text_color(temp_x, temp_y, "Joshua = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Scaryami = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Lumina = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Jaunted = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Waterbottle = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "BG in Car = Attack", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 36, "Colosso = Special", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 42, "Prismo = Parry", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 48, "Mojibake = Taunt + Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 54, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C7 Variations -- //
if (image_alpha == 0 && position == 7){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 90, temp_y - 32, c_black, c_black, c_black, c_black, false);

	// Pride Flags
	draw_text_color(temp_x, temp_y, "Rainbows = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Bi = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Trans = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "NB = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Pans = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C8 Variations -- //
if (image_alpha == 0 && position == 8){

	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 200, temp_y - 98, c_black, c_black, c_black, c_black, false);

	// Touhou Colors
	draw_text_color(temp_x, temp_y, "Yuuka = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Seiga = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Momiji = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Shinki = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Rumia = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Mokou = Attack", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 36, "Seija = Special", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 42, "Youmu = Parry", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 48, "Koishi = Taunt + Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 54, "Mima = Taunt + Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 60, "Clownpiece = Taunt + Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 66, "Chiyuri = Taunt + Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 72, "Alice = Taunt + Attack", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 78, "Cirno = Taunt + Special", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 84, "Futo = Taunt + Parry", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 90, "Meira = Attack + Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 96, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	

	//Split	
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_right);
	draw_set_valign(fa_top);

	draw_text_color(temp_x + 160, temp_y, "Raiko = Atk + D", c_white, c_white, c_white, c_white, 1);	
	draw_text_color(temp_x + 160, temp_y - 6, "Sakuya = Atk + L", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x + 160, temp_y - 12, "Shou = Atk + R", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x + 160, temp_y - 18, "Rin = Atk + Spe", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x + 160, temp_y - 24, "Suika = Atk + Par", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x + 160, temp_y - 30, "Seiran = Spe + U", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x + 200, temp_y - 36, "Reisan = Spe + D", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x + 200, temp_y - 42, "Aya = Spe + L", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x + 200, temp_y - 48, "Kogasa = Spe + R", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x + 200, temp_y - 54, "Reimu = Spe + Par", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x + 200, temp_y - 60, "Marisa PC98 = Par + U", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x + 200, temp_y - 66, "Sanae = Par + D", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x + 200, temp_y - 72, "Elly = Par + L", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x + 200, temp_y - 78, "Kasen = Par + R", c_white, c_white, c_white, c_white, 1);
}

// -- C9 Variations -- //
if (image_alpha == 0 && position == 9){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 90, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 9 Secret Alts
	draw_text_color(temp_x, temp_y, "Vicky = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Chelka = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Sorceress = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C10 Variations -- //
if (image_alpha == 0 && position == 10){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 90, temp_y - 50, c_black, c_black, c_black, c_black, false);

	// Color 4 Secret Alts
	draw_text_color(temp_x, temp_y, "Donyoku = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Blake = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Lumi = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Seal = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Ellie = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Sakurai = Attack", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 36, "Wooper = Special", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 42, "Magicka Wizard = Parry", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 48, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C11 Variations -- //
if (image_alpha == 0 && position == 11){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 90, temp_y - 56, c_black, c_black, c_black, c_black, false);

	// Retro
	draw_text_color(temp_x, temp_y, "Cream = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Mist = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Space = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Wish = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Mud = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Soup = Attack", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 36, "Greyscale = Special", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 42, "2-Bit = Parry", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 48, "Empty = Taunt + Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 54, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C12 Variations -- //
if (image_alpha == 0 && position == 12){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 90, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 12 Secret Alts
	draw_text_color(temp_x, temp_y, "Ascent = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Descent = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Siren? = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C13 Variations -- //
if (image_alpha == 0 && position == 13){

	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 200, temp_y - 98, c_black, c_black, c_black, c_black, false);

	// Curated Characters
	draw_text_color(temp_x, temp_y, "Acid Rain = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Ash = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Archen = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Astra = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Bird Guy = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Bluey = Attack", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 36, "Epinel = Special", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 42, "Hime = Parry", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 48, "Kris = Taunt + Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 54, "Liz = Taunt + Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 60, "Mollo = Taunt + Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 66, "Kirby = Taunt + Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 72, "Olympia = Taunt + Attack", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 78, "Pomme = Taunt + Special", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 84, "R-00 = Taunt + Parry", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 90, "Valk = Attack + Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 96, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	

	//Split	
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_right);
	draw_set_valign(fa_top);

	draw_text_color(temp_x + 160, temp_y, "Yoyo = Atk + D", c_white, c_white, c_white, c_white, 1);	
	draw_text_color(temp_x + 160, temp_y - 6, "Otto = Atk + L", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x + 160, temp_y - 12, "Fox = Atk + R", c_white, c_white, c_white, c_white, 1);
}

// -- C14 Variations -- //
if (image_alpha == 0 && position == 14){

	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 200, temp_y - 98, c_black, c_black, c_black, c_black, false);

	// May Released Characters
	draw_text_color(temp_x, temp_y, "Aei & Ou = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Amvira = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Qbby = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Bill Cypher = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Big Yoshi = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Chef = Attack", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 36, "Commander Video = Special", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 42, "Dartha = Parry", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 48, "Doc Robot = Taunt + Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 54, "Engineer = Taunt + Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 60, "E-Shop = Taunt + Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 66, "Exetior = Taunt + Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 72, "Katie = Taunt + Attack", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 78, "Miko = Taunt + Special", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 84, "Monkeese = Taunt + Parry", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 90, "The Knight = Attack + Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 96, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	

	//Split	
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_right);
	draw_set_valign(fa_top);

	draw_text_color(temp_x + 160, temp_y, "Yuuto = Atk + D", c_white, c_white, c_white, c_white, 1);	
	draw_text_color(temp_x + 160, temp_y - 6, "Zerra = Atk + L", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x + 160, temp_y - 12, "Iroh = Atk + R", c_white, c_white, c_white, c_white, 1);
}


// -- C15 Variations -- //
if (image_alpha == 0 && position == 15){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 90, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 15 Secret Alts
	draw_text_color(temp_x, temp_y, "Oddish = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Snom = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Pincurchin = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}