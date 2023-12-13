/* SL Mode Set
if(SL_mode_active == true){
    // SL Colors
    set_character_color_slot( 0, 230, 46, 82,1 ); //Fur
    set_character_color_slot( 1, 219, 162, 182,1 ); //Alt Fur
    
    //set_character_color_shading( get_player_color(player), 4 );
}
*/

if("color_shift" not in self){exit;}

 //Set Basic Color Properties from Roekoko
if(color_shift == 0){
	switch(get_player_color(player)) { 
	    case 13: // Champion Alt Fur color
		    shade_slot = 0;
	        var col_R = get_color_profile_slot_r( get_player_color(player), shade_slot);
	        var col_G = get_color_profile_slot_g( get_player_color(player), shade_slot);
	        var col_B = get_color_profile_slot_b( get_player_color(player), shade_slot);
	        set_article_color_slot( shade_slot, col_R, col_G, col_B,.1 );
	        set_character_color_slot( shade_slot, col_R, col_G, col_B,.1 );
	    break;
	        /*
	    case 27: // Rainbox Alt from Dino
	    	if("color_r" not in self){
	    		color_r = 255;
	    		color_b = 0;
	    		color_g = 0;
	    		color_type = 0;
	    		color_timer = 1; //Edit this value to change the speed of rainbow
		    }
	        rainbowAlt(3); // //Kimono Accent
	        rainbowAlt(4); // //Sash and Anklet
	        rainbowAlt(5); // //Tail Tip
	        rainbowAlt(6); // //Soul Fire
	        
	  break;
	  */
	    case 7: // Gameboy
	    	for(var i = 0; i < 5; ++i) set_character_color_shading(i, 0);
	    	outline_color = [ 35, 67, 49 ];
	    	break;
	    default: // All other alts
	    break;
	}
}
//print("in init shader");
/*
        for(var shade_slot = 0;shade_slot < 7;shade_slot++){
            var col_R = get_color_profile_slot_r( get_player_color(color_profile_slot), shade_slot);
            var col_G = get_color_profile_slot_g( get_player_color(color_profile_slot), shade_slot);
            var col_B = get_color_profile_slot_b( get_player_color(color_profile_slot), shade_slot);
            set_article_color_slot( shade_slot, col_R, col_G, col_B );
            set_character_color_slot( shade_slot, col_R, col_G, col_B );
            print("Shade slot set: " + string(shade_slot));
        }
        */

if("manual_init_shader_call" not in self){exit;}

if(manual_init_shader_call){
    switch(color_shift){
        case 0: // Original Colors
//#region Normal Colors

// Blue
set_color_profile_slot( 1, 0, 128, 171, 244 ); //Fur
set_color_profile_slot( 1, 1, 253, 253, 253 ); //Alt Fur
set_color_profile_slot( 1, 2, 86, 52, 115 ); //gold2
set_color_profile_slot( 1, 3, 183, 73, 170 ); //Fabric
set_color_profile_slot( 1, 4, 94, 82, 93 ); //Pants
set_color_profile_slot( 1, 5, 245, 137, 239 ); //Gold
set_color_profile_slot( 1, 6, 65, 204, 160 ); //SL
set_color_profile_slot( 1, 7, 212, 224, 244 ); //Lightning

// Red
set_color_profile_slot( 2, 0, 219, 0, 64 ); //Fur
set_color_profile_slot( 2, 1, 253, 218, 218 ); //Alt Fur
set_color_profile_slot( 2, 2, 138, 98, 68 ); //gold2
set_color_profile_slot( 2, 3, 207, 192, 207 ); //Fabric
set_color_profile_slot( 2, 4, 62, 110, 69 ); //Pants
set_color_profile_slot( 2, 5, 252, 239, 174 ); //Gold
set_color_profile_slot( 2, 6, 147, 172, 199 ); //SL
set_color_profile_slot( 2, 7, 202, 255, 209 ); //Lightning

// Green
set_color_profile_slot( 3, 0, 95, 214, 133 ); //Fur
set_color_profile_slot( 3, 1, 235, 245, 197 ); //Alt Fur
set_color_profile_slot( 3, 2, 138, 30, 80 ); //gold2
set_color_profile_slot( 3, 3, 191, 225, 255 ); //Fabric
set_color_profile_slot( 3, 4, 109, 100, 161 ); //Pants
set_color_profile_slot( 3, 5, 255, 134, 210 ); //Gold
set_color_profile_slot( 3, 6, 119, 102, 237 ); //SL
set_color_profile_slot( 3, 7, 208, 170, 230 ); //Lightning

// White
set_color_profile_slot( 4, 0, 208, 196, 214 ); //Fur
set_color_profile_slot( 4, 1, 253, 253, 253 ); //Alt Fur
set_color_profile_slot( 4, 2, 117, 37, 12 ); //gold2
set_color_profile_slot( 4, 3, 173, 67, 100 ); //Fabric
set_color_profile_slot( 4, 4, 225, 210, 230 ); //Pants
set_color_profile_slot( 4, 5, 250, 189, 75 ); //Gold
set_color_profile_slot( 4, 6, 214, 73, 101 ); //SL
set_color_profile_slot( 4, 7, 247, 59, 59 ); //Lightning

// Pink
set_color_profile_slot( 5, 0, 249, 138, 188 ); //Fur
set_color_profile_slot( 5, 1, 253, 253, 253 ); //Alt Fur
set_color_profile_slot( 5, 2, 87, 21, 78 ); //gold2
set_color_profile_slot( 5, 3, 218, 120, 191 ); //Fabric
set_color_profile_slot( 5, 4, 87, 56, 78 ); //Pants
set_color_profile_slot( 5, 5, 241, 63, 112 ); //Gold
set_color_profile_slot( 5, 6, 169, 209, 209 ); //SL
set_color_profile_slot( 5, 7, 240, 155, 216 ); //Lightning

// Abyss
set_color_profile_slot( 6, 0, 135, 127, 156 ); //Fur
set_color_profile_slot( 6, 1, 194, 174, 212 ); //Alt Fur
set_color_profile_slot( 6, 2, 62, 56, 82 ); //gold2
set_color_profile_slot( 6, 3, 182, 63, 199 ); //Fabric
set_color_profile_slot( 6, 4, 108, 92, 171 ); //Pants
set_color_profile_slot( 6, 5, 207, 172, 190 ); //Gold
set_color_profile_slot( 6, 6, 205, 77, 255 ); //SL
set_color_profile_slot( 6, 7, 167, 103, 245 ); //Lightning

// Gameboy
set_color_profile_slot( 7, 0, 167, 186, 74 ); //Fur
set_color_profile_slot( 7, 1, 211, 226, 154 ); //Alt Fur
set_color_profile_slot( 7, 2, 33, 51, 25 ); //gold2
set_color_profile_slot( 7, 3, 173, 179, 81 ); //Fabric
set_color_profile_slot( 7, 4, 83, 122, 62 ); //Pants
set_color_profile_slot( 7, 5, 167, 186, 74 ); //Gold
set_color_profile_slot( 7, 6, 83, 122, 62 ); //SL
set_color_profile_slot( 7, 7, 211, 226, 154 ); //Lightning

// Wolf
set_color_profile_slot( 8, 0, 140, 114, 175 ); //Fur
set_color_profile_slot( 8, 1, 228, 224, 233 ); //Alt Fur
set_color_profile_slot( 8, 2, 53, 24, 74 ); //gold2
set_color_profile_slot( 8, 3, 223, 68, 134 ); //Fabric
set_color_profile_slot( 8, 4, 75, 61, 92 ); //Pants
set_color_profile_slot( 8, 5, 206, 106, 227 ); //Gold
set_color_profile_slot( 8, 6, 252, 78, 159 ); //SL
set_color_profile_slot( 8, 7, 227, 106, 150 ); //Lightning

// Warwick
set_color_profile_slot( 9, 0, 84, 115, 165 ); //Fur
set_color_profile_slot( 9, 1, 198, 209, 223 ); //Alt Fur
set_color_profile_slot( 9, 2, 92, 27, 43 ); //gold2
set_color_profile_slot( 9, 3, 216, 197, 160 ); //Fabric
set_color_profile_slot( 9, 4, 94, 70, 29 ); //Pants
set_color_profile_slot( 9, 5, 227, 121, 73 ); //Gold
set_color_profile_slot( 9, 6, 159, 91, 94 ); //SL
set_color_profile_slot( 9, 7, 245, 110, 110 ); //Lightning

// Talbain
set_color_profile_slot( 10, 0, 197, 203, 219 ); //Fur
set_color_profile_slot( 10, 1, 253, 253, 253 ); //Alt Fur
set_color_profile_slot( 10, 2, 51, 61, 102 ); //gold2
set_color_profile_slot( 10, 3, 255, 255, 136 ); //Fabric
set_color_profile_slot( 10, 4, 108, 45, 173 ); //Pants
set_color_profile_slot( 10, 5, 153, 170, 204 ); //Gold
set_color_profile_slot( 10, 6, 126, 191, 219 ); //SL
set_color_profile_slot( 10, 7, 232, 214, 144 ); //Lightning

// Yugo
set_color_profile_slot( 11, 0, 136, 123, 158 ); //Fur
set_color_profile_slot( 11, 1, 183, 178, 189 ); //Alt Fur
set_color_profile_slot( 11, 2, 47, 51, 69 ); //gold2
set_color_profile_slot( 11, 3, 241, 107, 50 ); //Fabric
set_color_profile_slot( 11, 4, 39, 37, 48 ); //Pants
set_color_profile_slot( 11, 5, 195, 184, 217 ); //Gold
set_color_profile_slot( 11, 6, 222, 138, 101 ); //SL
set_color_profile_slot( 11, 7, 70, 201, 241 ); //Lightning

// Infamous
set_color_profile_slot( 12, 0, 74, 228, 255 ); //Fur
set_color_profile_slot( 12, 1, 253, 253, 253 ); //Alt Fur
set_color_profile_slot( 12, 2, 72, 44, 115 ); //gold2
set_color_profile_slot( 12, 3, 72, 96, 157 ); //Fabric
set_color_profile_slot( 12, 4, 61, 255, 232 ); //Pants
set_color_profile_slot( 12, 5, 254, 118, 231 ); //Gold
set_color_profile_slot( 12, 6, 224, 10, 185 ); //SL
set_color_profile_slot( 12, 7, 163, 241, 255 ); //Lightning

// Champion
set_color_profile_slot( 13, 0, 201, 249, 253 ); //Fur
set_color_profile_slot( 13, 1, 253, 253, 253 ); //Alt Fur
set_color_profile_slot( 13, 2, 69, 110, 117 ); //gold2
set_color_profile_slot( 13, 3, 85, 161, 157 ); //Fabric
set_color_profile_slot( 13, 4, 67, 68, 87 ); //Pants
set_color_profile_slot( 13, 5, 179, 255, 210 ); //Gold
set_color_profile_slot( 13, 6, 250, 214, 147 ); //SL
set_color_profile_slot( 13, 7, 226, 255, 214 ); //Lightning

// Arcade
set_color_profile_slot( 14, 0, 117, 143, 133 ); //Fur
set_color_profile_slot( 14, 1, 245, 237, 205 ); //Alt Fur
set_color_profile_slot( 14, 2, 73, 89, 88 ); //gold2
set_color_profile_slot( 14, 3, 134, 227, 97 ); //Fabric
set_color_profile_slot( 14, 4, 51, 58, 69 ); //Pants
set_color_profile_slot( 14, 5, 205, 235, 232 ); //Gold
set_color_profile_slot( 14, 6, 177, 232, 112 ); //SL
set_color_profile_slot( 14, 7, 138, 240, 110 ); //Lightning

// Summit
set_color_profile_slot( 15, 0, 221, 45, 80 ); //Fur
set_color_profile_slot( 15, 1, 253, 253, 253 ); //Alt Fur
set_color_profile_slot( 15, 2, 15, 25, 38 ); //gold2
set_color_profile_slot( 15, 3, 221, 45, 80 ); //Fabric
set_color_profile_slot( 15, 4, 61, 57, 74 ); //Pants
set_color_profile_slot( 15, 5, 105, 141, 168 ); //Gold
set_color_profile_slot( 15, 6, 129, 120, 138 ); //SL
set_color_profile_slot( 15, 7, 255, 120, 147 ); //Lightning

// Blanca
set_color_profile_slot( 16, 0, 164, 214, 95 ); //Fur
set_color_profile_slot( 16, 1, 220, 245, 206 ); //Alt Fur
set_color_profile_slot( 16, 2, 130, 24, 20 ); //gold2
set_color_profile_slot( 16, 3, 191, 225, 255 ); //Fabric
set_color_profile_slot( 16, 4, 161, 58, 7 ); //Pants
set_color_profile_slot( 16, 5, 230, 139, 131 ); //Gold
set_color_profile_slot( 16, 6, 237, 108, 31 ); //SL
set_color_profile_slot( 16, 7, 230, 103, 57 ); //Lightning

// Autumn
set_color_profile_slot( 17, 0, 195, 107, 49 ); //Fur
set_color_profile_slot( 17, 1, 212, 205, 187 ); //Alt Fur
set_color_profile_slot( 17, 2, 153, 66, 23 ); //gold2
set_color_profile_slot( 17, 3, 210, 34, 48 ); //Fabric
set_color_profile_slot( 17, 4, 71, 58, 60 ); //Pants
set_color_profile_slot( 17, 5, 240, 216, 146 ); //Gold
set_color_profile_slot( 17, 6, 252, 207, 75 ); //SL
set_color_profile_slot( 17, 7, 202, 217, 245 ); //Lightning

// GoldnSilver
set_color_profile_slot( 18, 0, 250, 214, 147 ); //Fur
set_color_profile_slot( 18, 1, 250, 214, 147 ); //Alt Fur
set_color_profile_slot( 18, 2, 179, 31, 20 ); //gold2
set_color_profile_slot( 18, 3, 201, 37, 37 ); //Fabric
set_color_profile_slot( 18, 4, 67, 68, 87 ); //Pants
set_color_profile_slot( 18, 5, 240, 166, 166 ); //Gold
set_color_profile_slot( 18, 6, 200, 200, 240 ); //SL
set_color_profile_slot( 18, 7, 141, 221, 221 ); //Lightning

// Riptide
set_color_profile_slot( 19, 0, 67, 111, 217 ); //Fur
set_color_profile_slot( 19, 1, 166, 248, 255 ); //Alt Fur
set_color_profile_slot( 19, 2, 184, 57, 11 ); //gold2
set_color_profile_slot( 19, 3, 18, 121, 130 ); //Fabric
set_color_profile_slot( 19, 4, 1, 199, 217 ); //Pants
set_color_profile_slot( 19, 5, 255, 183, 0 ); //Gold
set_color_profile_slot( 19, 6, 216, 93, 1 ); //SL
set_color_profile_slot( 19, 7, 1, 234, 255 ); //Lightning

// Brolly
set_color_profile_slot( 20, 0, 120, 100, 161 ); //Fur
set_color_profile_slot( 20, 1, 120, 100, 161 ); //Alt Fur
set_color_profile_slot( 20, 2, 51, 112, 67 ); //gold2
set_color_profile_slot( 20, 3, 184, 222, 41 ); //Fabric
set_color_profile_slot( 20, 4, 94, 32, 179 ); //Pants
set_color_profile_slot( 20, 5, 83, 245, 116 ); //Gold
set_color_profile_slot( 20, 6, 164, 227, 0 ); //SL
set_color_profile_slot( 20, 7, 216, 255, 161 ); //Lightning

// Olympia
set_color_profile_slot( 21, 0, 184, 128, 83 ); //Fur
set_color_profile_slot( 21, 1, 235, 163, 106 ); //Alt Fur
set_color_profile_slot( 21, 2, 179, 30, 139 ); //gold2
set_color_profile_slot( 21, 3, 89, 77, 148 ); //Fabric
set_color_profile_slot( 21, 4, 245, 245, 245 ); //Pants
set_color_profile_slot( 21, 5, 236, 141, 202 ); //Gold
set_color_profile_slot( 21, 6, 161, 26, 113 ); //SL
set_color_profile_slot( 21, 7, 227, 107, 155 ); //Lightning

// Fernet
set_color_profile_slot( 22, 0, 229, 185, 223 ); //Fur
set_color_profile_slot( 22, 1, 229, 211, 226 ); //Alt Fur
set_color_profile_slot( 22, 2, 113, 58, 171 ); //gold2
set_color_profile_slot( 22, 3, 250, 227, 77 ); //Fabric
set_color_profile_slot( 22, 4, 136, 32, 209 ); //Pants
set_color_profile_slot( 22, 5, 199, 150, 224 ); //Gold
set_color_profile_slot( 22, 6, 167, 56, 252 ); //SL
set_color_profile_slot( 22, 7, 250, 214, 135 ); //Lightning

// Torren
set_color_profile_slot( 23, 0, 239, 238, 244 ); //Fur
set_color_profile_slot( 23, 1, 253, 253, 253 ); //Alt Fur
set_color_profile_slot( 23, 2, 60, 61, 92 ); //gold2
set_color_profile_slot( 23, 3, 225, 119, 38 ); //Fabric
set_color_profile_slot( 23, 4, 173, 151, 114 ); //Pants
set_color_profile_slot( 23, 5, 190, 185, 237 ); //Gold
set_color_profile_slot( 23, 6, 222, 66, 49 ); //SL
set_color_profile_slot( 23, 7, 173, 109, 107 ); //Lightning

// Zephrie
set_color_profile_slot( 24, 0, 204, 107, 229 ); //Fur
set_color_profile_slot( 24, 1, 255, 231, 185 ); //Alt Fur
set_color_profile_slot( 24, 2, 60, 113, 133 ); //gold2
set_color_profile_slot( 24, 3, 160, 250, 250 ); //Fabric
set_color_profile_slot( 24, 4, 79, 79, 79 ); //Pants
set_color_profile_slot( 24, 5, 160, 250, 250 ); //Gold
set_color_profile_slot( 24, 6, 67, 204, 207 ); //SL
set_color_profile_slot( 24, 7, 160, 250, 250 ); //Lightning

// Zerra
set_color_profile_slot( 25, 0, 247, 248, 250 ); //Fur
set_color_profile_slot( 25, 1, 247, 248, 250 ); //Alt Fur
set_color_profile_slot( 25, 2, 39, 74, 145 ); //gold2
set_color_profile_slot( 25, 3, 148, 166, 224 ); //Fabric
set_color_profile_slot( 25, 4, 31, 102, 224 ); //Pants
set_color_profile_slot( 25, 5, 122, 191, 255 ); //Gold
set_color_profile_slot( 25, 6, 152, 230, 227 ); //SL
set_color_profile_slot( 25, 7, 203, 219, 252 ); //Lightning

// Lyca
set_color_profile_slot( 26, 0, 255, 122, 77 ); //Fur
set_color_profile_slot( 26, 1, 247, 238, 213 ); //Alt Fur
set_color_profile_slot( 26, 2, 36, 88, 102 ); //gold2
set_color_profile_slot( 26, 3, 74, 208, 223 ); //Fabric
set_color_profile_slot( 26, 4, 86, 74, 151 ); //Pants
set_color_profile_slot( 26, 5, 56, 214, 217 ); //Gold
set_color_profile_slot( 26, 6, 110, 223, 255 ); //SL
set_color_profile_slot( 26, 7, 235, 14, 14 ); //Lightning

// Daora
set_color_profile_slot( 27, 0, 200, 200, 240 ); //Fur
set_color_profile_slot( 27, 1, 253, 253, 253 ); //Alt Fur
set_color_profile_slot( 27, 2, 112, 47, 7 ); //gold2
set_color_profile_slot( 27, 3, 255, 255, 228 ); //Fabric
set_color_profile_slot( 27, 4, 9, 67, 199 ); //Pants
set_color_profile_slot( 27, 5, 238, 220, 0 ); //Gold
set_color_profile_slot( 27, 6, 22, 78, 245 ); //SL
set_color_profile_slot( 27, 7, 118, 192, 233 ); //Lightning

// Richter
set_color_profile_slot( 28, 0, 144, 112, 84 ); //Fur
set_color_profile_slot( 28, 1, 237, 203, 171 ); //Alt Fur
set_color_profile_slot( 28, 2, 39, 40, 47 ); //gold2
set_color_profile_slot( 28, 3, 49, 87, 158 ); //Fabric
set_color_profile_slot( 28, 4, 212, 203, 204 ); //Pants
set_color_profile_slot( 28, 5, 179, 180, 187 ); //Gold
set_color_profile_slot( 28, 6, 37, 61, 119 ); //SL
set_color_profile_slot( 28, 7, 179, 180, 187 ); //Lightning

// Trans Rights
set_color_profile_slot( 29, 0, 140, 226, 255 ); //Fur
set_color_profile_slot( 29, 1, 238, 244, 247 ); //Alt Fur
set_color_profile_slot( 29, 2, 209, 104, 157 ); //gold2
set_color_profile_slot( 29, 3, 105, 198, 255 ); //Fabric
set_color_profile_slot( 29, 4, 255, 140, 213 ); //Pants
set_color_profile_slot( 29, 5, 249, 190, 252 ); //Gold
set_color_profile_slot( 29, 6, 240, 161, 216 ); //SL
set_color_profile_slot( 29, 7, 255, 140, 213 ); //Lightning

// BLM
set_color_profile_slot( 30, 0, 133, 105, 70 ); //Fur
set_color_profile_slot( 30, 1, 156, 136, 105 ); //Alt Fur
set_color_profile_slot( 30, 2, 66, 63, 63 ); //gold2
set_color_profile_slot( 30, 3, 255, 216, 0 ); //Fabric
set_color_profile_slot( 30, 4, 255, 213, 0 ); //Pants
set_color_profile_slot( 30, 5, 211, 212, 197 ); //Gold
set_color_profile_slot( 30, 6, 28, 28, 27 ); //SL
set_color_profile_slot( 30, 7, 255, 239, 176 ); //Lightning

    break;
    case 1: // Color Shifting

// Sanguine Lightning
set_color_profile_slot( 1, 0, 173, 67, 100 ); //Fur
set_color_profile_slot( 1, 1, 252, 252, 211 ); //Alt Fur
set_color_profile_slot( 1, 2, 112, 47, 7 ); //gold2
set_color_profile_slot( 1, 3, 123, 37, 201 ); //Fabric
set_color_profile_slot( 1, 4, 67, 68, 87 ); //Pants
set_color_profile_slot( 1, 5, 238, 220, 0 ); //Gold
set_color_profile_slot( 1, 6, 200, 200, 240 ); //SL
set_color_profile_slot( 1, 7, 221, 45, 80 ); //Lightning

// Klockwurth
set_color_profile_slot( 2, 0, 140, 132, 148 ); //Fur
set_color_profile_slot( 2, 1, 225, 243, 247 ); //Alt Fur
set_color_profile_slot( 2, 2, 179, 103, 27 ); //gold2
set_color_profile_slot( 2, 3, 235, 51, 31 ); //Fabric
set_color_profile_slot( 2, 4, 62, 61, 92 ); //Pants
set_color_profile_slot( 2, 5, 255, 255, 0 ); //Gold
set_color_profile_slot( 2, 6, 49, 47, 70 ); //SL
set_color_profile_slot( 2, 7, 255, 249, 242 ); //Lightning

// Sabrewolf
set_color_profile_slot( 3, 0, 123, 112, 184 ); //Fur
set_color_profile_slot( 3, 1, 166, 166, 186 ); //Alt Fur
set_color_profile_slot( 3, 2, 87, 51, 32 ); //gold2
set_color_profile_slot( 3, 3, 216, 176, 118 ); //Fabric
set_color_profile_slot( 3, 4, 222, 44, 25 ); //Pants
set_color_profile_slot( 3, 5, 200, 172, 134 ); //Gold
set_color_profile_slot( 3, 6, 57, 56, 143 ); //SL
set_color_profile_slot( 3, 7, 32, 230, 223 ); //Lightning

// Blood Moon
set_color_profile_slot( 4, 0, 40, 40, 40 ); //Fur
set_color_profile_slot( 4, 1, 220, 210, 195 ); //Alt Fur
set_color_profile_slot( 4, 2, 200, 110, 50 ); //gold2
set_color_profile_slot( 4, 3, 160, 70, 70 ); //Fabric
set_color_profile_slot( 4, 4, 120, 80, 80 ); //Pants
set_color_profile_slot( 4, 5, 220, 150, 100 ); //Gold
set_color_profile_slot( 4, 6, 185, 50, 25 ); //SL
set_color_profile_slot( 4, 7, 250, 250, 255 ); //Lightning

// Taco
set_color_profile_slot( 5, 0, 148, 78, 37 ); //Fur
set_color_profile_slot( 5, 1, 201, 148, 91 ); //Alt Fur
set_color_profile_slot( 5, 2, 90, 121, 150 ); //gold2
set_color_profile_slot( 5, 3, 41, 148, 53 ); //Fabric
set_color_profile_slot( 5, 4, 194, 6, 6 ); //Pants
set_color_profile_slot( 5, 5, 210, 226, 236 ); //Gold
set_color_profile_slot( 5, 6, 143, 161, 26 ); //SL
set_color_profile_slot( 5, 7, 227, 203, 107 ); //Lightning

// Llama
set_color_profile_slot( 6, 0, 247, 248, 250 ); //Fur
set_color_profile_slot( 6, 1, 247, 248, 250 ); //Alt Fur
set_color_profile_slot( 6, 2, 110, 19, 58 ); //gold2
set_color_profile_slot( 6, 3, 237, 191, 49 ); //Fabric
set_color_profile_slot( 6, 4, 52, 48, 102 ); //Pants
set_color_profile_slot( 6, 5, 255, 54, 54 ); //Gold
set_color_profile_slot( 6, 6, 84, 112, 171 ); //SL
set_color_profile_slot( 6, 7, 252, 108, 108 ); //Lightning

// The Old Champion
set_color_profile_slot( 7, 0, 27, 61, 84 ); //Fur
set_color_profile_slot( 7, 1, 158, 138, 106 ); //Alt Fur
set_color_profile_slot( 7, 2, 212, 95, 72 ); //gold2
set_color_profile_slot( 7, 3, 132, 90, 109 ); //Fabric
set_color_profile_slot( 7, 4, 116, 99, 111 ); //Pants
set_color_profile_slot( 7, 5, 255, 202, 41 ); //Gold
set_color_profile_slot( 7, 6, 237, 194, 61 ); //SL
set_color_profile_slot( 7, 7, 240, 101, 31 ); //Lightning

// Azrael
set_color_profile_slot( 8, 0, 98, 126, 198 ); //Fur
set_color_profile_slot( 8, 1, 255, 251, 244 ); //Alt Fur
set_color_profile_slot( 8, 2, 125, 16, 45 ); //gold2
set_color_profile_slot( 8, 3, 255, 251, 244 ); //Fabric
set_color_profile_slot( 8, 4, 100, 95, 94 ); //Pants
set_color_profile_slot( 8, 5, 245, 68, 78 ); //Gold
set_color_profile_slot( 8, 6, 255, 46, 52 ); //SL
set_color_profile_slot( 8, 7, 242, 112, 100 ); //Lightning

// Dazz
set_color_profile_slot( 9, 0, 211, 31, 81 ); //Fur
set_color_profile_slot( 9, 1, 217, 153, 110 ); //Alt Fur
set_color_profile_slot( 9, 2, 68, 37, 89 ); //gold2
set_color_profile_slot( 9, 3, 199, 0, 18 ); //Fabric
set_color_profile_slot( 9, 4, 65, 54, 80 ); //Pants
set_color_profile_slot( 9, 5, 218, 166, 255 ); //Gold
set_color_profile_slot( 9, 6, 155, 89, 166 ); //SL
set_color_profile_slot( 9, 7, 255, 226, 243 ); //Lightning

// Dony
set_color_profile_slot( 10, 0, 96, 99, 143 ); //Fur
set_color_profile_slot( 10, 1, 255, 241, 206 ); //Alt Fur
set_color_profile_slot( 10, 2, 86, 23, 16 ); //gold2
set_color_profile_slot( 10, 3, 224, 242, 251 ); //Fabric
set_color_profile_slot( 10, 4, 65, 54, 80 ); //Pants
set_color_profile_slot( 10, 5, 255, 162, 29 ); //Gold
set_color_profile_slot( 10, 6, 215, 84, 74 ); //SL
set_color_profile_slot( 10, 7, 255, 162, 29 ); //Lightning

// Husky
set_color_profile_slot( 11, 0, 117, 117, 156 ); //Fur
set_color_profile_slot( 11, 1, 245, 245, 245 ); //Alt Fur
set_color_profile_slot( 11, 2, 84, 0, 0 ); //gold2
set_color_profile_slot( 11, 3, 191, 225, 255 ); //Fabric
set_color_profile_slot( 11, 4, 109, 100, 161 ); //Pants
set_color_profile_slot( 11, 5, 245, 78, 78 ); //Gold
set_color_profile_slot( 11, 6, 199, 132, 14 ); //SL
set_color_profile_slot( 11, 7, 219, 224, 235 ); //Lightning

// Sunny
set_color_profile_slot( 12, 0, 204, 133, 51 ); //Fur
set_color_profile_slot( 12, 1, 245, 245, 245 ); //Alt Fur
set_color_profile_slot( 12, 2, 97, 6, 35 ); //gold2
set_color_profile_slot( 12, 3, 245, 17, 86 ); //Fabric
set_color_profile_slot( 12, 4, 168, 107, 45 ); //Pants
set_color_profile_slot( 12, 5, 245, 59, 17 ); //Gold
set_color_profile_slot( 12, 6, 237, 79, 16 ); //SL
set_color_profile_slot( 12, 7, 235, 130, 89 ); //Lightning

// Monarch
set_color_profile_slot( 13, 0, 48, 37, 69 ); //Fur
set_color_profile_slot( 13, 1, 55, 57, 94 ); //Alt Fur
set_color_profile_slot( 13, 2, 43, 165, 247 ); //gold2
set_color_profile_slot( 13, 3, 196, 44, 69 ); //Fabric
set_color_profile_slot( 13, 4, 75, 31, 137 ); //Pants
set_color_profile_slot( 13, 5, 21, 243, 255 ); //Gold
set_color_profile_slot( 13, 6, 21, 243, 255 ); //SL
set_color_profile_slot( 13, 7, 206, 190, 226 ); //Lightning

// Tenru
set_color_profile_slot( 14, 0, 145, 86, 70 ); //Fur
set_color_profile_slot( 14, 1, 203, 173, 137 ); //Alt Fur
set_color_profile_slot( 14, 2, 210, 125, 44 ); //gold2
set_color_profile_slot( 14, 3, 222, 238, 214 ); //Fabric
set_color_profile_slot( 14, 4, 153, 29, 48 ); //Pants
set_color_profile_slot( 14, 5, 218, 212, 94 ); //Gold
set_color_profile_slot( 14, 6, 153, 29, 48 ); //SL
set_color_profile_slot( 14, 7, 196, 44, 69 ); //Lightning

// Roekoko
set_color_profile_slot( 15, 0, 199, 206, 209 ); //Fur
set_color_profile_slot( 15, 1, 240, 244, 245 ); //Alt Fur
set_color_profile_slot( 15, 2, 13, 11, 13 ); //gold2
set_color_profile_slot( 15, 3, 210, 34, 48 ); //Fabric
set_color_profile_slot( 15, 4, 237, 185, 188 ); //Pants
set_color_profile_slot( 15, 5, 122, 104, 122 ); //Gold
set_color_profile_slot( 15, 6, 64, 51, 64 ); //SL
set_color_profile_slot( 15, 7, 202, 217, 245 ); //Lightning

// Villain
set_color_profile_slot( 16, 0, 49, 28, 99 ); //Fur
set_color_profile_slot( 16, 1, 253, 253, 253 ); //Alt Fur
set_color_profile_slot( 16, 2, 125, 16, 45 ); //gold2
set_color_profile_slot( 16, 3, 49, 28, 99 ); //Fabric
set_color_profile_slot( 16, 4, 49, 28, 99 ); //Pants
set_color_profile_slot( 16, 5, 245, 68, 78 ); //Gold
set_color_profile_slot( 16, 6, 49, 28, 99 ); //SL
set_color_profile_slot( 16, 7, 194, 6, 6 ); //Lightning

// Byte
set_color_profile_slot( 17, 0, 230, 200, 228 ); //Fur
set_color_profile_slot( 17, 1, 230, 200, 228 ); //Alt Fur
set_color_profile_slot( 17, 2, 239, 182, 115 ); //gold2
set_color_profile_slot( 17, 3, 234, 231, 240 ); //Fabric
set_color_profile_slot( 17, 4, 44, 39, 43 ); //Pants
set_color_profile_slot( 17, 5, 239, 182, 115 ); //Gold
set_color_profile_slot( 17, 6, 177, 103, 202 ); //SL
set_color_profile_slot( 17, 7, 171, 88, 192 ); //Lightning

// FuRi's Edge
set_color_profile_slot( 18, 0, 100, 100, 100 ); //Fur
set_color_profile_slot( 18, 1, 90, 90, 90 ); //Alt Fur
set_color_profile_slot( 18, 2, 30, 0, 0 ); //gold2
set_color_profile_slot( 18, 3, 254, 254, 255 ); //Fabric
set_color_profile_slot( 18, 4, 70, 70, 70 ); //Pants
set_color_profile_slot( 18, 5, 115, 0, 0 ); //Gold
set_color_profile_slot( 18, 6, 252, 254, 255 ); //SL
set_color_profile_slot( 18, 7, 90, 0, 0 ); //Lightning

// Mint
set_color_profile_slot( 19, 0, 252, 254, 255 ); //Fur
set_color_profile_slot( 19, 1, 204, 204, 204 ); //Alt Fur
set_color_profile_slot( 19, 2, 158, 255, 214 ); //gold2
set_color_profile_slot( 19, 3, 209, 255, 236 ); //Fabric
set_color_profile_slot( 19, 4, 50, 50, 60 ); //Pants
set_color_profile_slot( 19, 5, 199, 248, 255 ); //Gold
set_color_profile_slot( 19, 6, 100, 100, 110 ); //SL
set_color_profile_slot( 19, 7, 158, 255, 214 ); //Lightning

//#endregion

        break;
    }
    
// Looping function to assign article colors using this
	// Using a variable passed from CSS to in game cause the CSS online reads a different player number than offline
    for(var shade_slot = 0;shade_slot < 8;shade_slot++){
        var col_R = get_color_profile_slot_r( last_frame_color_alt, shade_slot);
        var col_G = get_color_profile_slot_g( last_frame_color_alt, shade_slot);
        var col_B = get_color_profile_slot_b( last_frame_color_alt, shade_slot);
        set_article_color_slot( shade_slot, col_R, col_G, col_B );
        set_character_color_slot( shade_slot, col_R, col_G, col_B );
        //print("Shade slot set: " + string(shade_slot));
        //print("R:" + string(col_R) + " /G:" + string(col_G)+ "/ B:" + string(col_B));
    }
manual_init_shader_call = false;
}

#define rainbowAlt(profileNum)
    set_character_color_slot( argument[0], color_r, color_g, color_b);
    set_article_color_slot(argument[0], color_r, color_g, color_b);