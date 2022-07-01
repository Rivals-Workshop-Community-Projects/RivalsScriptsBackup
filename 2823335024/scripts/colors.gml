/*
TO-DO:
-CSNW Taunt

-Code SSL Mal
-SSL Twenny stage

*/

// CSNW Colors.gml
// FROM HYU: "Coded entirely using my catfriend's ROA Colors.gml generator/helper!"
// "TAke a look, y'all: https://cl-9a.github.io/RoAColorsGmlHelper/ "

// DEFAULT COLOR

// silhouette
set_color_profile_slot( 0, 0, 28, 148, 172 );
set_color_profile_slot_range( 0, 1, 1, 1 );

// trail/fire
set_color_profile_slot( 0, 1, 255, 36, 141 );
set_color_profile_slot_range( 1, 8, 48, 61 );

// joycon red
set_color_profile_slot( 0, 2, 255, 53, 28 );
set_color_profile_slot_range( 2, 1, 12, 19 );

// joycon blue
set_color_profile_slot( 0, 3, 60, 194, 221 );
set_color_profile_slot_range( 3, 1, 5, 10 );

// strap
set_color_profile_slot( 0, 4, 45, 46, 51 );
set_color_profile_slot_range( 4, 1, 1, 1 );

// stop
set_color_profile_slot( 0, 5, 200, 97, 64 );
set_color_profile_slot_range( 5, 1, 1, 1 );

// sein vfx
set_color_profile_slot( 0, 6, 255, 200, 33 );
set_color_profile_slot_range( 6, 14, 3, 11 );


// ALTERNATE COLORS
set_num_palettes( 25 );

// standard
set_color_profile_slot( 1, 0, 60, 67, 89 ); //silhouette
set_color_profile_slot( 1, 1, 196, 106, 133 ); //trail/fire
set_color_profile_slot( 1, 2, 109, 114, 118 ); //joycon red
set_color_profile_slot( 1, 3, 109, 114, 118 ); //joycon blue
set_color_profile_slot( 1, 4, 45, 46, 51 ); //strap
set_color_profile_slot( 1, 5, 200, 97, 64 ); //stop
set_color_profile_slot( 1, 6, 196, 106, 133 ); //sein vfx

// neon blue
set_color_profile_slot( 2, 0, 0, 179, 219 ); //silhouette
set_color_profile_slot( 2, 1, 0, 119, 204 ); //trail/fire
set_color_profile_slot( 2, 2, 60, 194, 221 ); //joycon red
set_color_profile_slot( 2, 3, 60, 194, 221 ); //joycon blue
set_color_profile_slot( 2, 4, 45, 46, 51 ); //strap
set_color_profile_slot( 2, 5, 200, 97, 64 ); //stop
set_color_profile_slot( 2, 6, 0, 119, 204 ); //sein vfx

// neon red
set_color_profile_slot( 3, 0, 97, 29, 36 ); //silhouette
set_color_profile_slot( 3, 1, 255, 104, 77 ); //trail/fire
set_color_profile_slot( 3, 2, 255, 53, 28 ); //joycon red
set_color_profile_slot( 3, 3, 255, 53, 28 ); //joycon blue
set_color_profile_slot( 3, 4, 45, 46, 51 ); //strap
set_color_profile_slot( 3, 5, 200, 97, 64 ); //stop
set_color_profile_slot( 3, 6, 255, 104, 77 ); //sein vfx

// neon yellow
set_color_profile_slot( 4, 0, 217, 195, 0 ); //silhouette
set_color_profile_slot( 4, 1, 198, 242, 0 ); //trail/fire
set_color_profile_slot( 4, 2, 218, 243, 68 ); //joycon red
set_color_profile_slot( 4, 3, 218, 243, 68 ); //joycon blue
set_color_profile_slot( 4, 4, 45, 46, 51 ); //strap
set_color_profile_slot( 4, 5, 200, 97, 64 ); //stop
set_color_profile_slot( 4, 6, 198, 242, 0 ); //sein vfx

// white / oled
set_color_profile_slot( 5, 0, 165, 201, 201 ); //silhouette
set_color_profile_slot( 5, 1, 242, 250, 255 ); //trail/fire
set_color_profile_slot( 5, 2, 226, 228, 228 ); //joycon red
set_color_profile_slot( 5, 3, 226, 228, 228 ); //joycon blue
set_color_profile_slot( 5, 4, 45, 46, 51 ); //strap
set_color_profile_slot( 5, 5, 200, 97, 64 ); //stop
set_color_profile_slot( 5, 6, 242, 250, 255 ); //sein vfx

// smash ultimate
set_color_profile_slot( 6, 0, 127, 143, 163 ); //silhouette
set_color_profile_slot( 6, 1, 247, 115, 0 ); //trail/fire
set_color_profile_slot( 6, 2, 143, 147, 156 ); //joycon red
set_color_profile_slot( 6, 3, 143, 147, 156 ); //joycon blue
set_color_profile_slot( 6, 4, 225, 230, 255 ); //strap
set_color_profile_slot( 6, 5, 200, 97, 64 ); //stop
set_color_profile_slot( 6, 6, 247, 115, 0 ); //sein vfx

// gb
set_color_profile_slot( 7, 0, 83, 122, 62 ); //silhouette
set_color_profile_slot( 7, 1, 167, 186, 74 ); //trail/fire
set_color_profile_slot( 7, 2, 167, 186, 74 ); //joycon red
set_color_profile_slot( 7, 3, 211, 226, 154 ); //joycon blue
set_color_profile_slot( 7, 4, 35, 67, 49 ); //strap
set_color_profile_slot( 7, 5, 35, 67, 49 ); //stop
set_color_profile_slot( 7, 6, 167, 186, 74 ); //sein vfx

// reverse
set_color_profile_slot( 8, 0, 72, 168, 165 ); //silhouette
set_color_profile_slot( 8, 1, 255, 128, 204 ); //trail/fire
set_color_profile_slot( 8, 2, 76, 217, 245 ); //joycon red
set_color_profile_slot( 8, 3, 255, 53, 28 ); //joycon blue
set_color_profile_slot( 8, 4, 172, 177, 178 ); //strap
set_color_profile_slot( 8, 5, 200, 97, 64 ); //stop
set_color_profile_slot( 8, 6, 255, 128, 204 ); //sein vfx

// splatoon
set_color_profile_slot( 9, 0, 39, 49, 89 ); //silhouette
set_color_profile_slot( 9, 1, 118, 224, 92 ); //trail/fire
set_color_profile_slot( 9, 2, 118, 224, 92 ); //joycon red
set_color_profile_slot( 9, 3, 241, 75, 128 ); //joycon blue
set_color_profile_slot( 9, 4, 45, 46, 51 ); //strap
set_color_profile_slot( 9, 5, 241, 75, 128 ); //stop
set_color_profile_slot( 9, 6, 118, 224, 92 ); //sein vfx

// halloween
set_color_profile_slot( 10, 0, 46, 71, 71 ); //silhouette
set_color_profile_slot( 10, 1, 169, 45, 179 ); //trail/fire
set_color_profile_slot( 10, 2, 169, 45, 179 ); //joycon red
set_color_profile_slot( 10, 3, 255, 179, 5 ); //joycon blue
set_color_profile_slot( 10, 4, 45, 46, 51 ); //strap
set_color_profile_slot( 10, 5, 255, 179, 5 ); //stop
set_color_profile_slot( 10, 6, 255, 179, 5 ); //sein vfx

// animal crossing
set_color_profile_slot( 11, 0, 142, 215, 198 ); //silhouette
set_color_profile_slot( 11, 1, 180, 222, 129 ); //trail/fire
set_color_profile_slot( 11, 2, 117, 229, 161 ); //joycon red
set_color_profile_slot( 11, 3, 100, 218, 228 ); //joycon blue
set_color_profile_slot( 11, 4, 227, 255, 247 ); //strap
set_color_profile_slot( 11, 5, 100, 218, 228 ); //stop
set_color_profile_slot( 11, 6, 180, 222, 129 ); //sein vfx

// skyward sword
set_color_profile_slot( 12, 0, 69, 151, 84 ); //silhouette
set_color_profile_slot( 12, 1, 66, 181, 221 ); //trail/fire
set_color_profile_slot( 12, 2, 20, 93, 221 ); //joycon red
set_color_profile_slot( 12, 3, 55, 57, 180 ); //joycon blue
set_color_profile_slot( 12, 4, 87, 101, 181 ); //strap
set_color_profile_slot( 12, 5, 232, 180, 52 ); //stop
set_color_profile_slot( 12, 6, 20, 93, 221 ); //sein vfx

// lgpe
set_color_profile_slot( 13, 0, 201, 222, 160 ); //silhouette
set_color_profile_slot( 13, 1, 203, 82, 53 ); //trail/fire
set_color_profile_slot( 13, 2, 202, 158, 75 ); //joycon red
set_color_profile_slot( 13, 3, 245, 215, 73 ); //joycon blue
set_color_profile_slot( 13, 4, 154, 98, 49 ); //strap
set_color_profile_slot( 13, 5, 245, 215, 73 ); //stop
set_color_profile_slot( 13, 6, 245, 215, 73 ); //sein vfx

// fortnite / chugjug
set_color_profile_slot( 14, 0, 76, 245, 232 ); //silhouette
set_color_profile_slot( 14, 1, 0, 149, 235 ); //trail/fire
set_color_profile_slot( 14, 2, 253, 209, 50 ); //joycon red
set_color_profile_slot( 14, 3, 0, 114, 195 ); //joycon blue
set_color_profile_slot( 14, 4, 163, 171, 193 ); //strap
set_color_profile_slot( 14, 5, 163, 171, 193 ); //stop
set_color_profile_slot( 14, 6, 253, 209, 50 ); //sein vfx

// mario
set_color_profile_slot( 15, 0, 43, 70, 158 ); //silhouette
set_color_profile_slot( 15, 1, 232, 95, 67 ); //trail/fire
set_color_profile_slot( 15, 2, 222, 29, 40 ); //joycon red
set_color_profile_slot( 15, 3, 222, 29, 40 ); //joycon blue
set_color_profile_slot( 15, 4, 115, 15, 21 ); //strap
set_color_profile_slot( 15, 5, 222, 29, 40 ); //stop
set_color_profile_slot( 15, 6, 222, 29, 40 ); //sein vfx

// luigi
set_color_profile_slot( 16, 0, 48, 46, 117 ); //silhouette
set_color_profile_slot( 16, 1, 145, 255, 28 ); //trail/fire
set_color_profile_slot( 16, 2, 26, 171, 60 ); //joycon red
set_color_profile_slot( 16, 3, 26, 171, 60 ); //joycon blue
set_color_profile_slot( 16, 4, 56, 61, 54 ); //strap
set_color_profile_slot( 16, 5, 26, 171, 60 ); //stop
set_color_profile_slot( 16, 6, 26, 171, 60 ); //sein vfx

// Wii Fit
set_color_profile_slot( 17, 0, 236, 232, 230 ); //silhouette
set_color_profile_slot( 17, 1, 104, 194, 220 ); //trail/fire
set_color_profile_slot( 17, 2, 104, 194, 220 ); //joycon red
set_color_profile_slot( 17, 3, 70, 70, 72 ); //joycon blue
set_color_profile_slot( 17, 4, 70, 70, 72 ); //strap
set_color_profile_slot( 17, 5, 104, 194, 220 ); //stop
set_color_profile_slot( 17, 6, 236, 232, 230 ); //sein vfx

// my nintendo gold
set_color_profile_slot( 18, 0, 230, 0, 18 ); //silhouette
set_color_profile_slot( 18, 1, 255, 225, 101 ); //trail/fire
set_color_profile_slot( 18, 2, 255, 225, 101 ); //joycon red
set_color_profile_slot( 18, 3, 253, 186, 0 ); //joycon blue
set_color_profile_slot( 18, 4, 255, 255, 255 ); //strap
set_color_profile_slot( 18, 5, 255, 255, 255 ); //stop
set_color_profile_slot( 18, 6, 253, 186, 0 ); //sein vfx

// Ring Fit
set_color_profile_slot( 19, 0, 254, 137, 60 ); //silhouette
set_color_profile_slot( 19, 1, 255, 198, 25 ); //trail/fire
set_color_profile_slot( 19, 2, 189, 117, 83 ); //joycon red
set_color_profile_slot( 19, 3, 189, 164, 122 ); //joycon blue
set_color_profile_slot( 19, 4, 233, 229, 210 ); //strap
set_color_profile_slot( 19, 5, 255, 117, 25 ); //stop
set_color_profile_slot( 19, 6, 254, 137, 60 ); //sein vfx

// Tipp
set_color_profile_slot( 20, 0, 240, 239, 242 ); //silhouette
set_color_profile_slot( 20, 1, 176, 126, 102 ); //trail/fire
set_color_profile_slot( 20, 2, 251, 105, 38 ); //joycon red
set_color_profile_slot( 20, 3, 251, 105, 38 ); //joycon blue
set_color_profile_slot( 20, 4, 214, 85, 21 ); //strap
set_color_profile_slot( 20, 5, 251, 105, 38 ); //stop
set_color_profile_slot( 20, 6, 251, 105, 38 ); //sein vfx

// Bi Flag
set_color_profile_slot( 21, 0, 155, 79, 150 ); //silhouette
set_color_profile_slot( 21, 1, 247, 106, 179 ); //trail/fire
set_color_profile_slot( 21, 2, 214, 2, 112 ); //joycon red
set_color_profile_slot( 21, 3, 0, 56, 168 ); //joycon blue
set_color_profile_slot( 21, 4, 0, 56, 168 ); //strap
set_color_profile_slot( 21, 5, 214, 2, 112 ); //stop
set_color_profile_slot( 21, 6, 0, 56, 168 ); //sein vfx

// Trans Rights
set_color_profile_slot( 22, 0, 255, 255, 255 ); //silhouette
set_color_profile_slot( 22, 1, 255, 125, 202 ); //trail/fire
set_color_profile_slot( 22, 2, 115, 255, 220 ); //joycon red
set_color_profile_slot( 22, 3, 255, 125, 202 ); //joycon blue
set_color_profile_slot( 22, 4, 115, 255, 220 ); //strap
set_color_profile_slot( 22, 5, 255, 125, 202 ); //stop
set_color_profile_slot( 22, 6, 115, 255, 220 ); //sein vfx

// Virtual Boy
set_color_profile_slot( 23, 0, 255, 16, 10 ); //silhouette
set_color_profile_slot( 23, 1, 64, 0, 9 ); //trail/fire
set_color_profile_slot( 23, 2, 45, 46, 51 ); //joycon red
set_color_profile_slot( 23, 3, 158, 16, 32 ); //joycon blue
set_color_profile_slot( 23, 4, 45, 46, 51 ); //strap
set_color_profile_slot( 23, 5, 255, 16, 10 ); //stop
set_color_profile_slot( 23, 6, 255, 16, 10 ); //sein vfx

// Recklessman
set_color_profile_slot( 24, 0, 23, 91, 157 ); //silhouette
set_color_profile_slot( 24, 1, 255, 167, 0 ); //trail/fire
set_color_profile_slot( 24, 2, 214, 240, 245 ); //joycon red
set_color_profile_slot( 24, 3, 214, 240, 245 ); //joycon blue
set_color_profile_slot( 24, 4, 172, 177, 178 ); //strap
set_color_profile_slot( 24, 5, 255, 53, 28 ); //stop
set_color_profile_slot( 24, 6, 255, 167, 0 ); //sein vfx


/* This is a comment used by that one RoA colors.gml generator tool to store palette data. You can safely keep it in your colors.gml if you plan to re-use the tool later, or safely remove it if you don't.
=== BEGIN JSON PALETTE ===
{"formatversion":1,"data":[{"name":"silhouette","colors":[{"r":28,"g":148,"b":172,"main":true}]},{"name":"trail/fire","colors":[{"r":255,"g":128,"b":204},{"r":255,"g":36,"b":141,"main":true},{"r":187,"g":0,"b":89},{"r":103,"g":31,"b":59},{"r":255,"g":155,"b":193}]},{"name":"joycon red","colors":[{"r":255,"g":53,"b":28,"main":true},{"r":208,"g":24,"b":1}]},{"name":"joycon blue","colors":[{"r":76,"g":217,"b":245},{"r":60,"g":194,"b":221,"main":true}]},{"name":"strap","colors":[{"r":45,"g":46,"b":51,"main":true}]},{"name":"stop","colors":[{"r":200,"g":97,"b":64,"main":true}]},{"name":"sein vfx","colors":[{"r":255,"g":200,"b":33,"main":true},{"r":229,"g":134,"b":25}]}]}
=== END JSON PALETTE ===
*/

