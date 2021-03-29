// roa
if player == 0{ // Online Player Check
    if object_index != oPlayer exit;
}

if get_player_color(player) == 0{
    set_character_color_slot(1, 211, 209, 210);
    set_character_color_slot(2, 211, 209, 210);
    set_character_color_slot(3, 61, 51, 65);
    set_character_color_slot(4, 211, 209, 210);
}

if get_player_color(player) == 1 or get_player_color(player) == 8 or get_player_color(player) == 13 or get_player_color(player) == 15{
    set_character_color_shading(7, 2);
}

/*
NUM_ALTS = 32; // update this with however many alts you have (it's 32 because Joshua had that many)
if("alt_name" in self || !("ping_color" in self)){ // this ensures that the code doesn't run on the online CSS
    var curAlt = get_player_color(player); // this gets the game's current alt
    if(!sprite_get_bbox_left(sprite_get("dog"))){  // this checks if you've set the real current alt to anything yet
        sprite_change_offset("dog", curAlt, curAlt); // set it
        sprite_change_collision_mask("dog", false, 2, 1, 1, 1, 1, 1); // mark that you've set it
        // this is only necessary so that the real alt variable matches your alt when you start a match in online mode (wouldn't be necessary if online wasn't jank)
    }
    var curRealAlt = sprite_get_xoffset(sprite_get("dog")); // get your real alt
    var prevAlt = sprite_get_yoffset(sprite_get("dog")); // get the previous game alt
    if(curAlt != prevAlt){ // if the game alt has changed
        if((curAlt > prevAlt && curAlt < prevAlt + 8) || curAlt < prevAlt - 8){ // the game alt was increased (accounts for skipping alts due to multiple players and looping back)
            curRealAlt++; // increase real alt
            if(curRealAlt == NUM_ALTS){ // reset the real alt if you've reached the max alts
                curRealAlt = 0;
            }
        } else{ // the game alt was decreased
            if(curRealAlt == 0){ // set the to max real alts if you're at the first alt
                curRealAlt = NUM_ALTS;
            }
            curRealAlt--; // decrease the real alt
        }
    }
    
    sneakyalt = curRealAlt;

    // set shading to normal
    for(i = 0; i < 8; i++){ // this is necessary if any your alts adjust the shading so that they don't change the shading for other alts
        set_character_color_shading(i, 1);
    }

    // here is where you set the alts [Edit necessary]
    // You have to set the alts for all of the alts, not just the extra ones.

     switch(curRealAlt){
        case 0:
            // Default
set_character_color_slot( 0, 237, 173, 156 ); //Skin
set_character_color_slot( 1, 211, 209, 210 ); //Gloves
set_character_color_slot( 2, 211, 209, 210 ); //Coat
set_character_color_slot( 3, 61, 51, 65 ); //Tights
set_character_color_slot( 4, 211, 209, 210 ); //Boots
set_character_color_slot( 5, 192, 55, 122 ); //Skirt
set_character_color_slot( 6, 108, 139, 199 ); //Eyes
set_character_color_slot( 7, 223, 162, 90 ); //Hair
        break;

        case 1:
            // Blue (Selicy)
set_character_color_slot( 0, 210, 176, 167 ); //Skin
set_character_color_slot( 1, 193, 186, 187 ); //Gloves
set_character_color_slot( 2, 143, 19, 19 ); //Coat
set_character_color_slot( 3, 61, 51, 65 ); //Tights
set_character_color_slot( 4, 193, 186, 187 ); //Boots
set_character_color_slot( 5, 63, 164, 179 ); //Skirt
set_character_color_slot( 6, 101, 189, 200 ); //Eyes
set_character_color_slot( 7, 49, 78, 173 ); //Hair
        break;

        case 2:
            // Red (Hazel)
set_character_color_slot( 0, 205, 156, 144 ); //Skin
set_character_color_slot( 1, 82, 43, 38 ); //Gloves
set_character_color_slot( 2, 135, 18, 22 ); //Coat
set_character_color_slot( 3, 96, 85, 95 ); //Tights
set_character_color_slot( 4, 42, 26, 26 ); //Boots
set_character_color_slot( 5, 59, 51, 89 ); //Skirt
set_character_color_slot( 6, 142, 200, 67 ); //Eyes
set_character_color_slot( 7, 54, 14, 23 ); //Hair
        break;

        case 3:
            // Green (Violette)
set_character_color_slot( 0, 214, 171, 149 ); //Skin
set_character_color_slot( 1, 90, 3, 47 ); //Gloves
set_character_color_slot( 2, 29, 52, 53 ); //Coat
set_character_color_slot( 3, 62, 22, 36 ); //Tights
set_character_color_slot( 4, 26, 20, 30 ); //Boots
set_character_color_slot( 5, 104, 157, 105 ); //Skirt
set_character_color_slot( 6, 173, 69, 154 ); //Eyes
set_character_color_slot( 7, 105, 184, 124 ); //Hair
        break;

        case 4:
            // Black/White (Terra)
set_character_color_slot( 0, 199, 149, 130 ); //Skin
set_character_color_slot( 1, 255, 199, 105 ); //Gloves
set_character_color_slot( 2, 210, 166, 173 ); //Coat
set_character_color_slot( 3, 199, 174, 175 ); //Tights
set_character_color_slot( 4, 255, 199, 105 ); //Boots
set_character_color_slot( 5, 255, 199, 105 ); //Skirt
set_character_color_slot( 6, 33, 17, 77 ); //Eyes
set_character_color_slot( 7, 30, 24, 37 ); //Hair
        break;

        case 5:
            // Yellow (Gunner)
set_character_color_slot( 0, 218, 176, 156 ); //Skin
set_character_color_slot( 1, 222, 177, 75 ); //Gloves
set_character_color_slot( 2, 66, 20, 38 ); //Coat
set_character_color_slot( 3, 31, 30, 30 ); //Tights
set_character_color_slot( 4, 64, 26, 43 ); //Boots
set_character_color_slot( 5, 186, 89, 45 ); //Skirt
set_character_color_slot( 6, 58, 39, 45 ); //Eyes
set_character_color_slot( 7, 82, 60, 43 ); //Hair
        break;

        case 6:
            // Abyss
set_character_color_slot( 0, 127, 147, 179 ); //Skin
set_character_color_slot( 1, 217, 113, 255 ); //Gloves
set_character_color_slot( 2, 42, 35, 56 ); //Coat
set_character_color_slot( 3, 144, 59, 206 ); //Tights
set_character_color_slot( 4, 217, 113, 255 ); //Boots
set_character_color_slot( 5, 78, 23, 141 ); //Skirt
set_character_color_slot( 6, 255, 255, 255 ); //Eyes
set_character_color_slot( 7, 42, 35, 56 ); //Hair
        break;

        case 7:
            // White Knight (Reva)
set_character_color_slot( 0, 222, 166, 136 ); //Skin
set_character_color_slot( 1, 86, 51, 55 ); //Gloves
set_character_color_slot( 2, 210, 153, 162 ); //Coat
set_character_color_slot( 3, 27, 87, 59 ); //Tights
set_character_color_slot( 4, 220, 194, 201 ); //Boots
set_character_color_slot( 5, 223, 158, 77 ); //Skirt
set_character_color_slot( 6, 30, 100, 53 ); //Eyes
set_character_color_slot( 7, 104, 196, 145 ); //Hair
        break;

        case 8:
            // Hired Hand (Shiso)
set_character_color_slot( 0, 215, 176, 154 ); //Skin
set_character_color_slot( 1, 61, 39, 31 ); //Gloves
set_character_color_slot( 2, 13, 34, 51 ); //Coat
set_character_color_slot( 3, 39, 70, 99 ); //Tights
set_character_color_slot( 4, 35, 22, 15 ); //Boots
set_character_color_slot( 5, 40, 61, 58 ); //Skirt
set_character_color_slot( 6, 108, 77, 97 ); //Eyes
set_character_color_slot( 7, 16, 56, 102 ); //Hair
        break;

        case 9:
            // Triggered (Shopkeeper)
set_character_color_slot( 0, 222, 181, 158 ); //Skin
set_character_color_slot( 1, 240, 207, 91 ); //Gloves
set_character_color_slot( 2, 8, 66, 48 ); //Coat
set_character_color_slot( 3, 216, 213, 156 ); //Tights
set_character_color_slot( 4, 66, 34, 18 ); //Boots
set_character_color_slot( 5, 27, 103, 79 ); //Skirt
set_character_color_slot( 6, 194, 52, 115 ); //Eyes
set_character_color_slot( 7, 168, 122, 99 ); //Hair
        break;

        case 10:
            // Player 2
set_character_color_slot( 0, 201, 147, 131 ); //Skin
set_character_color_slot( 1, 237, 221, 208 ); //Gloves
set_character_color_slot( 2, 237, 221, 208 ); //Coat
set_character_color_slot( 3, 72, 61, 62 ); //Tights
set_character_color_slot( 4, 237, 221, 208 ); //Boots
set_character_color_slot( 5, 89, 0, 5 ); //Skirt
set_character_color_slot( 6, 191, 222, 255 ); //Eyes
set_character_color_slot( 7, 136, 83, 70 ); //Hair
        break;

        case 11:
            // Professional (Sonia)
set_character_color_slot( 0, 237, 173, 156 ); //Skin
set_character_color_slot( 1, 237, 173, 156 ); //Gloves
set_character_color_slot( 2, 214, 163, 139 ); //Coat
set_character_color_slot( 3, 179, 208, 208 ); //Tights
set_character_color_slot( 4, 18, 103, 94 ); //Boots
set_character_color_slot( 5, 18, 103, 94 ); //Skirt
set_character_color_slot( 6, 75, 195, 152 ); //Eyes
set_character_color_slot( 7, 235, 100, 42 ); //Hair
        break;

        case 12:
            // Angelic (Exusiai)
set_character_color_slot( 0, 237, 173, 156 ); //Skin
set_character_color_slot( 1, 58, 53, 36 ); //Gloves
set_character_color_slot( 2, 220, 235, 230 ); //Coat
set_character_color_slot( 3, 33, 20, 31 ); //Tights
set_character_color_slot( 4, 33, 20, 31 ); //Boots
set_character_color_slot( 5, 132, 121, 137 ); //Skirt
set_character_color_slot( 6, 204, 78, 105 ); //Eyes
set_character_color_slot( 7, 94, 1, 35 ); //Hair
        break;

        case 13:
            // Blinded (Ashley)
set_character_color_slot( 0, 165, 117, 91 ); //Skin
set_character_color_slot( 1, 191, 151, 139 ); //Gloves
set_character_color_slot( 2, 34, 78, 46 ); //Coat
set_character_color_slot( 3, 70, 59, 66 ); //Tights
set_character_color_slot( 4, 217, 189, 173 ); //Boots
set_character_color_slot( 5, 226, 232, 235 ); //Skirt
set_character_color_slot( 6, 255, 255, 255 ); //Eyes
set_character_color_slot( 7, 213, 219, 227 ); //Hair
        break;

        case 14:
            // Does It Again (smol)
set_character_color_slot( 0, 255, 202, 194 ); //Skin
set_character_color_slot( 1, 138, 206, 217 ); //Gloves
set_character_color_slot( 2, 27, 24, 59 ); //Coat
set_character_color_slot( 3, 255, 202, 194 ); //Tights
set_character_color_slot( 4, 44, 60, 89 ); //Boots
set_character_color_slot( 5, 149, 213, 222 ); //Skirt
set_character_color_slot( 6, 94, 217, 255 ); //Eyes
set_character_color_slot( 7, 164, 207, 222 ); //Hair
        break;

        case 15:
            // Spheromancer (Lea)
set_character_color_slot( 0, 242, 173, 155 ); //Skin
set_character_color_slot( 1, 138, 108, 125 ); //Gloves
set_character_color_slot( 2, 102, 0, 0 ); //Coat
set_character_color_slot( 3, 108, 0, 11 ); //Tights
set_character_color_slot( 4, 193, 186, 187 ); //Boots
set_character_color_slot( 5, 193, 186, 187 ); //Skirt
set_character_color_slot( 6, 179, 34, 69 ); //Eyes
set_character_color_slot( 7, 71, 114, 218 ); //Hair
        break;

        case 16:
            // Adventurous (Archytas)
set_character_color_slot( 0, 165, 117, 91 ); //Skin
set_character_color_slot( 1, 237, 221, 208 ); //Gloves
set_character_color_slot( 2, 255, 99, 188 ); //Coat
set_character_color_slot( 3, 79, 37, 70 ); //Tights
set_character_color_slot( 4, 237, 221, 208 ); //Boots
set_character_color_slot( 5, 255, 72, 0 ); //Skirt
set_character_color_slot( 6, 255, 143, 244 ); //Eyes
set_character_color_slot( 7, 232, 74, 42 ); //Hair
        break;

        case 17:
            // Musical (Ruby's OC)
set_character_color_slot( 0, 224, 210, 197 ); //Skin
set_character_color_slot( 1, 224, 210, 197 ); //Gloves
set_character_color_slot( 2, 126, 135, 116 ); //Coat
set_character_color_slot( 3, 231, 138, 165 ); //Tights
set_character_color_slot( 4, 65, 63, 65 ); //Boots
set_character_color_slot( 5, 65, 63, 65 ); //Skirt
set_character_color_slot( 6, 111, 160, 83 ); //Eyes
set_character_color_slot( 7, 111, 160, 83 ); //Hair
        break;

        case 18:
            // .EXE (Mega Man)
set_character_color_slot( 0, 255, 203, 151 ); //Skin
set_character_color_slot( 1, 44, 136, 199 ); //Gloves
set_character_color_slot( 2, 46, 50, 88 ); //Coat
set_character_color_slot( 3, 46, 50, 88 ); //Tights
set_character_color_slot( 4, 44, 136, 199 ); //Boots
set_character_color_slot( 5, 185, 220, 196 ); //Skirt
set_character_color_slot( 6, 79, 201, 90 ); //Eyes
set_character_color_slot( 7, 30, 34, 71 ); //Hair
        break;

        case 19:
            // Psychic (Sabrina)
set_character_color_slot( 0, 248, 234, 225 ); //Skin
set_character_color_slot( 1, 255, 255, 253 ); //Gloves
set_character_color_slot( 2, 173, 80, 98 ); //Coat
set_character_color_slot( 3, 86, 72, 81 ); //Tights
set_character_color_slot( 4, 173, 80, 98 ); //Boots
set_character_color_slot( 5, 173, 80, 98 ); //Skirt
set_character_color_slot( 6, 134, 63, 77 ); //Eyes
set_character_color_slot( 7, 72, 71, 111 ); //Hair
        break;

        case 20:
            // Aced (Athena Cykes)
set_character_color_slot( 0, 255, 202, 194 ); //Skin
set_character_color_slot( 1, 31, 31, 31 ); //Gloves
set_character_color_slot( 2, 226, 245, 6 ); //Coat
set_character_color_slot( 3, 94, 68, 86 ); //Tights
set_character_color_slot( 4, 222, 210, 213 ); //Boots
set_character_color_slot( 5, 72, 148, 213 ); //Skirt
set_character_color_slot( 6, 109, 154, 237 ); //Eyes
set_character_color_slot( 7, 209, 111, 19 ); //Hair
        break;

        case 21:
            // Miyuki (Blake's OC)
set_character_color_slot( 0, 255, 236, 220 ); //Skin
set_character_color_slot( 1, 59, 59, 59 ); //Gloves
set_character_color_slot( 2, 246, 246, 246 ); //Coat
set_character_color_slot( 3, 177, 177, 177 ); //Tights
set_character_color_slot( 4, 129, 222, 255 ); //Boots
set_character_color_slot( 5, 219, 162, 183 ); //Skirt
set_character_color_slot( 6, 150, 203, 255 ); //Eyes
set_character_color_slot( 7, 107, 125, 215 ); //Hair
        break;

        case 22:
            // Trans Rights
set_character_color_slot( 0, 150, 89, 60 ); //Skin
set_character_color_slot( 1, 91, 206, 250 ); //Gloves
set_character_color_slot( 2, 245, 169, 184 ); //Coat
set_character_color_slot( 3, 245, 169, 184 ); //Tights
set_character_color_slot( 4, 91, 206, 250 ); //Boots
set_character_color_slot( 5, 255, 255, 255 ); //Skirt
set_character_color_slot( 6, 82, 70, 70 ); //Eyes
set_character_color_slot( 7, 31, 31, 31 ); //Hair
        break;

        case 23:
            // Princess Daisy
set_character_color_slot( 0, 255, 233, 209 ); //Skin
set_character_color_slot( 1, 255, 233, 209 ); //Gloves
set_character_color_slot( 2, 255, 217, 47 ); //Coat
set_character_color_slot( 3, 0, 220, 0 ); //Tights
set_character_color_slot( 4, 255, 137, 70 ); //Boots
set_character_color_slot( 5, 255, 217, 47 ); //Skirt
set_character_color_slot( 6, 0, 197, 255 ); //Eyes
set_character_color_slot( 7, 227, 118, 40 ); //Hair
        break;

        case 24:
            // Reimu 4 Smash
set_character_color_slot( 0, 255, 234, 193 ); //Skin
set_character_color_slot( 1, 255, 255, 245 ); //Gloves
set_character_color_slot( 2, 177, 14, 0 ); //Coat
set_character_color_slot( 3, 177, 14, 0 ); //Tights
set_character_color_slot( 4, 79, 53, 56 ); //Boots
set_character_color_slot( 5, 254, 243, 65 ); //Skirt
set_character_color_slot( 6, 194, 135, 79 ); //Eyes
set_character_color_slot( 7, 73, 54, 48 ); //Hair
        break;

        case 25:
            // Oreo
set_character_color_slot( 0, 222, 181, 158 ); //Skin
set_character_color_slot( 1, 255, 255, 245 ); //Gloves
set_character_color_slot( 2, 82, 82, 82 ); //Coat
set_character_color_slot( 3, 177, 177, 177 ); //Tights
set_character_color_slot( 4, 43, 43, 43 ); //Boots
set_character_color_slot( 5, 196, 196, 196 ); //Skirt
set_character_color_slot( 6, 92, 92, 92 ); //Eyes
set_character_color_slot( 7, 41, 41, 41 ); //Hair
        break;

        case 26:
            // Mandatory Vaporwave Set
set_character_color_slot( 0, 201, 147, 131 ); //Skin
set_character_color_slot( 1, 239, 140, 255 ); //Gloves
set_character_color_slot( 2, 71, 255, 222 ); //Coat
set_character_color_slot( 3, 70, 0, 128 ); //Tights
set_character_color_slot( 4, 94, 234, 255 ); //Boots
set_character_color_slot( 5, 255, 120, 253 ); //Skirt
set_character_color_slot( 6, 135, 243, 255 ); //Eyes
set_character_color_slot( 7, 67, 0, 156 ); //Hair
        break;

        case 27:
            // Test Alt 12
set_character_color_slot( 0, 237, 173, 156 ); //Skin
set_character_color_slot( 1, 211, 209, 210 ); //Gloves
set_character_color_slot( 2, 211, 209, 210 ); //Coat
set_character_color_slot( 3, 61, 51, 65 ); //Tights
set_character_color_slot( 4, 211, 209, 210 ); //Boots
set_character_color_slot( 5, 192, 55, 122 ); //Skirt
set_character_color_slot( 6, 108, 139, 199 ); //Eyes
set_character_color_slot( 7, 223, 162, 90 ); //Hair
        break;

        case 28:
            // Test Alt 13
set_character_color_slot( 0, 237, 173, 156 ); //Skin
set_character_color_slot( 1, 211, 209, 210 ); //Gloves
set_character_color_slot( 2, 211, 209, 210 ); //Coat
set_character_color_slot( 3, 61, 51, 65 ); //Tights
set_character_color_slot( 4, 211, 209, 210 ); //Boots
set_character_color_slot( 5, 192, 55, 122 ); //Skirt
set_character_color_slot( 6, 108, 139, 199 ); //Eyes
set_character_color_slot( 7, 223, 162, 90 ); //Hair
        break;

        case 29:
            // Test Alt 14
set_character_color_slot( 0, 237, 173, 156 ); //Skin
set_character_color_slot( 1, 211, 209, 210 ); //Gloves
set_character_color_slot( 2, 211, 209, 210 ); //Coat
set_character_color_slot( 3, 61, 51, 65 ); //Tights
set_character_color_slot( 4, 211, 209, 210 ); //Boots
set_character_color_slot( 5, 192, 55, 122 ); //Skirt
set_character_color_slot( 6, 108, 139, 199 ); //Eyes
set_character_color_slot( 7, 223, 162, 90 ); //Hair
        break;

        case 30:
            // Test Alt 15
set_character_color_slot( 0, 237, 173, 156 ); //Skin
set_character_color_slot( 1, 211, 209, 210 ); //Gloves
set_character_color_slot( 2, 211, 209, 210 ); //Coat
set_character_color_slot( 3, 61, 51, 65 ); //Tights
set_character_color_slot( 4, 211, 209, 210 ); //Boots
set_character_color_slot( 5, 192, 55, 122 ); //Skirt
set_character_color_slot( 6, 108, 139, 199 ); //Eyes
set_character_color_slot( 7, 223, 162, 90 ); //Hair
        break;

        case 31:
            // Test Alt 16
set_character_color_slot( 0, 237, 173, 156 ); //Skin
set_character_color_slot( 1, 211, 209, 210 ); //Gloves
set_character_color_slot( 2, 211, 209, 210 ); //Coat
set_character_color_slot( 3, 61, 51, 65 ); //Tights
set_character_color_slot( 4, 211, 209, 210 ); //Boots
set_character_color_slot( 5, 192, 55, 122 ); //Skirt
set_character_color_slot( 6, 108, 139, 199 ); //Eyes
set_character_color_slot( 7, 223, 162, 90 ); //Hair
        break;
     }

     // this stores the real alt and current game alt (which becomes the previous game alt)
    sprite_change_offset("dog", curRealAlt, curAlt ); // x is the actual alt and is the previous normal alt
} else {
    switch(get_player_color(0)){ // this lets you adjust shading and stuff for your base 16 alts on the online CSS [Edit necessary]
        case 7:
            // set shading to 0
            for(i = 0; i < 8; i++){
                set_character_color_shading(i, 0);
                outline_color = [ 35, 67, 49 ];
            }
            break;
        case 10:
            // set shading to 0
            for(i = 0; i < 11; i++){
                set_character_color_shading(i, 0);
            }
            break;
    }
}*/

if object_index != oPlayer exit;    // Prevents online bugs
