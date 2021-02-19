/* This is used by that one RoA colors.gml generator tool to store palette data
=== BEGIN JSON PALETTE ===
{"formatversion":1,"data":[{"name":"body","colors":[{"r":"211","g":"187","b":"107","main":true},{"r":193,"g":146,"b":76},{"r":150,"g":107,"b":65}]},{"name":"hair","colors":[{"r":"122","g":"107","b":"50","main":true},{"r":72,"g":65,"b":37}]},{"name":"cuffs","colors":[{"r":"174","g":"172","b":"189","main":true},{"r":79,"g":71,"b":115}]},{"name":"cuffs highlight","colors":[{"r":"236","g":"236","b":"236","main":true}]},{"name":"claws","colors":[{"r":"139","g":"122","b":"158","main":true},{"r":213,"g":199,"b":239},{"r":84,"g":61,"b":102}]},{"name":"scarf","colors":[{"r":"75","g":"102","b":"188","main":true},{"r":52,"g":64,"b":153}]},{"name":"eyes","colors":[{"r":"212","g":"207","b":"207","main":true},{"r":255,"g":249,"b":249}]},{"name":"nose","colors":[{"r":"235","g":"142","b":"159","main":true},{"r":211,"g":125,"b":133}]}]}
=== END JSON PALETTE ===
*/

/*
set_num_palettes( 14 );


//DEFAULT COLOR (R,G,B)
set_color_profile_slot(0, 0, 211, 187, 107);  //Body
set_color_profile_slot(0, 1, 122, 107, 50); //Hair
set_color_profile_slot(0, 2, 174, 172,  189); //Cuffs
set_color_profile_slot(0, 3, 236, 236,  236); //Cuffs Highlight
set_color_profile_slot(0, 4, 139, 122, 158); //Claws
set_color_profile_slot(0, 5,  75, 102, 188); //Scarf
set_color_profile_slot(0, 6, 212, 207, 207); //Eyes
set_color_profile_slot(0, 7, 235, 142, 159); //Nose

//COLOR RANGE (H,S,V)
set_color_profile_slot_range(0, 18, 12, 25); //Body
set_color_profile_slot_range(1,  2, 12, 20); //Hair
set_color_profile_slot_range(2, 4, 31, 30); //Cuffs
set_color_profile_slot_range(3,  1,  1,  1); //Cuffs Highlight
set_color_profile_slot_range(4,  8, 19, 33); //Claws
set_color_profile_slot_range(5,  8,  7, 14); //Scarf
set_color_profile_slot_range(6,  1,  1, 19); //Eyes
set_color_profile_slot_range(7, 25, 18, 29); //Nose


//Extra Color (Slush)
set_color_profile_slot(1, 0, 203, 219, 252);  //Body
set_color_profile_slot(1, 1,  67, 152, 204); //Hair
set_color_profile_slot(1, 2, 174, 172, 189); //Cuffs
set_color_profile_slot(1, 3, 236, 236, 230); //Cuff Highlight
set_color_profile_slot(1, 4, 143, 166, 186); //Claws
set_color_profile_slot(1, 5, 189, 189, 180); //Scarf
set_color_profile_slot(1, 6, 255, 249, 249); //Eyes
set_color_profile_slot(1, 7, 155, 173, 183); //Nose

//Red Color (Illusion)
set_color_profile_slot(2, 0, 135, 129, 143);  //Body
set_color_profile_slot(2, 1, 254,  76,  96); //Hair
set_color_profile_slot(2, 2, 114, 211, 204); //Cuffs
set_color_profile_slot(2, 3, 216, 249, 249); //Cuff Highlight
set_color_profile_slot(2, 4, 187,  56,  68); //Claws
set_color_profile_slot(2, 5,  76,  66,  89); //Scarf
set_color_profile_slot(2, 6, 216, 249, 249); //Eyes
set_color_profile_slot(2, 7, 140, 135, 148); //Nose

//Green Color (Wildcat)
set_color_profile_slot(3, 0, 151, 184,  70); //Body
set_color_profile_slot(3, 1,  64, 124,  48); //Hair
set_color_profile_slot(3, 2,  69,  69,  69); //Cuffs
set_color_profile_slot(3, 3, 144, 144, 144); //Cuff Highlight
set_color_profile_slot(3, 4, 199, 169,   2); //Claws
set_color_profile_slot(3, 5, 200,   4,   4); //Scarf
set_color_profile_slot(3, 6, 252, 252, 252); //Eyes
set_color_profile_slot(3, 7,  64, 124,  48); //Nose

//White Color (Stalker)
set_color_profile_slot(4, 0, 224, 211, 224); //Body
set_color_profile_slot(4, 1,  80, 112, 144); //Hair
set_color_profile_slot(4, 2, 224, 208, 135); //Cuffs
set_color_profile_slot(4, 3, 240, 234, 209); //Cuff Highlight
set_color_profile_slot(4, 4, 196, 181,  84); //Claws
set_color_profile_slot(4, 5, 128,  48, 208); //Scarf
set_color_profile_slot(4, 6, 252, 252, 252); //Eyes
set_color_profile_slot(4, 7,  93, 116, 120); //Nose

//Extra Color (Moss Rock)
set_color_profile_slot(5, 0, 166, 123,  95);  //Body
set_color_profile_slot(5, 1, 248, 251, 244); //Hair
set_color_profile_slot(5, 2,  59,  62,  62); //Cuffs
set_color_profile_slot(5, 3, 111, 114, 111); //Cuff Highlight
set_color_profile_slot(5, 4, 190, 187, 183); //Claws
set_color_profile_slot(5, 5,  73, 126, 114); //Scarf
set_color_profile_slot(5, 6, 252,  46,  48); //Eyes
set_color_profile_slot(5, 7, 235, 142, 159); //Nose

//Extra Color (Adamantite)
set_color_profile_slot(6, 0, 240, 208, 48);  //Body
set_color_profile_slot(6, 1,   0,  96, 208); //Hair
set_color_profile_slot(6, 2,   0,  96, 208); //Cuffs
set_color_profile_slot(6, 3,  24, 139, 240); //Cuff Highlight
set_color_profile_slot(6, 4, 128, 160, 208); //Claws
set_color_profile_slot(6, 5, 240,   5,   5); //Scarf
set_color_profile_slot(6, 6, 255, 249, 249); //Eyes
set_color_profile_slot(6, 7, 224, 160,  96); //Nose



//Extra Color (Weave)
set_color_profile_slot(7, 0, 117, 124, 163);  //Body
set_color_profile_slot(7, 1,  72,  72,  78); //Hair
set_color_profile_slot(7, 2,  57, 142, 227); //Cuffs
set_color_profile_slot(7, 3, 250, 211,  85); //Cuff Highlight
set_color_profile_slot(7, 4, 183, 187, 190); //Claws
set_color_profile_slot(7, 5, 230, 227, 223); //Scarf
set_color_profile_slot(7, 6, 255, 249, 249); //Eyes
set_color_profile_slot(7, 7, 223, 184, 249); //Nose


//Extra Color (Virus)
set_color_profile_slot(8, 0, 112,  73,  65); //Body
set_color_profile_slot(8, 0, 151,  79,  68); //Body
set_color_profile_slot(8, 1, 253, 172,  32); //Hair
set_color_profile_slot(8, 2, 163,  32,  16); //Cuffs
set_color_profile_slot(8, 3, 240,  86,  55); //Cuff Highlight
set_color_profile_slot(8, 4, 131, 163, 180); //Claws
set_color_profile_slot(8, 5,  81, 122, 155); //Scarf
set_color_profile_slot(8, 6, 255, 249, 249); //Eyes
set_color_profile_slot(8, 7, 235, 142, 159); //Nose

// Extra Color (Vapor) [by Equinox]
set_color_profile_slot( 9, 0, 217, 217, 217 ); //Body
set_color_profile_slot( 9, 1, 232, 57, 197 ); //Hair
set_color_profile_slot( 9, 2, 57, 232, 171 ); //Cuffs
set_color_profile_slot( 9, 3, 255, 255, 255 ); //Cuff Highlights
set_color_profile_slot( 9, 4, 57, 214, 232 ); //Claws
set_color_profile_slot( 9, 5, 107, 71, 186 ); //Scarf
set_color_profile_slot( 9, 6, 217, 255, 255 ); //Eyes
set_color_profile_slot( 9, 7, 214, 53, 212 ); //Snoodle

// Extra Color (Golden) [by Jblockman1]
set_color_profile_slot( 10, 0, 212, 187, 151 ); //body
set_color_profile_slot( 10, 1, 110, 55, 45 ); //hair
set_color_profile_slot( 10, 2, 189, 182, 115 ); //cuffs
set_color_profile_slot( 10, 3, 236, 236, 236 ); //cuffs highlight
set_color_profile_slot( 10, 4, 158, 147, 58 ); //claws
set_color_profile_slot( 10, 5, 188, 62, 62 ); //scarf
set_color_profile_slot( 10, 6, 212, 207, 207 ); //eyes
set_color_profile_slot( 10, 7, 235, 142, 159 ); //nose

// Extra Color (Tech) [by Supersonic]
set_color_profile_slot( 11, 0, 83, 90, 97 ); //body
set_color_profile_slot( 11, 1, 145, 207, 255 ); //hair
set_color_profile_slot( 11, 2, 186, 223, 255 ); //cuffs
set_color_profile_slot( 11, 3, 255, 255, 255 ); //cuffs highlight
set_color_profile_slot( 11, 4, 168, 255, 255 ); //claws
set_color_profile_slot( 11, 5, 58, 91, 117 ); //scarf
set_color_profile_slot( 11, 6, 168, 255, 249 ); //eyes
set_color_profile_slot( 11, 7, 66, 70, 74 ); //nose

// Extra Color (Thirteen)
set_color_profile_slot( 12, 0, 207, 132, 88 ); //body
set_color_profile_slot( 12, 1, 123, 21, 9 ); //hair
set_color_profile_slot( 12, 2, 224, 173, 37 ); //cuffs
set_color_profile_slot( 12, 3, 242, 220, 121 ); //cuffs highlight
set_color_profile_slot( 12, 4, 94, 70, 65 ); //claws
set_color_profile_slot( 12, 5, 72, 209, 197 ); //scarf
set_color_profile_slot( 12, 6, 255, 217, 156 ); //eyes
set_color_profile_slot( 12, 7, 128, 68, 59 ); //nose

// Extra Color (Virulisk)
set_color_profile_slot( 13, 0, 96, 90, 148 ); //body
set_color_profile_slot( 13, 1, 56, 48, 94 ); //hair
set_color_profile_slot( 13, 2, 71, 126, 54 ); //cuffs
set_color_profile_slot( 13, 3, 105, 171, 77 ); //cuffs highlight
set_color_profile_slot( 13, 4, 168, 204, 11 ); //claws
set_color_profile_slot( 13, 5, 150, 45, 150 ); //scarf
set_color_profile_slot( 13, 6, 37, 176, 22 ); //eyes
set_color_profile_slot( 13, 7, 99, 163, 79 ); //nose


// DEFAULT COLOR

// body
set_color_profile_slot( 0, 0, 211, 187, 107 );
set_color_profile_slot_range( 0, 17, 13, 25 );

// hair
set_color_profile_slot( 0, 1, 122, 107, 50 );
set_color_profile_slot_range( 1, 1, 11, 21 );

// cuffs
set_color_profile_slot( 0, 2, 174, 172, 189 );
set_color_profile_slot_range( 2, 5, 30, 30 );

// cuffs highlight
set_color_profile_slot( 0, 3, 236, 236, 236 );
set_color_profile_slot_range( 3, 1, 1, 1 );

// claws
set_color_profile_slot( 0, 4, 139, 122, 158 );
set_color_profile_slot_range( 4, 8, 18, 33 );

// scarf
set_color_profile_slot( 0, 5, 75, 102, 188 );
set_color_profile_slot_range( 5, 8, 7, 15 );

// eyes
set_color_profile_slot( 0, 6, 212, 207, 207 );
set_color_profile_slot_range( 6, 1, 1, 18 );

// nose
set_color_profile_slot( 0, 7, 235, 142, 159 );
set_color_profile_slot_range( 7, 6, 2, 10 );
*/

// ALTERNATE COLORS
set_num_palettes( 14 );

//DEFAULT COLOR (R,G,B)
set_color_profile_slot(0, 0, 211, 187, 107);  //Body
set_color_profile_slot(0, 1, 122, 107, 50); //Hair
set_color_profile_slot(0, 2, 174, 172,  189); //Cuffs
set_color_profile_slot(0, 3, 236, 236,  236); //Cuffs Highlight
set_color_profile_slot(0, 4, 139, 122, 158); //Claws
set_color_profile_slot(0, 5,  75, 102, 188); //Scarf
set_color_profile_slot(0, 6, 212, 207, 207); //Eyes
set_color_profile_slot(0, 7, 235, 142, 159); //Nose

//COLOR RANGE (H,S,V)
set_color_profile_slot_range(0, 18, 12, 25); //Body
set_color_profile_slot_range(1,  2, 12, 20); //Hair
set_color_profile_slot_range(2, 4, 31, 30); //Cuffs
set_color_profile_slot_range(3,  1,  1,  1); //Cuffs Highlight
set_color_profile_slot_range(4,  8, 19, 33); //Claws
set_color_profile_slot_range(5,  8,  7, 14); //Scarf
set_color_profile_slot_range(6,  1,  1, 19); //Eyes
set_color_profile_slot_range(7, 25, 18, 29); //Nose

// unnamed alt palette
set_color_profile_slot( 1, 0, 203, 219, 252 ); //body
set_color_profile_slot( 1, 1, 67, 152, 204 ); //hair
set_color_profile_slot( 1, 2, 174, 172, 189 ); //cuffs
set_color_profile_slot( 1, 3, 236, 236, 230 ); //cuffs highlight
set_color_profile_slot( 1, 4, 143, 166, 186 ); //claws
set_color_profile_slot( 1, 5, 189, 189, 180 ); //scarf
set_color_profile_slot( 1, 6, 255, 249, 249 ); //eyes
set_color_profile_slot( 1, 7, 155, 173, 183 ); //nose

// unnamed alt palette
set_color_profile_slot( 2, 0, 135, 129, 143 ); //body
set_color_profile_slot( 2, 1, 254, 76, 96 ); //hair
set_color_profile_slot( 2, 2, 114, 211, 204 ); //cuffs
set_color_profile_slot( 2, 3, 216, 249, 249 ); //cuffs highlight
set_color_profile_slot( 2, 4, 187, 56, 68 ); //claws
set_color_profile_slot( 2, 5, 76, 66, 89 ); //scarf
set_color_profile_slot( 2, 6, 216, 249, 249 ); //eyes
set_color_profile_slot( 2, 7, 140, 135, 148 ); //nose

// unnamed alt palette
set_color_profile_slot( 3, 0, 151, 184, 70 ); //body
set_color_profile_slot( 3, 1, 64, 124, 48 ); //hair
set_color_profile_slot( 3, 2, 69, 69, 69 ); //cuffs
set_color_profile_slot( 3, 3, 144, 144, 144 ); //cuffs highlight
set_color_profile_slot( 3, 4, 199, 169, 2 ); //claws
set_color_profile_slot( 3, 5, 200, 4, 4 ); //scarf
set_color_profile_slot( 3, 6, 252, 252, 252 ); //eyes
set_color_profile_slot( 3, 7, 64, 124, 48 ); //nose

// unnamed alt palette
set_color_profile_slot( 4, 0, 224, 211, 224 ); //body
set_color_profile_slot( 4, 1, 80, 112, 144 ); //hair
set_color_profile_slot( 4, 2, 224, 208, 135 ); //cuffs
set_color_profile_slot( 4, 3, 240, 234, 209 ); //cuffs highlight
set_color_profile_slot( 4, 4, 196, 181, 84 ); //claws
set_color_profile_slot( 4, 5, 128, 48, 208 ); //scarf
set_color_profile_slot( 4, 6, 252, 252, 252 ); //eyes
set_color_profile_slot( 4, 7, 93, 116, 120 ); //nose

// unnamed alt palette
set_color_profile_slot( 5, 0, 166, 123, 95 ); //body
set_color_profile_slot( 5, 1, 248, 251, 244 ); //hair
set_color_profile_slot( 5, 2, 59, 62, 62 ); //cuffs
set_color_profile_slot( 5, 3, 111, 114, 111 ); //cuffs highlight
set_color_profile_slot( 5, 4, 190, 187, 183 ); //claws
set_color_profile_slot( 5, 5, 73, 126, 114 ); //scarf
set_color_profile_slot( 5, 6, 252, 46, 48 ); //eyes
set_color_profile_slot( 5, 7, 235, 142, 159 ); //nose

// 6
set_color_profile_slot( 6, 0, 235, 202, 69 ); //body
set_color_profile_slot( 6, 1, 0, 96, 208 ); //hair
set_color_profile_slot( 6, 2, 0, 96, 208 ); //cuffs
set_color_profile_slot( 6, 3, 24, 139, 240 ); //cuffs highlight
set_color_profile_slot( 6, 4, 128, 160, 208 ); //claws
set_color_profile_slot( 6, 5, 240, 5, 5 ); //scarf
set_color_profile_slot( 6, 6, 255, 249, 249 ); //eyes
set_color_profile_slot( 6, 7, 224, 160, 96 ); //nose

// 7
set_color_profile_slot( 7, 0, 117, 124, 163 ); //body
set_color_profile_slot( 7, 1, 88, 88, 94 ); //hair
set_color_profile_slot( 7, 2, 57, 142, 227 ); //cuffs
set_color_profile_slot( 7, 3, 250, 203, 57 ); //cuffs highlight
set_color_profile_slot( 7, 4, 183, 187, 190 ); //claws
set_color_profile_slot( 7, 5, 230, 227, 223 ); //scarf
set_color_profile_slot( 7, 6, 255, 249, 249 ); //eyes
set_color_profile_slot( 7, 7, 223, 184, 249 ); //nose

// 8
set_color_profile_slot( 8, 0, 163, 81, 70 ); //body
set_color_profile_slot( 8, 1, 245, 166, 29 ); //hair
set_color_profile_slot( 8, 2, 163, 32, 16 ); //cuffs
set_color_profile_slot( 8, 3, 240, 86, 55 ); //cuffs highlight
set_color_profile_slot( 8, 4, 131, 163, 180 ); //claws
set_color_profile_slot( 8, 5, 81, 122, 155 ); //scarf
set_color_profile_slot( 8, 6, 255, 249, 249 ); //eyes
set_color_profile_slot( 8, 7, 235, 142, 159 ); //nose

// 9
set_color_profile_slot( 9, 0, 217, 206, 206 ); //body
set_color_profile_slot( 9, 1, 237, 90, 208 ); //hair
set_color_profile_slot( 9, 2, 55, 204, 152 ); //cuffs
set_color_profile_slot( 9, 3, 255, 255, 255 ); //cuffs highlight
set_color_profile_slot( 9, 4, 57, 214, 232 ); //claws
set_color_profile_slot( 9, 5, 136, 81, 212 ); //scarf
set_color_profile_slot( 9, 6, 217, 255, 255 ); //eyes
set_color_profile_slot( 9, 7, 214, 53, 212 ); //nose

// 10
set_color_profile_slot( 10, 0, 212, 190, 159 ); //body
set_color_profile_slot( 10, 1, 110, 55, 45 ); //hair
set_color_profile_slot( 10, 2, 189, 182, 115 ); //cuffs
set_color_profile_slot( 10, 3, 236, 236, 236 ); //cuffs highlight
set_color_profile_slot( 10, 4, 179, 166, 66 ); //claws
set_color_profile_slot( 10, 5, 188, 62, 62 ); //scarf
set_color_profile_slot( 10, 6, 212, 207, 207 ); //eyes
set_color_profile_slot( 10, 7, 235, 142, 159 ); //nose

// 11
set_color_profile_slot( 11, 0, 83, 90, 97 ); //body
set_color_profile_slot( 11, 1, 145, 207, 255 ); //hair
set_color_profile_slot( 11, 2, 186, 223, 255 ); //cuffs
set_color_profile_slot( 11, 3, 255, 255, 255 ); //cuffs highlight
set_color_profile_slot( 11, 4, 168, 255, 255 ); //claws
set_color_profile_slot( 11, 5, 58, 91, 117 ); //scarf
set_color_profile_slot( 11, 6, 168, 255, 249 ); //eyes
set_color_profile_slot( 11, 7, 66, 70, 74 ); //nose

// 12
set_color_profile_slot( 12, 0, 204, 149, 113 ); //body
set_color_profile_slot( 12, 1, 138, 23, 10 ); //hair
set_color_profile_slot( 12, 2, 217, 167, 36 ); //cuffs
set_color_profile_slot( 12, 3, 242, 216, 102 ); //cuffs highlight
set_color_profile_slot( 12, 4, 143, 106, 98 ); //claws
set_color_profile_slot( 12, 5, 59, 179, 168 ); //scarf
set_color_profile_slot( 12, 6, 255, 217, 156 ); //eyes
set_color_profile_slot( 12, 7, 128, 68, 59 ); //nose

// 13
set_color_profile_slot( 13, 0, 115, 107, 173 ); //body
set_color_profile_slot( 13, 1, 75, 68, 117 ); //hair
set_color_profile_slot( 13, 2, 79, 140, 60 ); //cuffs
set_color_profile_slot( 13, 3, 111, 181, 82 ); //cuffs highlight
set_color_profile_slot( 13, 4, 164, 194, 29 ); //claws
set_color_profile_slot( 13, 5, 150, 45, 127 ); //scarf
set_color_profile_slot( 13, 6, 39, 191, 24 ); //eyes
set_color_profile_slot( 13, 7, 99, 163, 79 ); //nose


/* This is a comment used by that one RoA colors.gml generator tool to store palette data. You can safely keep it in your colors.gml if you plan to re-use the tool later, or safely remove it if you don't.
=== BEGIN JSON PALETTE ===
{"formatversion":1,"data":[{"name":"body","colors":[{"r":"211","g":"187","b":"107","main":true},{"r":193,"g":146,"b":76},{"r":150,"g":107,"b":65}]},{"name":"hair","colors":[{"r":"122","g":"107","b":"50","main":true},{"r":72,"g":65,"b":37}]},{"name":"cuffs","colors":[{"r":"174","g":"172","b":"189","main":true},{"r":79,"g":71,"b":115}]},{"name":"cuffs highlight","colors":[{"r":"236","g":"236","b":"236","main":true}]},{"name":"claws","colors":[{"r":"139","g":"122","b":"158","main":true},{"r":213,"g":199,"b":239},{"r":84,"g":61,"b":102}]},{"name":"scarf","colors":[{"r":"75","g":"102","b":"188","main":true},{"r":52,"g":64,"b":153}]},{"name":"eyes","colors":[{"r":"212","g":"207","b":"207","main":true},{"r":255,"g":249,"b":249}]},{"name":"nose","colors":[{"r":"235","g":"142","b":"159","main":true},{"r":211,"g":125,"b":133}]}]}
=== END JSON PALETTE ===
*/
