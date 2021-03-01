//Init Shader

var alt_cur = get_player_color(player) //sprite_get_xoffset(sprite_get("alts"));
switch (alt_cur) {
    case 0:
        set_character_color_slot( 0, 236, 204, 65 );
        set_character_color_slot( 1, 136, 136, 136 );
        set_character_color_slot( 2, 54, 108, 28 );
        set_character_color_slot( 3, 62, 72, 46 );
        set_character_color_slot( 4, 54, 108, 28 );
        set_character_color_slot( 5, 62, 72, 46 );
    break;
    case 7:
        for(i = 0; i <= 5; i++){
                set_character_color_shading(i, 0);
        }
    break;
}
/*
NUM_ALTS = 16; // update this with however many alts you have (it's 32 because Joshua had that many)
if("alt_name" in self || !("ping_color" in self)){ // this ensures that the code doesn't run on the online CSS
    var curAlt = get_player_color(player); // this gets the game's current alt
    if(!sprite_get_bbox_left(sprite_get("alts"))){  // this checks if you've set the real current alt to anything yet
        sprite_change_offset("alts", curAlt, curAlt); // set it
        sprite_change_collision_mask("alts", false, 2, 1, 1, 1, 1, 1); // mark that you've set it
        // this is only necessary so that the real alt variable matches your alt when you start a match in online mode (wouldn't be necessary if online wasn't jank)
    }
    var curRealAlt = sprite_get_xoffset(sprite_get("alts")); // get your real alt
    var prevAlt = sprite_get_yoffset(sprite_get("alts")); // get the previous game alt
    if(curAlt != prevAlt){ // if the game alt has changed
        if((curAlt > prevAlt && curAlt < prevAlt + 8) || curAlt < prevAlt - 8){ // the game alt was increased (accounts for skipping alts due to multiple players and looping back)
            curRealAlt++; // increase real alt
            if(curRealAlt == NUM_ALTS){ // reset the real alt if you've reached the max alts
                curRealAlt = 0;
            }
        } else { // the game alt was decreased
            if(curRealAlt == 0){ // set the to max real alts if you're at the first alt
                curRealAlt = NUM_ALTS;
            }
            curRealAlt--; // decrease the real alt
        }
    }
   
   sneakyalt = curRealAlt;
    // set shading to normal
    for(i = 0; i <= 5; i++){ // this is necessary if any your alts adjust the shading so that they don't change the shading for other alts
        set_character_color_shading(i, 1);
    }
 
    // here is where you set the alts [Edit necessary]
    // You have to set the alts for all of the alts, not just the extra ones.
    
    switch(curRealAlt){
        case 0: // Default
            set_character_color_slot( 0, 236, 204, 65 );
            set_character_color_slot( 1, 136, 136, 136 );
            set_character_color_slot( 2, 54, 108, 28 );
            set_character_color_slot( 3, 62, 72, 46 );
            set_character_color_slot( 4, 54, 108, 28 );
            set_character_color_slot( 5, 62, 72, 46 );
            break;
        case 1: // Violet
            set_character_color_slot( 0, 189, 103, 114 ); //Hair
            set_character_color_slot( 1, 136, 136, 136 ); //Metal
            set_character_color_slot( 2, 77, 106, 161 ); //Skin
            set_character_color_slot( 3, 39, 54, 82 ); //Skinshade
            set_character_color_slot( 4, 95, 205, 228 ); //Hood
            set_character_color_slot( 5, 99, 155, 255 ); //Hoodshade
            break;
        case 2: // Rose
            set_character_color_slot( 0, 196, 53, 53 ); //Hair
            set_character_color_slot( 1, 136, 136, 136 ); //Metal
            set_character_color_slot( 2, 108, 45, 28 ); //Skin
            set_character_color_slot( 3, 72, 46, 46 ); //Skinshade
            set_character_color_slot( 4, 54, 108, 28 ); //Hood
            set_character_color_slot( 5, 62, 72, 46 ); //Hoodshade
            break;
        case 3: // Vine (Sauce)
            set_character_color_slot( 0, 237, 255, 237 ); //Hair
            set_character_color_slot( 1, 136, 136, 136 ); //Metal
            set_character_color_slot( 2, 105, 209, 54 ); //Skin
            set_character_color_slot( 3, 54, 108, 28 ); //Skinshade
            set_character_color_slot( 4, 54, 108, 28 ); //Hood
            set_character_color_slot( 5, 62, 72, 46 ); //Hoodshade
            break;
        case 4: // Wilted
            set_character_color_slot( 0, 125, 50, 191 ); //Hair
            set_character_color_slot( 1, 136, 136, 136 ); //Metal
            set_character_color_slot( 2, 23, 66, 37 ); //Skin
            set_character_color_slot( 3, 12, 38, 0 ); //Skinshade
            set_character_color_slot( 4, 0, 51, 0 ); //Hood
            set_character_color_slot( 5, 15, 15, 15 ); //Hoodshade
            break;
        case 5: // Purple
            set_character_color_slot( 0, 255, 255, 255 ); //Hair
            set_character_color_slot( 1, 136, 136, 136 ); //Metal
            set_character_color_slot( 2, 85, 62, 135 ); //Skin
            set_character_color_slot( 3, 62, 62, 79 ); //Skinshade
            set_character_color_slot( 4, 201, 100, 174 ); //Hood
            set_character_color_slot( 5, 148, 67, 127 ); //Hoodshade
            break;
        case 6: //Abyss
            set_character_color_slot( 0, 122, 129, 187 ); //Hair
            set_character_color_slot( 1, 136, 136, 136 ); //Metal
            set_character_color_slot( 2, 122, 129, 187 ); //Skin
            set_character_color_slot( 3, 63, 81, 122 ); //Skinshade
            set_character_color_slot( 4, 79, 61, 94 ); //Hood
            set_character_color_slot( 5, 44, 36, 58 ); //Hoodshade
            break;
        case 7: // Early Access
            set_character_color_slot( 0, 211, 226, 154 ); //Hair
            set_character_color_slot( 1, 211, 226, 154 ); //Metal
            set_character_color_slot( 2, 211, 226, 154 ); //Skin
            set_character_color_slot( 3, 211, 226, 154 ); //Skinshade
            set_character_color_slot( 4, 83, 122, 62 ); //Hood
            set_character_color_slot( 5, 83, 122, 62 ); //Hoodshade
            
            for(i = 0; i <= 5; i++){
                    set_character_color_shading(i, 0);
            }
            break;
        case 8: // B.B. Hood
            set_character_color_slot( 0, 236, 204, 65 ); //Hair
            set_character_color_slot( 1, 136, 136, 136 ); //Metal
            set_character_color_slot( 2, 255, 255, 255 ); //Skin
            set_character_color_slot( 3, 190, 221, 240 ); //Skinshade
            set_character_color_slot( 4, 196, 53, 53 ); //Hood
            set_character_color_slot( 5, 72, 46, 46 ); //Hoodshade
            break;
        case 9:// Mori Calliope
            set_character_color_slot( 0, 249, 200, 220 ); //Hair
            set_character_color_slot( 1, 130, 116, 105 ); //Metal
            set_character_color_slot( 2, 111, 87, 88 ); //Skin
            set_character_color_slot( 3, 70, 58, 58 ); //Skinshade
            set_character_color_slot( 4, 57, 50, 52 ); //Hood
            set_character_color_slot( 5, 29, 28, 33 ); //Hoodshade
            break;
        case 10: // Mariah
            set_character_color_slot( 0, 255, 255, 255 ); //Hair
            set_character_color_slot( 1, 54, 54, 54 ); //Metal
            set_character_color_slot( 2, 158, 76, 76 ); //Skin
            set_character_color_slot( 3, 92, 25, 25 ); //Skinshade
            set_character_color_slot( 4, 196, 53, 53 ); //Hood
            set_character_color_slot( 5, 92, 25, 25 ); //Hoodshade
            break;
        case 11:// Ghost (FF6)
            set_character_color_slot( 0, 255, 255, 255 ); //Hair
            set_character_color_slot( 1, 102, 100, 91 ); //Metal
            set_character_color_slot( 2, 237, 240, 255 ); //Skin
            set_character_color_slot( 3, 141, 151, 201 ); //Skinshade
            set_character_color_slot( 4, 237, 240, 255 ); //Hood
            set_character_color_slot( 5, 141, 151, 201 ); //Hoodshade
            break;
        case 12: // Death
            set_character_color_slot( 0, 252, 252, 255 ); //Hair
            set_character_color_slot( 1, 54, 54, 54 ); //Metal
            set_character_color_slot( 2, 66, 69, 79 ); //Skin
            set_character_color_slot( 3, 9, 9, 33 ); //Skinshade
            set_character_color_slot( 4, 66, 69, 79 ); //Hood
            set_character_color_slot( 5, 9, 9, 33 ); //Hoodshade
            break;
        case 13: // Doctor Doom
            set_character_color_slot( 0, 246, 197, 115 ); //Hair
            set_character_color_slot( 1, 118, 129, 126 ); //Metal
            set_character_color_slot( 2, 176, 195, 200 ); //Skin
            set_character_color_slot( 3, 93, 108, 100 ); //Skinshade
            set_character_color_slot( 4, 61, 150, 89 ); //Hood
            set_character_color_slot( 5, 31, 97, 51 ); //Hoodshade
            break;
        case 14: // Ruby Rose
            set_character_color_slot( 0, 107, 43, 49 ); //Hair
            set_character_color_slot( 1, 230, 46, 54 ); //Metal
            set_character_color_slot( 2, 72, 55, 60 ); //Skin
            set_character_color_slot( 3, 38, 30, 35 ); //Skinshade
            set_character_color_slot( 4, 230, 46, 54 ); //Hood
            set_character_color_slot( 5, 142, 33, 45 ); //Hoodshade
            break;
        case 15:// Heartbreak
            set_character_color_slot( 0, 167, 104, 191 ); //Hair
            set_character_color_slot( 1, 255, 177, 238 ); //Metal
            set_character_color_slot( 2, 162, 139, 82 ); //Skin
            set_character_color_slot( 3, 67, 53, 18 ); //Skinshade
            set_character_color_slot( 4, 235, 228, 83 ); //Hood
            set_character_color_slot( 5, 172, 166, 43 ); //Hoodshade
            break;
    }
    
    // this stores the real alt and current game alt (which becomes the previous game alt)
    sprite_change_offset("alts", curRealAlt, curAlt); // x is the actual alt and is the previous normal alt
}
*/