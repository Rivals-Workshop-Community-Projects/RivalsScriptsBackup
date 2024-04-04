// empty

if("color_shift" not in self){exit;}

    if(color_shift == 0){
        switch (get_player_color(player))
        {
            case 29: // Smashland from Iroh
            	for(var i = 0; i < 8; ++i) set_character_color_shading(i, 0);
            	outline_color = [ 35, 67, 49 ];
            	break;
            case 30: // Mange Alt
            	for(var i = 0; i < 8; ++i) set_character_color_shading(i,0);
            	outline_color = [ 0, 0, 0 ];
            	break;
        }
    }
    //print(color_shift);
    //print("init shader ran")
//if(color_shift_has_run == false){
    // Aditional Color Slot Data
if("manual_init_shader_call" not in self){exit;}
if(manual_init_shader_call){
   
    switch(color_shift){
        case 0: // Original Colors
//#region Normal Colors

// OG Colors
set_color_profile_slot( 1, 0, 200, 200, 240 ); //fur
set_color_profile_slot( 1, 1, 250, 251, 252 ); //fur tip
set_color_profile_slot( 1, 2, 143, 143, 255 ); //hair
set_color_profile_slot( 1, 3, 255, 255, 125 ); //horns + accents
set_color_profile_slot( 1, 4, 129, 175, 219 ); //kimono top
set_color_profile_slot( 1, 5, 255, 255, 255 ); //kimono wave
set_color_profile_slot( 1, 6, 73, 73, 191 ); //kimono bottom
set_color_profile_slot( 1, 7, 171, 60, 60 ); //kimono accents

// Klockwurth
set_color_profile_slot( 2, 0, 140, 132, 148 ); //fur
set_color_profile_slot( 2, 1, 62, 61, 92 ); //fur tip
set_color_profile_slot( 2, 2, 62, 61, 92 ); //hair
set_color_profile_slot( 2, 3, 191, 191, 48 ); //horns + accents
set_color_profile_slot( 2, 4, 62, 61, 92 ); //kimono top
set_color_profile_slot( 2, 5, 48, 48, 191 ); //kimono wave
set_color_profile_slot( 2, 6, 62, 61, 92 ); //kimono bottom
set_color_profile_slot( 2, 7, 191, 62, 48 ); //kimono accents

// Roekoko
set_color_profile_slot( 3, 0, 226, 231, 233 ); //fur
set_color_profile_slot( 3, 1, 245, 246, 247 ); //fur tip
set_color_profile_slot( 3, 2, 58, 44, 60 ); //hair
set_color_profile_slot( 3, 3, 210, 43, 34 ); //horns + accents
set_color_profile_slot( 3, 4, 255, 220, 222 ); //kimono top
set_color_profile_slot( 3, 5, 255, 220, 222 ); //kimono wave
set_color_profile_slot( 3, 6, 255, 220, 222 ); //kimono bottom
set_color_profile_slot( 3, 7, 210, 34, 48 ); //kimono accents

// Sailee
set_color_profile_slot( 4, 0, 250, 236, 168 ); //fur
set_color_profile_slot( 4, 1, 250, 244, 242 ); //fur tip
set_color_profile_slot( 4, 2, 250, 248, 245 ); //hair
set_color_profile_slot( 4, 3, 37, 65, 207 ); //horns + accents
set_color_profile_slot( 4, 4, 243, 242, 255 ); //kimono top
set_color_profile_slot( 4, 5, 37, 94, 207 ); //kimono wave
set_color_profile_slot( 4, 6, 37, 65, 207 ); //kimono bottom
set_color_profile_slot( 4, 7, 16, 36, 145 ); //kimono accents

// Iroh
set_color_profile_slot( 5, 0, 200, 200, 240 ); //fur
set_color_profile_slot( 5, 1, 253, 253, 253 ); //fur tip
set_color_profile_slot( 5, 2, 200, 200, 240 ); //hair
set_color_profile_slot( 5, 3, 206, 135, 23 ); //horns + accents
set_color_profile_slot( 5, 4, 123, 37, 201 ); //kimono top
set_color_profile_slot( 5, 5, 238, 220, 0 ); //kimono wave
set_color_profile_slot( 5, 6, 67, 68, 87 ); //kimono bottom
set_color_profile_slot( 5, 7, 238, 220, 0 ); //kimono accents

// Solarei
set_color_profile_slot( 6, 0, 250, 236, 168 ); //fur
set_color_profile_slot( 6, 1, 226, 231, 233 ); //fur tip
set_color_profile_slot( 6, 2, 250, 248, 245 ); //hair
set_color_profile_slot( 6, 3, 179, 171, 178 ); //horns + accents
set_color_profile_slot( 6, 4, 255, 220, 222 ); //kimono top
set_color_profile_slot( 6, 5, 230, 73, 73 ); //kimono wave
set_color_profile_slot( 6, 6, 210, 43, 34 ); //kimono bottom
set_color_profile_slot( 6, 7, 147, 25, 18 ); //kimono accents

// Tzukiyo
set_color_profile_slot( 7, 0, 235, 239, 247 ); //fur
set_color_profile_slot( 7, 1, 235, 239, 247 ); //fur tip
set_color_profile_slot( 7, 2, 73, 75, 77 ); //hair
set_color_profile_slot( 7, 3, 248, 245, 250 ); //horns + accents
set_color_profile_slot( 7, 4, 250, 241, 240 ); //kimono top
set_color_profile_slot( 7, 5, 69, 66, 67 ); //kimono wave
set_color_profile_slot( 7, 6, 69, 66, 67 ); //kimono bottom
set_color_profile_slot( 7, 7, 250, 241, 240 ); //kimono accents

// Lyca
set_color_profile_slot( 8, 0, 255, 97, 79 ); //fur
set_color_profile_slot( 8, 1, 247, 238, 213 ); //fur tip
set_color_profile_slot( 8, 2, 247, 238, 213 ); //hair
set_color_profile_slot( 8, 3, 72, 130, 172 ); //horns + accents
set_color_profile_slot( 8, 4, 74, 208, 223 ); //kimono top
set_color_profile_slot( 8, 5, 80, 169, 241 ); //kimono wave
set_color_profile_slot( 8, 6, 86, 74, 151 ); //kimono bottom
set_color_profile_slot( 8, 7, 80, 169, 241 ); //kimono accents

// Zerra
set_color_profile_slot( 9, 0, 227, 235, 250 ); //fur
set_color_profile_slot( 9, 1, 227, 235, 250 ); //fur tip
set_color_profile_slot( 9, 2, 247, 248, 250 ); //hair
set_color_profile_slot( 9, 3, 99, 169, 255 ); //horns + accents
set_color_profile_slot( 9, 4, 61, 131, 255 ); //kimono top
set_color_profile_slot( 9, 5, 99, 155, 255 ); //kimono wave
set_color_profile_slot( 9, 6, 247, 248, 250 ); //kimono bottom
set_color_profile_slot( 9, 7, 99, 169, 255 ); //kimono accents

// Rykenburn
set_color_profile_slot( 10, 0, 114, 105, 86 ); //fur
set_color_profile_slot( 10, 1, 170, 149, 58 ); //fur tip
set_color_profile_slot( 10, 2, 128, 96, 28 ); //hair
set_color_profile_slot( 10, 3, 254, 255, 0 ); //horns + accents
set_color_profile_slot( 10, 4, 255, 228, 0 ); //kimono top
set_color_profile_slot( 10, 5, 255, 124, 0 ); //kimono wave
set_color_profile_slot( 10, 6, 170, 0, 0 ); //kimono bottom
set_color_profile_slot( 10, 7, 255, 124, 0 ); //kimono accents

// Flicorian
set_color_profile_slot( 11, 0, 212, 166, 156 ); //fur
set_color_profile_slot( 11, 1, 237, 217, 211 ); //fur tip
set_color_profile_slot( 11, 2, 125, 103, 90 ); //hair
set_color_profile_slot( 11, 3, 212, 239, 255 ); //horns + accents
set_color_profile_slot( 11, 4, 128, 0, 58 ); //kimono top
set_color_profile_slot( 11, 5, 212, 239, 255 ); //kimono wave
set_color_profile_slot( 11, 6, 5, 115, 140 ); //kimono bottom
set_color_profile_slot( 11, 7, 45, 48, 51 ); //kimono accents

// Hikaru
set_color_profile_slot( 12, 0, 232, 232, 232 ); //fur
set_color_profile_slot( 12, 1, 214, 73, 94 ); //fur tip
set_color_profile_slot( 12, 2, 109, 47, 26 ); //hair
set_color_profile_slot( 12, 3, 214, 73, 94 ); //horns + accents
set_color_profile_slot( 12, 4, 204, 146, 217 ); //kimono top
set_color_profile_slot( 12, 5, 214, 73, 94 ); //kimono wave
set_color_profile_slot( 12, 6, 204, 146, 217 ); //kimono bottom
set_color_profile_slot( 12, 7, 214, 73, 94 ); //kimono accents

// Kunoichi
set_color_profile_slot( 13, 0, 156, 149, 219 ); //fur
set_color_profile_slot( 13, 1, 47, 35, 74 ); //fur tip
set_color_profile_slot( 13, 2, 181, 27, 27 ); //hair
set_color_profile_slot( 13, 3, 184, 129, 0 ); //horns + accents
set_color_profile_slot( 13, 4, 255, 227, 227 ); //kimono top
set_color_profile_slot( 13, 5, 255, 0, 0 ); //kimono wave
set_color_profile_slot( 13, 6, 48, 35, 46 ); //kimono bottom
set_color_profile_slot( 13, 7, 255, 0, 0 ); //kimono accents

// Tuqiu
set_color_profile_slot( 14, 0, 248, 242, 255 ); //fur
set_color_profile_slot( 14, 1, 248, 242, 255 ); //fur tip
set_color_profile_slot( 14, 2, 248, 242, 255 ); //hair
set_color_profile_slot( 14, 3, 87, 255, 219 ); //horns + accents
set_color_profile_slot( 14, 4, 248, 242, 255 ); //kimono top
set_color_profile_slot( 14, 5, 247, 54, 54 ); //kimono wave
set_color_profile_slot( 14, 6, 34, 32, 79 ); //kimono bottom
set_color_profile_slot( 14, 7, 247, 54, 54 ); //kimono accents

// Walkya
set_color_profile_slot( 15, 0, 207, 88, 179 ); //fur
set_color_profile_slot( 15, 1, 242, 129, 216 ); //fur tip
set_color_profile_slot( 15, 2, 75, 42, 0 ); //hair
set_color_profile_slot( 15, 3, 255, 57, 127 ); //horns + accents
set_color_profile_slot( 15, 4, 251, 251, 251 ); //kimono top
set_color_profile_slot( 15, 5, 200, 136, 219 ); //kimono wave
set_color_profile_slot( 15, 6, 193, 193, 193 ); //kimono bottom
set_color_profile_slot( 15, 7, 255, 0, 91 ); //kimono accents

// Blood Moon
set_color_profile_slot( 16, 0, 30, 30, 30 ); //fur
set_color_profile_slot( 16, 1, 220, 205, 200 ); //fur tip
set_color_profile_slot( 16, 2, 200, 200, 220 ); //hair
set_color_profile_slot( 16, 3, 240, 120, 60 ); //horns + accents
set_color_profile_slot( 16, 4, 120, 50, 50 ); //kimono top
set_color_profile_slot( 16, 5, 80, 10, 10 ); //kimono wave
set_color_profile_slot( 16, 6, 100, 75, 75 ); //kimono bottom
set_color_profile_slot( 16, 7, 75, 50, 50 ); //kimono accents

// Voidborn
set_color_profile_slot( 17, 0, 118, 118, 138 ); //fur
set_color_profile_slot( 17, 1, 247, 245, 255 ); //fur tip
set_color_profile_slot( 17, 2, 59, 59, 59 ); //hair
set_color_profile_slot( 17, 3, 139, 60, 232 ); //horns + accents
set_color_profile_slot( 17, 4, 239, 239, 255 ); //kimono top
set_color_profile_slot( 17, 5, 98, 55, 78 ); //kimono wave
set_color_profile_slot( 17, 6, 54, 54, 54 ); //kimono bottom
set_color_profile_slot( 17, 7, 98, 55, 78 ); //kimono accents

// Sacramentum
set_color_profile_slot( 18, 0, 94, 67, 37 ); //fur
set_color_profile_slot( 18, 1, 205, 250, 237 ); //fur tip
set_color_profile_slot( 18, 2, 36, 138, 129 ); //hair
set_color_profile_slot( 18, 3, 232, 241, 255 ); //horns + accents
set_color_profile_slot( 18, 4, 110, 235, 223 ); //kimono top
set_color_profile_slot( 18, 5, 179, 227, 212 ); //kimono wave
set_color_profile_slot( 18, 6, 36, 138, 129 ); //kimono bottom
set_color_profile_slot( 18, 7, 217, 197, 80 ); //kimono accents

// Mirror
set_color_profile_slot( 19, 0, 183, 161, 230 ); //fur
set_color_profile_slot( 19, 1, 219, 209, 242 ); //fur tip
set_color_profile_slot( 19, 2, 161, 177, 230 ); //hair
set_color_profile_slot( 19, 3, 26, 206, 255 ); //horns + accents
set_color_profile_slot( 19, 4, 204, 207, 253 ); //kimono top
set_color_profile_slot( 19, 5, 26, 206, 255 ); //kimono wave
set_color_profile_slot( 19, 6, 82, 72, 140 ); //kimono bottom
set_color_profile_slot( 19, 7, 163, 1, 5 ); //kimono accents

// Stormy Night
set_color_profile_slot( 20, 0, 97, 88, 119 ); //fur
set_color_profile_slot( 20, 1, 68, 53, 82 ); //fur tip
set_color_profile_slot( 20, 2, 115, 46, 57 ); //hair
set_color_profile_slot( 20, 3, 255, 226, 125 ); //horns + accents
set_color_profile_slot( 20, 4, 116, 56, 63 ); //kimono top
set_color_profile_slot( 20, 5, 232, 208, 137 ); //kimono wave
set_color_profile_slot( 20, 6, 87, 60, 115 ); //kimono bottom
set_color_profile_slot( 20, 7, 255, 226, 122 ); //kimono accents

// FuRi's Edge
set_color_profile_slot( 21, 0, 97, 0, 0 ); //fur
set_color_profile_slot( 21, 1, 107, 107, 107 ); //fur tip
set_color_profile_slot( 21, 2, 252, 254, 255 ); //hair
set_color_profile_slot( 21, 3, 194, 0, 0 ); //horns + accents
set_color_profile_slot( 21, 4, 48, 48, 64 ); //kimono top
set_color_profile_slot( 21, 5, 252, 254, 255 ); //kimono wave
set_color_profile_slot( 21, 6, 130, 0, 0 ); //kimono bottom
set_color_profile_slot( 21, 7, 252, 254, 255 ); //kimono accents

// Marlow
set_color_profile_slot( 22, 0, 252, 250, 248 ); //fur
set_color_profile_slot( 22, 1, 252, 250, 248 ); //fur tip
set_color_profile_slot( 22, 2, 190, 228, 149 ); //hair
set_color_profile_slot( 22, 3, 154, 228, 75 ); //horns + accents
set_color_profile_slot( 22, 4, 92, 89, 65 ); //kimono top
set_color_profile_slot( 22, 5, 190, 228, 149 ); //kimono wave
set_color_profile_slot( 22, 6, 92, 89, 65 ); //kimono bottom
set_color_profile_slot( 22, 7, 190, 228, 149 ); //kimono accents

// Namielle
set_color_profile_slot( 23, 0, 101, 126, 156 ); //fur
set_color_profile_slot( 23, 1, 185, 210, 215 ); //fur tip
set_color_profile_slot( 23, 2, 45, 46, 77 ); //hair
set_color_profile_slot( 23, 3, 255, 252, 120 ); //horns + accents
set_color_profile_slot( 23, 4, 32, 55, 117 ); //kimono top
set_color_profile_slot( 23, 5, 224, 255, 92 ); //kimono wave
set_color_profile_slot( 23, 6, 81, 103, 179 ); //kimono bottom
set_color_profile_slot( 23, 7, 231, 116, 98 ); //kimono accents

// Zinogre
set_color_profile_slot( 24, 0, 246, 178, 31 ); //fur
set_color_profile_slot( 24, 1, 228, 242, 204 ); //fur tip
set_color_profile_slot( 24, 2, 228, 242, 204 ); //hair
set_color_profile_slot( 24, 3, 179, 255, 255 ); //horns + accents
set_color_profile_slot( 24, 4, 246, 178, 31 ); //kimono top
set_color_profile_slot( 24, 5, 179, 255, 255 ); //kimono wave
set_color_profile_slot( 24, 6, 10, 208, 202 ); //kimono bottom
set_color_profile_slot( 24, 7, 228, 242, 204 ); //kimono accents

// Amaterasu
set_color_profile_slot( 25, 0, 250, 250, 250 ); //fur
set_color_profile_slot( 25, 1, 250, 250, 250 ); //fur tip
set_color_profile_slot( 25, 2, 250, 250, 250 ); //hair
set_color_profile_slot( 25, 3, 191, 50, 50 ); //horns + accents
set_color_profile_slot( 25, 4, 250, 250, 250 ); //kimono top
set_color_profile_slot( 25, 5, 191, 50, 50 ); //kimono wave
set_color_profile_slot( 25, 6, 250, 250, 250 ); //kimono bottom
set_color_profile_slot( 25, 7, 191, 50, 50 ); //kimono accents

// Zeraora
set_color_profile_slot( 26, 0, 247, 236, 84 ); //fur
set_color_profile_slot( 26, 1, 88, 90, 103 ); //fur tip
set_color_profile_slot( 26, 2, 247, 236, 84 ); //hair
set_color_profile_slot( 26, 3, 91, 206, 250 ); //horns + accents
set_color_profile_slot( 26, 4, 88, 90, 103 ); //kimono top
set_color_profile_slot( 26, 5, 91, 206, 250 ); //kimono wave
set_color_profile_slot( 26, 6, 247, 236, 84 ); //kimono bottom
set_color_profile_slot( 26, 7, 91, 206, 250 ); //kimono accents

// Trans Rights
set_color_profile_slot( 27, 0, 91, 206, 250 ); //fur
set_color_profile_slot( 27, 1, 255, 255, 255 ); //fur tip
set_color_profile_slot( 27, 2, 91, 206, 250 ); //hair
set_color_profile_slot( 27, 3, 255, 255, 255 ); //horns + accents
set_color_profile_slot( 27, 4, 245, 169, 184 ); //kimono top
set_color_profile_slot( 27, 5, 255, 255, 255 ); //kimono wave
set_color_profile_slot( 27, 6, 245, 169, 184 ); //kimono bottom
set_color_profile_slot( 27, 7, 255, 255, 255 ); //kimono accents

// BLM
set_color_profile_slot( 28, 0, 41, 41, 41 ); //fur
set_color_profile_slot( 28, 1, 41, 42, 51 ); //fur tip
set_color_profile_slot( 28, 2, 143, 99, 65 ); //hair
set_color_profile_slot( 28, 3, 255, 200, 0 ); //horns + accents
set_color_profile_slot( 28, 4, 236, 237, 232 ); //kimono top
set_color_profile_slot( 28, 5, 255, 255, 255 ); //kimono wave
set_color_profile_slot( 28, 6, 117, 60, 42 ); //kimono bottom
set_color_profile_slot( 28, 7, 236, 237, 232 ); //kimono accents

// Smash Land
set_color_profile_slot( 29, 0, 167, 186, 74 ); //fur
set_color_profile_slot( 29, 1, 167, 186, 74 ); //fur tip
set_color_profile_slot( 29, 2, 83, 122, 62 ); //hair
set_color_profile_slot( 29, 3, 211, 226, 154 ); //horns + accents
set_color_profile_slot( 29, 4, 167, 186, 74 ); //kimono top
set_color_profile_slot( 29, 5, 211, 226, 154 ); //kimono wave
set_color_profile_slot( 29, 6, 83, 122, 62 ); //kimono bottom
set_color_profile_slot( 29, 7, 211, 226, 154 ); //kimono accents

// Manga
set_color_profile_slot( 30, 0, 242, 242, 242 ); //fur
set_color_profile_slot( 30, 1, 242, 242, 242 ); //fur tip
set_color_profile_slot( 30, 2, 64, 64, 64 ); //hair
set_color_profile_slot( 30, 3, 242, 242, 242 ); //horns + accents
set_color_profile_slot( 30, 4, 242, 242, 242 ); //kimono top
set_color_profile_slot( 30, 5, 242, 242, 242 ); //kimono wave
set_color_profile_slot( 30, 6, 64, 64, 64 ); //kimono bottom
set_color_profile_slot( 30, 7, 242, 242, 242 ); //kimono accents
        
//#endregion
        break;
        
        case 1: // Color Shift 1
//#region Extra 1 Colors
        
// RaB
set_color_profile_slot( 1, 0, 180, 180, 180 ); //fur
set_color_profile_slot( 1, 1, 250, 248, 220 ); //fur tip
set_color_profile_slot( 1, 2, 232, 232, 75 ); //hair
set_color_profile_slot( 1, 3, 244, 236, 141 ); //horns + accents
set_color_profile_slot( 1, 4, 175, 203, 123 ); //kimono top
set_color_profile_slot( 1, 5, 19, 179, 19 ); //kimono wave
set_color_profile_slot( 1, 6, 19, 179, 19 ); //kimono bottom
set_color_profile_slot( 1, 7, 238, 238, 238 ); //kimono accents

// COTA
set_color_profile_slot( 2, 0, 199, 52, 199 ); //fur
set_color_profile_slot( 2, 1, 56, 14, 100 ); //fur tip
set_color_profile_slot( 2, 2, 125, 5, 147 ); //hair
set_color_profile_slot( 2, 3, 222, 215, 215 ); //horns + accents
set_color_profile_slot( 2, 4, 56, 14, 100 ); //kimono top
set_color_profile_slot( 2, 5, 171, 162, 60 ); //kimono wave
set_color_profile_slot( 2, 6, 36, 8, 63 ); //kimono bottom
set_color_profile_slot( 2, 7, 171, 162, 58 ); //kimono accents

// FTL
set_color_profile_slot( 3, 0, 70, 70, 70 ); //fur
set_color_profile_slot( 3, 1, 222, 222, 222 ); //fur tip
set_color_profile_slot( 3, 2, 105, 105, 105 ); //hair
set_color_profile_slot( 3, 3, 0, 224, 217 ); //horns + accents
set_color_profile_slot( 3, 4, 130, 130, 130 ); //kimono top
set_color_profile_slot( 3, 5, 0, 220, 220 ); //kimono wave
set_color_profile_slot( 3, 6, 255, 230, 40 ); //kimono bottom
set_color_profile_slot( 3, 7, 0, 220, 220 ); //kimono accents

// Workshop Elite
set_color_profile_slot( 4, 0, 232, 236, 231 ); //fur
set_color_profile_slot( 4, 1, 232, 236, 231 ); //fur tip
set_color_profile_slot( 4, 2, 255, 137, 0 ); //hair
set_color_profile_slot( 4, 3, 249, 242, 93 ); //horns + accents
set_color_profile_slot( 4, 4, 89, 87, 90 ); //kimono top
set_color_profile_slot( 4, 5, 255, 234, 5 ); //kimono wave
set_color_profile_slot( 4, 6, 89, 87, 90 ); //kimono bottom
set_color_profile_slot( 4, 7, 255, 234, 5 ); //kimono accents

// W.O.R.M.s
set_color_profile_slot( 5, 0, 237, 161, 202 ); //fur
set_color_profile_slot( 5, 1, 255, 191, 223 ); //fur tip
set_color_profile_slot( 5, 2, 227, 130, 145 ); //hair
set_color_profile_slot( 5, 3, 202, 200, 193 ); //horns + accents
set_color_profile_slot( 5, 4, 97, 192, 231 ); //kimono top
set_color_profile_slot( 5, 5, 202, 200, 193 ); //kimono wave
set_color_profile_slot( 5, 6, 80, 167, 57 ); //kimono bottom
set_color_profile_slot( 5, 7, 51, 51, 65 ); //kimono accents

// Heatwave
set_color_profile_slot( 6, 0, 235, 126, 94 ); //fur
set_color_profile_slot( 6, 1, 243, 183, 162 ); //fur tip
set_color_profile_slot( 6, 2, 216, 107, 40 ); //hair
set_color_profile_slot( 6, 3, 223, 216, 31 ); //horns + accents
set_color_profile_slot( 6, 4, 138, 24, 32 ); //kimono top
set_color_profile_slot( 6, 5, 223, 216, 31 ); //kimono wave
set_color_profile_slot( 6, 6, 27, 33, 81 ); //kimono bottom
set_color_profile_slot( 6, 7, 255, 255, 255 ); //kimono accents

// Blueberry Bout
set_color_profile_slot( 7, 0, 238, 106, 149 ); //fur
set_color_profile_slot( 7, 1, 83, 153, 182 ); //fur tip
set_color_profile_slot( 7, 2, 102, 70, 112 ); //hair
set_color_profile_slot( 7, 3, 115, 214, 147 ); //horns + accents
set_color_profile_slot( 7, 4, 83, 153, 182 ); //kimono top
set_color_profile_slot( 7, 5, 115, 214, 147 ); //kimono wave
set_color_profile_slot( 7, 6, 57, 57, 107 ); //kimono bottom
set_color_profile_slot( 7, 7, 115, 214, 147 ); //kimono accents

// TLC
set_color_profile_slot( 8, 0, 255, 240, 160 ); //fur
set_color_profile_slot( 8, 1, 255, 252, 237 ); //fur tip
set_color_profile_slot( 8, 2, 94, 93, 76 ); //hair
set_color_profile_slot( 8, 3, 244, 236, 141 ); //horns + accents
set_color_profile_slot( 8, 4, 255, 160, 249 ); //kimono top
set_color_profile_slot( 8, 5, 250, 215, 248 ); //kimono wave
set_color_profile_slot( 8, 6, 59, 25, 57 ); //kimono bottom
set_color_profile_slot( 8, 7, 201, 62, 191 ); //kimono accents

// FW
set_color_profile_slot( 9, 0, 24, 44, 77 ); //fur
set_color_profile_slot( 9, 1, 196, 192, 212 ); //fur tip
set_color_profile_slot( 9, 2, 54, 52, 65 ); //hair
set_color_profile_slot( 9, 3, 190, 174, 151 ); //horns + accents
set_color_profile_slot( 9, 4, 183, 214, 154 ); //kimono top
set_color_profile_slot( 9, 5, 19, 35, 69 ); //kimono wave
set_color_profile_slot( 9, 6, 54, 52, 65 ); //kimono bottom
set_color_profile_slot( 9, 7, 254, 250, 159 ); //kimono accents

// Scrimsho
set_color_profile_slot( 10, 0, 12, 29, 64 ); //fur
set_color_profile_slot( 10, 1, 178, 206, 224 ); //fur tip
set_color_profile_slot( 10, 2, 43, 45, 130 ); //hair
set_color_profile_slot( 10, 3, 112, 83, 230 ); //horns + accents
set_color_profile_slot( 10, 4, 165, 168, 173 ); //kimono top
set_color_profile_slot( 10, 5, 160, 177, 214 ); //kimono wave
set_color_profile_slot( 10, 6, 50, 57, 77 ); //kimono bottom
set_color_profile_slot( 10, 7, 65, 107, 209 ); //kimono accents

// Riptide
set_color_profile_slot( 11, 0, 12, 25, 58 ); //fur
set_color_profile_slot( 11, 1, 242, 228, 214 ); //fur tip
set_color_profile_slot( 11, 2, 12, 25, 58 ); //hair
set_color_profile_slot( 11, 3, 254, 183, 0 ); //horns + accents
set_color_profile_slot( 11, 4, 2, 198, 216 ); //kimono top
set_color_profile_slot( 11, 5, 254, 183, 0 ); //kimono wave
set_color_profile_slot( 11, 6, 218, 93, 0 ); //kimono bottom
set_color_profile_slot( 11, 7, 254, 183, 0 ); //kimono accents

// Genesis 8
set_color_profile_slot( 12, 0, 196, 33, 44 ); //fur
set_color_profile_slot( 12, 1, 247, 221, 217 ); //fur tip
set_color_profile_slot( 12, 2, 61, 55, 55 ); //hair
set_color_profile_slot( 12, 3, 247, 221, 217 ); //horns + accents
set_color_profile_slot( 12, 4, 115, 106, 106 ); //kimono top
set_color_profile_slot( 12, 5, 87, 78, 80 ); //kimono wave
set_color_profile_slot( 12, 6, 84, 60, 63 ); //kimono bottom
set_color_profile_slot( 12, 7, 41, 33, 41 ); //kimono accents

// R-00
set_color_profile_slot( 13, 0, 111, 103, 126 ); //fur
set_color_profile_slot( 13, 1, 62, 61, 92 ); //fur tip
set_color_profile_slot( 13, 2, 111, 103, 126 ); //hair
set_color_profile_slot( 13, 3, 254, 255, 0 ); //horns + accents
set_color_profile_slot( 13, 4, 111, 103, 126 ); //kimono top
set_color_profile_slot( 13, 5, 254, 255, 0 ); //kimono wave
set_color_profile_slot( 13, 6, 153, 142, 173 ); //kimono bottom
set_color_profile_slot( 13, 7, 204, 190, 232 ); //kimono accents

// Flake
set_color_profile_slot( 14, 0, 130, 86, 187 ); //fur
set_color_profile_slot( 14, 1, 238, 235, 194 ); //fur tip
set_color_profile_slot( 14, 2, 165, 205, 234 ); //hair
set_color_profile_slot( 14, 3, 255, 255, 255 ); //horns + accents
set_color_profile_slot( 14, 4, 92, 108, 166 ); //kimono top
set_color_profile_slot( 14, 5, 165, 205, 234 ); //kimono wave
set_color_profile_slot( 14, 6, 92, 108, 166 ); //kimono bottom
set_color_profile_slot( 14, 7, 165, 205, 234 ); //kimono accents

// Dazzling
set_color_profile_slot( 15, 0, 132, 81, 47 ); //fur
set_color_profile_slot( 15, 1, 212, 212, 212 ); //fur tip
set_color_profile_slot( 15, 2, 211, 31, 81 ); //hair
set_color_profile_slot( 15, 3, 26, 122, 62 ); //horns + accents
set_color_profile_slot( 15, 4, 199, 1, 18 ); //kimono top
set_color_profile_slot( 15, 5, 240, 242, 244 ); //kimono wave
set_color_profile_slot( 15, 6, 65, 54, 80 ); //kimono bottom
set_color_profile_slot( 15, 7, 240, 242, 244 ); //kimono accents

// Delphox
set_color_profile_slot( 16, 0, 96, 96, 96 ); //fur
set_color_profile_slot( 16, 1, 244, 247, 250 ); //fur tip
set_color_profile_slot( 16, 2, 221, 80, 46 ); //hair
set_color_profile_slot( 16, 3, 130, 93, 49 ); //horns + accents
set_color_profile_slot( 16, 4, 241, 223, 125 ); //kimono top
set_color_profile_slot( 16, 5, 244, 247, 250 ); //kimono wave
set_color_profile_slot( 16, 6, 169, 74, 56 ); //kimono bottom
set_color_profile_slot( 16, 7, 225, 138, 95 ); //kimono accents

// Zoroark
set_color_profile_slot( 17, 0, 88, 90, 103 ); //fur
set_color_profile_slot( 17, 1, 88, 90, 103 ); //fur tip
set_color_profile_slot( 17, 2, 191, 50, 52 ); //hair
set_color_profile_slot( 17, 3, 87, 217, 201 ); //horns + accents
set_color_profile_slot( 17, 4, 58, 53, 74 ); //kimono top
set_color_profile_slot( 17, 5, 87, 217, 201 ); //kimono wave
set_color_profile_slot( 17, 6, 88, 90, 103 ); //kimono bottom
set_color_profile_slot( 17, 7, 191, 50, 50 ); //kimono accents

// Drifblim
set_color_profile_slot( 18, 0, 127, 93, 143 ); //fur
set_color_profile_slot( 18, 1, 186, 163, 204 ); //fur tip
set_color_profile_slot( 18, 2, 233, 234, 245 ); //hair
set_color_profile_slot( 18, 3, 217, 80, 105 ); //horns + accents
set_color_profile_slot( 18, 4, 127, 93, 143 ); //kimono top
set_color_profile_slot( 18, 5, 217, 80, 105 ); //kimono wave
set_color_profile_slot( 18, 6, 155, 129, 179 ); //kimono bottom
set_color_profile_slot( 18, 7, 240, 189, 48 ); //kimono accents

// Maractus
set_color_profile_slot( 19, 0, 136, 200, 123 ); //fur
set_color_profile_slot( 19, 1, 59, 121, 119 ); //fur tip
set_color_profile_slot( 19, 2, 222, 144, 186 ); //hair
set_color_profile_slot( 19, 3, 243, 214, 75 ); //horns + accents
set_color_profile_slot( 19, 4, 133, 198, 120 ); //kimono top
set_color_profile_slot( 19, 5, 243, 214, 75 ); //kimono wave
set_color_profile_slot( 19, 6, 59, 120, 118 ); //kimono bottom
set_color_profile_slot( 19, 7, 243, 214, 75 ); //kimono accents

// Baiken
set_color_profile_slot( 20, 0, 216, 152, 104 ); //fur
set_color_profile_slot( 20, 1, 226, 192, 150 ); //fur tip
set_color_profile_slot( 20, 2, 243, 84, 96 ); //hair
set_color_profile_slot( 20, 3, 189, 157, 78 ); //horns + accents
set_color_profile_slot( 20, 4, 77, 43, 44 ); //kimono top
set_color_profile_slot( 20, 5, 209, 24, 58 ); //kimono wave
set_color_profile_slot( 20, 6, 250, 255, 232 ); //kimono bottom
set_color_profile_slot( 20, 7, 179, 6, 52 ); //kimono accents

// Ikazuchi
set_color_profile_slot( 21, 0, 236, 185, 154 ); //fur
set_color_profile_slot( 21, 1, 254, 249, 243 ); //fur tip
set_color_profile_slot( 21, 2, 84, 13, 35 ); //hair
set_color_profile_slot( 21, 3, 255, 255, 255 ); //horns + accents
set_color_profile_slot( 21, 4, 135, 181, 215 ); //kimono top
set_color_profile_slot( 21, 5, 209, 216, 234 ); //kimono wave
set_color_profile_slot( 21, 6, 237, 96, 97 ); //kimono bottom
set_color_profile_slot( 21, 7, 220, 238, 242 ); //kimono accents

// U-Sa
set_color_profile_slot( 22, 0, 54, 69, 101 ); //fur
set_color_profile_slot( 22, 1, 54, 69, 101 ); //fur tip
set_color_profile_slot( 22, 2, 54, 69, 101 ); //hair
set_color_profile_slot( 22, 3, 102, 200, 255 ); //horns + accents
set_color_profile_slot( 22, 4, 67, 58, 85 ); //kimono top
set_color_profile_slot( 22, 5, 172, 150, 218 ); //kimono wave
set_color_profile_slot( 22, 6, 85, 58, 80 ); //kimono bottom
set_color_profile_slot( 22, 7, 111, 91, 151 ); //kimono accents

// Unbackedcon
set_color_profile_slot( 23, 0, 77, 87, 159 ); //fur
set_color_profile_slot( 23, 1, 230, 230, 230 ); //fur tip
set_color_profile_slot( 23, 2, 229, 189, 29 ); //hair
set_color_profile_slot( 23, 3, 36, 194, 26 ); //horns + accents
set_color_profile_slot( 23, 4, 74, 74, 74 ); //kimono top
set_color_profile_slot( 23, 5, 41, 229, 30 ); //kimono wave
set_color_profile_slot( 23, 6, 51, 51, 51 ); //kimono bottom
set_color_profile_slot( 23, 7, 201, 201, 201 ); //kimono accents

// Raging Bagon
set_color_profile_slot( 24, 0, 54, 175, 255 ); //fur
set_color_profile_slot( 24, 1, 163, 211, 255 ); //fur tip
set_color_profile_slot( 24, 2, 195, 0, 255 ); //hair
set_color_profile_slot( 24, 3, 186, 52, 52 ); //horns + accents
set_color_profile_slot( 24, 4, 35, 126, 176 ); //kimono top
set_color_profile_slot( 24, 5, 0, 61, 122 ); //kimono wave
set_color_profile_slot( 24, 6, 191, 59, 59 ); //kimono bottom
set_color_profile_slot( 24, 7, 120, 29, 148 ); //kimono accents

// Mako
set_color_profile_slot( 25, 0, 246, 198, 191 ); //fur
set_color_profile_slot( 25, 1, 255, 245, 245 ); //fur tip
set_color_profile_slot( 25, 2, 153, 100, 77 ); //hair
set_color_profile_slot( 25, 3, 201, 151, 93 ); //horns + accents
set_color_profile_slot( 25, 4, 231, 239, 244 ); //kimono top
set_color_profile_slot( 25, 5, 227, 54, 71 ); //kimono wave
set_color_profile_slot( 25, 6, 238, 248, 254 ); //kimono bottom
set_color_profile_slot( 25, 7, 76, 132, 195 ); //kimono accents

// Baja
set_color_profile_slot( 26, 0, 224, 136, 79 ); //fur
set_color_profile_slot( 26, 1, 207, 168, 119 ); //fur tip
set_color_profile_slot( 26, 2, 114, 137, 160 ); //hair
set_color_profile_slot( 26, 3, 255, 228, 0 ); //horns + accents
set_color_profile_slot( 26, 4, 46, 33, 54 ); //kimono top
set_color_profile_slot( 26, 5, 187, 198, 208 ); //kimono wave
set_color_profile_slot( 26, 6, 95, 90, 175 ); //kimono bottom
set_color_profile_slot( 26, 7, 187, 198, 208 ); //kimono accents

// Zexiphi
set_color_profile_slot( 27, 0, 248, 249, 250 ); //fur
set_color_profile_slot( 27, 1, 248, 249, 250 ); //fur tip
set_color_profile_slot( 27, 2, 199, 14, 14 ); //hair
set_color_profile_slot( 27, 3, 240, 237, 237 ); //horns + accents
set_color_profile_slot( 27, 4, 235, 233, 223 ); //kimono top
set_color_profile_slot( 27, 5, 235, 233, 223 ); //kimono wave
set_color_profile_slot( 27, 6, 184, 44, 26 ); //kimono bottom
set_color_profile_slot( 27, 7, 184, 44, 26 ); //kimono accents

// Yuupi
set_color_profile_slot( 28, 0, 195, 194, 194 ); //fur
set_color_profile_slot( 28, 1, 234, 232, 229 ); //fur tip
set_color_profile_slot( 28, 2, 151, 140, 139 ); //hair
set_color_profile_slot( 28, 3, 81, 133, 178 ); //horns + accents
set_color_profile_slot( 28, 4, 234, 232, 229 ); //kimono top
set_color_profile_slot( 28, 5, 255, 241, 170 ); //kimono wave
set_color_profile_slot( 28, 6, 241, 113, 154 ); //kimono bottom
set_color_profile_slot( 28, 7, 255, 241, 170 ); //kimono accents

// Neo Wolf
set_color_profile_slot( 29, 0, 237, 243, 255 ); //fur
set_color_profile_slot( 29, 1, 245, 253, 255 ); //fur tip
set_color_profile_slot( 29, 2, 242, 246, 255 ); //hair
set_color_profile_slot( 29, 3, 238, 220, 0 ); //horns + accents
set_color_profile_slot( 29, 4, 21, 27, 41 ); //kimono top
set_color_profile_slot( 29, 5, 220, 241, 245 ); //kimono wave
set_color_profile_slot( 29, 6, 19, 27, 48 ); //kimono bottom
set_color_profile_slot( 29, 7, 224, 251, 255 ); //kimono accents

// Ouro Kronii
set_color_profile_slot( 30, 0, 29, 51, 139 ); //fur
set_color_profile_slot( 30, 1, 57, 57, 57 ); //fur tip
set_color_profile_slot( 30, 2, 73, 76, 113 ); //hair
set_color_profile_slot( 30, 3, 211, 168, 53 ); //horns + accents
set_color_profile_slot( 30, 4, 156, 154, 153 ); //kimono top
set_color_profile_slot( 30, 5, 230, 231, 240 ); //kimono wave
set_color_profile_slot( 30, 6, 37, 44, 128 ); //kimono bottom
set_color_profile_slot( 30, 7, 215, 216, 225 ); //kimono accents

//#endregion
        break;
        
        case 2: // Color Shift 2
        
//#region Extra 2 Colors

// Craum
set_color_profile_slot( 1, 0, 209, 237, 234 ); //fur
set_color_profile_slot( 1, 1, 91, 196, 222 ); //fur tip
set_color_profile_slot( 1, 2, 0, 77, 126 ); //hair
set_color_profile_slot( 1, 3, 240, 240, 204 ); //horns + accents
set_color_profile_slot( 1, 4, 237, 234, 192 ); //kimono top
set_color_profile_slot( 1, 5, 240, 232, 81 ); //kimono wave
set_color_profile_slot( 1, 6, 240, 232, 81 ); //kimono bottom
set_color_profile_slot( 1, 7, 240, 232, 81 ); //kimono accents

// Zaora
set_color_profile_slot( 2, 0, 126, 155, 87 ); //fur
set_color_profile_slot( 2, 1, 28, 26, 14 ); //fur tip
set_color_profile_slot( 2, 2, 249, 218, 127 ); //hair
set_color_profile_slot( 2, 3, 17, 35, 255 ); //horns + accents
set_color_profile_slot( 2, 4, 137, 63, 22 ); //kimono top
set_color_profile_slot( 2, 5, 62, 62, 98 ); //kimono wave
set_color_profile_slot( 2, 6, 255, 196, 115 ); //kimono bottom
set_color_profile_slot( 2, 7, 37, 114, 228 ); //kimono accents

// Nezuko
set_color_profile_slot( 3, 0, 232, 236, 231 ); //fur
set_color_profile_slot( 3, 1, 232, 236, 231 ); //fur tip
set_color_profile_slot( 3, 2, 57, 53, 50 ); //hair
set_color_profile_slot( 3, 3, 105, 211, 100 ); //horns + accents
set_color_profile_slot( 3, 4, 243, 183, 187 ); //kimono top
set_color_profile_slot( 3, 5, 254, 243, 240 ); //kimono wave
set_color_profile_slot( 3, 6, 243, 183, 187 ); //kimono bottom
set_color_profile_slot( 3, 7, 160, 49, 73 ); //kimono accents

// Kumaki
set_color_profile_slot( 4, 0, 254, 234, 226 ); //fur
set_color_profile_slot( 4, 1, 254, 234, 226 ); //fur tip
set_color_profile_slot( 4, 2, 252, 175, 164 ); //hair
set_color_profile_slot( 4, 3, 254, 80, 74 ); //horns + accents
set_color_profile_slot( 4, 4, 103, 95, 131 ); //kimono top
set_color_profile_slot( 4, 5, 234, 212, 228 ); //kimono wave
set_color_profile_slot( 4, 6, 117, 81, 88 ); //kimono bottom
set_color_profile_slot( 4, 7, 51, 51, 65 ); //kimono accents

// Ringtail
set_color_profile_slot( 5, 0, 214, 214, 214 ); //fur
set_color_profile_slot( 5, 1, 41, 43, 61 ); //fur tip
set_color_profile_slot( 5, 2, 135, 135, 135 ); //hair
set_color_profile_slot( 5, 3, 115, 87, 15 ); //horns + accents
set_color_profile_slot( 5, 4, 174, 43, 255 ); //kimono top
set_color_profile_slot( 5, 5, 255, 255, 255 ); //kimono wave
set_color_profile_slot( 5, 6, 187, 8, 196 ); //kimono bottom
set_color_profile_slot( 5, 7, 255, 255, 255 ); //kimono accents

// Keiki
set_color_profile_slot( 6, 0, 209, 166, 128 ); //fur
set_color_profile_slot( 6, 1, 246, 218, 188 ); //fur tip
set_color_profile_slot( 6, 2, 47, 171, 255 ); //hair
set_color_profile_slot( 6, 3, 131, 244, 40 ); //horns + accents
set_color_profile_slot( 6, 4, 38, 123, 122 ); //kimono top
set_color_profile_slot( 6, 5, 131, 240, 53 ); //kimono wave
set_color_profile_slot( 6, 6, 232, 215, 2 ); //kimono bottom
set_color_profile_slot( 6, 7, 222, 142, 4 ); //kimono accents

// Nakiri Ayame
set_color_profile_slot( 7, 0, 216, 81, 114 ); //fur
set_color_profile_slot( 7, 1, 247, 214, 210 ); //fur tip
set_color_profile_slot( 7, 2, 243, 237, 241 ); //hair
set_color_profile_slot( 7, 3, 234, 182, 188 ); //horns + accents
set_color_profile_slot( 7, 4, 39, 37, 50 ); //kimono top
set_color_profile_slot( 7, 5, 219, 199, 89 ); //kimono wave
set_color_profile_slot( 7, 6, 39, 37, 50 ); //kimono bottom
set_color_profile_slot( 7, 7, 181, 33, 49 ); //kimono accents

// Slime
set_color_profile_slot( 8, 0, 251, 139, 55 ); //fur
set_color_profile_slot( 8, 1, 251, 242, 236 ); //fur tip
set_color_profile_slot( 8, 2, 251, 139, 55 ); //hair
set_color_profile_slot( 8, 3, 71, 180, 73 ); //horns + accents
set_color_profile_slot( 8, 4, 71, 180, 73 ); //kimono top
set_color_profile_slot( 8, 5, 251, 139, 55 ); //kimono wave
set_color_profile_slot( 8, 6, 160, 225, 185 ); //kimono bottom
set_color_profile_slot( 8, 7, 71, 180, 73 ); //kimono accents

// Tak
set_color_profile_slot( 9, 0, 77, 77, 77 ); //fur
set_color_profile_slot( 9, 1, 252, 252, 255 ); //fur tip
set_color_profile_slot( 9, 2, 132, 79, 176 ); //hair
set_color_profile_slot( 9, 3, 252, 252, 255 ); //horns + accents
set_color_profile_slot( 9, 4, 230, 69, 69 ); //kimono top
set_color_profile_slot( 9, 5, 252, 252, 255 ); //kimono wave
set_color_profile_slot( 9, 6, 77, 77, 77 ); //kimono bottom
set_color_profile_slot( 9, 7, 252, 252, 255 ); //kimono accents

// Kiwi
set_color_profile_slot( 10, 0, 207, 106, 65 ); //fur
set_color_profile_slot( 10, 1, 244, 233, 222 ); //fur tip
set_color_profile_slot( 10, 2, 112, 33, 54 ); //hair
set_color_profile_slot( 10, 3, 171, 128, 170 ); //horns + accents
set_color_profile_slot( 10, 4, 207, 106, 65 ); //kimono top
set_color_profile_slot( 10, 5, 181, 50, 43 ); //kimono wave
set_color_profile_slot( 10, 6, 244, 233, 222 ); //kimono bottom
set_color_profile_slot( 10, 7, 163, 149, 188 ); //kimono accents

// Golden Dragon
set_color_profile_slot( 11, 0, 222, 186, 112 ); //fur
set_color_profile_slot( 11, 1, 237, 214, 172 ); //fur tip
set_color_profile_slot( 11, 2, 214, 106, 81 ); //hair
set_color_profile_slot( 11, 3, 185, 161, 235 ); //horns + accents
set_color_profile_slot( 11, 4, 167, 191, 151 ); //kimono top
set_color_profile_slot( 11, 5, 51, 45, 12 ); //kimono wave
set_color_profile_slot( 11, 6, 115, 145, 94 ); //kimono bottom
set_color_profile_slot( 11, 7, 227, 201, 116 ); //kimono accents

// Pure Furies
set_color_profile_slot( 12, 0, 199, 113, 181 ); //fur
set_color_profile_slot( 12, 1, 224, 182, 182 ); //fur tip
set_color_profile_slot( 12, 2, 255, 157, 28 ); //hair
set_color_profile_slot( 12, 3, 189, 24, 24 ); //horns + accents
set_color_profile_slot( 12, 4, 163, 11, 11 ); //kimono top
set_color_profile_slot( 12, 5, 255, 245, 107 ); //kimono wave
set_color_profile_slot( 12, 6, 59, 59, 59 ); //kimono bottom
set_color_profile_slot( 12, 7, 230, 217, 36 ); //kimono accents

// Rushing Rei
set_color_profile_slot( 13, 0, 81, 199, 145 ); //fur
set_color_profile_slot( 13, 1, 79, 74, 74 ); //fur tip
set_color_profile_slot( 13, 2, 165, 107, 47 ); //hair
set_color_profile_slot( 13, 3, 226, 87, 70 ); //horns + accents
set_color_profile_slot( 13, 4, 234, 230, 215 ); //kimono top
set_color_profile_slot( 13, 5, 165, 107, 47 ); //kimono wave
set_color_profile_slot( 13, 6, 72, 79, 81 ); //kimono bottom
set_color_profile_slot( 13, 7, 57, 145, 106 ); //kimono accents

// Lilac (Freedom Planet 2)
set_color_profile_slot( 14, 0, 224, 209, 255 ); //fur
set_color_profile_slot( 14, 1, 238, 227, 255 ); //fur tip
set_color_profile_slot( 14, 2, 140, 81, 214 ); //hair
set_color_profile_slot( 14, 3, 184, 15, 49 ); //horns + accents
set_color_profile_slot( 14, 4, 230, 243, 255 ); //kimono top
set_color_profile_slot( 14, 5, 217, 62, 62 ); //kimono wave
set_color_profile_slot( 14, 6, 30, 125, 227 ); //kimono bottom
set_color_profile_slot( 14, 7, 255, 215, 87 ); //kimono accents

// Bloody roar
set_color_profile_slot( 15, 0, 132, 89, 75 ); //fur
set_color_profile_slot( 15, 1, 172, 143, 121 ); //fur tip
set_color_profile_slot( 15, 2, 179, 120, 102 ); //hair
set_color_profile_slot( 15, 3, 229, 98, 0 ); //horns + accents
set_color_profile_slot( 15, 4, 87, 87, 87 ); //kimono top
set_color_profile_slot( 15, 5, 255, 255, 255 ); //kimono wave
set_color_profile_slot( 15, 6, 53, 52, 52 ); //kimono bottom
set_color_profile_slot( 15, 7, 166, 23, 23 ); //kimono accents

// Vaporwave
set_color_profile_slot( 16, 0, 252, 46, 144 ); //fur
set_color_profile_slot( 16, 1, 232, 195, 195 ); //fur tip
set_color_profile_slot( 16, 2, 253, 193, 69 ); //hair
set_color_profile_slot( 16, 3, 26, 103, 185 ); //horns + accents
set_color_profile_slot( 16, 4, 38, 38, 38 ); //kimono top
set_color_profile_slot( 16, 5, 26, 103, 185 ); //kimono wave
set_color_profile_slot( 16, 6, 38, 38, 38 ); //kimono bottom
set_color_profile_slot( 16, 7, 26, 103, 185 ); //kimono accents

// Mint
set_color_profile_slot( 17, 0, 158, 255, 214 ); //fur
set_color_profile_slot( 17, 1, 255, 255, 255 ); //fur tip
set_color_profile_slot( 17, 2, 40, 41, 59 ); //hair
set_color_profile_slot( 17, 3, 183, 73, 230 ); //horns + accents
set_color_profile_slot( 17, 4, 252, 254, 255 ); //kimono top
set_color_profile_slot( 17, 5, 138, 255, 205 ); //kimono wave
set_color_profile_slot( 17, 6, 235, 255, 253 ); //kimono bottom
set_color_profile_slot( 17, 7, 36, 37, 61 ); //kimono accents

// Astra
set_color_profile_slot( 18, 0, 213, 199, 242 ); //fur
set_color_profile_slot( 18, 1, 252, 244, 198 ); //fur tip
set_color_profile_slot( 18, 2, 100, 100, 139 ); //hair
set_color_profile_slot( 18, 3, 240, 188, 84 ); //horns + accents
set_color_profile_slot( 18, 4, 175, 207, 249 ); //kimono top
set_color_profile_slot( 18, 5, 134, 228, 230 ); //kimono wave
set_color_profile_slot( 18, 6, 127, 148, 217 ); //kimono bottom
set_color_profile_slot( 18, 7, 255, 234, 115 ); //kimono accents

// Daora the Explora
set_color_profile_slot( 19, 0, 255, 173, 153 ); //fur
set_color_profile_slot( 19, 1, 255, 179, 153 ); //fur tip
set_color_profile_slot( 19, 2, 105, 71, 49 ); //hair
set_color_profile_slot( 19, 3, 153, 106, 72 ); //horns + accents
set_color_profile_slot( 19, 4, 255, 145, 200 ); //kimono top
set_color_profile_slot( 19, 5, 230, 230, 230 ); //kimono wave
set_color_profile_slot( 19, 6, 255, 149, 0 ); //kimono bottom
set_color_profile_slot( 19, 7, 195, 128, 255 ); //kimono accents

// Whisper
set_color_profile_slot( 20, 0, 219, 187, 81 ); //fur
set_color_profile_slot( 20, 1, 161, 112, 87 ); //fur tip
set_color_profile_slot( 20, 2, 242, 242, 242 ); //hair
set_color_profile_slot( 20, 3, 41, 230, 223 ); //horns + accents
set_color_profile_slot( 20, 4, 212, 204, 157 ); //kimono top
set_color_profile_slot( 20, 5, 87, 87, 87 ); //kimono wave
set_color_profile_slot( 20, 6, 87, 87, 87 ); //kimono bottom
set_color_profile_slot( 20, 7, 41, 230, 223 ); //kimono accents

// Flower Of Iron
set_color_profile_slot( 21, 0, 112, 0, 0 ); //fur
set_color_profile_slot( 21, 1, 105, 64, 29 ); //fur tip
set_color_profile_slot( 21, 2, 77, 41, 0 ); //hair
set_color_profile_slot( 21, 3, 145, 109, 0 ); //horns + accents
set_color_profile_slot( 21, 4, 128, 0, 0 ); //kimono top
set_color_profile_slot( 21, 5, 204, 178, 0 ); //kimono wave
set_color_profile_slot( 21, 6, 82, 0, 0 ); //kimono bottom
set_color_profile_slot( 21, 7, 255, 94, 0 ); //kimono accents

// Broken Moon (Suika)
set_color_profile_slot( 22, 0, 176, 30, 30 ); //fur
set_color_profile_slot( 22, 1, 201, 96, 117 ); //fur tip
set_color_profile_slot( 22, 2, 255, 152, 48 ); //hair
set_color_profile_slot( 22, 3, 227, 193, 39 ); //horns + accents
set_color_profile_slot( 22, 4, 240, 240, 240 ); //kimono top
set_color_profile_slot( 22, 5, 252, 30, 38 ); //kimono wave
set_color_profile_slot( 22, 6, 58, 24, 161 ); //kimono bottom
set_color_profile_slot( 22, 7, 212, 38, 38 ); //kimono accents

// Incredible Strength
set_color_profile_slot( 23, 0, 95, 198, 129 ); //fur
set_color_profile_slot( 23, 1, 221, 222, 188 ); //fur tip
set_color_profile_slot( 23, 2, 48, 100, 65 ); //hair
set_color_profile_slot( 23, 3, 196, 99, 203 ); //horns + accents
set_color_profile_slot( 23, 4, 146, 236, 149 ); //kimono top
set_color_profile_slot( 23, 5, 41, 36, 81 ); //kimono wave
set_color_profile_slot( 23, 6, 58, 176, 87 ); //kimono bottom
set_color_profile_slot( 23, 7, 136, 44, 176 ); //kimono accents


//#endregion
    }
    
// Looping function to assign article colors using this
    for(var shade_slot = 0;shade_slot < 8;shade_slot++){
        var col_R = get_color_profile_slot_r( last_frame_color_alt, shade_slot);
        var col_G = get_color_profile_slot_g( last_frame_color_alt, shade_slot);
        var col_B = get_color_profile_slot_b( last_frame_color_alt, shade_slot);
        set_article_color_slot( shade_slot, col_R, col_G, col_B );
        set_character_color_slot( shade_slot, col_R, col_G, col_B );
    }

manual_init_shader_call = false;
}