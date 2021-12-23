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
 
 
 /*
// default palette
 
// my personal naming scheme is (S) for the dark shade of a color, and (R) for a
// color which uses ranges to group shades together.
 
rangeSet(0, $ffffff); //White
rangeSet(1, $c0c0c0); //White (S)
//repeat up to 7... (so 8 total bc it starts from 0)
 
 
 
// if needed, you can change the ranges to non-1 numbers here, just like normal.
// this example is just taken from coda's colors, so it doesn't do anything for
// sandbert...
 
set_color_profile_slot_range(6, 10, 15, 10);
set_color_profile_slot_range(7, 20, 20, 20);
 
 
 
// each palette below. just copy-paste the colorSet()s AND the a++; to add more
 
var a = 1;

// blue
colorSet(a, 0, $9d9fff); //White
colorSet(a, 1, $6952c0); //White (S)
//repeat up to 7...
a++;
 
// red
colorSet(a, 0, $ff4b4b); //White
colorSet(a, 1, $ac1535); //White (S)
a++;
 
// green
colorSet(a, 0, $78ff78); //White
colorSet(a, 1, $30a153); //White (S)
a++;
 
// grey
colorSet(a, 0, $b4b4b4); //White
colorSet(a, 1, $757575); //White (S)
a++;
 
// yellow
colorSet(a, 0, $ebf845); //White
colorSet(a, 1, $c48e1a); //White (S)
a++;
 
set_num_palettes(a); // automatically sets the number for you
 
 
 */
//#define rangeSet(sha, col) // Auto-sets ranges to 1. Translates GML's asinine BGR hex colors to RGB.
 /*
set_color_profile_slot(0, sha, color_get_blue(col), color_get_green(col), color_get_red(col));
set_color_profile_slot_range(sha, 1, 1, 1);
 
 
 */
//#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 /*
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));
*/






// DEFAULT COLOR

// energy
set_color_profile_slot( 0, 0, 255, 111, 0 );
set_color_profile_slot_range( 0, 11, 81, 81 );

// helmet
set_color_profile_slot( 0, 1, 255, 0, 0 );
set_color_profile_slot_range( 1, 11, 81, 81 );

// visor
set_color_profile_slot( 0, 2, 34, 255, 0 );
set_color_profile_slot_range( 2, 11, 81, 81 );

// flesh
set_color_profile_slot( 0, 3, 0, 255, 255 );
set_color_profile_slot_range( 3, 11, 81, 81 );

// torso
set_color_profile_slot( 0, 4, 255, 255, 0 );
set_color_profile_slot_range( 4, 11, 81, 81 );

// hands
set_color_profile_slot( 0, 5, 0, 17, 255 );
set_color_profile_slot_range( 5, 11, 81, 81 );

// connectors
set_color_profile_slot( 0, 6, 111, 0, 255 );
set_color_profile_slot_range( 6, 11, 81, 81 );

// feet
set_color_profile_slot( 0, 7, 255, 0, 242 );
set_color_profile_slot_range( 7, 11, 81, 81 );


// ALTERNATE COLORS
set_num_palettes( 7 ); // Actually 27, but consider carefully which to release

// Optimum Primer
set_color_profile_slot( 1, 0, 0, 255, 247 ); //energy
set_color_profile_slot( 1, 1, 0, 102, 255 ); //helmet
set_color_profile_slot( 1, 2, 0, 255, 247 ); //visor
set_color_profile_slot( 1, 3, 207, 207, 207 ); //flesh
set_color_profile_slot( 1, 4, 255, 0, 0 ); //torso
set_color_profile_slot( 1, 5, 255, 0, 0 ); //hands
set_color_profile_slot( 1, 6, 207, 207, 207 ); //connectors
set_color_profile_slot( 1, 7, 0, 102, 255 ); //feet

// Mal-a-tron
set_color_profile_slot( 2, 0, 111, 0, 255 ); //energy
set_color_profile_slot( 2, 1, 158, 158, 158 ); //helmet
set_color_profile_slot( 2, 2, 255, 0, 0 ); //visor
set_color_profile_slot( 2, 3, 207, 207, 207 ); //flesh
set_color_profile_slot( 2, 4, 158, 158, 158 ); //torso
set_color_profile_slot( 2, 5, 122, 122, 122 ); //hands
set_color_profile_slot( 2, 6, 158, 158, 158 ); //connectors
set_color_profile_slot( 2, 7, 122, 122, 122 ); //feet

// Stinger
set_color_profile_slot( 3, 0, 0, 255, 247 ); //energy
set_color_profile_slot( 3, 1, 255, 221, 0 ); //helmet
set_color_profile_slot( 3, 2, 0, 255, 247 ); //visor
set_color_profile_slot( 3, 3, 207, 207, 207 ); //flesh
set_color_profile_slot( 3, 4, 255, 221, 0 ); //torso
set_color_profile_slot( 3, 5, 255, 221, 0 ); //hands
set_color_profile_slot( 3, 6, 122, 122, 122 ); //connectors
set_color_profile_slot( 3, 7, 255, 221, 0 ); //feet

// Novashriek
set_color_profile_slot( 4, 0, 255, 0, 0 ); //energy
set_color_profile_slot( 4, 1, 122, 122, 122 ); //helmet
set_color_profile_slot( 4, 2, 255, 106, 0 ); //visor
set_color_profile_slot( 4, 3, 207, 207, 207 ); //flesh
set_color_profile_slot( 4, 4, 209, 0, 0 ); //torso
set_color_profile_slot( 4, 5, 0, 132, 255 ); //hands
set_color_profile_slot( 4, 6, 158, 158, 158 ); //connectors
set_color_profile_slot( 4, 7, 0, 132, 255 ); //feet

// Revoke Control
set_color_profile_slot( 5, 0, 0, 255, 247 ); //energy
set_color_profile_slot( 5, 1, 255, 255, 255 ); //helmet
set_color_profile_slot( 5, 2, 0, 255, 247 ); //visor
set_color_profile_slot( 5, 3, 255, 255, 255 ); //flesh
set_color_profile_slot( 5, 4, 253, 110, 255 ); //torso
set_color_profile_slot( 5, 5, 253, 110, 255 ); //hands
set_color_profile_slot( 5, 6, 255, 255, 255 ); //connectors
set_color_profile_slot( 5, 7, 255, 255, 255 ); //feet

// Construction Crew
set_color_profile_slot( 6, 0, 111, 0, 255 ); //energy
set_color_profile_slot( 6, 1, 122, 122, 122 ); //helmet
set_color_profile_slot( 6, 2, 255, 0, 0 ); //visor
set_color_profile_slot( 6, 3, 158, 158, 158 ); //flesh
set_color_profile_slot( 6, 4, 130, 255, 46 ); //torso
set_color_profile_slot( 6, 5, 130, 255, 46 ); //hands
set_color_profile_slot( 6, 6, 111, 0, 255 ); //connectors
set_color_profile_slot( 6, 7, 130, 255, 46 ); //feet

// Not a Unicorn
set_color_profile_slot( 7, 0, 255, 138, 84 ); //energy
set_color_profile_slot( 7, 1, 255, 170, 0 ); //helmet
set_color_profile_slot( 7, 2, 255, 25, 25 ); //visor
set_color_profile_slot( 7, 3, 128, 186, 232 ); //flesh
set_color_profile_slot( 7, 4, 128, 186, 232 ); //torso
set_color_profile_slot( 7, 5, 255, 170, 0 ); //hands
set_color_profile_slot( 7, 6, 255, 170, 0 ); //connectors
set_color_profile_slot( 7, 7, 128, 186, 232 ); //feet

// Mega
set_color_profile_slot( 8, 0, 255, 221, 0 ); //energy
set_color_profile_slot( 8, 1, 34, 77, 214 ); //helmet
set_color_profile_slot( 8, 2, 255, 0, 0 ); //visor
set_color_profile_slot( 8, 3, 242, 213, 177 ); //flesh
set_color_profile_slot( 8, 4, 34, 77, 214 ); //torso
set_color_profile_slot( 8, 5, 34, 77, 214 ); //hands
set_color_profile_slot( 8, 6, 47, 203, 214 ); //connectors
set_color_profile_slot( 8, 7, 34, 77, 214 ); //feet

// The Other M
set_color_profile_slot( 9, 0, 47, 203, 214 ); //energy
set_color_profile_slot( 9, 1, 255, 0, 0 ); //helmet
set_color_profile_slot( 9, 2, 46, 255, 46 ); //visor
set_color_profile_slot( 9, 3, 255, 0, 0 ); //flesh
set_color_profile_slot( 9, 4, 255, 170, 0 ); //torso
set_color_profile_slot( 9, 5, 38, 181, 150 ); //hands
set_color_profile_slot( 9, 6, 255, 221, 0 ); //connectors
set_color_profile_slot( 9, 7, 255, 170, 0 ); //feet

// Spartan Programming
set_color_profile_slot( 10, 0, 47, 203, 214 ); //energy
set_color_profile_slot( 10, 1, 37, 143, 61 ); //helmet
set_color_profile_slot( 10, 2, 255, 162, 0 ); //visor
set_color_profile_slot( 10, 3, 37, 143, 61 ); //flesh
set_color_profile_slot( 10, 4, 37, 143, 61 ); //torso
set_color_profile_slot( 10, 5, 37, 143, 61 ); //hands
set_color_profile_slot( 10, 6, 122, 122, 122 ); //connectors
set_color_profile_slot( 10, 7, 37, 143, 61 ); //feet

// Nerf THIS!
set_color_profile_slot( 11, 0, 33, 207, 56 ); //energy
set_color_profile_slot( 11, 1, 248, 143, 250 ); //helmet
set_color_profile_slot( 11, 2, 78, 179, 60 ); //visor
set_color_profile_slot( 11, 3, 88, 75, 235 ); //flesh
set_color_profile_slot( 11, 4, 248, 143, 250 ); //torso
set_color_profile_slot( 11, 5, 248, 143, 250 ); //hands
set_color_profile_slot( 11, 6, 235, 47, 154 ); //connectors
set_color_profile_slot( 11, 7, 248, 143, 250 ); //feet

// Legendary Reploid
set_color_profile_slot( 12, 0, 87, 199, 68 ); //energy
set_color_profile_slot( 12, 1, 201, 24, 24 ); //helmet
set_color_profile_slot( 12, 2, 87, 199, 68 ); //visor
set_color_profile_slot( 12, 3, 255, 255, 255 ); //flesh
set_color_profile_slot( 12, 4, 201, 24, 24 ); //torso
set_color_profile_slot( 12, 5, 201, 24, 24 ); //hands
set_color_profile_slot( 12, 6, 66, 23, 122 ); //connectors
set_color_profile_slot( 12, 7, 201, 24, 24 ); //feet

// R.E.T.R.O.
set_color_profile_slot( 13, 0, 255, 0, 0 ); //energy
set_color_profile_slot( 13, 1, 122, 122, 122 ); //helmet
set_color_profile_slot( 13, 2, 57, 93, 163 ); //visor
set_color_profile_slot( 13, 3, 122, 122, 122 ); //flesh
set_color_profile_slot( 13, 4, 207, 174, 133 ); //torso
set_color_profile_slot( 13, 5, 214, 28, 68 ); //hands
set_color_profile_slot( 13, 6, 207, 174, 133 ); //connectors
set_color_profile_slot( 13, 7, 207, 174, 133 ); //feet

// Mischief Maker
set_color_profile_slot( 14, 0, 255, 221, 0 ); //energy
set_color_profile_slot( 14, 1, 11, 184, 11 ); //helmet
set_color_profile_slot( 14, 2, 25, 119, 196 ); //visor
set_color_profile_slot( 14, 3, 242, 197, 140 ); //flesh
set_color_profile_slot( 14, 4, 255, 255, 255 ); //torso
set_color_profile_slot( 14, 5, 255, 255, 255 ); //hands
set_color_profile_slot( 14, 6, 153, 18, 18 ); //connectors
set_color_profile_slot( 14, 7, 153, 18, 18 ); //feet

// Gizoid Gambit
set_color_profile_slot( 15, 0, 27, 143, 27 ); //energy
set_color_profile_slot( 15, 1, 255, 115, 0 ); //helmet
set_color_profile_slot( 15, 2, 47, 203, 214 ); //visor
set_color_profile_slot( 15, 3, 255, 236, 204 ); //flesh
set_color_profile_slot( 15, 4, 245, 198, 117 ); //torso
set_color_profile_slot( 15, 5, 245, 198, 117 ); //hands
set_color_profile_slot( 15, 6, 255, 115, 0 ); //connectors
set_color_profile_slot( 15, 7, 245, 198, 117 ); //feet

// Absolute Terror 01
set_color_profile_slot( 16, 0, 255, 83, 48 ); //energy
set_color_profile_slot( 16, 1, 107, 30, 209 ); //helmet
set_color_profile_slot( 16, 2, 55, 0, 255 ); //visor
set_color_profile_slot( 16, 3, 255, 123, 51 ); //flesh
set_color_profile_slot( 16, 4, 107, 30, 209 ); //torso
set_color_profile_slot( 16, 5, 107, 30, 209 ); //hands
set_color_profile_slot( 16, 6, 121, 255, 104 ); //connectors
set_color_profile_slot( 16, 7, 107, 30, 209 ); //feet

// Metal Boy
set_color_profile_slot( 17, 0, 112, 186, 255 ); //energy
set_color_profile_slot( 17, 1, 255, 0, 0 ); //helmet
set_color_profile_slot( 17, 2, 112, 186, 255 ); //visor
set_color_profile_slot( 17, 3, 255, 221, 0 ); //flesh
set_color_profile_slot( 17, 4, 255, 0, 0 ); //torso
set_color_profile_slot( 17, 5, 255, 0, 0 ); //hands
set_color_profile_slot( 17, 6, 255, 221, 0 ); //connectors
set_color_profile_slot( 17, 7, 255, 0, 0 ); //feet

// Fleshy Guy
set_color_profile_slot( 18, 0, 112, 186, 255 ); //energy
set_color_profile_slot( 18, 1, 89, 161, 255 ); //helmet
set_color_profile_slot( 18, 2, 255, 0, 0 ); //visor
set_color_profile_slot( 18, 3, 186, 128, 26 ); //flesh
set_color_profile_slot( 18, 4, 150, 150, 150 ); //torso
set_color_profile_slot( 18, 5, 255, 255, 255 ); //hands
set_color_profile_slot( 18, 6, 89, 161, 255 ); //connectors
set_color_profile_slot( 18, 7, 255, 255, 255 ); //feet

// Space Ranger
set_color_profile_slot( 19, 0, 255, 33, 33 ); //energy
set_color_profile_slot( 19, 1, 111, 0, 255 ); //helmet
set_color_profile_slot( 19, 2, 47, 203, 214 ); //visor
set_color_profile_slot( 19, 3, 242, 197, 140 ); //flesh
set_color_profile_slot( 19, 4, 0, 199, 39 ); //torso
set_color_profile_slot( 19, 5, 255, 255, 255 ); //hands
set_color_profile_slot( 19, 6, 122, 122, 122 ); //connectors
set_color_profile_slot( 19, 7, 255, 255, 255 ); //feet

// XJ-9.5
set_color_profile_slot( 20, 0, 0, 255, 0 ); //energy
set_color_profile_slot( 20, 1, 47, 203, 214 ); //helmet
set_color_profile_slot( 20, 2, 112, 186, 255 ); //visor
set_color_profile_slot( 20, 3, 255, 255, 255 ); //flesh
set_color_profile_slot( 20, 4, 47, 203, 214 ); //torso
set_color_profile_slot( 20, 5, 47, 203, 214 ); //hands
set_color_profile_slot( 20, 6, 255, 255, 255 ); //connectors
set_color_profile_slot( 20, 7, 47, 203, 214 ); //feet

// Road Ruler
set_color_profile_slot( 21, 0, 255, 221, 0 ); //energy
set_color_profile_slot( 21, 1, 255, 221, 0 ); //helmet
set_color_profile_slot( 21, 2, 0, 255, 0 ); //visor
set_color_profile_slot( 21, 3, 242, 197, 140 ); //flesh
set_color_profile_slot( 21, 4, 122, 122, 122 ); //torso
set_color_profile_slot( 21, 5, 122, 122, 122 ); //hands
set_color_profile_slot( 21, 6, 255, 221, 0 ); //connectors
set_color_profile_slot( 21, 7, 255, 221, 0 ); //feet

// Scrap Helper
set_color_profile_slot( 22, 0, 255, 227, 48 ); //energy
set_color_profile_slot( 22, 1, 255, 25, 25 ); //helmet
set_color_profile_slot( 22, 2, 255, 227, 48 ); //visor
set_color_profile_slot( 22, 3, 150, 150, 150 ); //flesh
set_color_profile_slot( 22, 4, 14, 159, 237 ); //torso
set_color_profile_slot( 22, 5, 150, 150, 150 ); //hands
set_color_profile_slot( 22, 6, 14, 159, 237 ); //connectors
set_color_profile_slot( 22, 7, 150, 150, 150 ); //feet

// N-0U
set_color_profile_slot( 23, 0, 208, 255, 0 ); //energy
set_color_profile_slot( 23, 1, 76, 63, 110 ); //helmet
set_color_profile_slot( 23, 2, 255, 226, 38 ); //visor
set_color_profile_slot( 23, 3, 76, 63, 110 ); //flesh
set_color_profile_slot( 23, 4, 130, 119, 153 ); //torso
set_color_profile_slot( 23, 5, 130, 119, 153 ); //hands
set_color_profile_slot( 23, 6, 119, 104, 153 ); //connectors
set_color_profile_slot( 23, 7, 130, 119, 153 ); //feet

// Grand Design
set_color_profile_slot( 24, 0, 255, 221, 0 ); //energy
set_color_profile_slot( 24, 1, 255, 25, 25 ); //helmet
set_color_profile_slot( 24, 2, 18, 132, 255 ); //visor
set_color_profile_slot( 24, 3, 255, 255, 255 ); //flesh
set_color_profile_slot( 24, 4, 255, 25, 25 ); //torso
set_color_profile_slot( 24, 5, 255, 25, 25 ); //hands
set_color_profile_slot( 24, 6, 255, 141, 97 ); //connectors
set_color_profile_slot( 24, 7, 255, 141, 97 ); //feet

// Smolitzer
set_color_profile_slot( 25, 0, 31, 255, 128 ); //energy
set_color_profile_slot( 25, 1, 155, 54, 255 ); //helmet
set_color_profile_slot( 25, 2, 31, 255, 128 ); //visor
set_color_profile_slot( 25, 3, 191, 191, 191 ); //flesh
set_color_profile_slot( 25, 4, 191, 191, 191 ); //torso
set_color_profile_slot( 25, 5, 155, 54, 255 ); //hands
set_color_profile_slot( 25, 6, 155, 54, 255 ); //connectors
set_color_profile_slot( 25, 7, 31, 255, 128 ); //feet

// John Notwoodman
set_color_profile_slot( 26, 0, 0, 143, 28 ); //energy
set_color_profile_slot( 26, 1, 145, 100, 20 ); //helmet
set_color_profile_slot( 26, 2, 0, 143, 28 ); //visor
set_color_profile_slot( 26, 3, 242, 185, 114 ); //flesh
set_color_profile_slot( 26, 4, 145, 100, 20 ); //torso
set_color_profile_slot( 26, 5, 145, 100, 20 ); //hands
set_color_profile_slot( 26, 6, 122, 122, 122 ); //connectors
set_color_profile_slot( 26, 7, 145, 100, 20 ); //feet

/*
// Retroblast
set_color_profile_slot( 27, 0, 255, 106, 0 ); //energy
set_color_profile_slot( 27, 1, 111, 0, 255 ); //helmet
set_color_profile_slot( 27, 2, 255, 106, 0 ); //visor
set_color_profile_slot( 27, 3, 0, 247, 255 ); //flesh
set_color_profile_slot( 27, 4, 0, 102, 255 ); //torso
set_color_profile_slot( 27, 5, 111, 0, 255 ); //hands
set_color_profile_slot( 27, 6, 174, 0, 255 ); //connectors
set_color_profile_slot( 27, 7, 111, 0, 255 ); //feet
*/

/* This is a comment used by that one RoA colors.gml generator tool to store palette data. You can safely keep it in your colors.gml if you plan to re-use the tool later, or safely remove it if you don't.
=== BEGIN JSON PALETTE ===
{"formatversion":1,"data":[{"name":"energy","colors":[{"r":255,"g":111,"b":0,"main":true},{"r":255,"g":226,"b":204},{"r":51,"g":22,"b":0},{"r":255,"g":68,"b":0},{"r":255,"g":153,"b":0}]},{"name":"helmet","colors":[{"r":255,"g":0,"b":0,"main":true},{"r":255,"g":204,"b":204},{"r":51,"g":0,"b":0},{"r":255,"g":0,"b":43},{"r":255,"g":42,"b":0}]},{"name":"visor","colors":[{"r":34,"g":255,"b":0,"main":true},{"r":211,"g":255,"b":204},{"r":7,"g":51,"b":0},{"r":77,"g":255,"b":0},{"r":0,"g":255,"b":8}]},{"name":"flesh","colors":[{"r":0,"g":255,"b":255,"main":true},{"r":204,"g":255,"b":255},{"r":0,"g":51,"b":51},{"r":0,"g":255,"b":213},{"r":0,"g":213,"b":255}]},{"name":"torso","colors":[{"r":255,"g":255,"b":0,"main":true},{"r":255,"g":255,"b":204},{"r":51,"g":51,"b":0},{"r":255,"g":213,"b":0},{"r":212,"g":255,"b":0}]},{"name":"hands","colors":[{"r":0,"g":17,"b":255,"main":true},{"r":204,"g":207,"b":255},{"r":0,"g":3,"b":51},{"r":0,"g":60,"b":255},{"r":25,"g":0,"b":255}]},{"name":"connectors","colors":[{"r":111,"g":0,"b":255,"main":true},{"r":226,"g":204,"b":255},{"r":22,"g":0,"b":51},{"r":68,"g":0,"b":255},{"r":153,"g":0,"b":255}]},{"name":"feet","colors":[{"r":255,"g":0,"b":242,"main":true},{"r":255,"g":204,"b":252},{"r":51,"g":0,"b":48},{"r":225,"g":0,"b":255},{"r":255,"g":0,"b":200}]}]}
=== END JSON PALETTE ===
*/









/*
// Not Wood Man
set_color_profile_slot( 28, 0, 0, 143, 28 ); //energy
set_color_profile_slot( 28, 1, 122, 122, 122 ); //helmet
set_color_profile_slot( 28, 2, 0, 94, 18 ); //visor
set_color_profile_slot( 28, 3, 242, 185, 114 ); //flesh
set_color_profile_slot( 28, 4, 145, 100, 20 ); //torso
set_color_profile_slot( 28, 5, 145, 100, 20 ); //hands
set_color_profile_slot( 28, 6, 122, 122, 122 ); //connectors
set_color_profile_slot( 28, 7, 145, 100, 20 ); //feet

// Doom Stereo
set_color_profile_slot( 29, 0, 255, 255, 255 ); //energy
set_color_profile_slot( 29, 1, 122, 122, 122 ); //helmet
set_color_profile_slot( 29, 2, 0, 86, 214 ); //visor
set_color_profile_slot( 29, 3, 122, 122, 122 ); //flesh
set_color_profile_slot( 29, 4, 222, 69, 27 ); //torso
set_color_profile_slot( 29, 5, 0, 161, 224 ); //hands
set_color_profile_slot( 29, 6, 255, 221, 0 ); //connectors
set_color_profile_slot( 29, 7, 122, 122, 122 ); //feet

// Heaven's Piercer
set_color_profile_slot( 30, 0, 103, 255, 43 ); //energy
set_color_profile_slot( 30, 1, 255, 185, 23 ); //helmet
set_color_profile_slot( 30, 2, 255, 89, 33 ); //visor
set_color_profile_slot( 30, 3, 240, 199, 199 ); //flesh
set_color_profile_slot( 30, 4, 255, 83, 77 ); //torso
set_color_profile_slot( 30, 5, 255, 83, 77 ); //hands
set_color_profile_slot( 30, 6, 122, 122, 122 ); //connectors
set_color_profile_slot( 30, 7, 255, 83, 77 ); //feet
// Show Some Guts, Man
set_color_profile_slot( 31, 0, 255, 123, 0 ); //energy
set_color_profile_slot( 31, 1, 255, 221, 0 ); //helmet
set_color_profile_slot( 31, 2, 255, 0, 0 ); //visor
set_color_profile_slot( 31, 3, 242, 185, 114 ); //flesh
set_color_profile_slot( 31, 4, 122, 122, 122 ); //torso
set_color_profile_slot( 31, 5, 255, 62, 23 ); //hands
set_color_profile_slot( 31, 6, 255, 221, 0 ); //connectors
set_color_profile_slot( 31, 7, 255, 62, 23 ); //feet
*/