/*
 
Muno's easy color system TM.

TLDR instructions at the bottom of this comment block, but you should read the
whole thing so you know what this does.


 
This allows you to easily use RGB hex codes to define your colors. You can get
these quickly by changing the eyedropper in Aseprite (etc) to use RGB color,
then the hex will show in the color area at the corner of the screen. By doing
this, you can quickly swap between Aseprite eyedropper and GMEdit to code in
palettes you've drawn, which greatly reduces tedium.
 
(By default, GML uses Blue, Green, Red instead of Red, Green, Blue for hex
colors. This template allows you to use RGB instead of BGR. You're welcome!)
 
The system is optimized for the color setup style seen in Liz and adopted by me
for chars like Coda, where each shade is its OWN individual color (as opposed to
normal Rivals, where shades of the same color are grouped together). This allows
for better artistic control over the shades for alt costumes, notably fixing
issues with hue shifting.
 
The limitation is that only 8 separate colors can be registered in Rivals's
system. There's limited real estate, and having each shade separately uses more
of it. In light of this, the template ALSO supports ranges - just define them
using set_color_profile_slot_range(), like normal (example below). By default,
all 3 numbers of the range (H, S, V) are set to 1 by rangeSet().

Using this system shouldn't affect any other color-related code, such as code
to change colors mid-match. It's just a different front-end for the normal
color system.
 
Obviously, this is example is for Sandbert's colors. For the alt costumes, I
edited the shading color (except for the grey alt), to demonstrate the added
control that the separate-shade method gives you. I think the shaded color
only actually appears in the CSS artwork, results screen, and so on. See if you
can notice the hue-shifting and saturation-shifting added.



If you prefer the traditional RoA system for whatever reason, you're free to
replace this whole file without breaking any kind of MunoPhone functionality.



TLDR HOW TO
- Replace the hex values and labels in the rangeSet() section with your own
  character's colors, in RGB hex format.
- If needed, change the ranges in the set_color_profile_slot_range() section,
  exactly like normal colors.gml.
- For each alt, include the colorSet()s and the a++. (just copy and paste)
 
*/
 
 
 
// DEFAULT COLOR

// orange
set_color_profile_slot( 0, 0, 238, 83, 19 );
set_color_profile_slot_range( 0, 1, 1, 1 );

// orange2
set_color_profile_slot( 0, 1, 209, 30, 6 );
set_color_profile_slot_range( 1, 11, 4, 21 );

// gray
set_color_profile_slot( 0, 2, 60, 60, 66 );
set_color_profile_slot_range( 2, 1, 1, 1 );

// gray2
set_color_profile_slot( 0, 3, 49, 49, 59 );
set_color_profile_slot_range( 3, 1, 3, 7 );

// red
set_color_profile_slot( 0, 4, 179, 9, 68 );
set_color_profile_slot_range( 4, 12, 10, 17 );

// pink
set_color_profile_slot( 0, 5, 255, 97, 189 );
set_color_profile_slot_range( 5, 7, 27, 18 );

// bronze
set_color_profile_slot( 0, 6, 158, 89, 62 );
set_color_profile_slot_range( 6, 2, 14, 29 );


// ALTERNATE COLORS
set_num_palettes( 25 );

// Cokey Coley
set_color_profile_slot( 1, 0, 237, 176, 176 ); //orange
set_color_profile_slot( 1, 1, 191, 99, 124 ); //orange2
set_color_profile_slot( 1, 2, 82, 54, 54 ); //gray
set_color_profile_slot( 1, 3, 59, 23, 33 ); //gray2
set_color_profile_slot( 1, 4, 150, 39, 39 ); //red
set_color_profile_slot( 1, 5, 237, 176, 176 ); //pink
set_color_profile_slot( 1, 6, 166, 25, 25 ); //bronze

// Gators Aid
set_color_profile_slot( 2, 0, 71, 191, 255 ); //orange
set_color_profile_slot( 2, 1, 23, 75, 140 ); //orange2
set_color_profile_slot( 2, 2, 83, 82, 130 ); //gray
set_color_profile_slot( 2, 3, 47, 52, 84 ); //gray2
set_color_profile_slot( 2, 4, 93, 118, 207 ); //red
set_color_profile_slot( 2, 5, 255, 73, 36 ); //pink
set_color_profile_slot( 2, 6, 194, 72, 23 ); //bronze

// Ain't a crime
set_color_profile_slot( 3, 0, 193, 224, 230 ); //orange
set_color_profile_slot( 3, 1, 115, 184, 189 ); //orange2
set_color_profile_slot( 3, 2, 60, 92, 77 ); //gray
set_color_profile_slot( 3, 3, 45, 59, 77 ); //gray2
set_color_profile_slot( 3, 4, 70, 140, 60 ); //red
set_color_profile_slot( 3, 5, 243, 250, 58 ); //pink
set_color_profile_slot( 3, 6, 96, 91, 186 ); //bronze

// Cream Soda
set_color_profile_slot( 4, 0, 254, 247, 255 ); //orange
set_color_profile_slot( 4, 1, 245, 235, 244 ); //orange2
set_color_profile_slot( 4, 2, 117, 109, 122 ); //gray
set_color_profile_slot( 4, 3, 65, 63, 69 ); //gray2
set_color_profile_slot( 4, 4, 168, 161, 196 ); //red
set_color_profile_slot( 4, 5, 209, 212, 222 ); //pink
set_color_profile_slot( 4, 6, 212, 199, 219 ); //bronze

// Grape
set_color_profile_slot( 5, 0, 167, 100, 181 ); //orange
set_color_profile_slot( 5, 1, 100, 38, 153 ); //orange2
set_color_profile_slot( 5, 2, 57, 44, 82 ); //gray
set_color_profile_slot( 5, 3, 43, 24, 69 ); //gray2
set_color_profile_slot( 5, 4, 175, 145, 200 ); //red
set_color_profile_slot( 5, 5, 159, 224, 169 ); //pink
set_color_profile_slot( 5, 6, 152, 137, 171 ); //bronze

// mug moment
set_color_profile_slot( 6, 0, 237, 127, 66 ); //orange
set_color_profile_slot( 6, 1, 168, 51, 49 ); //orange2
set_color_profile_slot( 6, 2, 207, 111, 91 ); //gray
set_color_profile_slot( 6, 3, 140, 42, 42 ); //gray2
set_color_profile_slot( 6, 4, 212, 156, 98 ); //red
set_color_profile_slot( 6, 5, 255, 248, 242 ); //pink
set_color_profile_slot( 6, 6, 186, 143, 89 ); //bronze

// Steamed
set_color_profile_slot( 7, 0, 200, 176, 219 ); //orange
set_color_profile_slot( 7, 1, 150, 87, 158 ); //orange2
set_color_profile_slot( 7, 2, 114, 70, 144 ); //gray
set_color_profile_slot( 7, 3, 66, 33, 115 ); //gray2
set_color_profile_slot( 7, 4, 213, 128, 87 ); //red
set_color_profile_slot( 7, 5, 157, 212, 84 ); //pink
set_color_profile_slot( 7, 6, 213, 128, 87 ); //bronze

// Poisonous
set_color_profile_slot( 8, 0, 144, 194, 35 ); //orange
set_color_profile_slot( 8, 1, 14, 168, 24 ); //orange2
set_color_profile_slot( 8, 2, 59, 73, 135 ); //gray
set_color_profile_slot( 8, 3, 46, 43, 117 ); //gray2
set_color_profile_slot( 8, 4, 186, 55, 8 ); //red
set_color_profile_slot( 8, 5, 58, 210, 228 ); //pink
set_color_profile_slot( 8, 6, 193, 193, 157 ); //bronze

// Legendary
set_color_profile_slot( 9, 0, 237, 182, 119 ); //orange
set_color_profile_slot( 9, 1, 143, 100, 47 ); //orange2
set_color_profile_slot( 9, 2, 32, 63, 84 ); //gray
set_color_profile_slot( 9, 3, 19, 31, 39 ); //gray2
set_color_profile_slot( 9, 4, 19, 31, 39 ); //red
set_color_profile_slot( 9, 5, 250, 201, 157 ); //pink
set_color_profile_slot( 9, 6, 105, 57, 15 ); //bronze

// Ironclad
set_color_profile_slot( 10, 0, 255, 243, 87 ); //orange
set_color_profile_slot( 10, 1, 255, 165, 66 ); //orange2
set_color_profile_slot( 10, 2, 112, 117, 101 ); //gray
set_color_profile_slot( 10, 3, 84, 82, 79 ); //gray2
set_color_profile_slot( 10, 4, 33, 61, 34 ); //red
set_color_profile_slot( 10, 5, 133, 35, 45 ); //pink
set_color_profile_slot( 10, 6, 184, 78, 29 ); //bronze

// Starred Wolf
set_color_profile_slot( 11, 0, 255, 190, 61 ); //orange
set_color_profile_slot( 11, 1, 184, 105, 59 ); //orange2
set_color_profile_slot( 11, 2, 96, 124, 176 ); //gray
set_color_profile_slot( 11, 3, 49, 79, 138 ); //gray2
set_color_profile_slot( 11, 4, 184, 14, 82 ); //red
set_color_profile_slot( 11, 5, 255, 213, 122 ); //pink
set_color_profile_slot( 11, 6, 70, 74, 74 ); //bronze

// Killing Moon
set_color_profile_slot( 12, 0, 230, 39, 39 ); //orange
set_color_profile_slot( 12, 1, 128, 10, 91 ); //orange2
set_color_profile_slot( 12, 2, 140, 78, 45 ); //gray
set_color_profile_slot( 12, 3, 99, 31, 21 ); //gray2
set_color_profile_slot( 12, 4, 32, 31, 69 ); //red
set_color_profile_slot( 12, 5, 64, 28, 19 ); //pink
set_color_profile_slot( 12, 6, 158, 46, 46 ); //bronze

// Wulfamania
set_color_profile_slot( 13, 0, 217, 190, 165 ); //orange
set_color_profile_slot( 13, 1, 150, 119, 114 ); //orange2
set_color_profile_slot( 13, 2, 201, 195, 181 ); //gray
set_color_profile_slot( 13, 3, 109, 144, 150 ); //gray2
set_color_profile_slot( 13, 4, 46, 40, 33 ); //red
set_color_profile_slot( 13, 5, 235, 42, 45 ); //pink
set_color_profile_slot( 13, 6, 201, 166, 131 ); //bronze

// Crystalized
set_color_profile_slot( 14, 0, 236, 118, 194 ); //orange
set_color_profile_slot( 14, 1, 161, 52, 121 ); //orange2
set_color_profile_slot( 14, 2, 176, 114, 63 ); //gray
set_color_profile_slot( 14, 3, 135, 44, 34 ); //gray2
set_color_profile_slot( 14, 4, 205, 202, 207 ); //red
set_color_profile_slot( 14, 5, 69, 69, 69 ); //pink
set_color_profile_slot( 14, 6, 204, 67, 155 ); //bronze

// Gief
set_color_profile_slot( 15, 0, 224, 123, 123 ); //orange
set_color_profile_slot( 15, 1, 179, 104, 104 ); //orange2
set_color_profile_slot( 15, 2, 245, 175, 100 ); //gray
set_color_profile_slot( 15, 3, 199, 137, 70 ); //gray2
set_color_profile_slot( 15, 4, 181, 22, 22 ); //red
set_color_profile_slot( 15, 5, 255, 204, 51 ); //pink
set_color_profile_slot( 15, 6, 77, 48, 29 ); //bronze

// 16
set_color_profile_slot( 16, 0, 245, 101, 34 ); //orange
set_color_profile_slot( 16, 1, 212, 99, 38 ); //orange2
set_color_profile_slot( 16, 2, 71, 71, 71 ); //gray
set_color_profile_slot( 16, 3, 36, 36, 36 ); //gray2
set_color_profile_slot( 16, 4, 146, 168, 71 ); //red
set_color_profile_slot( 16, 5, 203, 245, 64 ); //pink
set_color_profile_slot( 16, 6, 229, 134, 89 ); //bronze

// Rude
set_color_profile_slot( 17, 0, 250, 177, 58 ); //orange
set_color_profile_slot( 17, 1, 212, 109, 13 ); //orange2
set_color_profile_slot( 17, 2, 136, 23, 106 ); //gray
set_color_profile_slot( 17, 3, 94, 0, 99 ); //gray2
set_color_profile_slot( 17, 4, 0, 32, 23 ); //red
set_color_profile_slot( 17, 5, 62, 233, 194 ); //pink
set_color_profile_slot( 17, 6, 248, 131, 215 ); //bronze

// Marketable
set_color_profile_slot( 18, 0, 255, 255, 255 ); //orange
set_color_profile_slot( 18, 1, 209, 209, 209 ); //orange2
set_color_profile_slot( 18, 2, 255, 195, 0 ); //gray
set_color_profile_slot( 18, 3, 212, 124, 0 ); //gray2
set_color_profile_slot( 18, 4, 255, 145, 0 ); //red
set_color_profile_slot( 18, 5, 255, 255, 255 ); //pink
set_color_profile_slot( 18, 6, 191, 191, 191 ); //bronze

// Nunya Business
set_color_profile_slot( 19, 0, 255, 244, 51 ); //orange
set_color_profile_slot( 19, 1, 191, 170, 29 ); //orange2
set_color_profile_slot( 19, 2, 45, 45, 45 ); //gray
set_color_profile_slot( 19, 3, 29, 25, 36 ); //gray2
set_color_profile_slot( 19, 4, 155, 89, 208 ); //red
set_color_profile_slot( 19, 5, 214, 200, 232 ); //pink
set_color_profile_slot( 19, 6, 214, 200, 232 ); //bronze

// Transcendent
set_color_profile_slot( 20, 0, 161, 230, 255 ); //orange
set_color_profile_slot( 20, 1, 89, 178, 222 ); //orange2
set_color_profile_slot( 20, 2, 249, 173, 255 ); //gray
set_color_profile_slot( 20, 3, 193, 109, 199 ); //gray2
set_color_profile_slot( 20, 4, 147, 176, 219 ); //red
set_color_profile_slot( 20, 5, 209, 209, 209 ); //pink
set_color_profile_slot( 20, 6, 207, 207, 207 ); //bronze

// LETS GO LESBIANS
set_color_profile_slot( 21, 0, 242, 61, 29 ); //orange
set_color_profile_slot( 21, 1, 196, 58, 10 ); //orange2
set_color_profile_slot( 21, 2, 82, 59, 92 ); //gray
set_color_profile_slot( 21, 3, 41, 49, 66 ); //gray2
set_color_profile_slot( 21, 4, 173, 92, 167 ); //red
set_color_profile_slot( 21, 5, 255, 255, 255 ); //pink
set_color_profile_slot( 21, 6, 255, 209, 209 ); //bronze

// Pierce the Heavens
set_color_profile_slot( 22, 0, 255, 0, 0 ); //orange
set_color_profile_slot( 22, 1, 176, 0, 0 ); //orange2
set_color_profile_slot( 22, 2, 81, 61, 112 ); //gray
set_color_profile_slot( 22, 3, 33, 33, 33 ); //gray2
set_color_profile_slot( 22, 4, 184, 0, 0 ); //red
set_color_profile_slot( 22, 5, 255, 193, 92 ); //pink
set_color_profile_slot( 22, 6, 28, 94, 176 ); //bronze

// Wog
set_color_profile_slot( 23, 0, 255, 0, 0 ); //orange
set_color_profile_slot( 23, 1, 179, 0, 64 ); //orange2
set_color_profile_slot( 23, 2, 68, 68, 101 ); //gray
set_color_profile_slot( 23, 3, 26, 26, 51 ); //gray2
set_color_profile_slot( 23, 4, 171, 197, 222 ); //red
set_color_profile_slot( 23, 5, 255, 0, 0 ); //pink
set_color_profile_slot( 23, 6, 179, 0, 64 ); //bronze

// Medicinal Spices
set_color_profile_slot( 24, 0, 144, 45, 29 ); //orange
set_color_profile_slot( 24, 1, 76, 25, 24 ); //orange2
set_color_profile_slot( 24, 2, 255, 255, 255 ); //gray
set_color_profile_slot( 24, 3, 207, 207, 207 ); //gray2
set_color_profile_slot( 24, 4, 144, 30, 43 ); //red
set_color_profile_slot( 24, 5, 116, 38, 50 ); //pink
set_color_profile_slot( 24, 6, 144, 30, 43 ); //bronze

/* This is a comment used by that one RoA colors.gml generator tool to store palette data. You can safely keep it in your colors.gml if you plan to re-use the tool later, or safely remove it if you don't.
=== BEGIN JSON PALETTE ===
{"formatversion":1,"data":[{"name":"orange","colors":[{"r":238,"g":83,"b":19,"main":true}]},{"name":"orange2","colors":[{"r":209,"g":30,"b":6,"main":true},{"r":158,"g":0,"b":8}]},{"name":"gray","colors":[{"r":60,"g":60,"b":66,"main":true}]},{"name":"gray2","colors":[{"r":49,"g":49,"b":59,"main":true},{"r":35,"g":35,"b":43}]},{"name":"red","colors":[{"r":219,"g":30,"b":63},{"r":179,"g":9,"b":68,"main":true},{"r":143,"g":0,"b":50}]},{"name":"pink","colors":[{"r":255,"g":131,"b":211},{"r":255,"g":97,"b":189,"main":true},{"r":212,"g":25,"b":115}]},{"name":"bronze","colors":[{"r":229,"g":150,"b":118},{"r":158,"g":89,"b":62,"main":true},{"r":130,"g":60,"b":35}]}]}
=== END JSON PALETTE ===
*/




 
 
 
#define rangeSet(sha, col) // Auto-sets ranges to 1. Translates GML's asinine BGR hex colors to RGB.
 
set_color_profile_slot(0, sha, color_get_blue(col), color_get_green(col), color_get_red(col));
set_color_profile_slot_range(sha, 1, 1, 1);
 
 
 
#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));