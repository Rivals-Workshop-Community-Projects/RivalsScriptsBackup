//if("color_shift" not in self){exit;} // Enable when more than 32 colors

//Set Basic Color Properties from Roekoko
switch(get_player_color(player)) { 
    /*case 28: // Manga
    	for(var i = 0; i < 5; ++i) set_character_color_shading(i, 0);
    	//outline_color = [ 35, 67, 49 ];
    	break;
    	*/
    // Shade lighter suit colors
    case 3: // Roekoko Alt
    case 8: // Phobos Alt
    case 9: // Gelris alt
    case 13: //Trans alt
    case 14: //BLM alt
    case 17: // Solaire alt
    case 19: //Cam's alt
        set_character_color_shading(0, 3) // Set suit to be shaded
        //print("in loop")
    break;
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

// OG Colors
set_color_profile_slot( 1, 0, 48, 48, 48 ); //Main Clothes
set_color_profile_slot( 1, 1, 128, 128, 128 ); //Main Feathers
set_color_profile_slot( 1, 2, 191, 191, 191 ); //Shotgun and top feathers
set_color_profile_slot( 1, 3, 255, 255, 255 ); //Shirt and clock
set_color_profile_slot( 1, 4, 255, 255, 0 ); //Accents
set_color_profile_slot( 1, 5, 235, 51, 31 ); //Top wire + shells
set_color_profile_slot( 1, 6, 0, 0, 255 ); //Bottom wire
set_color_profile_slot( 1, 7, 255, 249, 242 ); //Steam

// Daora
set_color_profile_slot( 2, 0, 13, 99, 195 ); //Main Clothes
set_color_profile_slot( 2, 1, 200, 200, 240 ); //Main Feathers
set_color_profile_slot( 2, 2, 238, 220, 0 ); //Shotgun and top feathers
set_color_profile_slot( 2, 3, 250, 251, 252 ); //Shirt and clock
set_color_profile_slot( 2, 4, 249, 214, 72 ); //Accents
set_color_profile_slot( 2, 5, 18, 66, 179 ); //Top wire + shells
set_color_profile_slot( 2, 6, 255, 255, 228 ); //Bottom wire
set_color_profile_slot( 2, 7, 161, 182, 204 ); //Steam

// Roekoko
set_color_profile_slot( 3, 0, 255, 178, 182 ); //Main Clothes
set_color_profile_slot( 3, 1, 226, 231, 233 ); //Main Feathers
set_color_profile_slot( 3, 2, 210, 43, 34 ); //Shotgun and top feathers
set_color_profile_slot( 3, 3, 226, 231, 233 ); //Shirt and clock
set_color_profile_slot( 3, 4, 58, 44, 60 ); //Accents
set_color_profile_slot( 3, 5, 244, 112, 133 ); //Top wire + shells
set_color_profile_slot( 3, 6, 210, 43, 34 ); //Bottom wire
set_color_profile_slot( 3, 7, 202, 217, 245 ); //Steam

// Baja
set_color_profile_slot( 4, 0, 46, 33, 54 ); //Main Clothes
set_color_profile_slot( 4, 1, 255, 130, 47 ); //Main Feathers
set_color_profile_slot( 4, 2, 63, 72, 204 ); //Shotgun and top feathers
set_color_profile_slot( 4, 3, 255, 255, 228 ); //Shirt and clock
set_color_profile_slot( 4, 4, 187, 198, 208 ); //Accents
set_color_profile_slot( 4, 5, 255, 228, 0 ); //Top wire + shells
set_color_profile_slot( 4, 6, 63, 72, 204 ); //Bottom wire
set_color_profile_slot( 4, 7, 63, 72, 204 ); //Steam

// Vanu Sovereignty
set_color_profile_slot( 5, 0, 60, 39, 77 ); //Main Clothes
set_color_profile_slot( 5, 1, 98, 21, 153 ); //Main Feathers
set_color_profile_slot( 5, 2, 128, 128, 128 ); //Shotgun and top feathers
set_color_profile_slot( 5, 3, 145, 196, 191 ); //Shirt and clock
set_color_profile_slot( 5, 4, 64, 196, 196 ); //Accents
set_color_profile_slot( 5, 5, 107, 220, 232 ); //Top wire + shells
set_color_profile_slot( 5, 6, 230, 0, 191 ); //Bottom wire
set_color_profile_slot( 5, 7, 247, 215, 241 ); //Steam

// New Congolmerate
set_color_profile_slot( 6, 0, 15, 60, 102 ); //Main Clothes
set_color_profile_slot( 6, 1, 140, 114, 83 ); //Main Feathers
set_color_profile_slot( 6, 2, 71, 114, 179 ); //Shotgun and top feathers
set_color_profile_slot( 6, 3, 204, 204, 204 ); //Shirt and clock
set_color_profile_slot( 6, 4, 210, 230, 0 ); //Accents
set_color_profile_slot( 6, 5, 255, 217, 0 ); //Top wire + shells
set_color_profile_slot( 6, 6, 0, 0, 179 ); //Bottom wire
set_color_profile_slot( 6, 7, 155, 185, 232 ); //Steam

// Terran Republic
set_color_profile_slot( 7, 0, 89, 18, 18 ); //Main Clothes
set_color_profile_slot( 7, 1, 140, 140, 140 ); //Main Feathers
set_color_profile_slot( 7, 2, 77, 77, 77 ); //Shotgun and top feathers
set_color_profile_slot( 7, 3, 217, 217, 217 ); //Shirt and clock
set_color_profile_slot( 7, 4, 230, 52, 23 ); //Accents
set_color_profile_slot( 7, 5, 255, 0, 0 ); //Top wire + shells
set_color_profile_slot( 7, 6, 64, 64, 64 ); //Bottom wire
set_color_profile_slot( 7, 7, 235, 184, 175 ); //Steam

// Phobos
set_color_profile_slot( 8, 0, 255, 255, 255 ); //Main Clothes
set_color_profile_slot( 8, 1, 255, 255, 255 ); //Main Feathers
set_color_profile_slot( 8, 2, 144, 15, 15 ); //Shotgun and top feathers
set_color_profile_slot( 8, 3, 91, 110, 225 ); //Shirt and clock
set_color_profile_slot( 8, 4, 215, 123, 186 ); //Accents
set_color_profile_slot( 8, 5, 91, 110, 225 ); //Top wire + shells
set_color_profile_slot( 8, 6, 215, 123, 186 ); //Bottom wire
set_color_profile_slot( 8, 7, 215, 123, 186 ); //Steam

// Gelris
set_color_profile_slot( 9, 0, 170, 201, 115 ); //Main Clothes
set_color_profile_slot( 9, 1, 77, 186, 74 ); //Main Feathers
set_color_profile_slot( 9, 2, 166, 210, 173 ); //Shotgun and top feathers
set_color_profile_slot( 9, 3, 255, 0, 230 ); //Shirt and clock
set_color_profile_slot( 9, 4, 112, 52, 0 ); //Accents
set_color_profile_slot( 9, 5, 255, 255, 255 ); //Top wire + shells
set_color_profile_slot( 9, 6, 255, 0, 144 ); //Bottom wire
set_color_profile_slot( 9, 7, 166, 210, 173 ); //Steam

// Crackers
set_color_profile_slot( 10, 0, 81, 106, 79 ); //Main Clothes
set_color_profile_slot( 10, 1, 141, 72, 82 ); //Main Feathers
set_color_profile_slot( 10, 2, 151, 170, 74 ); //Shotgun and top feathers
set_color_profile_slot( 10, 3, 38, 38, 38 ); //Shirt and clock
set_color_profile_slot( 10, 4, 214, 73, 98 ); //Accents
set_color_profile_slot( 10, 5, 43, 43, 43 ); //Top wire + shells
set_color_profile_slot( 10, 6, 63, 72, 204 ); //Bottom wire
set_color_profile_slot( 10, 7, 184, 184, 184 ); //Steam

// Xillian
set_color_profile_slot( 11, 0, 55, 57, 94 ); //Main Clothes
set_color_profile_slot( 11, 1, 187, 188, 168 ); //Main Feathers
set_color_profile_slot( 11, 2, 255, 0, 0 ); //Shotgun and top feathers
set_color_profile_slot( 11, 3, 255, 0, 94 ); //Shirt and clock
set_color_profile_slot( 11, 4, 255, 0, 0 ); //Accents
set_color_profile_slot( 11, 5, 255, 255, 255 ); //Top wire + shells
set_color_profile_slot( 11, 6, 255, 155, 155 ); //Bottom wire
set_color_profile_slot( 11, 7, 255, 0, 94 ); //Steam

// Colorblind
set_color_profile_slot( 12, 0, 64, 64, 64 ); //Main Clothes
set_color_profile_slot( 12, 1, 128, 128, 128 ); //Main Feathers
set_color_profile_slot( 12, 2, 191, 191, 191 ); //Shotgun and top feathers
set_color_profile_slot( 12, 3, 255, 255, 255 ); //Shirt and clock
set_color_profile_slot( 12, 4, 230, 230, 230 ); //Accents
set_color_profile_slot( 12, 5, 102, 102, 102 ); //Top wire + shells
set_color_profile_slot( 12, 6, 191, 191, 191 ); //Bottom wire
set_color_profile_slot( 12, 7, 255, 255, 255 ); //Steam

// Trans Rights
set_color_profile_slot( 13, 0, 245, 169, 184 ); //Main Clothes
set_color_profile_slot( 13, 1, 91, 206, 250 ); //Main Feathers
set_color_profile_slot( 13, 2, 255, 255, 255 ); //Shotgun and top feathers
set_color_profile_slot( 13, 3, 255, 255, 255 ); //Shirt and clock
set_color_profile_slot( 13, 4, 245, 169, 184 ); //Accents
set_color_profile_slot( 13, 5, 245, 169, 184 ); //Top wire + shells
set_color_profile_slot( 13, 6, 91, 206, 250 ); //Bottom wire
set_color_profile_slot( 13, 7, 245, 169, 184 ); //Steam

// BLM
set_color_profile_slot( 14, 0, 245, 240, 240 ); //Main Clothes
set_color_profile_slot( 14, 1, 66, 55, 31 ); //Main Feathers
set_color_profile_slot( 14, 2, 20, 19, 20 ); //Shotgun and top feathers
set_color_profile_slot( 14, 3, 245, 240, 240 ); //Shirt and clock
set_color_profile_slot( 14, 4, 212, 219, 0 ); //Accents
set_color_profile_slot( 14, 5, 222, 188, 13 ); //Top wire + shells
set_color_profile_slot( 14, 6, 20, 19, 20 ); //Bottom wire
set_color_profile_slot( 14, 7, 130, 130, 130 ); //Steam

    break;
    case 1: // Color Shifting

// Extra 1
set_color_profile_slot( 1, 0, 0, 0, 0 ); //Fur
set_color_profile_slot( 1, 1, 0, 0, 0 ); //Alt Fur
set_color_profile_slot( 1, 2, 0, 0, 0 ); //Skin
set_color_profile_slot( 1, 3, 0, 0, 0 ); //Fabric
set_color_profile_slot( 1, 4, 0, 0, 0 ); //Pants
set_color_profile_slot( 1, 5, 0, 0, 0 ); //Gold
set_color_profile_slot( 1, 6, 0, 0, 0 ); //SL
set_color_profile_slot( 1, 7, 0, 0, 0 ); //Lightning

// Extra 2
set_color_profile_slot( 2, 0, 219, 0, 64 ); //Fur
set_color_profile_slot( 2, 1, 253, 218, 218 ); //Alt Fur
set_color_profile_slot( 2, 2, 138, 98, 68 ); //Skin
set_color_profile_slot( 2, 3, 207, 192, 207 ); //Fabric
set_color_profile_slot( 2, 4, 58, 102, 65 ); //Pants
set_color_profile_slot( 2, 5, 120, 252, 173 ); //Gold
set_color_profile_slot( 2, 6, 64, 174, 189 ); //SL
set_color_profile_slot( 2, 7, 137, 224, 151 ); //Lightning

// Extra 3
set_color_profile_slot( 3, 0, 95, 214, 133 ); //Fur
set_color_profile_slot( 3, 1, 235, 245, 197 ); //Alt Fur
set_color_profile_slot( 3, 2, 221, 144, 100 ); //Skin
set_color_profile_slot( 3, 3, 191, 225, 255 ); //Fabric
set_color_profile_slot( 3, 4, 67, 55, 145 ); //Pants
set_color_profile_slot( 3, 5, 255, 134, 210 ); //Gold
set_color_profile_slot( 3, 6, 98, 81, 219 ); //SL
set_color_profile_slot( 3, 7, 208, 170, 230 ); //Lightning

// Extra 4
set_color_profile_slot( 4, 0, 247, 233, 254 ); //Fur
set_color_profile_slot( 4, 1, 253, 253, 253 ); //Alt Fur
set_color_profile_slot( 4, 2, 221, 45, 80 ); //Skin
set_color_profile_slot( 4, 3, 173, 67, 100 ); //Fabric
set_color_profile_slot( 4, 4, 225, 210, 230 ); //Pants
set_color_profile_slot( 4, 5, 250, 189, 75 ); //Gold
set_color_profile_slot( 4, 6, 235, 82, 127 ); //SL
set_color_profile_slot( 4, 7, 233, 204, 150 ); //Lightning

// Extra 5
set_color_profile_slot( 5, 0, 249, 138, 188 ); //Fur
set_color_profile_slot( 5, 1, 253, 253, 253 ); //Alt Fur
set_color_profile_slot( 5, 2, 140, 77, 149 ); //Skin
set_color_profile_slot( 5, 3, 218, 120, 191 ); //Fabric
set_color_profile_slot( 5, 4, 165, 107, 149 ); //Pants
set_color_profile_slot( 5, 5, 241, 63, 112 ); //Gold
set_color_profile_slot( 5, 6, 176, 0, 80 ); //SL
set_color_profile_slot( 5, 7, 240, 155, 216 ); //Lightning

// Extra 6
set_color_profile_slot( 6, 0, 148, 82, 173 ); //Fur
set_color_profile_slot( 6, 1, 245, 175, 226 ); //Alt Fur
set_color_profile_slot( 6, 2, 245, 103, 221 ); //Skin
set_color_profile_slot( 6, 3, 182, 63, 199 ); //Fabric
set_color_profile_slot( 6, 4, 108, 92, 171 ); //Pants
set_color_profile_slot( 6, 5, 242, 183, 214 ); //Gold
set_color_profile_slot( 6, 6, 172, 111, 196 ); //SL
set_color_profile_slot( 6, 7, 245, 103, 221 ); //Lightning

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