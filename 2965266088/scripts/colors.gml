var alt_cur = 0; // DEFAULT COLOR

// darkness
set_color_profile_slot( 0, 0, 55, 24, 123 );
set_color_profile_slot_range( 0, 1, 9, 34 );

// darkness 2
set_color_profile_slot( 0, 1, 178, 45, 212 );
set_color_profile_slot_range( 1, 1, 12, 18 );

// hair
set_color_profile_slot( 0, 2, 200, 151, 83 );
set_color_profile_slot_range( 2, 9, 9, 18 );

// skin
set_color_profile_slot( 0, 3, 225, 172, 143 );
set_color_profile_slot_range( 3, 12, 16, 16 );

// black
set_color_profile_slot( 0, 4, 32, 29, 43 );
set_color_profile_slot_range( 4, 7, 5, 9 );

// white
set_color_profile_slot( 0, 5, 206, 206, 227 );
//set_color_profile_slot_range( 5, 1, 7, 14 ); //CHANGE IN INIT_SHADER.GML

// red
set_color_profile_slot( 0, 6, 172, 16, 3 );
set_color_profile_slot_range( 6, 3, 6, 23 );


// ALTERNATE COLORS

alt_cur ++; // cirno
set_color_profile_slot( alt_cur, 0, 186, 238, 245 ); //darkness
set_color_profile_slot( alt_cur, 1, 77, 176, 242 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 75, 173, 214 ); //hair
set_color_profile_slot( alt_cur, 3, 225, 188, 169 ); //skin
set_color_profile_slot( alt_cur, 4, 46, 82, 212 ); //black
set_color_profile_slot( alt_cur, 5, 214, 227, 230 ); //white
set_color_profile_slot( alt_cur, 6, 196, 20, 0 ); //red

alt_cur ++; // meiling
set_color_profile_slot( alt_cur, 0, 0, 0, 0 ); //darkness
set_color_profile_slot( alt_cur, 1, 46, 150, 72 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 191, 52, 36 ); //hair
set_color_profile_slot( alt_cur, 3, 240, 203, 161 ); //skin
set_color_profile_slot( alt_cur, 4, 43, 143, 0 ); //black
set_color_profile_slot( alt_cur, 5, 214, 230, 219 ); //white
set_color_profile_slot( alt_cur, 6, 201, 165, 64 ); //red

alt_cur ++; // patchouli
set_color_profile_slot( alt_cur, 0, 201, 58, 48 ); //darkness
set_color_profile_slot( alt_cur, 1, 73, 88, 191 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 124, 76, 166 ); //hair
set_color_profile_slot( alt_cur, 3, 235, 214, 179 ); //skin
set_color_profile_slot( alt_cur, 4, 212, 195, 230 ); //black
set_color_profile_slot( alt_cur, 5, 224, 157, 206 ); //white
set_color_profile_slot( alt_cur, 6, 75, 37, 143 ); //red

alt_cur ++; // sakuya
set_color_profile_slot( alt_cur, 0, 179, 16, 49 ); //darkness
set_color_profile_slot( alt_cur, 1, 237, 71, 21 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 168, 181, 189 ); //hair
set_color_profile_slot( alt_cur, 3, 225, 188, 169 ); //skin
set_color_profile_slot( alt_cur, 4, 23, 47, 140 ); //black
set_color_profile_slot( alt_cur, 5, 195, 206, 224 ); //white
set_color_profile_slot( alt_cur, 6, 57, 158, 6 ); //red

alt_cur ++; // remilia
set_color_profile_slot( alt_cur, 0, 133, 3, 3 ); //darkness
set_color_profile_slot( alt_cur, 1, 33, 5, 5 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 105, 115, 181 ); //hair
set_color_profile_slot( alt_cur, 3, 247, 224, 185 ); //skin
set_color_profile_slot( alt_cur, 4, 227, 206, 221 ); //black
set_color_profile_slot( alt_cur, 5, 209, 163, 195 ); //white
set_color_profile_slot( alt_cur, 6, 224, 0, 60 ); //red

alt_cur ++; // flandre
set_color_profile_slot( alt_cur, 0, 153, 24, 43 ); //darkness
set_color_profile_slot( alt_cur, 1, 0, 0, 0 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 232, 189, 72 ); //hair
set_color_profile_slot( alt_cur, 3, 247, 224, 185 ); //skin
set_color_profile_slot( alt_cur, 4, 176, 26, 10 ); //black
set_color_profile_slot( alt_cur, 5, 227, 206, 221 ); //white
set_color_profile_slot( alt_cur, 6, 224, 27, 20 ); //red

alt_cur ++; // reimu
set_color_profile_slot( alt_cur, 0, 31, 31, 31 ); //darkness
set_color_profile_slot( alt_cur, 1, 184, 184, 184 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 26, 22, 28 ); //hair
set_color_profile_slot( alt_cur, 3, 225, 172, 143 ); //skin
set_color_profile_slot( alt_cur, 4, 199, 0, 0 ); //black
set_color_profile_slot( alt_cur, 5, 206, 206, 227 ); //white
set_color_profile_slot( alt_cur, 6, 199, 0, 0 ); //red

alt_cur ++; // marisa
set_color_profile_slot( alt_cur, 0, 0, 0, 0 ); //darkness
set_color_profile_slot( alt_cur, 1, 0, 0, 0 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 217, 173, 72 ); //hair
set_color_profile_slot( alt_cur, 3, 225, 172, 143 ); //skin
set_color_profile_slot( alt_cur, 4, 31, 28, 21 ); //black
set_color_profile_slot( alt_cur, 5, 199, 207, 199 ); //white
set_color_profile_slot( alt_cur, 6, 31, 28, 21 ); //red

alt_cur ++; // cream the rabbit
set_color_profile_slot( alt_cur, 0, 255, 214, 143 ); //darkness
set_color_profile_slot( alt_cur, 1, 227, 151, 70 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 235, 182, 120 ); //hair
set_color_profile_slot( alt_cur, 3, 245, 214, 181 ); //skin
set_color_profile_slot( alt_cur, 4, 224, 104, 29 ); //black
set_color_profile_slot( alt_cur, 5, 224, 183, 70 ); //white
set_color_profile_slot( alt_cur, 6, 87, 137, 230 ); //red

alt_cur ++; // chara
set_color_profile_slot( alt_cur, 0, 150, 0, 0 ); //darkness
set_color_profile_slot( alt_cur, 1, 60, 0, 0 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 99, 27, 16 ); //hair
set_color_profile_slot( alt_cur, 3, 242, 195, 143 ); //skin
set_color_profile_slot( alt_cur, 4, 6, 179, 9 ); //black
set_color_profile_slot( alt_cur, 5, 224, 175, 59 ); //white
set_color_profile_slot( alt_cur, 6, 189, 25, 0 ); //red

alt_cur ++; // lancer/chaos king
set_color_profile_slot( alt_cur, 0, 17, 245, 245 ); //darkness
set_color_profile_slot( alt_cur, 1, 0, 78, 179 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 66, 120, 201 ); //hair
set_color_profile_slot( alt_cur, 3, 208, 224, 224 ); //skin
set_color_profile_slot( alt_cur, 4, 62, 99, 189 ); //black
set_color_profile_slot( alt_cur, 5, 24, 24, 36 ); //white
set_color_profile_slot( alt_cur, 6, 24, 24, 36 ); //red

alt_cur ++; // laby
set_color_profile_slot( alt_cur, 0, 237, 69, 211 ); //darkness
set_color_profile_slot( alt_cur, 1, 52, 27, 143 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 227, 163, 192 ); //hair
set_color_profile_slot( alt_cur, 3, 240, 207, 168 ); //skin
set_color_profile_slot( alt_cur, 4, 237, 218, 231 ); //black
set_color_profile_slot( alt_cur, 5, 227, 138, 204 ); //white
set_color_profile_slot( alt_cur, 6, 23, 39, 112 ); //red

alt_cur ++; // ABYSS
set_color_profile_slot( alt_cur, 0, 154, 82, 199 ); //darkness
set_color_profile_slot( alt_cur, 1, 227, 98, 221 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 59, 34, 87 ); //hair
set_color_profile_slot( alt_cur, 3, 140, 135, 194 ); //skin
set_color_profile_slot( alt_cur, 4, 34, 40, 59 ); //black
set_color_profile_slot( alt_cur, 5, 90, 86, 191 ); //white
set_color_profile_slot( alt_cur, 6, 187, 92, 232 ); //red

alt_cur ++; // GAMEBOY
set_color_profile_slot( alt_cur, 0, 83, 122, 62 ); //darkness
set_color_profile_slot( alt_cur, 1, 167, 186, 74 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 167, 186, 74 ); //hair
set_color_profile_slot( alt_cur, 3, 211, 226, 154 ); //skin
set_color_profile_slot( alt_cur, 4, 83, 122, 62 ); //black
set_color_profile_slot( alt_cur, 5, 211, 226, 154 ); //white
set_color_profile_slot( alt_cur, 6, 167, 186, 74 ); //red

alt_cur ++; // PREMIUM
set_color_profile_slot( alt_cur, 0, 106, 204, 116 ); //darkness
set_color_profile_slot( alt_cur, 1, 204, 198, 149 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 81, 96, 128 ); //hair
set_color_profile_slot( alt_cur, 3, 88, 100, 102 ); //skin
set_color_profile_slot( alt_cur, 4, 145, 163, 194 ); //black
set_color_profile_slot( alt_cur, 5, 24, 27, 33 ); //white
set_color_profile_slot( alt_cur, 6, 133, 222, 165 ); //red

alt_cur ++; // SEASONALS
switch(get_match_setting(SET_SEASON))
{
    case 1: //v-day
        set_color_profile_slot( alt_cur, 0, 148, 19, 87 ); //darkness
        set_color_profile_slot( alt_cur, 1, 255, 153, 222 ); //darkness 2
        set_color_profile_slot( alt_cur, 2, 209, 88, 108 ); //hair
        set_color_profile_slot( alt_cur, 3, 240, 200, 167 ); //skin
        set_color_profile_slot( alt_cur, 4, 201, 110, 158 ); //black
        set_color_profile_slot( alt_cur, 5, 232, 209, 232 ); //white
        set_color_profile_slot( alt_cur, 6, 194, 15, 96 ); //red
        break;
    case 2: //summer
        set_color_profile_slot( alt_cur, 0, 255, 153, 0 ); //darkness
        set_color_profile_slot( alt_cur, 1, 255, 224, 112 ); //darkness 2
        set_color_profile_slot( alt_cur, 2, 247, 203, 84 ); //hair
        set_color_profile_slot( alt_cur, 3, 230, 150, 108 ); //skin
        set_color_profile_slot( alt_cur, 4, 69, 190, 217 ); //black
        set_color_profile_slot( alt_cur, 5, 227, 135, 37 ); //white
        set_color_profile_slot( alt_cur, 6, 204, 40, 0 ); //red
        break;
    case 3: //halloween ("koakuma" - lostword halloween outfit)
        set_color_profile_slot( alt_cur, 0, 64, 19, 27 ); //darkness
        set_color_profile_slot( alt_cur, 1, 227, 64, 0 ); //darkness 2
        set_color_profile_slot( alt_cur, 2, 199, 40, 67 ); //hair
        set_color_profile_slot( alt_cur, 3, 224, 184, 161 ); //skin
        set_color_profile_slot( alt_cur, 4, 56, 42, 36 ); //black
        set_color_profile_slot( alt_cur, 5, 230, 216, 221 ); //white
        set_color_profile_slot( alt_cur, 6, 3, 2, 2 ); //red
        break;
    case 4: //x-mas
        set_color_profile_slot( alt_cur, 0, 236, 237, 237 ); //darkness
        set_color_profile_slot( alt_cur, 1, 143, 232, 242 ); //darkness 2
        set_color_profile_slot( alt_cur, 2, 202, 237, 240 ); //hair
        set_color_profile_slot( alt_cur, 3, 240, 220, 190 ); //skin
        set_color_profile_slot( alt_cur, 4, 203, 30, 0 ); //black
        set_color_profile_slot( alt_cur, 5, 30, 187, 0 ); //white
        set_color_profile_slot( alt_cur, 6, 99, 31, 14 ); //red
        break;
}

alt_cur ++; // infamous
set_color_profile_slot( alt_cur, 0, 212, 80, 222 ); //darkness
set_color_profile_slot( alt_cur, 1, 0, 201, 131 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 59, 212, 167 ); //hair
set_color_profile_slot( alt_cur, 3, 123, 201, 237 ); //skin
set_color_profile_slot( alt_cur, 4, 47, 49, 138 ); //black
set_color_profile_slot( alt_cur, 5, 189, 88, 224 ); //white
set_color_profile_slot( alt_cur, 6, 0, 201, 131 ); //red

alt_cur ++; // gold rank
set_color_profile_slot( alt_cur, 0, 255, 222, 97 ); //darkness
set_color_profile_slot( alt_cur, 1, 219, 154, 25 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 240, 201, 88 ); //hair
set_color_profile_slot( alt_cur, 3, 247, 206, 168 ); //skin
set_color_profile_slot( alt_cur, 4, 222, 216, 206 ); //black
set_color_profile_slot( alt_cur, 5, 224, 149, 61 ); //white
set_color_profile_slot( alt_cur, 6, 151, 179, 174 ); //red

alt_cur ++; // may + GG strive announcer
set_color_profile_slot( alt_cur, 0, 93, 164, 227 ); //darkness
set_color_profile_slot( alt_cur, 1, 93, 164, 227 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 87, 48, 28 ); //hair
set_color_profile_slot( alt_cur, 3, 224, 171, 146 ); //skin
set_color_profile_slot( alt_cur, 4, 214, 94, 19 ); //black
set_color_profile_slot( alt_cur, 5, 235, 151, 94 ); //white
set_color_profile_slot( alt_cur, 6, 214, 94, 19 ); //red

alt_cur ++; // dark matter
set_color_profile_slot( alt_cur, 0, 17, 7, 115 ); //darkness
set_color_profile_slot( alt_cur, 1, 73, 47, 150 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 31, 31, 64 ); //hair
set_color_profile_slot( alt_cur, 3, 105, 95, 140 ); //skin
set_color_profile_slot( alt_cur, 4, 32, 29, 43 ); //black
set_color_profile_slot( alt_cur, 5, 32, 29, 43 ); //white
set_color_profile_slot( alt_cur, 6, 219, 91, 0 ); //red

alt_cur ++; // ganondorf
set_color_profile_slot( alt_cur, 0, 112, 3, 83 ); //darkness
set_color_profile_slot( alt_cur, 1, 230, 184, 220 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 179, 16, 14 ); //hair
set_color_profile_slot( alt_cur, 3, 138, 113, 51 ); //skin
set_color_profile_slot( alt_cur, 4, 122, 75, 23 ); //black
set_color_profile_slot( alt_cur, 5, 30, 55, 71 ); //white
set_color_profile_slot( alt_cur, 6, 189, 118, 0 ); //red

alt_cur ++; // paimon
set_color_profile_slot( alt_cur, 0, 0, 29, 117 ); //darkness
set_color_profile_slot( alt_cur, 1, 69, 48, 191 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 220, 219, 222 ); //hair
set_color_profile_slot( alt_cur, 3, 222, 197, 162 ); //skin
set_color_profile_slot( alt_cur, 4, 220, 219, 222 ); //black
set_color_profile_slot( alt_cur, 5, 224, 164, 85 ); //white
set_color_profile_slot( alt_cur, 6, 0, 33, 71 ); //red

alt_cur ++; // Skyp Cooper - Splatracer
set_color_profile_slot( alt_cur, 0, 31, 98, 41 ); //darkness
set_color_profile_slot( alt_cur, 1, 59, 255, 115 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 156, 156, 156 ); //hair
set_color_profile_slot( alt_cur, 3, 225, 172, 143 ); //skin
set_color_profile_slot( alt_cur, 4, 61, 90, 71 ); //black
set_color_profile_slot( alt_cur, 5, 158, 34, 32 ); //white
set_color_profile_slot( alt_cur, 6, 31, 98, 41 ); //red

alt_cur ++; // bar reygard
set_color_profile_slot( alt_cur, 0, 42, 96, 225 ); //darkness
set_color_profile_slot( alt_cur, 1, 115, 211, 255 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 204, 108, 59 ); //hair
set_color_profile_slot( alt_cur, 3, 240, 180, 154 ); //skin
set_color_profile_slot( alt_cur, 4, 39, 51, 176 ); //black
set_color_profile_slot( alt_cur, 5, 213, 217, 222 ); //white
set_color_profile_slot( alt_cur, 6, 66, 39, 9 ); //red

alt_cur ++; // keqing
set_color_profile_slot( alt_cur, 0, 198, 74, 240 ); //darkness
set_color_profile_slot( alt_cur, 1, 247, 141, 228 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 170, 124, 191 ); //hair
set_color_profile_slot( alt_cur, 3, 235, 212, 169 ); //skin
set_color_profile_slot( alt_cur, 4, 109, 49, 176 ); //black
set_color_profile_slot( alt_cur, 5, 161, 191, 224 ); //white
set_color_profile_slot( alt_cur, 6, 62, 35, 105 ); //red

alt_cur ++; // hud color (uses default as a base)
set_color_profile_slot( alt_cur, 0, 55, 24, 123 ); //darkness
set_color_profile_slot( alt_cur, 1, 178, 45, 212 ); //darkness 2
set_color_profile_slot( alt_cur, 2, 200, 151, 83 ); //hair
set_color_profile_slot( alt_cur, 3, 225, 172, 143 ); //skin
set_color_profile_slot( alt_cur, 4, 32, 29, 43 ); //black
set_color_profile_slot( alt_cur, 5, 206, 206, 227 ); //white
set_color_profile_slot( alt_cur, 6, 172, 16, 3 ); //red


set_num_palettes(alt_cur + 1);


/* This is a comment used by that one RoA colors.gml generator tool to store palette data. You can safely keep it in your colors.gml if you plan to re-use the tool later, or safely remove it if you don't.
=== BEGIN JSON PALETTE ===
{"formatversion":1,"data":[{"name":"darkness","colors":[{"r":95,"g":44,"b":206},{"r":55,"g":24,"b":123,"main":true},{"r":16,"g":5,"b":40}]},{"name":"darkness 2","colors":[{"r":220,"g":81,"b":255},{"r":178,"g":45,"b":212,"main":true}]},{"name":"hair","colors":[{"r":234,"g":201,"b":115},{"r":200,"g":151,"b":83,"main":true},{"r":155,"g":97,"b":51}]},{"name":"skin","colors":[{"r":242,"g":218,"b":190},{"r":225,"g":172,"b":143,"main":true},{"r":186,"g":131,"b":111}]},{"name":"black","colors":[{"r":50,"g":45,"b":63},{"r":32,"g":29,"b":43,"main":true},{"r":18,"g":17,"b":26}]},{"name":"white","colors":[{"r":242,"g":242,"b":249},{"r":206,"g":206,"b":227,"main":true},{"r":168,"g":168,"b":195}]},{"name":"red","colors":[{"r":226,"g":40,"b":16},{"r":172,"g":16,"b":3,"main":true}]}]}
=== END JSON PALETTE ===
*/
