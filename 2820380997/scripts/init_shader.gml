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

// Heatwave
set_color_profile_slot( 4, 0, 27, 37, 90 ); //Fur
set_color_profile_slot( 4, 1, 253, 253, 251 ); //Hair
set_color_profile_slot( 4, 2, 140, 24, 33 ); //Kimono Main
set_color_profile_slot( 4, 3, 226, 216, 23 ); //Kimono Accent
set_color_profile_slot( 4, 4, 220, 216, 29 ); //Sash and Anklet
set_color_profile_slot( 4, 5, 211, 108, 41 ); //Tail Tip
set_color_profile_slot( 4, 6, 245, 27, 42 ); //Soul Fire
set_color_profile_slot( 4, 7, 253, 253, 251 ); //Pawpads

// Kitsune
set_color_profile_slot( 5, 0, 255, 255, 255 ); //Fur
set_color_profile_slot( 5, 1, 74, 32, 18 ); //Hair
set_color_profile_slot( 5, 2, 235, 168, 248 ); //Kimono Main
set_color_profile_slot( 5, 3, 235, 168, 248 ); //Kimono Accent
set_color_profile_slot( 5, 4, 214, 73, 94 ); //Sash and Anklet
set_color_profile_slot( 5, 5, 214, 73, 94 ); //Tail Tip
set_color_profile_slot( 5, 6, 255, 255, 255 ); //Soul Fire
set_color_profile_slot( 5, 7, 214, 73, 94 ); //Pawpads

// Star Dust
set_color_profile_slot( 6, 0, 255, 195, 201 ); //Fur
set_color_profile_slot( 6, 1, 168, 86, 113 ); //Hair
set_color_profile_slot( 6, 2, 172, 37, 230 ); //Kimono Main
set_color_profile_slot( 6, 3, 251, 255, 0 ); //Kimono Accent
set_color_profile_slot( 6, 4, 172, 37, 230 ); //Sash and Anklet
set_color_profile_slot( 6, 5, 219, 112, 147 ); //Tail Tip
set_color_profile_slot( 6, 6, 219, 112, 147 ); //Soul Fire
set_color_profile_slot( 6, 7, 219, 112, 147 ); //Pawpads

// Jade Ghost
set_color_profile_slot( 7, 0, 248, 242, 255 ); //Fur
set_color_profile_slot( 7, 1, 248, 242, 255 ); //Hair
set_color_profile_slot( 7, 2, 34, 32, 79 ); //Kimono Main
set_color_profile_slot( 7, 3, 247, 54, 54 ); //Kimono Accent
set_color_profile_slot( 7, 4, 247, 54, 54 ); //Sash and Anklet
set_color_profile_slot( 7, 5, 248, 242, 255 ); //Tail Tip
set_color_profile_slot( 7, 6, 87, 255, 219 ); //Soul Fire
set_color_profile_slot( 7, 7, 34, 32, 79 ); //Pawpads

// Snowblind
set_color_profile_slot( 8, 0, 130, 86, 187 ); //Fur
set_color_profile_slot( 8, 1, 200, 200, 240 ); //Hair
set_color_profile_slot( 8, 2, 92, 108, 166 ); //Kimono Main
set_color_profile_slot( 8, 3, 165, 205, 234 ); //Kimono Accent
set_color_profile_slot( 8, 4, 238, 235, 194 ); //Sash and Anklet
set_color_profile_slot( 8, 5, 238, 235, 194 ); //Tail Tip
set_color_profile_slot( 8, 6, 165, 205, 234 ); //Soul Fire
set_color_profile_slot( 8, 7, 238, 235, 194 ); //Pawpads

// Nova Visionary
set_color_profile_slot( 9, 0, 213, 199, 242 ); //Fur
set_color_profile_slot( 9, 1, 100, 100, 139 ); //Hair
set_color_profile_slot( 9, 2, 175, 207, 249 ); //Kimono Main
set_color_profile_slot( 9, 3, 255, 255, 255 ); //Kimono Accent
set_color_profile_slot( 9, 4, 255, 234, 115 ); //Sash and Anklet
set_color_profile_slot( 9, 5, 238, 145, 88 ); //Tail Tip
set_color_profile_slot( 9, 6, 175, 207, 249 ); //Soul Fire
set_color_profile_slot( 9, 7, 252, 244, 198 ); //Pawpads

// Graveyard Keeper
set_color_profile_slot( 10, 0, 250, 251, 255 ); //Fur
set_color_profile_slot( 10, 1, 34, 35, 54 ); //Hair
set_color_profile_slot( 10, 2, 152, 178, 181 ); //Kimono Main
set_color_profile_slot( 10, 3, 152, 178, 181 ); //Kimono Accent
set_color_profile_slot( 10, 4, 128, 36, 40 ); //Sash and Anklet
set_color_profile_slot( 10, 5, 34, 35, 54 ); //Tail Tip
set_color_profile_slot( 10, 6, 128, 36, 40 ); //Soul Fire
set_color_profile_slot( 10, 7, 128, 36, 40 ); //Pawpads

// Flickering Spectre
set_color_profile_slot( 11, 0, 255, 130, 47 ); //Fur
set_color_profile_slot( 11, 1, 209, 202, 180 ); //Hair
set_color_profile_slot( 11, 2, 86, 74, 151 ); //Kimono Main
set_color_profile_slot( 11, 3, 74, 208, 223 ); //Kimono Accent
set_color_profile_slot( 11, 4, 74, 208, 223 ); //Sash and Anklet
set_color_profile_slot( 11, 5, 238, 145, 88 ); //Tail Tip
set_color_profile_slot( 11, 6, 255, 130, 47 ); //Soul Fire
set_color_profile_slot( 11, 7, 247, 238, 213 ); //Pawpads

// Portals
set_color_profile_slot( 12, 0, 55, 57, 94 ); //Fur
set_color_profile_slot( 12, 1, 21, 243, 255 ); //Hair
set_color_profile_slot( 12, 2, 102, 41, 184 ); //Kimono Main
set_color_profile_slot( 12, 3, 196, 44, 69 ); //Kimono Accent
set_color_profile_slot( 12, 4, 21, 243, 255 ); //Sash and Anklet
set_color_profile_slot( 12, 5, 21, 243, 255 ); //Tail Tip
set_color_profile_slot( 12, 6, 102, 41, 184 ); //Soul Fire
set_color_profile_slot( 12, 7, 21, 243, 255 ); //Pawpads

// Wicked Scroll
set_color_profile_slot( 13, 0, 243, 242, 255 ); //Fur
set_color_profile_slot( 13, 1, 33, 26, 138 ); //Hair
set_color_profile_slot( 13, 2, 243, 242, 255 ); //Kimono Main
set_color_profile_slot( 13, 3, 250, 214, 160 ); //Kimono Accent
set_color_profile_slot( 13, 4, 250, 214, 160 ); //Sash and Anklet
set_color_profile_slot( 13, 5, 33, 26, 138 ); //Tail Tip
set_color_profile_slot( 13, 6, 46, 36, 189 ); //Soul Fire
set_color_profile_slot( 13, 7, 101, 95, 176 ); //Pawpads

// Ryukoko
set_color_profile_slot( 14, 0, 255, 245, 245 ); //Fur
set_color_profile_slot( 14, 1, 36, 44, 66 ); //Hair
set_color_profile_slot( 14, 2, 45, 62, 86 ); //Kimono Main
set_color_profile_slot( 14, 3, 191, 43, 75 ); //Kimono Accent
set_color_profile_slot( 14, 4, 212, 50, 14 ); //Sash and Anklet
set_color_profile_slot( 14, 5, 36, 44, 66 ); //Tail Tip
set_color_profile_slot( 14, 6, 232, 104, 60 ); //Soul Fire
set_color_profile_slot( 14, 7, 176, 168, 66 ); //Pawpads

// Roekanshoku
set_color_profile_slot( 15, 0, 255, 245, 245 ); //Fur
set_color_profile_slot( 15, 1, 153, 100, 77 ); //Hair
set_color_profile_slot( 15, 2, 231, 239, 244 ); //Kimono Main
set_color_profile_slot( 15, 3, 72, 153, 247 ); //Kimono Accent
set_color_profile_slot( 15, 4, 36, 44, 66 ); //Sash and Anklet
set_color_profile_slot( 15, 5, 153, 100, 77 ); //Tail Tip
set_color_profile_slot( 15, 6, 153, 2, 23 ); //Soul Fire
set_color_profile_slot( 15, 7, 212, 50, 14 ); //Pawpads

// Fubuki Shirakami
set_color_profile_slot( 16, 0, 242, 228, 201 ); //Fur
set_color_profile_slot( 16, 1, 246, 248, 252 ); //Hair
set_color_profile_slot( 16, 2, 246, 248, 252 ); //Kimono Main
set_color_profile_slot( 16, 3, 171, 226, 255 ); //Kimono Accent
set_color_profile_slot( 16, 4, 75, 174, 144 ); //Sash and Anklet
set_color_profile_slot( 16, 5, 59, 43, 55 ); //Tail Tip
set_color_profile_slot( 16, 6, 171, 226, 255 ); //Soul Fire
set_color_profile_slot( 16, 7, 54, 49, 47 ); //Pawpads

// Yin and Yang
set_color_profile_slot( 17, 0, 242, 227, 227 ); //Fur
set_color_profile_slot( 17, 1, 33, 32, 32 ); //Hair
set_color_profile_slot( 17, 2, 59, 51, 51 ); //Kimono Main
set_color_profile_slot( 17, 3, 247, 232, 232 ); //Kimono Accent
set_color_profile_slot( 17, 4, 36, 36, 36 ); //Sash and Anklet
set_color_profile_slot( 17, 5, 33, 32, 32 ); //Tail Tip
set_color_profile_slot( 17, 6, 71, 71, 71 ); //Soul Fire
set_color_profile_slot( 17, 7, 133, 129, 129 ); //Pawpads

// Ranked Gold
set_color_profile_slot( 18, 0, 247, 241, 161 ); //Fur
set_color_profile_slot( 18, 1, 204, 190, 98 ); //Hair
set_color_profile_slot( 18, 2, 230, 232, 240 ); //Kimono Main
set_color_profile_slot( 18, 3, 52, 56, 217 ); //Kimono Accent
set_color_profile_slot( 18, 4, 52, 56, 217 ); //Sash and Anklet
set_color_profile_slot( 18, 5, 250, 249, 248 ); //Tail Tip
set_color_profile_slot( 18, 6, 19, 74, 194 ); //Soul Fire
set_color_profile_slot( 18, 7, 244, 112, 133 ); //Pawpads

// Tales of Ninjas
set_color_profile_slot( 19, 0, 64, 56, 77 ); //Fur
set_color_profile_slot( 19, 1, 84, 80, 102 ); //Hair
set_color_profile_slot( 19, 2, 180, 178, 236 ); //Kimono Main
set_color_profile_slot( 19, 3, 239, 236, 251 ); //Kimono Accent
set_color_profile_slot( 19, 4, 180, 178, 236 ); //Sash and Anklet
set_color_profile_slot( 19, 5, 84, 80, 102 ); //Tail Tip
set_color_profile_slot( 19, 6, 228, 115, 94 ); //Soul Fire
set_color_profile_slot( 19, 7, 241, 237, 250 ); //Pawpads

// Caster of Fate
set_color_profile_slot( 20, 0, 253, 236, 212 ); //Fur
set_color_profile_slot( 20, 1, 255, 89, 89 ); //Hair
set_color_profile_slot( 20, 2, 68, 82, 196 ); //Kimono Main
set_color_profile_slot( 20, 3, 233, 194, 127 ); //Kimono Accent
set_color_profile_slot( 20, 4, 54, 41, 105 ); //Sash and Anklet
set_color_profile_slot( 20, 5, 255, 89, 89 ); //Tail Tip
set_color_profile_slot( 20, 6, 68, 82, 196 ); //Soul Fire
set_color_profile_slot( 20, 7, 51, 53, 52 ); //Pawpads

// Blood Moon
set_color_profile_slot( 21, 0, 60, 60, 60 ); //Fur
set_color_profile_slot( 21, 1, 220, 220, 200 ); //Hair
set_color_profile_slot( 21, 2, 100, 75, 75 ); //Kimono Main
set_color_profile_slot( 21, 3, 120, 50, 50 ); //Kimono Accent
set_color_profile_slot( 21, 4, 210, 110, 60 ); //Sash and Anklet
set_color_profile_slot( 21, 5, 220, 220, 200 ); //Tail Tip
set_color_profile_slot( 21, 6, 220, 220, 200 ); //Soul Fire
set_color_profile_slot( 21, 7, 220, 220, 200 ); //Pawpads

// Cheri
set_color_profile_slot( 22, 0, 251, 230, 245 ); //Fur
set_color_profile_slot( 22, 1, 186, 153, 71 ); //Hair
set_color_profile_slot( 22, 2, 255, 82, 108 ); //Kimono Main
set_color_profile_slot( 22, 3, 154, 214, 255 ); //Kimono Accent
set_color_profile_slot( 22, 4, 255, 82, 108 ); //Sash and Anklet
set_color_profile_slot( 22, 5, 186, 153, 71 ); //Tail Tip
set_color_profile_slot( 22, 6, 126, 218, 255 ); //Soul Fire
set_color_profile_slot( 22, 7, 154, 214, 255 ); //Pawpads

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


//#endregion

        break;
    }   
    //print("in init shader");
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
	    //print("Color slot set Player " + string(player) + " Slot :" + string(last_frame_color_alt));
	   /*
	    // Online Cursor Player zero set
	    for(var shade_slot = 0;shade_slot < 8;shade_slot++){
	        var col_R = get_color_profile_slot_r( get_player_color(0), shade_slot);
	        var col_G = get_color_profile_slot_g( get_player_color(0), shade_slot);
	        var col_B = get_color_profile_slot_b( get_player_color(0), shade_slot);
	        set_article_color_slot( shade_slot, col_R, col_G, col_B );
	        set_character_color_slot( shade_slot, col_R, col_G, col_B );
	        //print("Shade slot set: " + string(shade_slot));
	        //print("R:" + string(col_R) + " /G:" + string(col_G)+ "/ B:" + string(col_B));
	    }
	    
	    print("Color slot set 0: " + string(get_player_color(0)));
	//}
	*/
manual_init_shader_call = false;
}

#define rainbowAlt(profileNum)
    set_character_color_slot( argument[0], color_r, color_g, color_b);
    set_article_color_slot(argument[0], color_r, color_g, color_b);