//if(instance_exists(asset_get("cs_playercursor_obj"))){ exit;}
//if(instance_exists(asset_get("stage_HUD"))){ exit;}
if("color_shift" not in self){exit;}
switch(get_player_color(player)) { 
    case 0:
        // Prevent extra shading on this alt.
        break;
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
  
    case 28: // Manga
    	for(var i = 0; i < 5; ++i) set_character_color_shading(i, 0);
    	//outline_color = [ 35, 67, 49 ];
    	break;
    default: // All other alts
        //set_character_color_shading(1, 2) // Set hair to be shaded at 2x
        set_character_color_shading(2, 2) // Set kimono to be shaded at 2x
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
set_color_profile_slot( 1, 0, 237, 203, 11 ); //Fur
set_color_profile_slot( 1, 1, 46, 46, 46 ); //Hair
set_color_profile_slot( 1, 2, 240, 240, 240 ); //Kimono Main
set_color_profile_slot( 1, 3, 235, 19, 19 ); //Kimono Accent
set_color_profile_slot( 1, 4, 222, 29, 29 ); //Sash and Anklet
set_color_profile_slot( 1, 5, 250, 250, 250 ); //Tail Tip
set_color_profile_slot( 1, 6, 171, 27, 27 ); //Soul Fire
set_color_profile_slot( 1, 7, 194, 92, 92 ); //Pawpads

// Water Dragon
set_color_profile_slot( 2, 0, 200, 200, 240 ); //Fur
set_color_profile_slot( 2, 1, 14, 51, 140 ); //Hair
set_color_profile_slot( 2, 2, 13, 99, 195 ); //Kimono Main
set_color_profile_slot( 2, 3, 249, 214, 72 ); //Kimono Accent
set_color_profile_slot( 2, 4, 118, 192, 233 ); //Sash and Anklet
set_color_profile_slot( 2, 5, 250, 251, 252 ); //Tail Tip
set_color_profile_slot( 2, 6, 115, 152, 220 ); //Soul Fire
set_color_profile_slot( 2, 7, 219, 119, 101 ); //Pawpads

// Clockwork
set_color_profile_slot( 3, 0, 140, 132, 148 ); //Fur
set_color_profile_slot( 3, 1, 192, 192, 192 ); //Hair
set_color_profile_slot( 3, 2, 62, 61, 92 ); //Kimono Main
set_color_profile_slot( 3, 3, 255, 255, 0 ); //Kimono Accent
set_color_profile_slot( 3, 4, 41, 37, 48 ); //Sash and Anklet
set_color_profile_slot( 3, 5, 255, 255, 191 ); //Tail Tip
set_color_profile_slot( 3, 6, 0, 0, 206 ); //Soul Fire
set_color_profile_slot( 3, 7, 209, 44, 29 ); //Pawpads

// Ninetailed Shaman
set_color_profile_slot( 4, 0, 250, 236, 168 ); //Fur
set_color_profile_slot( 4, 1, 250, 248, 245 ); //Hair
set_color_profile_slot( 4, 2, 243, 242, 255 ); //Kimono Main
set_color_profile_slot( 4, 3, 37, 94, 207 ); //Kimono Accent
set_color_profile_slot( 4, 4, 37, 65, 207 ); //Sash and Anklet
set_color_profile_slot( 4, 5, 250, 244, 242 ); //Tail Tip
set_color_profile_slot( 4, 6, 217, 115, 186 ); //Soul Fire
set_color_profile_slot( 4, 7, 244, 112, 133 ); //Pawpads

// Yin and Yang
set_color_profile_slot( 5, 0, 242, 227, 227 ); //Fur
set_color_profile_slot( 5, 1, 33, 32, 32 ); //Hair
set_color_profile_slot( 5, 2, 59, 51, 51 ); //Kimono Main
set_color_profile_slot( 5, 3, 247, 232, 232 ); //Kimono Accent
set_color_profile_slot( 5, 4, 36, 36, 36 ); //Sash and Anklet
set_color_profile_slot( 5, 5, 33, 32, 32 ); //Tail Tip
set_color_profile_slot( 5, 6, 71, 71, 71 ); //Soul Fire
set_color_profile_slot( 5, 7, 133, 129, 129 ); //Pawpads

// Riptide
set_color_profile_slot( 6, 0, 85, 115, 194 ); //Fur
set_color_profile_slot( 6, 1, 214, 202, 189 ); //Hair
set_color_profile_slot( 6, 2, 36, 55, 105 ); //Kimono Main
set_color_profile_slot( 6, 3, 0, 199, 218 ); //Kimono Accent
set_color_profile_slot( 6, 4, 218, 141, 83 ); //Sash and Anklet
set_color_profile_slot( 6, 5, 212, 199, 187 ); //Tail Tip
set_color_profile_slot( 6, 6, 254, 184, 0 ); //Soul Fire
set_color_profile_slot( 6, 7, 199, 132, 84 ); //Pawpads

// Kitsune
set_color_profile_slot( 7, 0, 255, 255, 255 ); //Fur
set_color_profile_slot( 7, 1, 74, 32, 18 ); //Hair
set_color_profile_slot( 7, 2, 235, 168, 248 ); //Kimono Main
set_color_profile_slot( 7, 3, 235, 168, 248 ); //Kimono Accent
set_color_profile_slot( 7, 4, 214, 73, 94 ); //Sash and Anklet
set_color_profile_slot( 7, 5, 214, 73, 94 ); //Tail Tip
set_color_profile_slot( 7, 6, 255, 255, 255 ); //Soul Fire
set_color_profile_slot( 7, 7, 214, 73, 94 ); //Pawpads

// Star Dust
set_color_profile_slot( 8, 0, 255, 195, 201 ); //Fur
set_color_profile_slot( 8, 1, 168, 86, 113 ); //Hair
set_color_profile_slot( 8, 2, 172, 37, 230 ); //Kimono Main
set_color_profile_slot( 8, 3, 251, 255, 0 ); //Kimono Accent
set_color_profile_slot( 8, 4, 172, 37, 230 ); //Sash and Anklet
set_color_profile_slot( 8, 5, 219, 112, 147 ); //Tail Tip
set_color_profile_slot( 8, 6, 219, 112, 147 ); //Soul Fire
set_color_profile_slot( 8, 7, 219, 112, 147 ); //Pawpads

// Jade Ghost
set_color_profile_slot( 9, 0, 248, 242, 255 ); //Fur
set_color_profile_slot( 9, 1, 248, 242, 255 ); //Hair
set_color_profile_slot( 9, 2, 34, 32, 79 ); //Kimono Main
set_color_profile_slot( 9, 3, 247, 54, 54 ); //Kimono Accent
set_color_profile_slot( 9, 4, 247, 54, 54 ); //Sash and Anklet
set_color_profile_slot( 9, 5, 248, 242, 255 ); //Tail Tip
set_color_profile_slot( 9, 6, 87, 255, 219 ); //Soul Fire
set_color_profile_slot( 9, 7, 34, 32, 79 ); //Pawpads

// Snowblind
set_color_profile_slot( 10, 0, 130, 86, 187 ); //Fur
set_color_profile_slot( 10, 1, 200, 200, 240 ); //Hair
set_color_profile_slot( 10, 2, 92, 108, 166 ); //Kimono Main
set_color_profile_slot( 10, 3, 165, 205, 234 ); //Kimono Accent
set_color_profile_slot( 10, 4, 238, 235, 194 ); //Sash and Anklet
set_color_profile_slot( 10, 5, 238, 235, 194 ); //Tail Tip
set_color_profile_slot( 10, 6, 165, 205, 234 ); //Soul Fire
set_color_profile_slot( 10, 7, 238, 235, 194 ); //Pawpads

// Nova Visionary
set_color_profile_slot( 11, 0, 213, 199, 242 ); //Fur
set_color_profile_slot( 11, 1, 100, 100, 139 ); //Hair
set_color_profile_slot( 11, 2, 175, 207, 249 ); //Kimono Main
set_color_profile_slot( 11, 3, 255, 255, 255 ); //Kimono Accent
set_color_profile_slot( 11, 4, 255, 234, 115 ); //Sash and Anklet
set_color_profile_slot( 11, 5, 238, 145, 88 ); //Tail Tip
set_color_profile_slot( 11, 6, 175, 207, 249 ); //Soul Fire
set_color_profile_slot( 11, 7, 252, 244, 198 ); //Pawpads

// Graveyard Keeper
set_color_profile_slot( 12, 0, 250, 251, 255 ); //Fur
set_color_profile_slot( 12, 1, 34, 35, 54 ); //Hair
set_color_profile_slot( 12, 2, 152, 178, 181 ); //Kimono Main
set_color_profile_slot( 12, 3, 152, 178, 181 ); //Kimono Accent
set_color_profile_slot( 12, 4, 128, 36, 40 ); //Sash and Anklet
set_color_profile_slot( 12, 5, 34, 35, 54 ); //Tail Tip
set_color_profile_slot( 12, 6, 128, 36, 40 ); //Soul Fire
set_color_profile_slot( 12, 7, 128, 36, 40 ); //Pawpads

// Flickering Spectre
set_color_profile_slot( 13, 0, 255, 130, 47 ); //Fur
set_color_profile_slot( 13, 1, 209, 202, 180 ); //Hair
set_color_profile_slot( 13, 2, 86, 74, 151 ); //Kimono Main
set_color_profile_slot( 13, 3, 74, 208, 223 ); //Kimono Accent
set_color_profile_slot( 13, 4, 74, 208, 223 ); //Sash and Anklet
set_color_profile_slot( 13, 5, 238, 145, 88 ); //Tail Tip
set_color_profile_slot( 13, 6, 58, 142, 214 ); //Soul Fire
set_color_profile_slot( 13, 7, 247, 238, 213 ); //Pawpads

// Portals
set_color_profile_slot( 14, 0, 55, 57, 94 ); //Fur
set_color_profile_slot( 14, 1, 21, 243, 255 ); //Hair
set_color_profile_slot( 14, 2, 102, 41, 184 ); //Kimono Main
set_color_profile_slot( 14, 3, 196, 44, 69 ); //Kimono Accent
set_color_profile_slot( 14, 4, 21, 243, 255 ); //Sash and Anklet
set_color_profile_slot( 14, 5, 21, 243, 255 ); //Tail Tip
set_color_profile_slot( 14, 6, 102, 41, 184 ); //Soul Fire
set_color_profile_slot( 14, 7, 21, 243, 255 ); //Pawpads

// Wicked Scroll
set_color_profile_slot( 15, 0, 243, 242, 255 ); //Fur
set_color_profile_slot( 15, 1, 33, 26, 138 ); //Hair
set_color_profile_slot( 15, 2, 243, 242, 255 ); //Kimono Main
set_color_profile_slot( 15, 3, 250, 214, 160 ); //Kimono Accent
set_color_profile_slot( 15, 4, 250, 214, 160 ); //Sash and Anklet
set_color_profile_slot( 15, 5, 33, 26, 138 ); //Tail Tip
set_color_profile_slot( 15, 6, 46, 36, 189 ); //Soul Fire
set_color_profile_slot( 15, 7, 101, 95, 176 ); //Pawpads

// Ryukoko
set_color_profile_slot( 16, 0, 255, 245, 245 ); //Fur
set_color_profile_slot( 16, 1, 36, 44, 66 ); //Hair
set_color_profile_slot( 16, 2, 45, 62, 86 ); //Kimono Main
set_color_profile_slot( 16, 3, 191, 43, 75 ); //Kimono Accent
set_color_profile_slot( 16, 4, 212, 50, 14 ); //Sash and Anklet
set_color_profile_slot( 16, 5, 36, 44, 66 ); //Tail Tip
set_color_profile_slot( 16, 6, 232, 104, 60 ); //Soul Fire
set_color_profile_slot( 16, 7, 176, 168, 66 ); //Pawpads

// Roekanshoku
set_color_profile_slot( 17, 0, 255, 245, 245 ); //Fur
set_color_profile_slot( 17, 1, 153, 100, 77 ); //Hair
set_color_profile_slot( 17, 2, 231, 239, 244 ); //Kimono Main
set_color_profile_slot( 17, 3, 72, 153, 247 ); //Kimono Accent
set_color_profile_slot( 17, 4, 36, 44, 66 ); //Sash and Anklet
set_color_profile_slot( 17, 5, 153, 100, 77 ); //Tail Tip
set_color_profile_slot( 17, 6, 153, 2, 23 ); //Soul Fire
set_color_profile_slot( 17, 7, 212, 50, 14 ); //Pawpads

// Fubuki Shirakami
set_color_profile_slot( 18, 0, 242, 228, 201 ); //Fur
set_color_profile_slot( 18, 1, 246, 248, 252 ); //Hair
set_color_profile_slot( 18, 2, 246, 248, 252 ); //Kimono Main
set_color_profile_slot( 18, 3, 171, 226, 255 ); //Kimono Accent
set_color_profile_slot( 18, 4, 75, 174, 144 ); //Sash and Anklet
set_color_profile_slot( 18, 5, 59, 43, 55 ); //Tail Tip
set_color_profile_slot( 18, 6, 171, 226, 255 ); //Soul Fire
set_color_profile_slot( 18, 7, 54, 49, 47 ); //Pawpads

// Heatwave
set_color_profile_slot( 19, 0, 27, 37, 90 ); //Fur
set_color_profile_slot( 19, 1, 253, 253, 251 ); //Hair
set_color_profile_slot( 19, 2, 140, 24, 33 ); //Kimono Main
set_color_profile_slot( 19, 3, 226, 216, 23 ); //Kimono Accent
set_color_profile_slot( 19, 4, 220, 216, 29 ); //Sash and Anklet
set_color_profile_slot( 19, 5, 211, 108, 41 ); //Tail Tip
set_color_profile_slot( 19, 6, 245, 27, 42 ); //Soul Fire
set_color_profile_slot( 19, 7, 253, 253, 251 ); //Pawpads

// Tales of Ninjas
set_color_profile_slot( 20, 0, 64, 56, 77 ); //Fur
set_color_profile_slot( 20, 1, 84, 80, 102 ); //Hair
set_color_profile_slot( 20, 2, 180, 178, 236 ); //Kimono Main
set_color_profile_slot( 20, 3, 239, 236, 251 ); //Kimono Accent
set_color_profile_slot( 20, 4, 180, 178, 236 ); //Sash and Anklet
set_color_profile_slot( 20, 5, 84, 80, 102 ); //Tail Tip
set_color_profile_slot( 20, 6, 228, 115, 94 ); //Soul Fire
set_color_profile_slot( 20, 7, 241, 237, 250 ); //Pawpads

// Caster of Fate
set_color_profile_slot( 21, 0, 253, 236, 212 ); //Fur
set_color_profile_slot( 21, 1, 255, 89, 89 ); //Hair
set_color_profile_slot( 21, 2, 68, 82, 196 ); //Kimono Main
set_color_profile_slot( 21, 3, 233, 194, 127 ); //Kimono Accent
set_color_profile_slot( 21, 4, 54, 41, 105 ); //Sash and Anklet
set_color_profile_slot( 21, 5, 255, 89, 89 ); //Tail Tip
set_color_profile_slot( 21, 6, 68, 82, 196 ); //Soul Fire
set_color_profile_slot( 21, 7, 51, 53, 52 ); //Pawpads

// Blood Moon
set_color_profile_slot( 22, 0, 60, 60, 60 ); //Fur
set_color_profile_slot( 22, 1, 220, 220, 200 ); //Hair
set_color_profile_slot( 22, 2, 100, 75, 75 ); //Kimono Main
set_color_profile_slot( 22, 3, 120, 50, 50 ); //Kimono Accent
set_color_profile_slot( 22, 4, 210, 110, 60 ); //Sash and Anklet
set_color_profile_slot( 22, 5, 220, 220, 200 ); //Tail Tip
set_color_profile_slot( 22, 6, 220, 220, 200 ); //Soul Fire
set_color_profile_slot( 22, 7, 220, 220, 200 ); //Pawpads

// Flame Shackle
set_color_profile_slot( 23, 0, 251, 144, 64 ); //Fur
set_color_profile_slot( 23, 1, 23, 129, 148 ); //Hair
set_color_profile_slot( 23, 2, 19, 104, 128 ); //Kimono Main
set_color_profile_slot( 23, 3, 93, 110, 104 ); //Kimono Accent
set_color_profile_slot( 23, 4, 215, 69, 85 ); //Sash and Anklet
set_color_profile_slot( 23, 5, 254, 245, 154 ); //Tail Tip
set_color_profile_slot( 23, 6, 250, 70, 67 ); //Soul Fire
set_color_profile_slot( 23, 7, 46, 59, 66 ); //Pawpads

// Bold Kobold
set_color_profile_slot( 24, 0, 166, 241, 209 ); //Fur
set_color_profile_slot( 24, 1, 3, 39, 16 ); //Hair
set_color_profile_slot( 24, 2, 11, 85, 54 ); //Kimono Main
set_color_profile_slot( 24, 3, 0, 142, 54 ); //Kimono Accent
set_color_profile_slot( 24, 4, 0, 142, 54 ); //Sash and Anklet
set_color_profile_slot( 24, 5, 3, 39, 16 ); //Tail Tip
set_color_profile_slot( 24, 6, 11, 85, 54 ); //Soul Fire
set_color_profile_slot( 24, 7, 32, 102, 145 ); //Pawpads

// Black Hole Sun
set_color_profile_slot( 25, 0, 255, 225, 0 ); //Fur
set_color_profile_slot( 25, 1, 179, 33, 0 ); //Hair
set_color_profile_slot( 25, 2, 23, 20, 0 ); //Kimono Main
set_color_profile_slot( 25, 3, 255, 119, 0 ); //Kimono Accent
set_color_profile_slot( 25, 4, 255, 136, 0 ); //Sash and Anklet
set_color_profile_slot( 25, 5, 23, 20, 0 ); //Tail Tip
set_color_profile_slot( 25, 6, 34, 111, 227 ); //Soul Fire
set_color_profile_slot( 25, 7, 255, 55, 0 ); //Pawpads

// Autumn Leaves
set_color_profile_slot( 26, 0, 244, 233, 222 ); //Fur
set_color_profile_slot( 26, 1, 112, 33, 54 ); //Hair
set_color_profile_slot( 26, 2, 207, 106, 65 ); //Kimono Main
set_color_profile_slot( 26, 3, 181, 50, 43 ); //Kimono Accent
set_color_profile_slot( 26, 4, 181, 50, 43 ); //Sash and Anklet
set_color_profile_slot( 26, 5, 135, 87, 133 ); //Tail Tip
set_color_profile_slot( 26, 6, 163, 149, 188 ); //Soul Fire
set_color_profile_slot( 26, 7, 174, 166, 188 ); //Pawpads

// Rainbow
set_color_profile_slot( 27, 0, 128, 128, 128 ); //Fur
set_color_profile_slot( 27, 1, 38, 41, 41 ); //Hair
set_color_profile_slot( 27, 2, 38, 35, 59 ); //Kimono Main
set_color_profile_slot( 27, 3, 255, 0, 0 ); //Kimono Accent
set_color_profile_slot( 27, 4, 255, 0, 0 ); //Sash and Anklet
set_color_profile_slot( 27, 5, 255, 0, 0 ); //Tail Tip
set_color_profile_slot( 27, 6, 255, 0, 0 ); //Soul Fire
set_color_profile_slot( 27, 7, 184, 184, 156 ); //Pawpads

// Manga
set_color_profile_slot( 28, 0, 247, 247, 247 ); //Fur
set_color_profile_slot( 28, 1, 33, 33, 33 ); //Hair
set_color_profile_slot( 28, 2, 230, 230, 230 ); //Kimono Main
set_color_profile_slot( 28, 3, 64, 64, 64 ); //Kimono Accent
set_color_profile_slot( 28, 4, 64, 64, 64 ); //Sash and Anklet
set_color_profile_slot( 28, 5, 33, 33, 33 ); //Tail Tip
set_color_profile_slot( 28, 6, 204, 204, 204 ); //Soul Fire
set_color_profile_slot( 28, 7, 125, 125, 125 ); //Pawpads

// Trans Rights
set_color_profile_slot( 29, 0, 255, 250, 254 ); //Fur
set_color_profile_slot( 29, 1, 140, 226, 255 ); //Hair
set_color_profile_slot( 29, 2, 255, 179, 237 ); //Kimono Main
set_color_profile_slot( 29, 3, 105, 198, 255 ); //Kimono Accent
set_color_profile_slot( 29, 4, 255, 140, 213 ); //Sash and Anklet
set_color_profile_slot( 29, 5, 140, 226, 255 ); //Tail Tip
set_color_profile_slot( 29, 6, 140, 232, 255 ); //Soul Fire
set_color_profile_slot( 29, 7, 255, 140, 213 ); //Pawpads

// BLM
set_color_profile_slot( 30, 0, 82, 45, 0 ); //Fur
set_color_profile_slot( 30, 1, 56, 52, 45 ); //Hair
set_color_profile_slot( 30, 2, 23, 22, 22 ); //Kimono Main
set_color_profile_slot( 30, 3, 255, 216, 0 ); //Kimono Accent
set_color_profile_slot( 30, 4, 255, 213, 0 ); //Sash and Anklet
set_color_profile_slot( 30, 5, 56, 52, 45 ); //Tail Tip
set_color_profile_slot( 30, 6, 255, 221, 0 ); //Soul Fire
set_color_profile_slot( 30, 7, 255, 252, 239 ); //Pawpads

    break;
    case 1: // Color Shifting

// FW
set_color_profile_slot( 1, 0, 190, 174, 151 ); //Fur
set_color_profile_slot( 1, 1, 24, 44, 77 ); //Hair
set_color_profile_slot( 1, 2, 54, 52, 65 ); //Kimono Main
set_color_profile_slot( 1, 3, 183, 214, 154 ); //Kimono Accent
set_color_profile_slot( 1, 4, 54, 52, 65 ); //Sash and Anklet
set_color_profile_slot( 1, 5, 7, 11, 23 ); //Tail Tip
set_color_profile_slot( 1, 6, 254, 250, 159 ); //Soul Fire
set_color_profile_slot( 1, 7, 19, 35, 69 ); //Pawpads

// TLC
set_color_profile_slot( 2, 0, 255, 252, 247 ); //Fur
set_color_profile_slot( 2, 1, 156, 216, 202 ); //Hair
set_color_profile_slot( 2, 2, 255, 160, 249 ); //Kimono Main
set_color_profile_slot( 2, 3, 255, 240, 160 ); //Kimono Accent
set_color_profile_slot( 2, 4, 255, 128, 34 ); //Sash and Anklet
set_color_profile_slot( 2, 5, 255, 160, 249 ); //Tail Tip
set_color_profile_slot( 2, 6, 255, 160, 249 ); //Soul Fire
set_color_profile_slot( 2, 7, 43, 135, 189 ); //Pawpads

// FTL
set_color_profile_slot( 3, 0, 173, 170, 168 ); //Fur
set_color_profile_slot( 3, 1, 64, 63, 63 ); //Hair
set_color_profile_slot( 3, 2, 43, 43, 43 ); //Kimono Main
set_color_profile_slot( 3, 3, 255, 174, 33 ); //Kimono Accent
set_color_profile_slot( 3, 4, 212, 171, 23 ); //Sash and Anklet
set_color_profile_slot( 3, 5, 64, 63, 63 ); //Tail Tip
set_color_profile_slot( 3, 6, 242, 167, 17 ); //Soul Fire
set_color_profile_slot( 3, 7, 110, 97, 100 ); //Pawpads

// WSE
set_color_profile_slot( 4, 0, 94, 94, 94 ); //Fur
set_color_profile_slot( 4, 1, 213, 215, 217 ); //Hair
set_color_profile_slot( 4, 2, 201, 199, 7 ); //Kimono Main
set_color_profile_slot( 4, 3, 51, 50, 49 ); //Kimono Accent
set_color_profile_slot( 4, 4, 214, 172, 19 ); //Sash and Anklet
set_color_profile_slot( 4, 5, 110, 148, 145 ); //Tail Tip
set_color_profile_slot( 4, 6, 52, 198, 207 ); //Soul Fire
set_color_profile_slot( 4, 7, 150, 169, 171 ); //Pawpads

// Cold Steel
set_color_profile_slot( 5, 0, 90, 74, 107 ); //Fur
set_color_profile_slot( 5, 1, 82, 18, 255 ); //Hair
set_color_profile_slot( 5, 2, 66, 36, 112 ); //Kimono Main
set_color_profile_slot( 5, 3, 204, 161, 255 ); //Kimono Accent
set_color_profile_slot( 5, 4, 204, 161, 255 ); //Sash and Anklet
set_color_profile_slot( 5, 5, 144, 51, 255 ); //Tail Tip
set_color_profile_slot( 5, 6, 65, 56, 194 ); //Soul Fire
set_color_profile_slot( 5, 7, 194, 231, 242 ); //Pawpads

// Flicorian
set_color_profile_slot( 6, 0, 214, 181, 154 ); //Fur
set_color_profile_slot( 6, 1, 122, 91, 84 ); //Hair
set_color_profile_slot( 6, 2, 218, 225, 232 ); //Kimono Main
set_color_profile_slot( 6, 3, 7, 175, 214 ); //Kimono Accent
set_color_profile_slot( 6, 4, 81, 89, 122 ); //Sash and Anklet
set_color_profile_slot( 6, 5, 181, 7, 67 ); //Tail Tip
set_color_profile_slot( 6, 6, 125, 235, 255 ); //Soul Fire
set_color_profile_slot( 6, 7, 255, 161, 94 ); //Pawpads

// Mocha
set_color_profile_slot( 7, 0, 178, 149, 131 ); //Fur
set_color_profile_slot( 7, 1, 93, 62, 50 ); //Hair
set_color_profile_slot( 7, 2, 138, 118, 178 ); //Kimono Main
set_color_profile_slot( 7, 3, 100, 87, 127 ); //Kimono Accent
set_color_profile_slot( 7, 4, 100, 87, 127 ); //Sash and Anklet
set_color_profile_slot( 7, 5, 93, 62, 50 ); //Tail Tip
set_color_profile_slot( 7, 6, 242, 153, 19 ); //Soul Fire
set_color_profile_slot( 7, 7, 100, 77, 61 ); //Pawpads

// Funny Moment
set_color_profile_slot( 8, 0, 255, 177, 138 ); //Fur
set_color_profile_slot( 8, 1, 97, 37, 0 ); //Hair
set_color_profile_slot( 8, 2, 230, 220, 220 ); //Kimono Main
set_color_profile_slot( 8, 3, 0, 143, 33 ); //Kimono Accent
set_color_profile_slot( 8, 4, 0, 143, 33 ); //Sash and Anklet
set_color_profile_slot( 8, 5, 97, 37, 0 ); //Tail Tip
set_color_profile_slot( 8, 6, 35, 209, 198 ); //Soul Fire
set_color_profile_slot( 8, 7, 0, 143, 33 ); //Pawpads

// Cerbera
set_color_profile_slot( 9, 0, 255, 140, 254 ); //Fur
set_color_profile_slot( 9, 1, 49, 25, 79 ); //Hair
set_color_profile_slot( 9, 2, 76, 37, 92 ); //Kimono Main
set_color_profile_slot( 9, 3, 227, 43, 18 ); //Kimono Accent
set_color_profile_slot( 9, 4, 207, 55, 10 ); //Sash and Anklet
set_color_profile_slot( 9, 5, 207, 0, 173 ); //Tail Tip
set_color_profile_slot( 9, 6, 194, 97, 140 ); //Soul Fire
set_color_profile_slot( 9, 7, 255, 92, 157 ); //Pawpads

// Ithaca
set_color_profile_slot( 10, 0, 242, 233, 233 ); //Fur
set_color_profile_slot( 10, 1, 102, 40, 34 ); //Hair
set_color_profile_slot( 10, 2, 51, 51, 45 ); //Kimono Main
set_color_profile_slot( 10, 3, 171, 121, 43 ); //Kimono Accent
set_color_profile_slot( 10, 4, 171, 121, 43 ); //Sash and Anklet
set_color_profile_slot( 10, 5, 102, 40, 34 ); //Tail Tip
set_color_profile_slot( 10, 6, 240, 142, 67 ); //Soul Fire
set_color_profile_slot( 10, 7, 244, 112, 133 ); //Pawpads

// Azamuku
set_color_profile_slot( 11, 0, 251, 234, 216 ); //Fur
set_color_profile_slot( 11, 1, 56, 38, 53 ); //Hair
set_color_profile_slot( 11, 2, 177, 65, 77 ); //Kimono Main
set_color_profile_slot( 11, 3, 255, 214, 94 ); //Kimono Accent
set_color_profile_slot( 11, 4, 56, 38, 53 ); //Sash and Anklet
set_color_profile_slot( 11, 5, 56, 38, 53 ); //Tail Tip
set_color_profile_slot( 11, 6, 63, 225, 234 ); //Soul Fire
set_color_profile_slot( 11, 7, 251, 234, 216 ); //Pawpads

// Cybernetic Soldier
set_color_profile_slot( 12, 0, 228, 124, 72 ); //Fur
set_color_profile_slot( 12, 1, 146, 83, 51 ); //Hair
set_color_profile_slot( 12, 2, 72, 81, 89 ); //Kimono Main
set_color_profile_slot( 12, 3, 35, 42, 36 ); //Kimono Accent
set_color_profile_slot( 12, 4, 49, 42, 37 ); //Sash and Anklet
set_color_profile_slot( 12, 5, 146, 83, 51 ); //Tail Tip
set_color_profile_slot( 12, 6, 175, 231, 137 ); //Soul Fire
set_color_profile_slot( 12, 7, 239, 156, 89 ); //Pawpads

// Ouro Kronii
set_color_profile_slot( 13, 0, 57, 56, 52 ); //Fur
set_color_profile_slot( 13, 1, 58, 64, 99 ); //Hair
set_color_profile_slot( 13, 2, 148, 148, 151 ); //Kimono Main
set_color_profile_slot( 13, 3, 182, 239, 254 ); //Kimono Accent
set_color_profile_slot( 13, 4, 34, 59, 156 ); //Sash and Anklet
set_color_profile_slot( 13, 5, 58, 64, 99 ); //Tail Tip
set_color_profile_slot( 13, 6, 242, 211, 94 ); //Soul Fire
set_color_profile_slot( 13, 7, 209, 166, 37 ); //Pawpads

// Namielle
set_color_profile_slot( 14, 0, 101, 126, 156 ); //Fur
set_color_profile_slot( 14, 1, 45, 46, 77 ); //Hair
set_color_profile_slot( 14, 2, 32, 55, 117 ); //Kimono Main
set_color_profile_slot( 14, 3, 224, 255, 92 ); //Kimono Accent
set_color_profile_slot( 14, 4, 231, 116, 98 ); //Sash and Anklet
set_color_profile_slot( 14, 5, 185, 210, 215 ); //Tail Tip
set_color_profile_slot( 14, 6, 81, 103, 179 ); //Soul Fire
set_color_profile_slot( 14, 7, 231, 116, 98 ); //Pawpads

// Casual Observer
set_color_profile_slot( 15, 0, 188, 151, 120 ); //Fur
set_color_profile_slot( 15, 1, 45, 45, 45 ); //Hair
set_color_profile_slot( 15, 2, 110, 110, 196 ); //Kimono Main
set_color_profile_slot( 15, 3, 197, 23, 167 ); //Kimono Accent
set_color_profile_slot( 15, 4, 23, 183, 197 ); //Sash and Anklet
set_color_profile_slot( 15, 5, 197, 23, 167 ); //Tail Tip
set_color_profile_slot( 15, 6, 179, 198, 255 ); //Soul Fire
set_color_profile_slot( 15, 7, 45, 45, 45 ); //Pawpads

// ENBY
set_color_profile_slot( 16, 0, 247, 247, 247 ); //Fur
set_color_profile_slot( 16, 1, 23, 22, 22 ); //Hair
set_color_profile_slot( 16, 2, 78, 51, 112 ); //Kimono Main
set_color_profile_slot( 16, 3, 235, 197, 11 ); //Kimono Accent
set_color_profile_slot( 16, 4, 78, 51, 112 ); //Sash and Anklet
set_color_profile_slot( 16, 5, 23, 22, 22 ); //Tail Tip
set_color_profile_slot( 16, 6, 235, 197, 11 ); //Soul Fire
set_color_profile_slot( 16, 7, 235, 197, 11 ); //Pawpads

// Zhyrl
set_color_profile_slot( 17, 0, 247, 247, 247 ); //Fur
set_color_profile_slot( 17, 1, 255, 181, 202 ); //Hair
set_color_profile_slot( 17, 2, 69, 69, 69 ); //Kimono Main
set_color_profile_slot( 17, 3, 204, 255, 207 ); //Kimono Accent
set_color_profile_slot( 17, 4, 204, 255, 207 ); //Sash and Anklet
set_color_profile_slot( 17, 5, 255, 255, 255 ); //Tail Tip
set_color_profile_slot( 17, 6, 13, 255, 247 ); //Soul Fire
set_color_profile_slot( 17, 7, 255, 181, 202 ); //Pawpads

// PC98 Reimu
set_color_profile_slot( 18, 0, 255, 255, 255 ); //Fur
set_color_profile_slot( 18, 1, 184, 35, 189 ); //Hair
set_color_profile_slot( 18, 2, 219, 219, 219 ); //Kimono Main
set_color_profile_slot( 18, 3, 230, 53, 190 ); //Kimono Accent
set_color_profile_slot( 18, 4, 210, 52, 52 ); //Sash and Anklet
set_color_profile_slot( 18, 5, 94, 0, 0 ); //Tail Tip
set_color_profile_slot( 18, 6, 178, 77, 255 ); //Soul Fire
set_color_profile_slot( 18, 7, 255, 77, 77 ); //Pawpads

// Giovanna
set_color_profile_slot( 19, 0, 216, 155, 111 ); //Fur
set_color_profile_slot( 19, 1, 219, 86, 87 ); //Hair
set_color_profile_slot( 19, 2, 237, 230, 214 ); //Kimono Main
set_color_profile_slot( 19, 3, 1, 146, 106 ); //Kimono Accent
set_color_profile_slot( 19, 4, 68, 78, 80 ); //Sash and Anklet
set_color_profile_slot( 19, 5, 77, 227, 137 ); //Tail Tip
set_color_profile_slot( 19, 6, 1, 198, 143 ); //Soul Fire
set_color_profile_slot( 19, 7, 159, 101, 88 ); //Pawpads

// Tenchu
set_color_profile_slot( 20, 0, 251, 216, 173 ); //Fur
set_color_profile_slot( 20, 1, 208, 136, 124 ); //Hair
set_color_profile_slot( 20, 2, 71, 156, 1 ); //Kimono Main
set_color_profile_slot( 20, 3, 231, 248, 255 ); //Kimono Accent
set_color_profile_slot( 20, 4, 77, 103, 160 ); //Sash and Anklet
set_color_profile_slot( 20, 5, 231, 248, 255 ); //Tail Tip
set_color_profile_slot( 20, 6, 143, 223, 74 ); //Soul Fire
set_color_profile_slot( 20, 7, 255, 161, 168 ); //Pawpads

// Feta
set_color_profile_slot( 21, 0, 231, 214, 186 ); //Fur
set_color_profile_slot( 21, 1, 160, 128, 105 ); //Hair
set_color_profile_slot( 21, 2, 141, 194, 208 ); //Kimono Main
set_color_profile_slot( 21, 3, 255, 221, 149 ); //Kimono Accent
set_color_profile_slot( 21, 4, 253, 226, 159 ); //Sash and Anklet
set_color_profile_slot( 21, 5, 252, 246, 234 ); //Tail Tip
set_color_profile_slot( 21, 6, 203, 145, 99 ); //Soul Fire
set_color_profile_slot( 21, 7, 162, 128, 101 ); //Pawpads

// FuRi's Edge
set_color_profile_slot( 22, 0, 252, 254, 255 ); //Fur
set_color_profile_slot( 22, 1, 40, 41, 59 ); //Hair
set_color_profile_slot( 22, 2, 60, 60, 70 ); //Kimono Main
set_color_profile_slot( 22, 3, 252, 254, 255 ); //Kimono Accent
set_color_profile_slot( 22, 4, 99, 0, 0 ); //Sash and Anklet
set_color_profile_slot( 22, 5, 99, 0, 0 ); //Tail Tip
set_color_profile_slot( 22, 6, 99, 0, 0 ); //Soul Fire
set_color_profile_slot( 22, 7, 40, 41, 59 ); //Pawpads

// Mint
set_color_profile_slot( 23, 0, 205, 255, 234 ); //Fur
set_color_profile_slot( 23, 1, 40, 41, 59 ); //Hair
set_color_profile_slot( 23, 2, 252, 254, 255 ); //Kimono Main
set_color_profile_slot( 23, 3, 30, 36, 61 ); //Kimono Accent
set_color_profile_slot( 23, 4, 160, 104, 186 ); //Sash and Anklet
set_color_profile_slot( 23, 5, 252, 254, 255 ); //Tail Tip
set_color_profile_slot( 23, 6, 183, 73, 230 ); //Soul Fire
set_color_profile_slot( 23, 7, 50, 50, 60 ); //Pawpads

// Ayaka
set_color_profile_slot( 24, 0, 255, 216, 202 ); //Fur
set_color_profile_slot( 24, 1, 225, 34, 47 ); //Hair
set_color_profile_slot( 24, 2, 255, 242, 209 ); //Kimono Main
set_color_profile_slot( 24, 3, 225, 34, 47 ); //Kimono Accent
set_color_profile_slot( 24, 4, 232, 58, 71 ); //Sash and Anklet
set_color_profile_slot( 24, 5, 245, 249, 252 ); //Tail Tip
set_color_profile_slot( 24, 6, 33, 70, 135 ); //Soul Fire
set_color_profile_slot( 24, 7, 63, 67, 96 ); //Pawpads

// Senor
set_color_profile_slot( 25, 0, 100, 155, 164 ); //Fur
set_color_profile_slot( 25, 1, 157, 88, 76 ); //Hair
set_color_profile_slot( 25, 2, 233, 244, 246 ); //Kimono Main
set_color_profile_slot( 25, 3, 73, 73, 73 ); //Kimono Accent
set_color_profile_slot( 25, 4, 73, 73, 73 ); //Sash and Anklet
set_color_profile_slot( 25, 5, 233, 244, 246 ); //Tail Tip
set_color_profile_slot( 25, 6, 128, 130, 116 ); //Soul Fire
set_color_profile_slot( 25, 7, 233, 244, 246 ); //Pawpads

// Landkon
set_color_profile_slot( 26, 0, 233, 226, 226 ); //Fur
set_color_profile_slot( 26, 1, 220, 210, 204 ); //Hair
set_color_profile_slot( 26, 2, 226, 230, 235 ); //Kimono Main
set_color_profile_slot( 26, 3, 92, 95, 131 ); //Kimono Accent
set_color_profile_slot( 26, 4, 227, 17, 102 ); //Sash and Anklet
set_color_profile_slot( 26, 5, 65, 56, 54 ); //Tail Tip
set_color_profile_slot( 26, 6, 226, 230, 235 ); //Soul Fire
set_color_profile_slot( 26, 7, 76, 76, 76 ); //Pawpads

    break;
    case 2: // Color Shifting Page 2
    
// zetterburn
set_color_profile_slot( 1, 0, 220, 203, 105 ); //Fur
set_color_profile_slot( 1, 1, 207, 137, 23 ); //Hair
set_color_profile_slot( 1, 2, 122, 90, 78 ); //Kimono Main
set_color_profile_slot( 1, 3, 170, 0, 0 ); //Kimono Accent
set_color_profile_slot( 1, 4, 170, 0, 0 ); //Sash and Anklet
set_color_profile_slot( 1, 5, 255, 127, 59 ); //Tail Tip
set_color_profile_slot( 1, 6, 255, 148, 92 ); //Soul Fire
set_color_profile_slot( 1, 7, 122, 90, 78 ); //Pawpads

// forsburn
set_color_profile_slot( 2, 0, 179, 147, 77 ); //Fur
set_color_profile_slot( 2, 1, 255, 176, 66 ); //Hair
set_color_profile_slot( 2, 2, 71, 66, 63 ); //Kimono Main
set_color_profile_slot( 2, 3, 225, 255, 228 ); //Kimono Accent
set_color_profile_slot( 2, 4, 170, 0, 0 ); //Sash and Anklet
set_color_profile_slot( 2, 5, 255, 176, 66 ); //Tail Tip
set_color_profile_slot( 2, 6, 116, 110, 108 ); //Soul Fire
set_color_profile_slot( 2, 7, 71, 66, 63 ); //Pawpads

// clairen
set_color_profile_slot( 3, 0, 93, 93, 120 ); //Fur
set_color_profile_slot( 3, 1, 65, 54, 80 ); //Hair
set_color_profile_slot( 3, 2, 104, 86, 128 ); //Kimono Main
set_color_profile_slot( 3, 3, 184, 64, 99 ); //Kimono Accent
set_color_profile_slot( 3, 4, 97, 81, 120 ); //Sash and Anklet
set_color_profile_slot( 3, 5, 0, 255, 247 ); //Tail Tip
set_color_profile_slot( 3, 6, 255, 13, 106 ); //Soul Fire
set_color_profile_slot( 3, 7, 181, 181, 181 ); //Pawpads

// mollo
set_color_profile_slot( 4, 0, 175, 121, 148 ); //Fur
set_color_profile_slot( 4, 1, 189, 164, 134 ); //Hair
set_color_profile_slot( 4, 2, 145, 97, 94 ); //Kimono Main
set_color_profile_slot( 4, 3, 119, 85, 122 ); //Kimono Accent
set_color_profile_slot( 4, 4, 114, 67, 117 ); //Sash and Anklet
set_color_profile_slot( 4, 5, 255, 71, 71 ); //Tail Tip
set_color_profile_slot( 4, 6, 255, 145, 52 ); //Soul Fire
set_color_profile_slot( 4, 7, 145, 47, 41 ); //Pawpads

// wrastor
set_color_profile_slot( 5, 0, 168, 111, 150 ); //Fur
set_color_profile_slot( 5, 1, 204, 143, 162 ); //Hair
set_color_profile_slot( 5, 2, 201, 121, 147 ); //Kimono Main
set_color_profile_slot( 5, 3, 173, 122, 138 ); //Kimono Accent
set_color_profile_slot( 5, 4, 240, 230, 84 ); //Sash and Anklet
set_color_profile_slot( 5, 5, 246, 173, 197 ); //Tail Tip
set_color_profile_slot( 5, 6, 141, 231, 255 ); //Soul Fire
set_color_profile_slot( 5, 7, 57, 56, 52 ); //Pawpads

// absa
set_color_profile_slot( 6, 0, 214, 215, 244 ); //Fur
set_color_profile_slot( 6, 1, 231, 121, 185 ); //Hair
set_color_profile_slot( 6, 2, 120, 121, 161 ); //Kimono Main
set_color_profile_slot( 6, 3, 130, 173, 177 ); //Kimono Accent
set_color_profile_slot( 6, 4, 231, 121, 185 ); //Sash and Anklet
set_color_profile_slot( 6, 5, 116, 198, 207 ); //Tail Tip
set_color_profile_slot( 6, 6, 163, 216, 222 ); //Soul Fire
set_color_profile_slot( 6, 7, 57, 56, 52 ); //Pawpads

// eliana
set_color_profile_slot( 7, 0, 175, 145, 200 ); //Fur
set_color_profile_slot( 7, 1, 169, 212, 104 ); //Hair
set_color_profile_slot( 7, 2, 213, 153, 124 ); //Kimono Main
set_color_profile_slot( 7, 3, 150, 156, 145 ); //Kimono Accent
set_color_profile_slot( 7, 4, 213, 153, 124 ); //Sash and Anklet
set_color_profile_slot( 7, 5, 169, 212, 104 ); //Tail Tip
set_color_profile_slot( 7, 6, 137, 198, 194 ); //Soul Fire
set_color_profile_slot( 7, 7, 72, 69, 60 ); //Pawpads

// pomme
set_color_profile_slot( 8, 0, 233, 190, 224 ); //Fur
set_color_profile_slot( 8, 1, 183, 101, 184 ); //Hair
set_color_profile_slot( 8, 2, 167, 83, 132 ); //Kimono Main
set_color_profile_slot( 8, 3, 103, 49, 137 ); //Kimono Accent
set_color_profile_slot( 8, 4, 167, 83, 132 ); //Sash and Anklet
set_color_profile_slot( 8, 5, 219, 74, 195 ); //Tail Tip
set_color_profile_slot( 8, 6, 219, 74, 195 ); //Soul Fire
set_color_profile_slot( 8, 7, 103, 49, 137 ); //Pawpads

// orcane
set_color_profile_slot( 9, 0, 205, 247, 247 ); //Fur
set_color_profile_slot( 9, 1, 59, 73, 135 ); //Hair
set_color_profile_slot( 9, 2, 76, 94, 173 ); //Kimono Main
set_color_profile_slot( 9, 3, 205, 247, 247 ); //Kimono Accent
set_color_profile_slot( 9, 4, 79, 98, 181 ); //Sash and Anklet
set_color_profile_slot( 9, 5, 59, 73, 135 ); //Tail Tip
set_color_profile_slot( 9, 6, 205, 247, 247 ); //Soul Fire
set_color_profile_slot( 9, 7, 205, 247, 247 ); //Pawpads

// etalus
set_color_profile_slot( 10, 0, 251, 250, 252 ); //Fur
set_color_profile_slot( 10, 1, 251, 250, 252 ); //Hair
set_color_profile_slot( 10, 2, 180, 230, 230 ); //Kimono Main
set_color_profile_slot( 10, 3, 67, 68, 87 ); //Kimono Accent
set_color_profile_slot( 10, 4, 180, 230, 230 ); //Sash and Anklet
set_color_profile_slot( 10, 5, 180, 230, 230 ); //Tail Tip
set_color_profile_slot( 10, 6, 180, 230, 230 ); //Soul Fire
set_color_profile_slot( 10, 7, 67, 68, 87 ); //Pawpads

// ranno
set_color_profile_slot( 11, 0, 165, 192, 225 ); //Fur
set_color_profile_slot( 11, 1, 66, 76, 143 ); //Hair
set_color_profile_slot( 11, 2, 58, 210, 228 ); //Kimono Main
set_color_profile_slot( 11, 3, 66, 76, 143 ); //Kimono Accent
set_color_profile_slot( 11, 4, 255, 124, 0 ); //Sash and Anklet
set_color_profile_slot( 11, 5, 182, 244, 48 ); //Tail Tip
set_color_profile_slot( 11, 6, 182, 244, 48 ); //Soul Fire
set_color_profile_slot( 11, 7, 66, 76, 143 ); //Pawpads

// hodan
set_color_profile_slot( 12, 0, 201, 99, 99 ); //Fur
set_color_profile_slot( 12, 1, 253, 253, 253 ); //Hair
set_color_profile_slot( 12, 2, 82, 82, 235 ); //Kimono Main
set_color_profile_slot( 12, 3, 255, 220, 66 ); //Kimono Accent
set_color_profile_slot( 12, 4, 201, 220, 232 ); //Sash and Anklet
set_color_profile_slot( 12, 5, 137, 232, 255 ); //Tail Tip
set_color_profile_slot( 12, 6, 137, 232, 255 ); //Soul Fire
set_color_profile_slot( 12, 7, 139, 79, 40 ); //Pawpads

// kragg
set_color_profile_slot( 13, 0, 154, 196, 137 ); //Fur
set_color_profile_slot( 13, 1, 136, 104, 93 ); //Hair
set_color_profile_slot( 13, 2, 136, 104, 93 ); //Kimono Main
set_color_profile_slot( 13, 3, 213, 216, 221 ); //Kimono Accent
set_color_profile_slot( 13, 4, 136, 104, 93 ); //Sash and Anklet
set_color_profile_slot( 13, 5, 213, 216, 221 ); //Tail Tip
set_color_profile_slot( 13, 6, 171, 131, 117 ); //Soul Fire
set_color_profile_slot( 13, 7, 60, 36, 36 ); //Pawpads

// maypul
set_color_profile_slot( 14, 0, 127, 184, 93 ); //Fur
set_color_profile_slot( 14, 1, 65, 62, 55 ); //Hair
set_color_profile_slot( 14, 2, 113, 155, 111 ); //Kimono Main
set_color_profile_slot( 14, 3, 65, 62, 55 ); //Kimono Accent
set_color_profile_slot( 14, 4, 83, 128, 56 ); //Sash and Anklet
set_color_profile_slot( 14, 5, 196, 44, 69 ); //Tail Tip
set_color_profile_slot( 14, 6, 196, 44, 69 ); //Soul Fire
set_color_profile_slot( 14, 7, 46, 71, 31 ); //Pawpads

// sylvanos
set_color_profile_slot( 15, 0, 126, 167, 87 ); //Fur
set_color_profile_slot( 15, 1, 46, 71, 31 ); //Hair
set_color_profile_slot( 15, 2, 145, 86, 70 ); //Kimono Main
set_color_profile_slot( 15, 3, 242, 208, 134 ); //Kimono Accent
set_color_profile_slot( 15, 4, 83, 128, 56 ); //Sash and Anklet
set_color_profile_slot( 15, 5, 196, 44, 69 ); //Tail Tip
set_color_profile_slot( 15, 6, 196, 44, 69 ); //Soul Fire
set_color_profile_slot( 15, 7, 46, 71, 31 ); //Pawpads

// olympia
set_color_profile_slot( 16, 0, 184, 128, 83 ); //Fur
set_color_profile_slot( 16, 1, 156, 108, 70 ); //Hair
set_color_profile_slot( 16, 2, 236, 141, 202 ); //Kimono Main
set_color_profile_slot( 16, 3, 57, 56, 52 ); //Kimono Accent
set_color_profile_slot( 16, 4, 247, 243, 249 ); //Sash and Anklet
set_color_profile_slot( 16, 5, 236, 141, 202 ); //Tail Tip
set_color_profile_slot( 16, 6, 236, 141, 202 ); //Soul Fire
set_color_profile_slot( 16, 7, 57, 56, 52 ); //Pawpads

// shovel knight
set_color_profile_slot( 17, 0, 165, 192, 225 ); //Fur
set_color_profile_slot( 17, 1, 66, 76, 143 ); //Hair
set_color_profile_slot( 17, 2, 58, 210, 228 ); //Kimono Main
set_color_profile_slot( 17, 3, 255, 220, 0 ); //Kimono Accent
set_color_profile_slot( 17, 4, 66, 76, 143 ); //Sash and Anklet
set_color_profile_slot( 17, 5, 255, 220, 0 ); //Tail Tip
set_color_profile_slot( 17, 6, 165, 192, 225 ); //Soul Fire
set_color_profile_slot( 17, 7, 220, 203, 105 ); //Pawpads

// ori and sein
set_color_profile_slot( 18, 0, 248, 245, 252 ); //Fur
set_color_profile_slot( 18, 1, 248, 245, 252 ); //Hair
set_color_profile_slot( 18, 2, 248, 245, 252 ); //Kimono Main
set_color_profile_slot( 18, 3, 93, 203, 241 ); //Kimono Accent
set_color_profile_slot( 18, 4, 248, 245, 252 ); //Sash and Anklet
set_color_profile_slot( 18, 5, 93, 203, 241 ); //Tail Tip
set_color_profile_slot( 18, 6, 93, 203, 241 ); //Soul Fire
set_color_profile_slot( 18, 7, 206, 203, 209 ); //Pawpads

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