//#region Local Variables
//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);
if("color_shift" not in self)
{
    split_var = split_synced_var(2,1,1);

    color_shift = split_var[0];
    should_switch = split_var[1]; // Swap this name to your other button. Also swap it in CSS update
    awesome = split_var[2] // swap this to Rick's result variable. Also swat it in CSS update
}
//#endregion

switch (alt_cur) {
    case 0:
        switch(color_shift){
        case 1: // Garden Viper
        set_character_color_slot( 0, 130, 71, 67 ); //Tombstone
        set_character_color_slot( 1, 97, 87, 84 ); //Dirt
        set_character_color_slot( 2, 157, 176, 109 ); //Carapace
        set_character_color_slot( 3, 108, 97, 120 ); //Belly
        set_character_color_slot( 4, 204, 255, 228 ); //Mandibles
        set_character_color_slot( 5, 0, 230, 45 ); //Spirit 1
        set_character_color_slot( 6, 150, 255, 94 ); //Spirit 2
        set_character_color_slot( 7, 0, 163, 97 ); //Spirit 3
        set_article_color_slot( 0, 130, 71, 67 ); //Tombstone
        set_article_color_slot( 1, 97, 87, 84 ); //Dirt
        set_article_color_slot( 2, 157, 176, 109 ); //Carapace
        set_article_color_slot( 3, 108, 97, 120 ); //Belly
        set_article_color_slot( 4, 204, 255, 228 ); //Mandibles
        set_article_color_slot( 5, 0, 230, 45 ); //Spirit 1
        set_article_color_slot( 6, 150, 255, 94 ); //Spirit 2
        set_article_color_slot( 7, 0, 163, 97 ); //Spirit 3
        break;
        case 2: // Monochrome Seafoam
        set_character_color_slot( 0, 127, 127, 127 ); //Tombstone
		set_character_color_slot( 1, 96, 96, 96 ); //Dirt
		set_character_color_slot( 2, 91, 91, 91 ); //Carapace
		set_character_color_slot( 3, 130, 130, 130 ); //Belly
		set_character_color_slot( 4, 214, 214, 214 ); //Mandibles
		set_character_color_slot( 5, 60, 217, 119 ); //Spirit 1
		set_character_color_slot( 6, 159, 226, 191 ); //Spirit 2
		set_character_color_slot( 7, 0, 163, 97 ); //Spirit 3
        set_article_color_slot( 0, 127, 127, 127 ); //Tombstone
		set_article_color_slot( 1, 96, 96, 96 ); //Dirt
		set_article_color_slot( 2, 91, 91, 91 ); //Carapace
		set_article_color_slot( 3, 130, 130, 130 ); //Belly
		set_article_color_slot( 4, 214, 214, 214 ); //Mandibles
		set_article_color_slot( 5, 60, 217, 119 ); //Spirit 1
		set_article_color_slot( 6, 159, 226, 191 ); //Spirit 2
		set_article_color_slot( 7, 0, 163, 97 ); //Spirit 3
        break; 
        }
    break;
    case 6:
        switch(color_shift){
            case 0:
            for(i = 0; i <= 7; i++){
                set_character_color_shading(i, 0);
            }
            break;
        }
    break;
    case 10:
    	switch(color_shift){
            case 2:
            for(i = 0; i <= 7; i++){
                set_character_color_shading(i, 0);
            }
            break;
        }
    break;
    case 16:
    	switch(color_shift){
            case 2:
            for(i = 0; i <= 4; i++){
                set_character_color_shading(i, 0.5);
            }
            break;
        }
    break;
    case 29:
        switch(color_shift){
            case 0:
            set_character_color_shading(7,-1);
            break;
        }
    break;
}

// Guner stuff below
//#region Gunner Shader Code
if("color_shift" not in self){exit;}
if("manual_init_shader_call" not in self){exit;}

//#endregion
// This is where the colors are manually reset with this template.
// You will need to paste the colors into this from the colors.gml file. Pay attanetion to which
// "Color shift" you are putting them in, as this is a switch statement.
if(manual_init_shader_call){
    switch(color_shift){
        case 0: // Original Colors
//#region Normal Colors
// Paste colors under here. Did the first version using suisei colors

// ALTERNATE COLORS

// Blue
set_color_profile_slot( 1, 0, 66, 112, 90 ); //Tombstone
set_color_profile_slot( 1, 1, 214, 162, 124 ); //Dirt
set_color_profile_slot( 1, 2, 37, 99, 150 ); //Carapace
set_color_profile_slot( 1, 3, 148, 255, 234 ); //Belly
set_color_profile_slot( 1, 4, 103, 153, 166 ); //Mandibles
set_color_profile_slot( 1, 5, 89, 235, 255 ); //Spirit 1
set_color_profile_slot( 1, 6, 166, 255, 249 ); //Spirit 2
set_color_profile_slot( 1, 7, 0, 131, 224 ); //Spirit 3

// Red
set_color_profile_slot( 2, 0, 173, 130, 117 ); //Tombstone
set_color_profile_slot( 2, 1, 204, 163, 122 ); //Dirt
set_color_profile_slot( 2, 2, 166, 65, 26 ); //Carapace
set_color_profile_slot( 2, 3, 191, 113, 92 ); //Belly
set_color_profile_slot( 2, 4, 240, 205, 163 ); //Mandibles
set_color_profile_slot( 2, 5, 255, 115, 0 ); //Spirit 1
set_color_profile_slot( 2, 6, 255, 205, 41 ); //Spirit 2
set_color_profile_slot( 2, 7, 227, 0, 0 ); //Spirit 3

// Green
set_color_profile_slot( 3, 0, 120, 86, 76 ); //Tombstone
set_color_profile_slot( 3, 1, 50, 117, 50 ); //Dirt
set_color_profile_slot( 3, 2, 76, 82, 60 ); //Carapace
set_color_profile_slot( 3, 3, 163, 81, 112 ); //Belly
set_color_profile_slot( 3, 4, 242, 208, 134 ); //Mandibles
set_color_profile_slot( 3, 5, 0, 255, 79 ); //Spirit 1
set_color_profile_slot( 3, 6, 194, 255, 202 ); //Spirit 2
set_color_profile_slot( 3, 7, 0, 150, 82 ); //Spirit 3

// Black/White
set_color_profile_slot( 4, 0, 90, 64, 112 ); //Tombstone
set_color_profile_slot( 4, 1, 91, 91, 107 ); //Dirt
set_color_profile_slot( 4, 2, 204, 215, 219 ); //Carapace
set_color_profile_slot( 4, 3, 118, 148, 65 ); //Belly
set_color_profile_slot( 4, 4, 99, 145, 119 ); //Mandibles
set_color_profile_slot( 4, 5, 195, 255, 0 ); //Spirit 1
set_color_profile_slot( 4, 6, 249, 255, 145 ); //Spirit 2
set_color_profile_slot( 4, 7, 24, 199, 0 ); //Spirit 3

// Purple/Pink
set_color_profile_slot( 5, 0, 117, 82, 103 ); //Tombstone
set_color_profile_slot( 5, 1, 241, 235, 255 ); //Dirt
set_color_profile_slot( 5, 2, 212, 144, 191 ); //Carapace
set_color_profile_slot( 5, 3, 114, 98, 128 ); //Belly
set_color_profile_slot( 5, 4, 252, 240, 255 ); //Mandibles
set_color_profile_slot( 5, 5, 191, 0, 255 ); //Spirit 1
set_color_profile_slot( 5, 6, 255, 105, 215 ); //Spirit 2
set_color_profile_slot( 5, 7, 93, 0, 255 ); //Spirit 3

// Gameboy
set_color_profile_slot( 6, 0, 83, 122, 62 ); //Tombstone
set_color_profile_slot( 6, 1, 35, 67, 49 ); //Dirt
set_color_profile_slot( 6, 2, 35, 67, 49 ); //Carapace
set_color_profile_slot( 6, 3, 167, 186, 74 ); //Belly
set_color_profile_slot( 6, 4, 211, 226, 154 ); //Mandibles
set_color_profile_slot( 6, 5, 167, 186, 74 ); //Spirit 1
set_color_profile_slot( 6, 6, 211, 226, 154 ); //Spirit 2
set_color_profile_slot( 6, 7, 83, 122, 62 ); //Spirit 3

// N/A
set_color_profile_slot( 7, 0, 39, 80, 107 ); //Tombstone
set_color_profile_slot( 7, 1, 208, 116, 97 ); //Dirt
set_color_profile_slot( 7, 2, 71, 49, 87 ); //Carapace
set_color_profile_slot( 7, 3, 140, 145, 183 ); //Belly
set_color_profile_slot( 7, 4, 119, 43, 197 ); //Mandibles
set_color_profile_slot( 7, 5, 255, 180, 0 ); //Spirit 1
set_color_profile_slot( 7, 6, 255, 225, 171 ); //Spirit 2
set_color_profile_slot( 7, 7, 255, 128, 0 ); //Spirit 3

// Venom
set_color_profile_slot( 8, 0, 150, 84, 75 ); //Tombstone
set_color_profile_slot( 8, 1, 32, 64, 96 ); //Dirt
set_color_profile_slot( 8, 2, 64, 112, 192 ); //Carapace
set_color_profile_slot( 8, 3, 64, 192, 240 ); //Belly
set_color_profile_slot( 8, 4, 240, 240, 240 ); //Mandibles
set_color_profile_slot( 8, 5, 240, 240, 240 ); //Spirit 1
set_color_profile_slot( 8, 6, 175, 235, 240 ); //Spirit 2
set_color_profile_slot( 8, 7, 127, 175, 240 ); //Spirit 3

// Centiskorch
set_color_profile_slot( 9, 0, 92, 92, 92 ); //Tombstone
set_color_profile_slot( 9, 1, 141, 96, 75 ); //Dirt
set_color_profile_slot( 9, 2, 225, 74, 65 ); //Carapace
set_color_profile_slot( 9, 3, 141, 96, 75 ); //Belly
set_color_profile_slot( 9, 4, 240, 148, 39 ); //Mandibles
set_color_profile_slot( 9, 5, 240, 148, 39 ); //Spirit 1
set_color_profile_slot( 9, 6, 246, 201, 83 ); //Spirit 2
set_color_profile_slot( 9, 7, 255, 85, 0 ); //Spirit 3

// A.B.A
set_color_profile_slot( 10, 0, 246, 201, 83 ); //Tombstone
set_color_profile_slot( 10, 1, 31, 34, 37 ); //Dirt
set_color_profile_slot( 10, 2, 112, 163, 134 ); //Carapace
set_color_profile_slot( 10, 3, 223, 220, 217 ); //Belly
set_color_profile_slot( 10, 4, 111, 129, 133 ); //Mandibles
set_color_profile_slot( 10, 5, 236, 236, 235 ); //Spirit 1
set_color_profile_slot( 10, 6, 94, 105, 94 ); //Spirit 2
set_color_profile_slot( 10, 7, 63, 71, 63 ); //Spirit 3

// Arakune
set_color_profile_slot( 11, 0, 227, 227, 237 ); //Tombstone
set_color_profile_slot( 11, 1, 95, 50, 48 ); //Dirt
set_color_profile_slot( 11, 2, 92, 74, 68 ); //Carapace
set_color_profile_slot( 11, 3, 151, 129, 106 ); //Belly
set_color_profile_slot( 11, 4, 242, 215, 0 ); //Mandibles
set_color_profile_slot( 11, 5, 204, 23, 35 ); //Spirit 1
set_color_profile_slot( 11, 6, 255, 99, 74 ); //Spirit 2
set_color_profile_slot( 11, 7, 173, 0, 55 ); //Spirit 3

// Uzuki
set_color_profile_slot( 12, 0, 87, 65, 76 ); //Tombstone
set_color_profile_slot( 12, 1, 108, 103, 115 ); //Dirt
set_color_profile_slot( 12, 2, 225, 163, 173 ); //Carapace
set_color_profile_slot( 12, 3, 48, 50, 54 ); //Belly
set_color_profile_slot( 12, 4, 253, 252, 247 ); //Mandibles
set_color_profile_slot( 12, 5, 0, 217, 242 ); //Spirit 1
set_color_profile_slot( 12, 6, 99, 247, 255 ); //Spirit 2
set_color_profile_slot( 12, 7, 0, 146, 196 ); //Spirit 3

// Labrys
set_color_profile_slot( 13, 0, 36, 63, 90 ); //Tombstone
set_color_profile_slot( 13, 1, 123, 63, 47 ); //Dirt
set_color_profile_slot( 13, 2, 217, 241, 243 ); //Carapace
set_color_profile_slot( 13, 3, 82, 78, 78 ); //Belly
set_color_profile_slot( 13, 4, 233, 230, 215 ); //Mandibles
set_color_profile_slot( 13, 5, 166, 0, 0 ); //Spirit 1
set_color_profile_slot( 13, 6, 252, 0, 0 ); //Spirit 2
set_color_profile_slot( 13, 7, 59, 0, 0 ); //Spirit 3

// Guardian Ape
set_color_profile_slot( 14, 0, 188, 206, 218 ); //Tombstone
set_color_profile_slot( 14, 1, 105, 123, 146 ); //Dirt
set_color_profile_slot( 14, 2, 94, 62, 71 ); //Carapace
set_color_profile_slot( 14, 3, 199, 142, 134 ); //Belly
set_color_profile_slot( 14, 4, 176, 66, 66 ); //Mandibles
set_color_profile_slot( 14, 5, 255, 0, 60 ); //Spirit 1
set_color_profile_slot( 14, 6, 255, 110, 192 ); //Spirit 2
set_color_profile_slot( 14, 7, 196, 0, 110 ); //Spirit 3

// Romina
set_color_profile_slot( 15, 0, 85, 71, 71 ); //Tombstone
set_color_profile_slot( 15, 1, 164, 81, 65 ); //Dirt
set_color_profile_slot( 15, 2, 115, 64, 79 ); //Carapace
set_color_profile_slot( 15, 3, 222, 119, 138 ); //Belly
set_color_profile_slot( 15, 4, 210, 63, 91 ); //Mandibles
set_color_profile_slot( 15, 5, 247, 112, 216 ); //Spirit 1
set_color_profile_slot( 15, 6, 250, 181, 227 ); //Spirit 2
set_color_profile_slot( 15, 7, 227, 48, 135 ); //Spirit 3

// Piranha Plant
set_color_profile_slot( 16, 0, 102, 46, 26 ); //Tombstone
set_color_profile_slot( 16, 1, 148, 104, 79 ); //Dirt
set_color_profile_slot( 16, 2, 255, 89, 82 ); //Carapace
set_color_profile_slot( 16, 3, 255, 255, 255 ); //Belly
set_color_profile_slot( 16, 4, 59, 158, 43 ); //Mandibles
set_color_profile_slot( 16, 5, 255, 89, 82 ); //Spirit 1
set_color_profile_slot( 16, 6, 255, 179, 0 ); //Spirit 2
set_color_profile_slot( 16, 7, 189, 34, 0 ); //Spirit 3

// Flowey
set_color_profile_slot( 17, 0, 224, 15, 0 ); //Tombstone
set_color_profile_slot( 17, 1, 117, 66, 36 ); //Dirt
set_color_profile_slot( 17, 2, 55, 150, 45 ); //Carapace
set_color_profile_slot( 17, 3, 255, 255, 245 ); //Belly
set_color_profile_slot( 17, 4, 247, 210, 27 ); //Mandibles
set_color_profile_slot( 17, 5, 252, 67, 41 ); //Spirit 1
set_color_profile_slot( 17, 6, 255, 255, 255 ); //Spirit 2
set_color_profile_slot( 17, 7, 186, 25, 41 ); //Spirit 3

// Dracula
set_color_profile_slot( 18, 0, 107, 99, 69 ); //Tombstone
set_color_profile_slot( 18, 1, 177, 186, 186 ); //Dirt
set_color_profile_slot( 18, 2, 56, 52, 36 ); //Carapace
set_color_profile_slot( 18, 3, 194, 33, 33 ); //Belly
set_color_profile_slot( 18, 4, 177, 186, 186 ); //Mandibles
set_color_profile_slot( 18, 5, 194, 33, 33 ); //Spirit 1
set_color_profile_slot( 18, 6, 255, 97, 178 ); //Spirit 2
set_color_profile_slot( 18, 7, 125, 19, 19 ); //Spirit 3

// Burrower
set_color_profile_slot( 19, 0, 149, 129, 129 ); //Tombstone
set_color_profile_slot( 19, 1, 105, 88, 80 ); //Dirt
set_color_profile_slot( 19, 2, 110, 104, 161 ); //Carapace
set_color_profile_slot( 19, 3, 70, 63, 59 ); //Belly
set_color_profile_slot( 19, 4, 202, 197, 124 ); //Mandibles
set_color_profile_slot( 19, 5, 235, 129, 38 ); //Spirit 1
set_color_profile_slot( 19, 6, 245, 186, 62 ); //Spirit 2
set_color_profile_slot( 19, 7, 201, 61, 6 ); //Spirit 3

// Awatsu
set_color_profile_slot( 20, 0, 243, 130, 112 ); //Tombstone
set_color_profile_slot( 20, 1, 226, 151, 184 ); //Dirt
set_color_profile_slot( 20, 2, 171, 128, 173 ); //Carapace
set_color_profile_slot( 20, 3, 246, 233, 233 ); //Belly
set_color_profile_slot( 20, 4, 255, 204, 112 ); //Mandibles
set_color_profile_slot( 20, 5, 243, 130, 112 ); //Spirit 1
set_color_profile_slot( 20, 6, 255, 204, 112 ); //Spirit 2
set_color_profile_slot( 20, 7, 243, 78, 78 ); //Spirit 3

// Charlie
set_color_profile_slot( 21, 0, 96, 31, 8 ); //Tombstone
set_color_profile_slot( 21, 1, 138, 84, 58 ); //Dirt
set_color_profile_slot( 21, 2, 231, 129, 93 ); //Carapace
set_color_profile_slot( 21, 3, 199, 87, 73 ); //Belly
set_color_profile_slot( 21, 4, 255, 49, 68 ); //Mandibles
set_color_profile_slot( 21, 5, 251, 242, 54 ); //Spirit 1
set_color_profile_slot( 21, 6, 255, 255, 255 ); //Spirit 2
set_color_profile_slot( 21, 7, 251, 196, 54 ); //Spirit 3

// Marti
set_color_profile_slot( 22, 0, 89, 89, 102 ); //Tombstone
set_color_profile_slot( 22, 1, 50, 50, 57 ); //Dirt
set_color_profile_slot( 22, 2, 92, 147, 249 ); //Carapace
set_color_profile_slot( 22, 3, 210, 218, 232 ); //Belly
set_color_profile_slot( 22, 4, 210, 218, 232 ); //Mandibles
set_color_profile_slot( 22, 5, 237, 117, 90 ); //Spirit 1
set_color_profile_slot( 22, 6, 255, 201, 183 ); //Spirit 2
set_color_profile_slot( 22, 7, 225, 74, 52 ); //Spirit 3

// Amanita
set_color_profile_slot( 23, 0, 135, 80, 115 ); //Tombstone
set_color_profile_slot( 23, 1, 108, 57, 75 ); //Dirt
set_color_profile_slot( 23, 2, 43, 82, 68 ); //Carapace
set_color_profile_slot( 23, 3, 199, 140, 131 ); //Belly
set_color_profile_slot( 23, 4, 240, 207, 110 ); //Mandibles
set_color_profile_slot( 23, 5, 255, 255, 255 ); //Spirit 1
set_color_profile_slot( 23, 6, 237, 6, 81 ); //Spirit 2
set_color_profile_slot( 23, 7, 159, 23, 84 ); //Spirit 3

// Obelisk
set_color_profile_slot( 24, 0, 119, 142, 119 ); //Tombstone
set_color_profile_slot( 24, 1, 91, 69, 69 ); //Dirt
set_color_profile_slot( 24, 2, 50, 112, 112 ); //Carapace
set_color_profile_slot( 24, 3, 107, 187, 151 ); //Belly
set_color_profile_slot( 24, 4, 148, 120, 35 ); //Mandibles
set_color_profile_slot( 24, 5, 238, 220, 0 ); //Spirit 1
set_color_profile_slot( 24, 6, 249, 255, 133 ); //Spirit 2
set_color_profile_slot( 24, 7, 238, 167, 0 ); //Spirit 3

// Vanda
set_color_profile_slot( 25, 0, 214, 214, 191 ); //Tombstone
set_color_profile_slot( 25, 1, 106, 95, 133 ); //Dirt
set_color_profile_slot( 25, 2, 57, 51, 71 ); //Carapace
set_color_profile_slot( 25, 3, 249, 78, 109 ); //Belly
set_color_profile_slot( 25, 4, 214, 214, 191 ); //Mandibles
set_color_profile_slot( 25, 5, 159, 244, 229 ); //Spirit 1
set_color_profile_slot( 25, 6, 230, 255, 250 ); //Spirit 2
set_color_profile_slot( 25, 7, 0, 162, 194 ); //Spirit 3

// Brume
set_color_profile_slot( 26, 0, 93, 90, 125 ); //Tombstone
set_color_profile_slot( 26, 1, 121, 168, 194 ); //Dirt
set_color_profile_slot( 26, 2, 218, 242, 255 ); //Carapace
set_color_profile_slot( 26, 3, 121, 168, 194 ); //Belly
set_color_profile_slot( 26, 4, 93, 90, 125 ); //Mandibles
set_color_profile_slot( 26, 5, 185, 145, 255 ); //Spirit 1
set_color_profile_slot( 26, 6, 230, 214, 255 ); //Spirit 2
set_color_profile_slot( 26, 7, 143, 78, 255 ); //Spirit 3

// Vakna
set_color_profile_slot( 27, 0, 69, 69, 89 ); //Tombstone
set_color_profile_slot( 27, 1, 74, 58, 46 ); //Dirt
set_color_profile_slot( 27, 2, 105, 89, 77 ); //Carapace
set_color_profile_slot( 27, 3, 251, 17, 2 ); //Belly
set_color_profile_slot( 27, 4, 255, 117, 10 ); //Mandibles
set_color_profile_slot( 27, 5, 255, 247, 0 ); //Spirit 1
set_color_profile_slot( 27, 6, 255, 117, 10 ); //Spirit 2
set_color_profile_slot( 27, 7, 251, 17, 2 ); //Spirit 3

// Ingrim
set_color_profile_slot( 28, 0, 255, 162, 29 ); //Tombstone
set_color_profile_slot( 28, 1, 140, 73, 91 ); //Dirt
set_color_profile_slot( 28, 2, 69, 58, 104 ); //Carapace
set_color_profile_slot( 28, 3, 131, 0, 0 ); //Belly
set_color_profile_slot( 28, 4, 255, 255, 228 ); //Mandibles
set_color_profile_slot( 28, 5, 236, 0, 44 ); //Spirit 1
set_color_profile_slot( 28, 6, 255, 255, 255 ); //Spirit 2
set_color_profile_slot( 28, 7, 131, 0, 0 ); //Spirit 3

// Inverted
set_color_profile_slot( 29, 0, 198, 168, 181 ); //Tombstone
set_color_profile_slot( 29, 1, 158, 183, 195 ); //Dirt
set_color_profile_slot( 29, 2, 220, 215, 199 ); //Carapace
set_color_profile_slot( 29, 3, 125, 128, 150 ); //Belly
set_color_profile_slot( 29, 4, 144, 106, 109 ); //Mandibles
set_color_profile_slot( 29, 5, 255, 0, 103 ); //Spirit 1
set_color_profile_slot( 29, 6, 66, 0, 26 ); //Spirit 2
set_color_profile_slot( 29, 7, 255, 92, 158 ); //Spirit 3

// Sunset
set_color_profile_slot( 30, 0, 107, 79, 133 ); //Tombstone
set_color_profile_slot( 30, 1, 70, 66, 133 ); //Dirt
set_color_profile_slot( 30, 2, 70, 66, 133 ); //Carapace
set_color_profile_slot( 30, 3, 237, 123, 123 ); //Belly
set_color_profile_slot( 30, 4, 240, 184, 110 ); //Mandibles
set_color_profile_slot( 30, 5, 237, 123, 123 ); //Spirit 1
set_color_profile_slot( 30, 6, 240, 184, 110 ); //Spirit 2
set_color_profile_slot( 30, 7, 107, 79, 133 ); //Spirit 3

// Wither
set_color_profile_slot( 31, 0, 96, 103, 158 ); //Tombstone
set_color_profile_slot( 31, 1, 250, 201, 222 ); //Dirt
set_color_profile_slot( 31, 2, 248, 72, 92 ); //Carapace
set_color_profile_slot( 31, 3, 122, 151, 209 ); //Belly
set_color_profile_slot( 31, 4, 244, 251, 255 ); //Mandibles
set_color_profile_slot( 31, 5, 252, 141, 173 ); //Spirit 1
set_color_profile_slot( 31, 6, 242, 218, 232 ); //Spirit 2
set_color_profile_slot( 31, 7, 248, 72, 92 ); //Spirit 3


// Do not paste below here for normal colors
//#endregion
    break;
    case 1: // Color Shifting
//#region Extra 1
// Paste extra colors below here

// Void Fiend (ex1, Omeletttte)
set_color_profile_slot( 1, 0, 90, 50, 116 ); //Tombstone
set_color_profile_slot( 1, 1, 80, 68, 85 ); //Dirt
set_color_profile_slot( 1, 2, 75, 48, 97 ); //Carapace
set_color_profile_slot( 1, 3, 109, 100, 113 ); //Belly
set_color_profile_slot( 1, 4, 149, 195, 202 ); //Mandibles
set_color_profile_slot( 1, 5, 255, 128, 255 ); //Spirit 1
set_color_profile_slot( 1, 6, 255, 224, 255 ); //Spirit 2
set_color_profile_slot( 1, 7, 182, 80, 186 ); //Spirit 3

// Oejeo (ex2, Flophawk)
set_color_profile_slot( 2, 0, 76, 70, 96 ); //Tombstone
set_color_profile_slot( 2, 1, 159, 159, 165 ); //Dirt
set_color_profile_slot( 2, 2, 159, 159, 165 ); //Carapace
set_color_profile_slot( 2, 3, 76, 70, 96 ); //Belly
set_color_profile_slot( 2, 4, 97, 74, 124 ); //Mandibles
set_color_profile_slot( 2, 5, 252, 241, 136 ); //Spirit 1
set_color_profile_slot( 2, 6, 255, 251, 214 ); //Spirit 2
set_color_profile_slot( 2, 7, 252, 170, 71 ); //Spirit 3

// Darkrai (ex3, Dakurai and Hemuth)
set_color_profile_slot( 3, 0, 77, 75, 151 ); //Tombstone
set_color_profile_slot( 3, 1, 83, 45, 80 ); //Dirt
set_color_profile_slot( 3, 2, 56, 57, 69 ); //Carapace
set_color_profile_slot( 3, 3, 191, 58, 55 ); //Belly
set_color_profile_slot( 3, 4, 218, 229, 232 ); //Mandibles
set_color_profile_slot( 3, 5, 0, 198, 255 ); //Spirit 1
set_color_profile_slot( 3, 6, 219, 235, 251 ); //Spirit 2
set_color_profile_slot( 3, 7, 114, 71, 245 ); //Spirit 3

// Zoroark (ex4, Inf1n1te Spirit)
set_color_profile_slot( 4, 0, 111, 110, 116 ); //Tombstone
set_color_profile_slot( 4, 1, 41, 34, 55 ); //Dirt
set_color_profile_slot( 4, 2, 165, 28, 43 ); //Carapace
set_color_profile_slot( 4, 3, 41, 34, 55 ); //Belly
set_color_profile_slot( 4, 4, 111, 110, 116 ); //Mandibles
set_color_profile_slot( 4, 5, 251, 58, 122 ); //Spirit 1
set_color_profile_slot( 4, 6, 223, 145, 254 ); //Spirit 2
set_color_profile_slot( 4, 7, 81, 60, 67 ); //Spirit 3

// Alastor (ex 5, Soka)
set_color_profile_slot( 5, 0, 102, 36, 10 ); //Tombstone
set_color_profile_slot( 5, 1, 237, 198, 162 ); //Dirt
set_color_profile_slot( 5, 2, 246, 50, 93 ); //Carapace
set_color_profile_slot( 5, 3, 74, 43, 54 ); //Belly
set_color_profile_slot( 5, 4, 255, 199, 60 ); //Mandibles
set_color_profile_slot( 5, 5, 0, 251, 155 ); //Spirit 1
set_color_profile_slot( 5, 6, 233, 255, 246 ); //Spirit 2
set_color_profile_slot( 5, 7, 7, 184, 116 ); //Spirit 3

// Screamer (ex 6, Rurson and TinMines)
set_color_profile_slot( 6, 0, 91, 104, 134 ); //Tombstone
set_color_profile_slot( 6, 1, 138, 153, 178 ); //Dirt
set_color_profile_slot( 6, 2, 72, 126, 138 ); //Carapace
set_color_profile_slot( 6, 3, 152, 178, 157 ); //Belly
set_color_profile_slot( 6, 4, 191, 201, 219 ); //Mandibles
set_color_profile_slot( 6, 5, 241, 255, 40 ); //Spirit 1
set_color_profile_slot( 6, 6, 255, 249, 224 ); //Spirit 2
set_color_profile_slot( 6, 7, 103, 194, 0 ); //Spirit 3

// Platina (ex7, Harbige12)
set_color_profile_slot( 7, 0, 135, 115, 143 ); //Tombstone
set_color_profile_slot( 7, 1, 138, 196, 195 ); //Dirt
set_color_profile_slot( 7, 2, 250, 214, 255 ); //Carapace
set_color_profile_slot( 7, 3, 70, 71, 98 ); //Belly
set_color_profile_slot( 7, 4, 255, 255, 255 ); //Mandibles
set_color_profile_slot( 7, 5, 241, 100, 31 ); //Spirit 1
set_color_profile_slot( 7, 6, 248, 246, 68 ); //Spirit 2
set_color_profile_slot( 7, 7, 165, 39, 39 ); //Spirit 3

// Athaza (ex8, Fede)
set_color_profile_slot( 8, 0, 102, 36, 25 ); //Tombstone
set_color_profile_slot( 8, 1, 35, 21, 32 ); //Dirt
set_color_profile_slot( 8, 2, 255, 255, 255 ); //Carapace
set_color_profile_slot( 8, 3, 59, 21, 14 ); //Belly
set_color_profile_slot( 8, 4, 153, 21, 21 ); //Mandibles
set_color_profile_slot( 8, 5, 125, 125, 125 ); //Spirit 1
set_color_profile_slot( 8, 6, 255, 255, 255 ); //Spirit 2
set_color_profile_slot( 8, 7, 64, 64, 64 ); //Spirit 3

// Herobrine (ex9, RuberCuber)
set_color_profile_slot( 9, 0, 105, 110, 120 ); //Tombstone
set_color_profile_slot( 9, 1, 79, 50, 40 ); //Dirt
set_color_profile_slot( 9, 2, 79, 50, 40 ); //Carapace
set_color_profile_slot( 9, 3, 93, 82, 191 ); //Belly
set_color_profile_slot( 9, 4, 56, 227, 221 ); //Mandibles
set_color_profile_slot( 9, 5, 255, 255, 255 ); //Spirit 1
set_color_profile_slot( 9, 6, 148, 255, 251 ); //Spirit 2
set_color_profile_slot( 9, 7, 24, 141, 170 ); //Spirit 3

// Morrigan (ex10, Joni)
set_color_profile_slot( 10, 0, 81, 82, 98 ); //Tombstone
set_color_profile_slot( 10, 1, 255, 255, 255 ); //Dirt
set_color_profile_slot( 10, 2, 35, 244, 179 ); //Carapace
set_color_profile_slot( 10, 3, 241, 129, 190 ); //Belly
set_color_profile_slot( 10, 4, 102, 102, 102 ); //Mandibles
set_color_profile_slot( 10, 5, 240, 136, 176 ); //Spirit 1
set_color_profile_slot( 10, 6, 254, 255, 228 ); //Spirit 2
set_color_profile_slot( 10, 7, 168, 55, 187 ); //Spirit 3

// Six (ex11, NightShade)
set_color_profile_slot( 11, 0, 62, 62, 115 ); //Tombstone
set_color_profile_slot( 11, 1, 86, 31, 61 ); //Dirt
set_color_profile_slot( 11, 2, 255, 232, 53 ); //Carapace
set_color_profile_slot( 11, 3, 182, 128, 69 ); //Belly
set_color_profile_slot( 11, 4, 227, 212, 162 ); //Mandibles
set_color_profile_slot( 11, 5, 255, 166, 33 ); //Spirit 1
set_color_profile_slot( 11, 6, 255, 248, 194 ); //Spirit 2
set_color_profile_slot( 11, 7, 235, 84, 13 ); //Spirit 3

// Ennard (sx12, Rang)
set_color_profile_slot( 12, 0, 248, 246, 255 ); //Tombstone
set_color_profile_slot( 12, 1, 115, 113, 121 ); //Dirt
set_color_profile_slot( 12, 2, 248, 246, 255 ); //Carapace
set_color_profile_slot( 12, 3, 115, 113, 121 ); //Belly
set_color_profile_slot( 12, 4, 183, 19, 73 ); //Mandibles
set_color_profile_slot( 12, 5, 251, 162, 53 ); //Spirit 1
set_color_profile_slot( 12, 6, 24, 23, 25 ); //Spirit 2
set_color_profile_slot( 12, 7, 245, 125, 61 ); //Spirit 3

// Shaun (ex13, Caradog)
set_color_profile_slot( 13, 0, 163, 85, 19 ); //Tombstone
set_color_profile_slot( 13, 1, 64, 122, 64 ); //Dirt
set_color_profile_slot( 13, 2, 167, 6, 25 ); //Carapace
set_color_profile_slot( 13, 3, 246, 232, 232 ); //Belly
set_color_profile_slot( 13, 4, 238, 195, 154 ); //Mandibles
set_color_profile_slot( 13, 5, 232, 8, 8 ); //Spirit 1
set_color_profile_slot( 13, 6, 255, 154, 145 ); //Spirit 2
set_color_profile_slot( 13, 7, 167, 6, 87 ); //Spirit 3

// Tekt (ex14, Teal Pheonix)
set_color_profile_slot( 14, 0, 230, 199, 138 ); //Tombstone
set_color_profile_slot( 14, 1, 60, 56, 77 ); //Dirt
set_color_profile_slot( 14, 2, 60, 56, 77 ); //Carapace
set_color_profile_slot( 14, 3, 204, 135, 146 ); //Belly
set_color_profile_slot( 14, 4, 230, 199, 138 ); //Mandibles
set_color_profile_slot( 14, 5, 191, 255, 255 ); //Spirit 1
set_color_profile_slot( 14, 6, 255, 255, 255 ); //Spirit 2
set_color_profile_slot( 14, 7, 133, 204, 204 ); //Spirit 3

// Fierté (ex15, Tha1Soul)
set_color_profile_slot( 15, 0, 54, 90, 152 ); //Tombstone
set_color_profile_slot( 15, 1, 172, 60, 176 ); //Dirt
set_color_profile_slot( 15, 2, 231, 101, 236 ); //Carapace
set_color_profile_slot( 15, 3, 121, 127, 173 ); //Belly
set_color_profile_slot( 15, 4, 238, 242, 242 ); //Mandibles
set_color_profile_slot( 15, 5, 255, 218, 96 ); //Spirit 1
set_color_profile_slot( 15, 6, 252, 255, 217 ); //Spirit 2
set_color_profile_slot( 15, 7, 229, 66, 47 ); //Spirit 3

// Carion (ex16, JBlock)
set_color_profile_slot( 16, 0, 112, 91, 65 ); //Tombstone
set_color_profile_slot( 16, 1, 78, 75, 83 ); //Dirt
set_color_profile_slot( 16, 2, 216, 21, 21 ); //Carapace
set_color_profile_slot( 16, 3, 122, 3, 27 ); //Belly
set_color_profile_slot( 16, 4, 255, 237, 237 ); //Mandibles
set_color_profile_slot( 16, 5, 141, 255, 33 ); //Spirit 1
set_color_profile_slot( 16, 6, 236, 255, 168 ); //Spirit 2
set_color_profile_slot( 16, 7, 25, 171, 22 ); //Spirit 3

// Lamb (ex17, JustZach)
set_color_profile_slot( 17, 0, 215, 161, 61 ); //Tombstone
set_color_profile_slot( 17, 1, 212, 62, 75 ); //Dirt
set_color_profile_slot( 17, 2, 244, 237, 214 ); //Carapace
set_color_profile_slot( 17, 3, 71, 71, 86 ); //Belly
set_color_profile_slot( 17, 4, 105, 105, 128 ); //Mandibles
set_color_profile_slot( 17, 5, 171, 51, 61 ); //Spirit 1
set_color_profile_slot( 17, 6, 255, 76, 76 ); //Spirit 2
set_color_profile_slot( 17, 7, 117, 35, 76 ); //Spirit 3

// Deer Lord (ex18, Doodle)
set_color_profile_slot( 18, 0, 109, 79, 14 ); //Tombstone
set_color_profile_slot( 18, 1, 173, 113, 8 ); //Dirt
set_color_profile_slot( 18, 2, 176, 153, 109 ); //Carapace
set_color_profile_slot( 18, 3, 49, 47, 47 ); //Belly
set_color_profile_slot( 18, 4, 242, 239, 231 ); //Mandibles
set_color_profile_slot( 18, 5, 229, 15, 15 ); //Spirit 1
set_color_profile_slot( 18, 6, 230, 103, 92 ); //Spirit 2
set_color_profile_slot( 18, 7, 145, 26, 20 ); //Spirit 3

// Yuri (ex19, Amberlearner)
set_color_profile_slot( 19, 0, 115, 115, 128 ); //Tombstone
set_color_profile_slot( 19, 1, 190, 184, 204 ); //Dirt
set_color_profile_slot( 19, 2, 126, 77, 153 ); //Carapace
set_color_profile_slot( 19, 3, 255, 230, 204 ); //Belly
set_color_profile_slot( 19, 4, 179, 161, 167 ); //Mandibles
set_color_profile_slot( 19, 5, 204, 61, 180 ); //Spirit 1
set_color_profile_slot( 19, 6, 250, 170, 237 ); //Spirit 2
set_color_profile_slot( 19, 7, 120, 0, 171 ); //Spirit 3

// Hatbox Ghost (ex20, Sierra)
set_color_profile_slot( 20, 0, 106, 133, 140 ); //Tombstone
set_color_profile_slot( 20, 1, 7, 6, 53 ); //Dirt
set_color_profile_slot( 20, 2, 40, 124, 144 ); //Carapace
set_color_profile_slot( 20, 3, 105, 177, 171 ); //Belly
set_color_profile_slot( 20, 4, 7, 55, 169 ); //Mandibles
set_color_profile_slot( 20, 5, 0, 98, 255 ); //Spirit 1
set_color_profile_slot( 20, 6, 135, 205, 255 ); //Spirit 2
set_color_profile_slot( 20, 7, 0, 30, 128 ); //Spirit 3

// Lord X (ex21, Lowinor)
set_color_profile_slot( 21, 0, 166, 17, 0 ); //Tombstone
set_color_profile_slot( 21, 1, 133, 84, 24 ); //Dirt
set_color_profile_slot( 21, 2, 61, 61, 89 ); //Carapace
set_color_profile_slot( 21, 3, 228, 152, 116 ); //Belly
set_color_profile_slot( 21, 4, 248, 226, 213 ); //Mandibles
set_color_profile_slot( 21, 5, 255, 0, 0 ); //Spirit 1
set_color_profile_slot( 21, 6, 255, 143, 143 ); //Spirit 2
set_color_profile_slot( 21, 7, 96, 2, 2 ); //Spirit 3

// Pibby Finn (ex22, RickDioJames)
set_color_profile_slot( 22, 0, 91, 110, 225 ); //Tombstone
set_color_profile_slot( 22, 1, 106, 190, 48 ); //Dirt
set_color_profile_slot( 22, 2, 255, 255, 255 ); //Carapace
set_color_profile_slot( 22, 3, 238, 193, 164 ); //Belly
set_color_profile_slot( 22, 4, 251, 208, 54 ); //Mandibles
set_color_profile_slot( 22, 5, 95, 205, 228 ); //Spirit 1
set_color_profile_slot( 22, 6, 255, 255, 255 ); //Spirit 2
set_color_profile_slot( 22, 7, 255, 74, 74 ); //Spirit 3

// Charlotte (ex23, Fufu)
set_color_profile_slot( 23, 0, 87, 54, 77 ); //Tombstone
set_color_profile_slot( 23, 1, 147, 70, 56 ); //Dirt
set_color_profile_slot( 23, 2, 245, 122, 184 ); //Carapace
set_color_profile_slot( 23, 3, 173, 140, 100 ); //Belly
set_color_profile_slot( 23, 4, 240, 69, 73 ); //Mandibles
set_color_profile_slot( 23, 5, 65, 99, 125 ); //Spirit 1
set_color_profile_slot( 23, 6, 115, 222, 199 ); //Spirit 2
set_color_profile_slot( 23, 7, 42, 45, 125 ); //Spirit 3

// Ark-One (ex24, Eccentrick Clock)
set_color_profile_slot( 24, 0, 67, 79, 89 ); //Tombstone
set_color_profile_slot( 24, 1, 247, 70, 76 ); //Dirt
set_color_profile_slot( 24, 2, 245, 250, 255 ); //Carapace
set_color_profile_slot( 24, 3, 39, 43, 59 ); //Belly
set_color_profile_slot( 24, 4, 139, 154, 211 ); //Mandibles
set_color_profile_slot( 24, 5, 230, 30, 94 ); //Spirit 1
set_color_profile_slot( 24, 6, 247, 70, 76 ); //Spirit 2
set_color_profile_slot( 24, 7, 160, 1, 44 ); //Spirit 3

// Red (ex 25, Jamie)
set_color_profile_slot( 25, 0, 120, 19, 49 ); //Tombstone
set_color_profile_slot( 25, 1, 80, 10, 27 ); //Dirt
set_color_profile_slot( 25, 2, 174, 34, 34 ); //Carapace
set_color_profile_slot( 25, 3, 80, 10, 27 ); //Belly
set_color_profile_slot( 25, 4, 218, 57, 57 ); //Mandibles
set_color_profile_slot( 25, 5, 218, 57, 57 ); //Spirit 1
set_color_profile_slot( 25, 6, 0, 0, 0 ); //Spirit 2
set_color_profile_slot( 25, 7, 120, 19, 49 ); //Spirit 3

// Horror Mario (ex26, Noober)
set_color_profile_slot( 26, 0, 43, 43, 136 ); //Tombstone
set_color_profile_slot( 26, 1, 107, 72, 58 ); //Dirt
set_color_profile_slot( 26, 2, 85, 1, 8 ); //Carapace
set_color_profile_slot( 26, 3, 152, 74, 51 ); //Belly
set_color_profile_slot( 26, 4, 192, 179, 138 ); //Mandibles
set_color_profile_slot( 26, 5, 255, 0, 0 ); //Spirit 1
set_color_profile_slot( 26, 6, 255, 121, 84 ); //Spirit 2
set_color_profile_slot( 26, 7, 140, 0, 21 ); //Spirit 3

// Tattletail (ex 27, Garfiejus)
set_color_profile_slot( 27, 0, 98, 60, 136 ); //Tombstone
set_color_profile_slot( 27, 1, 90, 88, 91 ); //Dirt
set_color_profile_slot( 27, 2, 98, 60, 136 ); //Carapace
set_color_profile_slot( 27, 3, 220, 110, 115 ); //Belly
set_color_profile_slot( 27, 4, 216, 198, 175 ); //Mandibles
set_color_profile_slot( 27, 5, 246, 225, 128 ); //Spirit 1
set_color_profile_slot( 27, 6, 241, 246, 229 ); //Spirit 2
set_color_profile_slot( 27, 7, 220, 110, 115 ); //Spirit 3

// Jason (ex28, sams6515)
set_color_profile_slot( 28, 0, 58, 84, 117 ); //Tombstone
set_color_profile_slot( 28, 1, 99, 72, 72 ); //Dirt
set_color_profile_slot( 28, 2, 232, 236, 237 ); //Carapace
set_color_profile_slot( 28, 3, 165, 150, 156 ); //Belly
set_color_profile_slot( 28, 4, 126, 132, 153 ); //Mandibles
set_color_profile_slot( 28, 5, 219, 17, 84 ); //Spirit 1
set_color_profile_slot( 28, 6, 247, 136, 162 ); //Spirit 2
set_color_profile_slot( 28, 7, 153, 0, 97 ); //Spirit 3

// Rodan (ex29, Jestin)
set_color_profile_slot( 29, 0, 82, 61, 51 ); //Tombstone
set_color_profile_slot( 29, 1, 123, 83, 45 ); //Dirt
set_color_profile_slot( 29, 2, 123, 83, 45 ); //Carapace
set_color_profile_slot( 29, 3, 209, 177, 85 ); //Belly
set_color_profile_slot( 29, 4, 200, 191, 164 ); //Mandibles
set_color_profile_slot( 29, 5, 237, 208, 39 ); //Spirit 1
set_color_profile_slot( 29, 6, 222, 237, 180 ); //Spirit 2
set_color_profile_slot( 29, 7, 216, 102, 3 ); //Spirit 3

// Julee (ex30, Scaurai)
set_color_profile_slot( 30, 0, 131, 49, 49 ); //Tombstone
set_color_profile_slot( 30, 1, 226, 172, 172 ); //Dirt
set_color_profile_slot( 30, 2, 191, 0, 86 ); //Carapace
set_color_profile_slot( 30, 3, 43, 47, 68 ); //Belly
set_color_profile_slot( 30, 4, 211, 217, 225 ); //Mandibles
set_color_profile_slot( 30, 5, 118, 106, 212 ); //Spirit 1
set_color_profile_slot( 30, 6, 247, 225, 225 ); //Spirit 2
set_color_profile_slot( 30, 7, 79, 67, 150 ); //Spirit 3

// Ananzi (ex31, GreatPlankton)
set_color_profile_slot( 31, 0, 82, 82, 87 ); //Tombstone
set_color_profile_slot( 31, 1, 246, 245, 246 ); //Dirt
set_color_profile_slot( 31, 2, 102, 98, 100 ); //Carapace
set_color_profile_slot( 31, 3, 246, 245, 246 ); //Belly
set_color_profile_slot( 31, 4, 188, 45, 8 ); //Mandibles
set_color_profile_slot( 31, 5, 188, 45, 8 ); //Spirit 1
set_color_profile_slot( 31, 6, 255, 61, 11 ); //Spirit 2
set_color_profile_slot( 31, 7, 138, 17, 19 ); //Spirit 3

// Do not paste below here for normal colors
//#endregion
    break;
    case 2: // Color Shifting
//#region Extra 2
// Paste extra colors below here

// Pharoh Zombie (ex32, Grucyord)
set_color_profile_slot( 1, 0, 254, 255, 194 ); //Tombstone
set_color_profile_slot( 1, 1, 188, 168, 135 ); //Dirt
set_color_profile_slot( 1, 2, 128, 144, 116 ); //Carapace
set_color_profile_slot( 1, 3, 181, 177, 174 ); //Belly
set_color_profile_slot( 1, 4, 255, 217, 13 ); //Mandibles
set_color_profile_slot( 1, 5, 255, 65, 77 ); //Spirit 1
set_color_profile_slot( 1, 6, 255, 183, 188 ); //Spirit 2
set_color_profile_slot( 1, 7, 158, 0, 11 ); //Spirit 3

// Twenny (ex33 Reiga)
set_color_profile_slot( 2, 0, 109, 100, 146 ); //Tombstone
set_color_profile_slot( 2, 1, 169, 144, 175 ); //Dirt
set_color_profile_slot( 2, 2, 187, 70, 135 ); //Carapace
set_color_profile_slot( 2, 3, 201, 185, 189 ); //Belly
set_color_profile_slot( 2, 4, 169, 144, 175 ); //Mandibles
set_color_profile_slot( 2, 5, 74, 163, 235 ); //Spirit 1
set_color_profile_slot( 2, 6, 154, 210, 253 ); //Spirit 2
set_color_profile_slot( 2, 7, 40, 105, 158 ); //Spirit 3

// MX (ex34, RickDioJames, RecklessSucc, and Lowinor)
set_color_profile_slot( 3, 0, 13, 147, 0 ); //Tombstone
set_color_profile_slot( 3, 1, 153, 78, 0 ); //Dirt
set_color_profile_slot( 3, 2, 89, 0, 0 ); //Carapace
set_color_profile_slot( 3, 3, 0, 0, 0 ); //Belly
set_color_profile_slot( 3, 4, 255, 250, 250 ); //Mandibles
set_color_profile_slot( 3, 5, 161, 0, 0 ); //Spirit 1
set_color_profile_slot( 3, 6, 168, 204, 75 ); //Spirit 2
set_color_profile_slot( 3, 7, 89, 0, 0 ); //Spirit 3

// Employee (ex 35, JH and Spiderboi)
set_color_profile_slot( 4, 0, 80, 81, 82 ); //Tombstone
set_color_profile_slot( 4, 1, 183, 184, 186 ); //Dirt
set_color_profile_slot( 4, 2, 218, 123, 30 ); //Carapace
set_color_profile_slot( 4, 3, 100, 30, 30 ); //Belly
set_color_profile_slot( 4, 4, 90, 85, 81 ); //Mandibles
set_color_profile_slot( 4, 5, 22, 238, 52 ); //Spirit 1
set_color_profile_slot( 4, 6, 213, 255, 171 ); //Spirit 2
set_color_profile_slot( 4, 7, 45, 138, 74 ); //Spirit 3

// Phasmaphoba Ghost Hunter (ex 36, Robo and Mallow)
set_color_profile_slot( 5, 0, 97, 86, 65 ); //Tombstone
set_color_profile_slot( 5, 1, 199, 192, 155 ); //Dirt
set_color_profile_slot( 5, 2, 127, 156, 151 ); //Carapace
set_color_profile_slot( 5, 3, 215, 150, 78 ); //Belly
set_color_profile_slot( 5, 4, 233, 247, 245 ); //Mandibles
set_color_profile_slot( 5, 5, 176, 136, 136 ); //Spirit 1
set_color_profile_slot( 5, 6, 220, 194, 194 ); //Spirit 2
set_color_profile_slot( 5, 7, 79, 61, 59 ); //Spirit 3

// Majin Sonic (ex37, Warriorking)
set_color_profile_slot( 6, 0, 94, 69, 141 ); //Tombstone
set_color_profile_slot( 6, 1, 0, 0, 132 ); //Dirt
set_color_profile_slot( 6, 2, 0, 0, 132 ); //Carapace
set_color_profile_slot( 6, 3, 94, 69, 141 ); //Belly
set_color_profile_slot( 6, 4, 94, 69, 141 ); //Mandibles
set_color_profile_slot( 6, 5, 205, 233, 255 ); //Spirit 1
set_color_profile_slot( 6, 6, 255, 255, 255 ); //Spirit 2
set_color_profile_slot( 6, 7, 83, 175, 255 ); //Spirit 3

// Zephyr (ex 38, Varkarrus)
set_color_profile_slot( 7, 0, 143, 124, 25 ); //Tombstone
set_color_profile_slot( 7, 1, 190, 74, 8 ); //Dirt
set_color_profile_slot( 7, 2, 48, 120, 88 ); //Carapace
set_color_profile_slot( 7, 3, 168, 232, 232 ); //Belly
set_color_profile_slot( 7, 4, 221, 223, 233 ); //Mandibles
set_color_profile_slot( 7, 5, 248, 237, 48 ); //Spirit 1
set_color_profile_slot( 7, 6, 255, 254, 248 ); //Spirit 2
set_color_profile_slot( 7, 7, 191, 109, 84 ); //Spirit 3

// Markiplier (ex 40, E_Fig05)
set_color_profile_slot( 8, 0, 80, 87, 78 ); //Tombstone
set_color_profile_slot( 8, 1, 84, 54, 52 ); //Dirt
set_color_profile_slot( 8, 2, 37, 44, 29 ); //Carapace
set_color_profile_slot( 8, 3, 226, 191, 180 ); //Belly
set_color_profile_slot( 8, 4, 183, 182, 155 ); //Mandibles
set_color_profile_slot( 8, 5, 187, 24, 36 ); //Spirit 1
set_color_profile_slot( 8, 6, 255, 117, 109 ); //Spirit 2
set_color_profile_slot( 8, 7, 122, 0, 74 ); //Spirit 3

// Flippy (ex41, Final HG)
set_color_profile_slot( 9, 0, 71, 111, 171 ); //Tombstone
set_color_profile_slot( 9, 1, 98, 98, 0 ); //Dirt
set_color_profile_slot( 9, 2, 87, 168, 0 ); //Carapace
set_color_profile_slot( 9, 3, 159, 249, 153 ); //Belly
set_color_profile_slot( 9, 4, 232, 134, 31 ); //Mandibles
set_color_profile_slot( 9, 5, 169, 194, 34 ); //Spirit 1
set_color_profile_slot( 9, 6, 255, 255, 255 ); //Spirit 2
set_color_profile_slot( 9, 7, 42, 138, 15 ); //Spirit 3

// Scary Maze (ex 42, Lukaru)
set_color_profile_slot( 10, 0, 42, 27, 61 ); //Tombstone
set_color_profile_slot( 10, 1, 0, 255, 255 ); //Dirt
set_color_profile_slot( 10, 2, 0, 255, 255 ); //Carapace
set_color_profile_slot( 10, 3, 42, 27, 61 ); //Belly
set_color_profile_slot( 10, 4, 0, 255, 255 ); //Mandibles
set_color_profile_slot( 10, 5, 254, 51, 10 ); //Spirit 1
set_color_profile_slot( 10, 6, 0, 255, 255 ); //Spirit 2
set_color_profile_slot( 10, 7, 254, 51, 10 ); //Spirit 3

// Football Zombie (ex44, Ian&Giratina)
set_color_profile_slot( 11, 0, 135, 65, 48 ); //Tombstone
set_color_profile_slot( 11, 1, 125, 156, 77 ); //Dirt
set_color_profile_slot( 11, 2, 186, 41, 29 ); //Carapace
set_color_profile_slot( 11, 3, 147, 162, 129 ); //Belly
set_color_profile_slot( 11, 4, 208, 240, 243 ); //Mandibles
set_color_profile_slot( 11, 5, 146, 185, 188 ); //Spirit 1
set_color_profile_slot( 11, 6, 208, 240, 243 ); //Spirit 2
set_color_profile_slot( 11, 7, 86, 106, 108 ); //Spirit 3

// Mori Calliope (ex 43, Krankees & Jpeg)
set_color_profile_slot( 12, 0, 255, 218, 150 ); //Tombstone
set_color_profile_slot( 12, 1, 143, 119, 123 ); //Dirt
set_color_profile_slot( 12, 2, 82, 81, 86 ); //Carapace
set_color_profile_slot( 12, 3, 252, 191, 219 ); //Belly
set_color_profile_slot( 12, 4, 226, 224, 236 ); //Mandibles
set_color_profile_slot( 12, 5, 252, 191, 219 ); //Spirit 1
set_color_profile_slot( 12, 6, 255, 235, 235 ); //Spirit 2
set_color_profile_slot( 12, 7, 175, 89, 131 ); //Spirit 3

// Slender Man (ex45, Hyuponia)
set_color_profile_slot( 13, 0, 70, 68, 79 ); //Tombstone
set_color_profile_slot( 13, 1, 70, 68, 79 ); //Dirt
set_color_profile_slot( 13, 2, 241, 249, 255 ); //Carapace
set_color_profile_slot( 13, 3, 38, 37, 43 ); //Belly
set_color_profile_slot( 13, 4, 101, 99, 115 ); //Mandibles
set_color_profile_slot( 13, 5, 175, 190, 202 ); //Spirit 1
set_color_profile_slot( 13, 6, 241, 249, 255 ); //Spirit 2
set_color_profile_slot( 13, 7, 119, 136, 149 ); //Spirit 3

// Urotsuki (ex 46, Tdude)
set_color_profile_slot( 14, 0, 189, 199, 213 ); //Tombstone
set_color_profile_slot( 14, 1, 103, 48, 59 ); //Dirt
set_color_profile_slot( 14, 2, 213, 189, 162 ); //Carapace
set_color_profile_slot( 14, 3, 61, 48, 53 ); //Belly
set_color_profile_slot( 14, 4, 119, 103, 113 ); //Mandibles
set_color_profile_slot( 14, 5, 135, 126, 148 ); //Spirit 1
set_color_profile_slot( 14, 6, 179, 172, 199 ); //Spirit 2
set_color_profile_slot( 14, 7, 59, 55, 65 ); //Spirit 3

// AM (ex 47, Chameleonard)
set_color_profile_slot( 15, 0, 81, 33, 12 ); //Tombstone
set_color_profile_slot( 15, 1, 187, 122, 63 ); //Dirt
set_color_profile_slot( 15, 2, 110, 27, 27 ); //Carapace
set_color_profile_slot( 15, 3, 62, 36, 22 ); //Belly
set_color_profile_slot( 15, 4, 130, 103, 56 ); //Mandibles
set_color_profile_slot( 15, 5, 240, 183, 10 ); //Spirit 1
set_color_profile_slot( 15, 6, 255, 245, 175 ); //Spirit 2
set_color_profile_slot( 15, 7, 214, 115, 9 ); //Spirit 3

// Dwaalux (ex 48, Selrate and Sirc)
set_color_profile_slot( 16, 0, 50, 49, 59 ); //Tombstone
set_color_profile_slot( 16, 1, 50, 49, 59 ); //Dirt
set_color_profile_slot( 16, 2, 50, 49, 59 ); //Carapace
set_color_profile_slot( 16, 3, 24, 24, 26 ); //Belly
set_color_profile_slot( 16, 4, 50, 49, 59 ); //Mandibles
set_color_profile_slot( 16, 5, 253, 254, 137 ); //Spirit 1
set_color_profile_slot( 16, 6, 255, 255, 255 ); //Spirit 2
set_color_profile_slot( 16, 7, 254, 219, 81 ); //Spirit 3

// Pyke (ex49, 7axel7)
set_color_profile_slot( 17, 0, 57, 39, 39 ); //Tombstone
set_color_profile_slot( 17, 1, 172, 128, 84 ); //Dirt
set_color_profile_slot( 17, 2, 50, 68, 61 ); //Carapace
set_color_profile_slot( 17, 3, 57, 39, 39 ); //Belly
set_color_profile_slot( 17, 4, 175, 168, 138 ); //Mandibles
set_color_profile_slot( 17, 5, 12, 214, 164 ); //Spirit 1
set_color_profile_slot( 17, 6, 68, 252, 224 ); //Spirit 2
set_color_profile_slot( 17, 7, 12, 133, 114 ); //Spirit 3

// Kitimek (ex50, Skycrafter)
set_color_profile_slot( 18, 0, 201, 32, 69 ); //Tombstone
set_color_profile_slot( 18, 1, 54, 49, 49 ); //Dirt
set_color_profile_slot( 18, 2, 53, 49, 54 ); //Carapace
set_color_profile_slot( 18, 3, 201, 52, 32 ); //Belly
set_color_profile_slot( 18, 4, 217, 156, 156 ); //Mandibles
set_color_profile_slot( 18, 5, 201, 32, 69 ); //Spirit 1
set_color_profile_slot( 18, 6, 255, 113, 143 ); //Spirit 2
set_color_profile_slot( 18, 7, 166, 0, 35 ); //Spirit 3

// Infected (ex51, B R O W N K I N G)
set_color_profile_slot( 19, 0, 69, 68, 59 ); //Tombstone
set_color_profile_slot( 19, 1, 139, 80, 72 ); //Dirt
set_color_profile_slot( 19, 2, 136, 136, 117 ); //Carapace
set_color_profile_slot( 19, 3, 116, 63, 56 ); //Belly
set_color_profile_slot( 19, 4, 206, 202, 153 ); //Mandibles
set_color_profile_slot( 19, 5, 139, 80, 72 ); //Spirit 1
set_color_profile_slot( 19, 6, 217, 180, 146 ); //Spirit 2
set_color_profile_slot( 19, 7, 116, 63, 56 ); //Spirit 3

// Courage (ex52, Creator Serg)
set_color_profile_slot( 20, 0, 251, 227, 153 ); //Tombstone
set_color_profile_slot( 20, 1, 184, 139, 107 ); //Dirt
set_color_profile_slot( 20, 2, 247, 158, 219 ); //Carapace
set_color_profile_slot( 20, 3, 29, 28, 32 ); //Belly
set_color_profile_slot( 20, 4, 139, 71, 65 ); //Mandibles
set_color_profile_slot( 20, 5, 207, 207, 207 ); //Spirit 1
set_color_profile_slot( 20, 6, 255, 255, 255 ); //Spirit 2
set_color_profile_slot( 20, 7, 123, 134, 150 ); //Spirit 3

// SHADOW DIO??? (ex53, Reiga)
set_color_profile_slot( 21, 0, 55, 23, 119 ); //Tombstone
set_color_profile_slot( 21, 1, 86, 41, 152 ); //Dirt
set_color_profile_slot( 21, 2, 88, 141, 151 ); //Carapace
set_color_profile_slot( 21, 3, 227, 117, 140 ); //Belly
set_color_profile_slot( 21, 4, 255, 255, 236 ); //Mandibles
set_color_profile_slot( 21, 5, 255, 218, 96 ); //Spirit 1
set_color_profile_slot( 21, 6, 255, 249, 181 ); //Spirit 2
set_color_profile_slot( 21, 7, 171, 120, 31 ); //Spirit 3

// Ordinary Traffic Stop (ex35, JH)
set_color_profile_slot( 22, 0, 91, 87, 93 ); //Tombstone
set_color_profile_slot( 22, 1, 179, 165, 143 ); //Dirt
set_color_profile_slot( 22, 2, 63, 19, 19 ); //Carapace
set_color_profile_slot( 22, 3, 70, 35, 35 ); //Belly
set_color_profile_slot( 22, 4, 105, 83, 83 ); //Mandibles
set_color_profile_slot( 22, 5, 147, 143, 143 ); //Spirit 1
set_color_profile_slot( 22, 6, 209, 209, 209 ); //Spirit 2
set_color_profile_slot( 22, 7, 91, 87, 93 ); //Spirit 3

// Jeff the Killer (ex36, RoboShyGuy)
set_color_profile_slot( 23, 0, 50, 0, 0 ); //Tombstone
set_color_profile_slot( 23, 1, 94, 94, 94 ); //Dirt
set_color_profile_slot( 23, 2, 237, 237, 237 ); //Carapace
set_color_profile_slot( 23, 3, 186, 0, 0 ); //Belly
set_color_profile_slot( 23, 4, 186, 0, 0 ); //Mandibles
set_color_profile_slot( 23, 5, 186, 0, 0 ); //Spirit 1
set_color_profile_slot( 23, 6, 242, 60, 60 ); //Spirit 2
set_color_profile_slot( 23, 7, 102, 0, 7 ); //Spirit 3

// ray bradbury (ex 37, Mallow)
set_color_profile_slot( 24, 0, 133, 107, 95 ); //Tombstone
set_color_profile_slot( 24, 1, 94, 70, 60 ); //Dirt
set_color_profile_slot( 24, 2, 46, 221, 178 ); //Carapace
set_color_profile_slot( 24, 3, 25, 70, 61 ); //Belly
set_color_profile_slot( 24, 4, 254, 254, 6 ); //Mandibles
set_color_profile_slot( 24, 5, 249, 1, 1 ); //Spirit 1
set_color_profile_slot( 24, 6, 249, 249, 249 ); //Spirit 2
set_color_profile_slot( 24, 7, 1, 1, 249 ); //Spirit 3

// Scolipede (ex 54)
set_color_profile_slot( 25, 0, 173, 148, 197 ); //Tombstone
set_color_profile_slot( 25, 1, 140, 58, 156 ); //Dirt
set_color_profile_slot( 25, 2, 197, 25, 90 ); //Carapace
set_color_profile_slot( 25, 3, 66, 74, 99 ); //Belly
set_color_profile_slot( 25, 4, 140, 58, 156 ); //Mandibles
set_color_profile_slot( 25, 5, 255, 0, 242 ); //Spirit 1
set_color_profile_slot( 25, 6, 255, 153, 227 ); //Spirit 2
set_color_profile_slot( 25, 7, 159, 0, 194 ); //Spirit 3

// Chaos Kin (ex 55)
set_color_profile_slot( 26, 0, 193, 154, 69 ); //Tombstone
set_color_profile_slot( 26, 1, 108, 163, 90 ); //Dirt
set_color_profile_slot( 26, 2, 85, 65, 66 ); //Carapace
set_color_profile_slot( 26, 3, 206, 174, 159 ); //Belly
set_color_profile_slot( 26, 4, 190, 50, 81 ); //Mandibles
set_color_profile_slot( 26, 5, 219, 58, 38 ); //Spirit 1
set_color_profile_slot( 26, 6, 243, 168, 17 ); //Spirit 2
set_color_profile_slot( 26, 7, 110, 32, 32 ); //Spirit 3

// Carl Clover (ex 56)
set_color_profile_slot( 27, 0, 229, 172, 76 ); //Tombstone
set_color_profile_slot( 27, 1, 173, 173, 173 ); //Dirt
set_color_profile_slot( 27, 2, 128, 88, 164 ); //Carapace
set_color_profile_slot( 27, 3, 173, 173, 173 ); //Belly
set_color_profile_slot( 27, 4, 243, 244, 248 ); //Mandibles
set_color_profile_slot( 27, 5, 240, 240, 80 ); //Spirit 1
set_color_profile_slot( 27, 6, 254, 255, 230 ); //Spirit 2
set_color_profile_slot( 27, 7, 230, 172, 0 ); //Spirit 3

// Spooky (ex 58)
set_color_profile_slot( 28, 0, 160, 140, 112 ); //Tombstone
set_color_profile_slot( 28, 1, 112, 231, 255 ); //Dirt
set_color_profile_slot( 28, 2, 74, 120, 154 ); //Carapace
set_color_profile_slot( 28, 3, 227, 235, 255 ); //Belly
set_color_profile_slot( 28, 4, 188, 251, 255 ); //Mandibles
set_color_profile_slot( 28, 5, 112, 231, 255 ); //Spirit 1
set_color_profile_slot( 28, 6, 255, 255, 255 ); //Spirit 2
set_color_profile_slot( 28, 7, 85, 128, 255 ); //Spirit 3

// Desperado (ex57)
set_color_profile_slot( 29, 0, 177, 189, 196 ); //Tombstone
set_color_profile_slot( 29, 1, 136, 120, 120 ); //Dirt
set_color_profile_slot( 29, 2, 106, 87, 65 ); //Carapace
set_color_profile_slot( 29, 3, 136, 120, 120 ); //Belly
set_color_profile_slot( 29, 4, 222, 130, 98 ); //Mandibles
set_color_profile_slot( 29, 5, 255, 127, 0 ); //Spirit 1
set_color_profile_slot( 29, 6, 255, 230, 0 ); //Spirit 2
set_color_profile_slot( 29, 7, 201, 70, 0 ); //Spirit 3

// Mako (ex 59)
set_color_profile_slot( 30, 0, 53, 52, 83 ); //Tombstone
set_color_profile_slot( 30, 1, 81, 255, 154 ); //Dirt
set_color_profile_slot( 30, 2, 95, 114, 135 ); //Carapace
set_color_profile_slot( 30, 3, 240, 231, 224 ); //Belly
set_color_profile_slot( 30, 4, 255, 249, 233 ); //Mandibles
set_color_profile_slot( 30, 5, 81, 255, 154 ); //Spirit 1
set_color_profile_slot( 30, 6, 193, 255, 189 ); //Spirit 2
set_color_profile_slot( 30, 7, 21, 163, 81 ); //Spirit 3

// We'll Meet Again
set_color_profile_slot( 31, 0, 90, 64, 70 ); //Tombstone
set_color_profile_slot( 31, 1, 78, 138, 56 ); //Dirt
set_color_profile_slot( 31, 2, 165, 163, 150 ); //Carapace
set_color_profile_slot( 31, 3, 189, 190, 120 ); //Belly
set_color_profile_slot( 31, 4, 98, 99, 83 ); //Mandibles
set_color_profile_slot( 31, 5, 189, 190, 120 ); //Spirit 1
set_color_profile_slot( 31, 6, 247, 244, 169 ); //Spirit 2
set_color_profile_slot( 31, 7, 128, 121, 53 ); //Spirit 3

// Do not paste below here for normal colors
//#endregion
    break;
    }
    
// Looping function to assign article colors using this
	// Using a variable passed from CSS to in game cause the CSS online reads a different player number than offline
if ("last_frame_color_alt" in self) {
	if (get_player_color(player) != 0){
        for(var shade_slot = 0;shade_slot < 8;shade_slot++){
            var col_R = get_color_profile_slot_r( last_frame_color_alt, shade_slot);
            var col_G = get_color_profile_slot_g( last_frame_color_alt, shade_slot);
            var col_B = get_color_profile_slot_b( last_frame_color_alt, shade_slot);
            set_article_color_slot( shade_slot, col_R, col_G, col_B );
            set_character_color_slot( shade_slot, col_R, col_G, col_B );
            //print("Shade slot set: " + string(shade_slot));
            //print("R:" + string(col_R) + " /G:" + string(col_G)+ "/ B:" + string(col_B));
        }
    }
}
    //Original Color Slot!
    
manual_init_shader_call = false;
}

#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
//print(chunk_arr);
return chunk_arr;