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

// main
set_color_profile_slot( 0, 0, 51, 90, 54 );
set_color_profile_slot_range( 0, 1, 1, 1 );

// shading
set_color_profile_slot( 0, 1, 7, 41, 9 );
set_color_profile_slot_range( 1, 1, 1, 1 );

// eyes
set_color_profile_slot( 0, 2, 167, 186, 74 );
set_color_profile_slot_range( 2, 1, 1, 1 );

// eyes shading
set_color_profile_slot( 0, 3, 103, 120, 19 );
set_color_profile_slot_range( 3, 1, 1, 1 );

// god body
set_color_profile_slot( 0, 4, 29, 52, 48 );
set_color_profile_slot_range( 4, 1, 1, 1 );

// block
set_color_profile_slot( 0, 5, 252, 205, 75 );
set_color_profile_slot_range( 5, 11, 28, 20 );


// ALTERNATE COLORS
set_num_palettes( 18 );

// Pause ahead
set_color_profile_slot( 1, 0, 255, 102, 0 ); //main
set_color_profile_slot( 1, 1, 150, 61, 0 ); //shading
set_color_profile_slot( 1, 2, 247, 245, 243 ); //eyes
set_color_profile_slot( 1, 3, 204, 171, 138 ); //eyes shading
set_color_profile_slot( 1, 4, 0, 136, 255 ); //god body
set_color_profile_slot( 1, 5, 0, 90, 199 ); //block

// trance rights
set_color_profile_slot( 2, 0, 136, 202, 240 ); //main
set_color_profile_slot( 2, 1, 29, 163, 240 ); //shading
set_color_profile_slot( 2, 2, 243, 176, 255 ); //eyes
set_color_profile_slot( 2, 3, 191, 83, 212 ); //eyes shading
set_color_profile_slot( 2, 4, 136, 202, 240 ); //god body
set_color_profile_slot( 2, 5, 243, 176, 255 ); //block

// Bean
set_color_profile_slot( 3, 0, 0, 217, 0 ); //main
set_color_profile_slot( 3, 1, 103, 120, 53 ); //shading
set_color_profile_slot( 3, 2, 0, 100, 189 ); //eyes
set_color_profile_slot( 3, 3, 0, 56, 105 ); //eyes shading
set_color_profile_slot( 3, 4, 255, 0, 0 ); //god body
set_color_profile_slot( 3, 5, 255, 179, 79 ); //block

// BB
set_color_profile_slot( 4, 0, 119, 94, 138 ); //main
set_color_profile_slot( 4, 1, 66, 29, 94 ); //shading
set_color_profile_slot( 4, 2, 108, 255, 82 ); //eyes
set_color_profile_slot( 4, 3, 57, 138, 43 ); //eyes shading
set_color_profile_slot( 4, 4, 119, 94, 138 ); //god body
set_color_profile_slot( 4, 5, 142, 176, 104 ); //block

// OP
set_color_profile_slot( 5, 0, 255, 255, 255 ); //main
set_color_profile_slot( 5, 1, 133, 133, 133 ); //shading
set_color_profile_slot( 5, 2, 255, 0, 0 ); //eyes
set_color_profile_slot( 5, 3, 0, 0, 0 ); //eyes shading
set_color_profile_slot( 5, 4, 255, 0, 0 ); //god body
set_color_profile_slot( 5, 5, 255, 0, 0 ); //block

// fuzz tm
set_color_profile_slot( 6, 0, 61, 61, 61 ); //main
set_color_profile_slot( 6, 1, 26, 20, 20 ); //shading
set_color_profile_slot( 6, 2, 217, 0, 255 ); //eyes
set_color_profile_slot( 6, 3, 137, 0, 161 ); //eyes shading
set_color_profile_slot( 6, 4, 58, 57, 59 ); //god body
set_color_profile_slot( 6, 5, 217, 0, 255 ); //block

// flashy
set_color_profile_slot( 7, 0, 242, 250, 255 ); //main
set_color_profile_slot( 7, 1, 128, 206, 255 ); //shading
set_color_profile_slot( 7, 2, 70, 164, 224 ); //eyes
set_color_profile_slot( 7, 3, 37, 127, 184 ); //eyes shading
set_color_profile_slot( 7, 4, 255, 195, 0 ); //god body
set_color_profile_slot( 7, 5, 255, 195, 0 ); //block

// champ
set_color_profile_slot( 8, 0, 84, 84, 84 ); //main
set_color_profile_slot( 8, 1, 46, 46, 46 ); //shading
set_color_profile_slot( 8, 2, 125, 255, 125 ); //eyes
set_color_profile_slot( 8, 3, 79, 161, 79 ); //eyes shading
set_color_profile_slot( 8, 4, 84, 84, 84 ); //god body
set_color_profile_slot( 8, 5, 125, 255, 125 ); //block

// X
set_color_profile_slot( 9, 0, 254, 250, 255 ); //main
set_color_profile_slot( 9, 1, 186, 117, 201 ); //shading
set_color_profile_slot( 9, 2, 255, 195, 0 ); //eyes
set_color_profile_slot( 9, 3, 168, 128, 0 ); //eyes shading
set_color_profile_slot( 9, 4, 219, 182, 227 ); //god body
set_color_profile_slot( 9, 5, 62, 53, 66 ); //block

// gold
set_color_profile_slot( 10, 0, 230, 180, 0 ); //main
set_color_profile_slot( 10, 1, 110, 86, 0 ); //shading
set_color_profile_slot( 10, 2, 118, 140, 179 ); //eyes
set_color_profile_slot( 10, 3, 84, 110, 156 ); //eyes shading
set_color_profile_slot( 10, 4, 191, 203, 222 ); //god body
set_color_profile_slot( 10, 5, 191, 203, 222 ); //block

// infamous
set_color_profile_slot( 11, 0, 218, 87, 255 ); //main
set_color_profile_slot( 11, 1, 146, 13, 184 ); //shading
set_color_profile_slot( 11, 2, 0, 245, 226 ); //eyes
set_color_profile_slot( 11, 3, 0, 179, 164 ); //eyes shading
set_color_profile_slot( 11, 4, 218, 87, 255 ); //god body
set_color_profile_slot( 11, 5, 0, 245, 226 ); //block

// spooky
set_color_profile_slot( 12, 0, 43, 43, 43 ); //main
set_color_profile_slot( 12, 1, 0, 0, 0 ); //shading
set_color_profile_slot( 12, 2, 255, 102, 0 ); //eyes
set_color_profile_slot( 12, 3, 255, 102, 0 ); //eyes shading
set_color_profile_slot( 12, 4, 255, 102, 0 ); //god body
set_color_profile_slot( 12, 5, 255, 102, 0 ); //block

// gameboy
set_color_profile_slot( 13, 0, 51, 90, 54 ); //main
set_color_profile_slot( 13, 1, 51, 90, 54 ); //shading
set_color_profile_slot( 13, 2, 167, 186, 74 ); //eyes
set_color_profile_slot( 13, 3, 167, 186, 74 ); //eyes shading
set_color_profile_slot( 13, 4, 51, 90, 54 ); //god body
set_color_profile_slot( 13, 5, 167, 186, 74 ); //block

// abyss
set_color_profile_slot( 14, 0, 124, 92, 181 ); //main
set_color_profile_slot( 14, 1, 71, 41, 125 ); //shading
set_color_profile_slot( 14, 2, 194, 175, 230 ); //eyes
set_color_profile_slot( 14, 3, 113, 89, 158 ); //eyes shading
set_color_profile_slot( 14, 4, 194, 175, 230 ); //god body
set_color_profile_slot( 14, 5, 194, 175, 230 ); //block

// isaac
set_color_profile_slot( 15, 0, 227, 198, 197 ); //main
set_color_profile_slot( 15, 1, 207, 156, 155 ); //shading
set_color_profile_slot( 15, 2, 0, 0, 0 ); //eyes
set_color_profile_slot( 15, 3, 154, 204, 205 ); //eyes shading
set_color_profile_slot( 15, 4, 154, 204, 205 ); //god body
set_color_profile_slot( 15, 5, 154, 204, 205 ); //block

// meat boy
set_color_profile_slot( 16, 0, 181, 0, 0 ); //main
set_color_profile_slot( 16, 1, 117, 0, 0 ); //shading
set_color_profile_slot( 16, 2, 0, 0, 0 ); //eyes
set_color_profile_slot( 16, 3, 181, 0, 0 ); //eyes shading
set_color_profile_slot( 16, 4, 117, 0, 0 ); //god body
set_color_profile_slot( 16, 5, 181, 0, 0 ); //block

// fiend
set_color_profile_slot( 17, 0, 178, 142, 214 ); //main
set_color_profile_slot( 17, 1, 136, 101, 172 ); //shading
set_color_profile_slot( 17, 2, 78, 61, 124 ); //eyes
set_color_profile_slot( 17, 3, 44, 24, 97 ); //eyes shading
set_color_profile_slot( 17, 4, 203, 21, 0 ); //god body
set_color_profile_slot( 17, 5, 178, 142, 214 ); //block


/* This is a comment used by that one RoA colors.gml generator tool to store palette data. You can safely keep it in your colors.gml if you plan to re-use the tool later, or safely remove it if you don't.
=== BEGIN JSON PALETTE ===
{"formatversion":1,"data":[{"name":"main","colors":[{"r":51,"g":90,"b":54,"main":true}]},{"name":"shading","colors":[{"r":7,"g":41,"b":9,"main":true}]},{"name":"eyes","colors":[{"r":167,"g":186,"b":74,"main":true}]},{"name":"eyes shading","colors":[{"r":103,"g":120,"b":19,"main":true}]},{"name":"god body","colors":[{"r":29,"g":52,"b":48,"main":true}]},{"name":"block","colors":[{"r":252,"g":205,"b":75,"main":true},{"r":204,"g":150,"b":59},{"r":249,"g":238,"b":142}]}]}
=== END JSON PALETTE ===
*/


/* This is a comment used by that one RoA colors.gml generator tool to store palette data. You can safely keep it in your colors.gml if you plan to re-use the tool later, or safely remove it if you don't.
=== BEGIN JSON PALETTE ===
{"formatversion":1,"data":[{"name":"main","colors":[{"r":51,"g":90,"b":54,"main":true},{"r":7,"g":41,"b":9}]},{"name":"eyes/god","colors":[{"r":167,"g":186,"b":74,"main":true},{"r":103,"g":120,"b":19}]},{"name":"god body","colors":[{"r":29,"g":52,"b":48,"main":true}]},{"name":"unnamed color row","colors":[{"r":252,"g":205,"b":75,"main":true},{"r":204,"g":150,"b":59},{"r":249,"g":238,"b":142}]}]}
=== END JSON PALETTE ===
*/


 
set_num_palettes(a); // automatically sets the number for you
 
 
 
#define rangeSet(sha, col) // Auto-sets ranges to 1. Translates GML's asinine BGR hex colors to RGB.
 
set_color_profile_slot(0, sha, color_get_blue(col), color_get_green(col), color_get_red(col));
set_color_profile_slot_range(sha, 1, 1, 1);
 
 
 
#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));