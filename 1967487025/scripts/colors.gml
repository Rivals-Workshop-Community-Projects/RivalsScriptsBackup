/*this code stores the RGB of your current alt's 0th color as alt_col

var alt_cur = get_player_color(player);
var alt_red = get_color_profile_slot_r(alt_cur, 0);
var alt_gre = get_color_profile_slot_g(alt_cur, 0);
var alt_blu = get_color_profile_slot_b(alt_cur, 0);
var alt_col = make_color_rgb(alt_red, alt_gre, alt_blu);
*/
// DEFAULT COLOR

// Red Stripes
set_color_profile_slot( 0, 0, 246, 19, 19 );
set_color_profile_slot_range( 0, 8, 9, 42 );

// Black Body
set_color_profile_slot( 0, 1, 39, 39, 39 );
set_color_profile_slot_range( 1, 1, 1, 9 );

// Light Chaos
set_color_profile_slot( 0, 2, 248, 184, 248 );
set_color_profile_slot_range( 2, 38, 42, 9 );

// Dark Chaos
set_color_profile_slot( 0, 3, 152, 32, 72 );
set_color_profile_slot_range( 3, 15, 17, 41 );

// Blues
set_color_profile_slot( 0, 4, 0, 101, 238 );
set_color_profile_slot_range( 4, 38, 73, 18 );

// Skin & Rings
set_color_profile_slot( 0, 5, 246, 207, 0 );
set_color_profile_slot_range( 5, 30, 61, 49 );

// Whites
set_color_profile_slot( 0, 6, 246, 246, 246 );
set_color_profile_slot_range( 6, 1, 1, 62 );

// Emerald
set_color_profile_slot( 0, 7, 0, 212, 0 );
set_color_profile_slot_range( 7, 31, 65, 60 );


// ALTERNATE COLORS
set_num_palettes( 15 );

// Ryphte S6 Prize Skin
set_color_profile_slot( 1, 0, 9, 118, 122 ); //Red Stripes
set_color_profile_slot( 1, 1, 26, 26, 26 ); //Black Body
set_color_profile_slot( 1, 2, 0, 255, 221 ); //Light Chaos
set_color_profile_slot( 1, 3, 0, 168, 151 ); //Dark Chaos
set_color_profile_slot( 1, 4, 180, 19, 255 ); //Blues
set_color_profile_slot( 1, 5, 246, 207, 0 ); //Skin & Rings
set_color_profile_slot( 1, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 1, 7, 247, 46, 0 ); //Emerald

// Hero
set_color_profile_slot( 3, 0, 5, 252, 244 ); //Red Stripes
set_color_profile_slot( 3, 1, 5, 112, 252 ); //Black Body
set_color_profile_slot( 3, 2, 0, 177, 247 ); //Light Chaos
set_color_profile_slot( 3, 3, 0, 117, 220 ); //Dark Chaos
set_color_profile_slot( 3, 4, 0, 101, 238 ); //Blues
set_color_profile_slot( 3, 5, 246, 207, 0 ); //Skin & Rings
set_color_profile_slot( 3, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 3, 7, 0, 194, 247 ); //Emerald

// Chaos
set_color_profile_slot( 14, 0, 255, 0, 0 ); //Red Stripes
set_color_profile_slot( 14, 1, 213, 5, 5 ); //Black Body
set_color_profile_slot( 14, 2, 255, 102, 102 ); //Light Chaos
set_color_profile_slot( 14, 3, 125, 0, 0 ); //Dark Chaos
set_color_profile_slot( 14, 4, 255, 149, 0 ); //Blues
set_color_profile_slot( 14, 5, 255, 100, 0 ); //Skin & Rings
set_color_profile_slot( 14, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 14, 7, 247, 46, 0 ); //Emerald

// Eclipse
set_color_profile_slot( 4, 0, 184, 19, 32 ); //Red Stripes
set_color_profile_slot( 4, 1, 62, 94, 122 ); //Black Body
set_color_profile_slot( 4, 2, 82, 255, 255 ); //Light Chaos
set_color_profile_slot( 4, 3, 184, 255, 255 ); //Dark Chaos
set_color_profile_slot( 4, 4, 0, 101, 238 ); //Blues
set_color_profile_slot( 4, 5, 196, 177, 60 ); //Skin & Rings
set_color_profile_slot( 4, 6, 25, 25, 25 ); //Whites
set_color_profile_slot( 4, 7, 247, 46, 0 ); //Emerald

// Coldsteel
set_color_profile_slot( 5, 0, 120, 23, 120 ); //Red Stripes
set_color_profile_slot( 5, 1, 162, 80, 162 ); //Black Body
set_color_profile_slot( 5, 2, 78, 34, 130 ); //Light Chaos
set_color_profile_slot( 5, 3, 180, 61, 232 ); //Dark Chaos
set_color_profile_slot( 5, 4, 204, 29, 29 ); //Blues
set_color_profile_slot( 5, 5, 226, 90, 90 ); //Skin & Rings
set_color_profile_slot( 5, 6, 126, 126, 126 ); //Whites
set_color_profile_slot( 5, 7, 40, 40, 40 ); //Emerald

// Super
set_color_profile_slot( 6, 0, 246, 19, 19 ); //Red Stripes
set_color_profile_slot( 6, 1, 198, 195, 132 ); //Black Body
set_color_profile_slot( 6, 2, 255, 102, 102 ); //Light Chaos
set_color_profile_slot( 6, 3, 125, 0, 0 ); //Dark Chaos
set_color_profile_slot( 6, 4, 0, 101, 238 ); //Blues
set_color_profile_slot( 6, 5, 246, 207, 0 ); //Skin & Rings
set_color_profile_slot( 6, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 6, 7, 0, 212, 0 ); //Emerald

// Shadic
set_color_profile_slot( 7, 0, 255, 0, 0 ); //Red Stripes
set_color_profile_slot( 7, 1, 233, 239, 255 ); //Black Body
set_color_profile_slot( 7, 2, 102, 255, 255 ); //Light Chaos
set_color_profile_slot( 7, 3, 204, 255, 255 ); //Dark Chaos
set_color_profile_slot( 7, 4, 0, 71, 238 ); //Blues
set_color_profile_slot( 7, 5, 255, 217, 10 ); //Skin & Rings
set_color_profile_slot( 7, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 7, 7, 0, 69, 212 ); //Emerald

// Grey Android
set_color_profile_slot( 8, 0, 0, 229, 1 ); //Red Stripes
set_color_profile_slot( 8, 1, 102, 102, 102 ); //Black Body
set_color_profile_slot( 8, 2, 0, 70, 0 ); //Light Chaos
set_color_profile_slot( 8, 3, 0, 35, 0 ); //Dark Chaos
set_color_profile_slot( 8, 4, 13, 127, 30 ); //Blues
set_color_profile_slot( 8, 5, 182, 182, 182 ); //Skin & Rings
set_color_profile_slot( 8, 6, 20, 20, 20 ); //Whites
set_color_profile_slot( 8, 7, 0, 162, 0 ); //Emerald

// Mephiles
set_color_profile_slot( 9, 0, 128, 128, 148 ); //Red Stripes
set_color_profile_slot( 9, 1, 26, 26, 26 ); //Black Body
set_color_profile_slot( 9, 2, 112, 1, 130 ); //Light Chaos
set_color_profile_slot( 9, 3, 112, 1, 130 ); //Dark Chaos
set_color_profile_slot( 9, 4, 128, 0, 255 ); //Blues
set_color_profile_slot( 9, 5, 196, 177, 60 ); //Skin & Rings
set_color_profile_slot( 9, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 9, 7, 247, 0, 247 ); //Emerald

// Rouge
set_color_profile_slot( 10, 0, 240, 104, 192 ); //Red Stripes
set_color_profile_slot( 10, 1, 223, 218, 218 ); //Black Body
set_color_profile_slot( 10, 2, 240, 48, 176 ); //Light Chaos
set_color_profile_slot( 10, 3, 240, 48, 176 ); //Dark Chaos
set_color_profile_slot( 10, 4, 255, 0, 255 ); //Blues
set_color_profile_slot( 10, 5, 246, 207, 0 ); //Skin & Rings
set_color_profile_slot( 10, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 10, 7, 177, 177, 177 ); //Emerald

// Android
set_color_profile_slot( 11, 0, 252, 252, 20 ); //Red Stripes
set_color_profile_slot( 11, 1, 26, 26, 26 ); //Black Body
set_color_profile_slot( 11, 2, 255, 148, 0 ); //Light Chaos
set_color_profile_slot( 11, 3, 205, 68, 0 ); //Dark Chaos
set_color_profile_slot( 11, 4, 255, 128, 30 ); //Blues
set_color_profile_slot( 11, 5, 246, 207, 0 ); //Skin & Rings
set_color_profile_slot( 11, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 11, 7, 247, 194, 0 ); //Emerald

// Blaze
set_color_profile_slot( 12, 0, 246, 19, 19 ); //Red Stripes
set_color_profile_slot( 12, 1, 53, 57, 82 ); //Black Body
set_color_profile_slot( 12, 2, 248, 184, 248 ); //Light Chaos
set_color_profile_slot( 12, 3, 178, 44, 115 ); //Dark Chaos
set_color_profile_slot( 12, 4, 0, 101, 238 ); //Blues
set_color_profile_slot( 12, 5, 246, 207, 0 ); //Skin & Rings
set_color_profile_slot( 12, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 12, 7, 0, 212, 0 ); //Emerald

// Rainbow
set_color_profile_slot( 13, 0, 246, 19, 19 ); //Red Stripes
set_color_profile_slot( 13, 1, 39, 39, 39 ); //Black Body
set_color_profile_slot( 13, 2, 248, 184, 248 ); //Light Chaos
set_color_profile_slot( 13, 3, 178, 44, 115 ); //Dark Chaos
set_color_profile_slot( 13, 4, 0, 101, 238 ); //Blues
set_color_profile_slot( 13, 5, 246, 207, 0 ); //Skin & Rings
set_color_profile_slot( 13, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 13, 7, 0, 212, 0 ); //Emerald

// Champion Shadow (Seggo Skin)
set_color_profile_slot( 2, 0, 152, 214, 213 ); //Red Stripes
set_color_profile_slot( 2, 1, 56, 56, 56 ); //Black Body
set_color_profile_slot( 2, 2, 179, 179, 179 ); //Light Chaos
set_color_profile_slot( 2, 3, 255, 255, 255 ); //Dark Chaos
set_color_profile_slot( 2, 4, 255, 255, 255 ); //Blues
set_color_profile_slot( 2, 5, 196, 177, 60 ); //Skin & Rings
set_color_profile_slot( 2, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 2, 7, 247, 247, 247 ); //Emerald

/* This is used by that one RoA colors.gml generator tool to store palette data
=== BEGIN JSON PALETTE ===
{"formatversion":1,"data":[{"name":"Red Stripes","colors":[{"r":246,"g":19,"b":19,"main":true},{"r":141,"g":0,"b":0},{"r":197,"g":18,"b":0},{"r":203,"g":25,"b":0}]},{"name":"Black Body","colors":[{"r":39,"g":39,"b":39,"main":true},{"r":59,"g":59,"b":59},{"r":31,"g":31,"b":31}]},{"name":"Light Chaos","colors":[{"r":226,"g":74,"b":187},{"r":246,"g":169,"b":246},{"r":248,"g":184,"b":248,"main":true},{"r":232,"g":96,"b":200},{"r":255,"g":155,"b":193}]},{"name":"Dark Chaos","colors":[{"r":152,"g":32,"b":72,"main":true},{"r":178,"g":44,"b":115},{"r":192,"g":64,"b":136},{"r":255,"g":13,"b":106}]},{"name":"Blues","colors":[{"r":115,"g":178,"b":246},{"r":0,"g":101,"b":238,"main":true},{"r":0,"g":101,"b":238},{"r":63,"g":55,"b":193},{"r":0,"g":238,"b":238},{"r":1,"g":255,"b":247},{"r":170,"g":255,"b":253},{"r":106,"g":124,"b":207},{"r":178,"g":216,"b":246}]},{"name":"Skin & Rings","colors":[{"r":246,"g":246,"b":132},{"r":246,"g":150,"b":59},{"r":132,"g":59,"b":7},{"r":246,"g":207,"b":0,"main":true},{"r":122,"g":48,"b":5},{"r":255,"g":222,"b":153},{"r":246,"g":115,"b":4},{"r":242,"g":136,"b":80}]},{"name":"Whites","colors":[{"r":246,"g":246,"b":246,"main":true},{"r":159,"g":159,"b":159},{"r":90,"g":90,"b":90},{"r":255,"g":255,"b":255},{"r":247,"g":247,"b":247}]},{"name":"Emerald","colors":[{"r":0,"g":61,"b":0},{"r":0,"g":168,"b":0},{"r":109,"g":229,"b":109},{"r":0,"g":190,"b":87},{"r":0,"g":212,"b":0,"main":true},{"r":8,"g":255,"b":124},{"r":162,"g":255,"b":208},{"r":0,"g":85,"b":0},{"r":0,"g":126,"b":0}]}]}
=== END JSON PALETTE ===
*/










/* Old colors.gml
// DEFAULT COLOR

// Red Stripes
set_color_profile_slot( 0, 0, 246, 19, 19 );
set_color_profile_slot_range( 0, 8, 9, 42 );

// Black Body
set_color_profile_slot( 0, 1, 39, 39, 39 );
set_color_profile_slot_range( 1, 1, 1, 9 );

// Light Chaos
set_color_profile_slot( 0, 2, 248, 184, 248 );
set_color_profile_slot_range( 2, 38, 42, 9 );

// Dark Chaos
set_color_profile_slot( 0, 3, 152, 32, 72 );
set_color_profile_slot_range( 3, 15, 17, 41 );

// Blues
set_color_profile_slot( 0, 4, 0, 101, 238 );
set_color_profile_slot_range( 4, 38, 73, 18 );

// Skin & Rings
set_color_profile_slot( 0, 5, 246, 207, 0 );
set_color_profile_slot_range( 5, 29, 61, 49 );

// Whites
set_color_profile_slot( 0, 6, 246, 246, 246 );
set_color_profile_slot_range( 6, 1, 1, 62 );

// Emerald
set_color_profile_slot( 0, 7, 0, 212, 0 );
set_color_profile_slot_range( 7, 31, 65, 60 );


// ALTERNATE COLORS
set_num_palettes( 12 );

// Android
set_color_profile_slot( 1, 0, 252, 252, 20 ); //Red Stripes
set_color_profile_slot( 1, 1, 26, 26, 26 ); //Black Body
set_color_profile_slot( 1, 2, 255, 148, 0 ); //Light Chaos
set_color_profile_slot( 1, 3, 205, 68, 0 ); //Dark Chaos
set_color_profile_slot( 1, 4, 255, 128, 30 ); //Blues
set_color_profile_slot( 1, 5, 246, 207, 0 ); //Skin & Rings
set_color_profile_slot( 1, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 1, 7, 247, 194, 0 ); //Emerald

// Mephiles
set_color_profile_slot( 2, 0, 128, 128, 148 ); //Red Stripes
set_color_profile_slot( 2, 1, 26, 26, 26 ); //Black Body
set_color_profile_slot( 2, 2, 112, 1, 130 ); //Light Chaos
set_color_profile_slot( 2, 3, 112, 1, 130 ); //Dark Chaos
set_color_profile_slot( 2, 4, 128, 0, 255 ); //Blues
set_color_profile_slot( 2, 5, 196, 177, 60 ); //Skin & Rings
set_color_profile_slot( 2, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 2, 7, 247, 0, 247 ); //Emerald

// Grey Android
set_color_profile_slot( 3, 0, 0, 229, 1 ); //Red Stripes
set_color_profile_slot( 3, 1, 102, 102, 102 ); //Black Body
set_color_profile_slot( 3, 2, 0, 70, 0 ); //Light Chaos
set_color_profile_slot( 3, 3, 0, 35, 0 ); //Dark Chaos
set_color_profile_slot( 3, 4, 13, 127, 30 ); //Blues
set_color_profile_slot( 3, 5, 182, 182, 182 ); //Skin & Rings
set_color_profile_slot( 3, 6, 20, 20, 20 ); //Whites
set_color_profile_slot( 3, 7, 0, 162, 0 ); //Emerald

// Rouge
set_color_profile_slot( 4, 0, 240, 104, 192 ); //Red Stripes
set_color_profile_slot( 4, 1, 223, 218, 218 ); //Black Body
set_color_profile_slot( 4, 2, 240, 48, 176 ); //Light Chaos
set_color_profile_slot( 4, 3, 240, 48, 176 ); //Dark Chaos
set_color_profile_slot( 4, 4, 255, 0, 255 ); //Blues
set_color_profile_slot( 4, 5, 246, 207, 0 ); //Skin & Rings
set_color_profile_slot( 4, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 4, 7, 177, 177, 177 ); //Emerald

// Hero
set_color_profile_slot( 5, 0, 5, 252, 244 ); //Red Stripes
set_color_profile_slot( 5, 1, 5, 112, 252 ); //Black Body
set_color_profile_slot( 5, 2, 0, 177, 247 ); //Light Chaos
set_color_profile_slot( 5, 3, 0, 117, 220 ); //Dark Chaos
set_color_profile_slot( 5, 4, 0, 101, 238 ); //Blues
set_color_profile_slot( 5, 5, 246, 207, 0 ); //Skin & Rings
set_color_profile_slot( 5, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 5, 7, 0, 194, 247 ); //Emerald

// Chaos
set_color_profile_slot( 6, 0, 255, 0, 0 ); //Red Stripes
set_color_profile_slot( 6, 1, 213, 5, 5 ); //Black Body
set_color_profile_slot( 6, 2, 255, 102, 102 ); //Light Chaos
set_color_profile_slot( 6, 3, 125, 0, 0 ); //Dark Chaos
set_color_profile_slot( 6, 4, 255, 149, 0 ); //Blues
set_color_profile_slot( 6, 5, 255, 100, 0 ); //Skin & Rings
set_color_profile_slot( 6, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 6, 7, 247, 46, 0 ); //Emerald

// Shadic
set_color_profile_slot( 7, 0, 255, 0, 0 ); //Red Stripes
set_color_profile_slot( 7, 1, 233, 239, 255 ); //Black Body
set_color_profile_slot( 7, 2, 102, 255, 255 ); //Light Chaos
set_color_profile_slot( 7, 3, 204, 255, 255 ); //Dark Chaos
set_color_profile_slot( 7, 4, 0, 71, 238 ); //Blues
set_color_profile_slot( 7, 5, 255, 217, 10 ); //Skin & Rings
set_color_profile_slot( 7, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 7, 7, 0, 69, 212 ); //Emerald

// Eclipse
set_color_profile_slot( 8, 0, 184, 19, 32 ); //Red Stripes
set_color_profile_slot( 8, 1, 62, 94, 122 ); //Black Body
set_color_profile_slot( 8, 2, 82, 255, 255 ); //Light Chaos
set_color_profile_slot( 8, 3, 184, 255, 255 ); //Dark Chaos
set_color_profile_slot( 8, 4, 0, 101, 238 ); //Blues
set_color_profile_slot( 8, 5, 196, 177, 60 ); //Skin & Rings
set_color_profile_slot( 8, 6, 25, 25, 25 ); //Whites
set_color_profile_slot( 8, 7, 247, 46, 0 ); //Emerald

// Coldsteel
set_color_profile_slot( 9, 0, 120, 23, 120 ); //Red Stripes
set_color_profile_slot( 9, 1, 162, 80, 162 ); //Black Body
set_color_profile_slot( 9, 2, 78, 34, 130 ); //Light Chaos
set_color_profile_slot( 9, 3, 180, 61, 232 ); //Dark Chaos
set_color_profile_slot( 9, 4, 204, 29, 29 ); //Blues
set_color_profile_slot( 9, 5, 226, 90, 90 ); //Skin & Rings
set_color_profile_slot( 9, 6, 126, 126, 126 ); //Whites
set_color_profile_slot( 9, 7, 40, 40, 40 ); //Emerald

// Blaze
set_color_profile_slot( 10, 0, 246, 19, 19 ); //Red Stripes
set_color_profile_slot( 10, 1, 53, 57, 82 ); //Black Body
set_color_profile_slot( 10, 2, 248, 184, 248 ); //Light Chaos
set_color_profile_slot( 10, 3, 178, 44, 115 ); //Dark Chaos
set_color_profile_slot( 10, 4, 0, 101, 238 ); //Blues
set_color_profile_slot( 10, 5, 246, 207, 0 ); //Skin & Rings
set_color_profile_slot( 10, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 10, 7, 0, 212, 0 ); //Emerald

// Super
set_color_profile_slot( 11, 0, 246, 19, 19 ); //Red Stripes
set_color_profile_slot( 11, 1, 198, 195, 132 ); //Black Body
set_color_profile_slot( 11, 2, 255, 102, 102 ); //Light Chaos
set_color_profile_slot( 11, 3, 125, 0, 0 ); //Dark Chaos
set_color_profile_slot( 11, 4, 0, 101, 238 ); //Blues
set_color_profile_slot( 11, 5, 246, 207, 0 ); //Skin & Rings
set_color_profile_slot( 11, 6, 246, 246, 246 ); //Whites
set_color_profile_slot( 11, 7, 0, 212, 0 ); //Emerald


/* This is used by that one RoA colors.gml generator tool to store palette data
=== BEGIN JSON PALETTE ===
{"formatversion":1,"data":[{"name":"Red Stripes","colors":[{"r":246,"g":19,"b":19,"main":true},{"r":141,"g":0,"b":0},{"r":197,"g":18,"b":0},{"r":203,"g":25,"b":0}]},{"name":"Black Body","colors":[{"r":39,"g":39,"b":39,"main":true},{"r":59,"g":59,"b":59},{"r":31,"g":31,"b":31}]},{"name":"Light Chaos","colors":[{"r":226,"g":74,"b":187},{"r":246,"g":169,"b":246},{"r":248,"g":184,"b":248,"main":true},{"r":232,"g":96,"b":200},{"r":255,"g":155,"b":193}]},{"name":"Dark Chaos","colors":[{"r":152,"g":32,"b":72,"main":true},{"r":178,"g":44,"b":115},{"r":192,"g":64,"b":136},{"r":255,"g":13,"b":106}]},{"name":"Blues","colors":[{"r":115,"g":178,"b":246},{"r":0,"g":101,"b":238,"main":true},{"r":0,"g":101,"b":238},{"r":63,"g":55,"b":193},{"r":0,"g":238,"b":238},{"r":1,"g":255,"b":247},{"r":170,"g":255,"b":253},{"r":106,"g":124,"b":207},{"r":178,"g":216,"b":246}]},{"name":"Skin & Rings","colors":[{"r":246,"g":246,"b":132},{"r":246,"g":150,"b":59},{"r":132,"g":59,"b":7},{"r":246,"g":207,"b":0,"main":true},{"r":122,"g":48,"b":5},{"r":255,"g":222,"b":153}]},{"name":"Whites","colors":[{"r":246,"g":246,"b":246,"main":true},{"r":159,"g":159,"b":159},{"r":90,"g":90,"b":90},{"r":255,"g":255,"b":255},{"r":247,"g":247,"b":247}]},{"name":"Emerald","colors":[{"r":0,"g":61,"b":0},{"r":0,"g":168,"b":0},{"r":109,"g":229,"b":109},{"r":0,"g":190,"b":87},{"r":0,"g":212,"b":0,"main":true},{"r":8,"g":255,"b":124},{"r":162,"g":255,"b":208},{"r":0,"g":85,"b":0},{"r":0,"g":126,"b":0}]}]}
=== END JSON PALETTE ===
*/
