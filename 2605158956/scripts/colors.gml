// DEFAULT COLOR

// Skin
set_color_profile_slot( 0, 0, 243, 204, 165 );
set_color_profile_slot_range( 0, 6, 19, 8 );

// Cheeks
set_color_profile_slot( 0, 1, 242, 148, 159 );
set_color_profile_slot_range( 1, 1, 1, 1 );

// Leaf1
set_color_profile_slot( 0, 2, 113, 171, 51 );
set_color_profile_slot_range( 2, 15, 5, 13 );

// Leaf2
set_color_profile_slot( 0, 3, 57, 122, 68 );
set_color_profile_slot_range( 3, 26, 18, 13 );

// Sword
set_color_profile_slot( 0, 4, 122, 68, 74 );
set_color_profile_slot_range( 4, 14, 5, 16 );


// ALTERNATE COLORS
set_num_palettes( 28 );

// Blueberry
set_color_profile_slot( 1, 0, 64, 131, 207 ); //Skin
set_color_profile_slot( 1, 1, 27, 74, 156 ); //Cheeks
set_color_profile_slot( 1, 2, 65, 87, 171 ); //Leaf1
set_color_profile_slot( 1, 3, 33, 56, 148 ); //Leaf2
set_color_profile_slot( 1, 4, 56, 138, 45 ); //Sword

// Beet
set_color_profile_slot( 2, 0, 255, 89, 38 ); //Skin
set_color_profile_slot( 2, 1, 173, 0, 0 ); //Cheeks
set_color_profile_slot( 2, 2, 232, 215, 58 ); //Leaf1
set_color_profile_slot( 2, 3, 171, 158, 53 ); //Leaf2
set_color_profile_slot( 2, 4, 148, 148, 148 ); //Sword

// Melon
set_color_profile_slot( 3, 0, 68, 181, 68 ); //Skin
set_color_profile_slot( 3, 1, 232, 218, 64 ); //Cheeks
set_color_profile_slot( 3, 2, 176, 245, 110 ); //Leaf1
set_color_profile_slot( 3, 3, 144, 232, 61 ); //Leaf2
set_color_profile_slot( 3, 4, 209, 208, 71 ); //Sword

// Blackberry
set_color_profile_slot( 4, 0, 127, 126, 128 ); //Skin
set_color_profile_slot( 4, 1, 87, 87, 87 ); //Cheeks
set_color_profile_slot( 4, 2, 120, 85, 54 ); //Leaf1
set_color_profile_slot( 4, 3, 91, 179, 56 ); //Leaf2
set_color_profile_slot( 4, 4, 84, 68, 62 ); //Sword

// Lemon
set_color_profile_slot( 5, 0, 255, 224, 122 ); //Skin
set_color_profile_slot( 5, 1, 194, 151, 83 ); //Cheeks
set_color_profile_slot( 5, 2, 140, 184, 119 ); //Leaf1
set_color_profile_slot( 5, 3, 138, 168, 106 ); //Leaf2
set_color_profile_slot( 5, 4, 97, 73, 53 ); //Sword

// Gameboy
set_color_profile_slot( 6, 0, 211, 226, 154 ); //Skin
set_color_profile_slot( 6, 1, 167, 186, 74 ); //Cheeks
set_color_profile_slot( 6, 2, 167, 186, 74 ); //Leaf1
set_color_profile_slot( 6, 3, 83, 122, 62 ); //Leaf2
set_color_profile_slot( 6, 4, 83, 122, 62 ); //Sword

// Abyss
set_color_profile_slot( 7, 0, 122, 87, 120 ); //Skin
set_color_profile_slot( 7, 1, 137, 109, 171 ); //Cheeks
set_color_profile_slot( 7, 2, 153, 108, 207 ); //Leaf1
set_color_profile_slot( 7, 3, 125, 46, 143 ); //Leaf2
set_color_profile_slot( 7, 4, 56, 41, 102 ); //Sword

// Seasonal
switch (get_match_setting(SET_SEASON)) {
  case 1: // valentines
    set_color_profile_slot( 8, 0, 255, 191, 228 ); //Skin
    set_color_profile_slot( 8, 1, 242, 136, 159 ); //Cheeks
    set_color_profile_slot( 8, 2, 255, 56, 148 ); //Leaf1
    set_color_profile_slot( 8, 3, 255, 255, 255 ); //Leaf2
    set_color_profile_slot( 8, 4, 173, 0, 0 ); //Sword
    break;
  case 2: // summer
    set_color_profile_slot( 8, 0, 255, 220, 145 ); //Skin
    set_color_profile_slot( 8, 1, 242, 144, 53 ); //Cheeks
    set_color_profile_slot( 8, 2, 82, 226, 255 ); //Leaf1
    set_color_profile_slot( 8, 3, 29, 153, 128 ); //Leaf2
    set_color_profile_slot( 8, 4, 240, 151, 98 ); //Sword
    break;
  case 3: // halloween
    set_color_profile_slot( 8, 0, 219, 128, 48 ); //Skin
    set_color_profile_slot( 8, 1, 255, 255, 0 ); //Cheeks
    set_color_profile_slot( 8, 2, 101, 50, 117 ); //Leaf1
    set_color_profile_slot( 8, 3, 23, 105, 14 ); //Leaf2
    set_color_profile_slot( 8, 4, 145, 201, 64 ); //Sword
    break;
  case 4: // christmas
    set_color_profile_slot( 8, 0, 254, 255, 252 ); //Skin
    set_color_profile_slot( 8, 1, 242, 162, 162 ); //Cheeks
    set_color_profile_slot( 8, 2, 59, 110, 48 ); //Leaf1
    set_color_profile_slot( 8, 3, 166, 0, 44 ); //Leaf2
    set_color_profile_slot( 8, 4, 224, 191, 56 ); //Sword
    break;
}

// Infamous
set_color_profile_slot( 9, 0, 162, 235, 242 ); //Skin
set_color_profile_slot( 9, 1, 0, 242, 116 ); //Cheeks
set_color_profile_slot( 9, 2, 255, 117, 248 ); //Leaf1
set_color_profile_slot( 9, 3, 91, 38, 105 ); //Leaf2
set_color_profile_slot( 9, 4, 48, 48, 48 ); //Sword

// Onion
set_color_profile_slot( 10, 0, 240, 180, 86 ); //Skin
set_color_profile_slot( 10, 1, 194, 125, 46 ); //Cheeks
set_color_profile_slot( 10, 2, 113, 212, 89 ); //Leaf1
set_color_profile_slot( 10, 3, 57, 166, 30 ); //Leaf2
set_color_profile_slot( 10, 4, 145, 145, 145 ); //Sword

// slayQueen32
set_color_profile_slot( 11, 0, 255, 104, 84 ); //Skin
set_color_profile_slot( 11, 1, 255, 181, 181 ); //Cheeks
set_color_profile_slot( 11, 2, 88, 196, 232 ); //Leaf1
set_color_profile_slot( 11, 3, 44, 129, 199 ); //Leaf2
set_color_profile_slot( 11, 4, 102, 47, 36 ); //Sword

// Carrot
set_color_profile_slot( 12, 0, 255, 145, 0 ); //Skin
set_color_profile_slot( 12, 1, 191, 102, 0 ); //Cheeks
set_color_profile_slot( 12, 2, 247, 247, 52 ); //Leaf1
set_color_profile_slot( 12, 3, 99, 189, 51 ); //Leaf2
set_color_profile_slot( 12, 4, 207, 131, 43 ); //Sword

// Avocado
set_color_profile_slot( 13, 0, 171, 125, 87 ); //Skin
set_color_profile_slot( 13, 1, 117, 75, 34 ); //Cheeks
set_color_profile_slot( 13, 2, 187, 230, 46 ); //Leaf1
set_color_profile_slot( 13, 3, 104, 179, 30 ); //Leaf2
set_color_profile_slot( 13, 4, 79, 62, 42 ); //Sword

// Tots
set_color_profile_slot( 14, 0, 230, 182, 99 ); //Skin
set_color_profile_slot( 14, 1, 255, 237, 163 ); //Cheeks
set_color_profile_slot( 14, 2, 127, 135, 140 ); //Leaf1
set_color_profile_slot( 14, 3, 230, 230, 230 ); //Leaf2
set_color_profile_slot( 14, 4, 166, 166, 166 ); //Sword

// Pickle
set_color_profile_slot( 15, 0, 127, 201, 95 ); //Skin
set_color_profile_slot( 15, 1, 84, 99, 84 ); //Cheeks
set_color_profile_slot( 15, 2, 196, 13, 37 ); //Leaf1
set_color_profile_slot( 15, 3, 77, 77, 77 ); //Leaf2
set_color_profile_slot( 15, 4, 161, 86, 40 ); //Sword

// Rotten
set_color_profile_slot( 16, 0, 130, 83, 39 ); //Skin
set_color_profile_slot( 16, 1, 230, 145, 110 ); //Cheeks
set_color_profile_slot( 16, 2, 230, 0, 28 ); //Leaf1
set_color_profile_slot( 16, 3, 103, 184, 33 ); //Leaf2
set_color_profile_slot( 16, 4, 103, 128, 67 ); //Sword

// Nuclear
set_color_profile_slot( 17, 0, 77, 77, 77 ); //Skin
set_color_profile_slot( 17, 1, 102, 222, 22 ); //Cheeks
set_color_profile_slot( 17, 2, 56, 56, 56 ); //Leaf1
set_color_profile_slot( 17, 3, 98, 186, 35 ); //Leaf2
set_color_profile_slot( 17, 4, 0, 189, 0 ); //Sword

// Gold
set_color_profile_slot( 18, 0, 255, 251, 56 ); //Skin
set_color_profile_slot( 18, 1, 255, 175, 0 ); //Cheeks
set_color_profile_slot( 18, 2, 76, 189, 40 ); //Leaf1
set_color_profile_slot( 18, 3, 67, 140, 24 ); //Leaf2
set_color_profile_slot( 18, 4, 245, 207, 36 ); //Sword

// Rainbow
set_color_profile_slot( 19, 0, 230, 92, 92 ); //Skin
set_color_profile_slot( 19, 1, 110, 229, 230 ); //Cheeks
set_color_profile_slot( 19, 2, 112, 112, 112 ); //Leaf1
set_color_profile_slot( 19, 3, 74, 74, 74 ); //Leaf2
set_color_profile_slot( 19, 4, 171, 171, 171 ); //Sword

// Oddish
set_color_profile_slot( 20, 0, 73, 129, 191 ); //Skin
set_color_profile_slot( 20, 1, 255, 135, 193 ); //Cheeks
set_color_profile_slot( 20, 2, 115, 222, 73 ); //Leaf1
set_color_profile_slot( 20, 3, 97, 153, 51 ); //Leaf2
set_color_profile_slot( 20, 4, 112, 81, 54 ); //Sword

// Yoshi
set_color_profile_slot( 21, 0, 91, 219, 79 ); //Skin
set_color_profile_slot( 21, 1, 255, 255, 255 ); //Cheeks
set_color_profile_slot( 21, 2, 214, 20, 52 ); //Leaf1
set_color_profile_slot( 21, 3, 143, 4, 29 ); //Leaf2
set_color_profile_slot( 21, 4, 207, 207, 207 ); //Sword

// Vibefruit
set_color_profile_slot( 22, 0, 255, 196, 227 ); //Skin
set_color_profile_slot( 22, 1, 255, 112, 130 ); //Cheeks
set_color_profile_slot( 22, 2, 69, 196, 35 ); //Leaf1
set_color_profile_slot( 22, 3, 44, 135, 35 ); //Leaf2
set_color_profile_slot( 22, 4, 51, 51, 51 ); //Sword

// Flesh
set_color_profile_slot( 23, 0, 245, 212, 194 ); //Skin
set_color_profile_slot( 23, 1, 242, 169, 143 ); //Cheeks
set_color_profile_slot( 23, 2, 87, 70, 44 ); //Leaf1
set_color_profile_slot( 23, 3, 87, 70, 44 ); //Leaf2
set_color_profile_slot( 23, 4, 207, 170, 151 ); //Sword

// Tomo
set_color_profile_slot( 24, 0, 255, 105, 105 ); //Skin
set_color_profile_slot( 24, 1, 214, 41, 41 ); //Cheeks
set_color_profile_slot( 24, 2, 69, 222, 100 ); //Leaf1
set_color_profile_slot( 24, 3, 57, 181, 82 ); //Leaf2
set_color_profile_slot( 24, 4, 191, 191, 191 ); //Sword

// Classic
set_color_profile_slot( 25, 0, 243, 204, 165 ); //Skin
set_color_profile_slot( 25, 1, 242, 148, 159 ); //Cheeks
set_color_profile_slot( 25, 2, 113, 171, 51 ); //Leaf1
set_color_profile_slot( 25, 3, 57, 122, 68 ); //Leaf2
set_color_profile_slot( 25, 4, 122, 68, 74 ); //Sword

// TransRights
set_color_profile_slot( 26, 0, 168, 228, 255 ); //Skin
set_color_profile_slot( 26, 1, 255, 171, 215 ); //Cheeks
set_color_profile_slot( 26, 2, 255, 138, 243 ); //Leaf1
set_color_profile_slot( 26, 3, 255, 255, 255 ); //Leaf2
set_color_profile_slot( 26, 4, 138, 206, 255 ); //Sword

// Nonbinary
set_color_profile_slot( 27, 0, 209, 111, 199 ); //Skin
set_color_profile_slot( 27, 1, 235, 231, 129 ); //Cheeks
set_color_profile_slot( 27, 2, 235, 218, 42 ); //Leaf1
set_color_profile_slot( 27, 3, 82, 82, 82 ); //Leaf2
set_color_profile_slot( 27, 4, 153, 153, 153 ); //Sword


/* This is a comment used by that one RoA colors.gml generator tool to store palette data. You can safely keep it in your colors.gml if you plan to re-use the tool later, or safely remove it if you don't.
=== BEGIN JSON PALETTE ===
{"formatversion":1,"data":[{"name":"Skin","colors":[{"r":243,"g":204,"b":165,"main":true},{"r":224,"g":159,"b":112}]},{"name":"Cheeks","colors":[{"r":242,"g":148,"b":159,"main":true}]},{"name":"Leaf1","colors":[{"r":113,"g":171,"b":51,"main":true},{"r":73,"g":139,"b":47}]},{"name":"Leaf2","colors":[{"r":57,"g":122,"b":68,"main":true},{"r":59,"g":92,"b":78}]},{"name":"Sword","colors":[{"r":160,"g":91,"b":83},{"r":122,"g":68,"b":74,"main":true},{"r":94,"g":54,"b":67}]}]}
=== END JSON PALETTE ===
*/
