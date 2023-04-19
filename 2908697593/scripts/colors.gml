// colors is script that controls your color palettes.
// RoA Color GML Helper: https://cl-9a.github.io/RoAColorsGmlHelper/

// DEFAULT COLOR

// armor
set_color_profile_slot( 0, 0, 191, 133, 85 );
set_color_profile_slot_range( 0, 168, 19, 47 );

// visor
set_color_profile_slot( 0, 1, 1, 255, 255 );
set_color_profile_slot_range( 1, 14, 1, 45 );

// undersuit
set_color_profile_slot( 0, 2, 118, 118, 118 );
set_color_profile_slot_range( 2, 136, 15, 36 );

// white
set_color_profile_slot( 0, 3, 255, 255, 255 );
set_color_profile_slot_range( 3, 1, 1, 1 );

// plasma cutter
set_color_profile_slot( 0, 4, 255, 215, 0 );
set_color_profile_slot_range( 4, 9, 22, 23 );



// ALTERNATE COLORS
set_num_palettes( 9 );

// Earth Gov Suit
set_color_profile_slot( 1, 0, 65, 98, 120 ); //armor
set_color_profile_slot( 1, 1, 1, 255, 255 ); //visor
set_color_profile_slot( 1, 2, 87, 104, 133 ); //undersuit
set_color_profile_slot( 1, 3, 254, 254, 254 ); //white
set_color_profile_slot( 1, 4, 204, 204, 204 ); //plasma cutter

// Military Grade Suit
set_color_profile_slot( 2, 0, 235, 235, 235 ); //armor
set_color_profile_slot( 2, 1, 255, 1, 1 ); //visor
set_color_profile_slot( 2, 2, 92, 105, 81 ); //undersuit
set_color_profile_slot( 2, 3, 254, 254, 254 ); //white
set_color_profile_slot( 2, 4, 146, 168, 108 ); //plasma cutter

// Elite Suit
set_color_profile_slot( 3, 0, 255, 221, 0 ); //armor
set_color_profile_slot( 3, 1, 1, 255, 217 ); //visor
set_color_profile_slot( 3, 2, 118, 118, 118 ); //undersuit
set_color_profile_slot( 3, 3, 254, 254, 254 ); //white
set_color_profile_slot( 3, 4, 171, 79, 79 ); //plasma cutter

// Advanced Suit
set_color_profile_slot( 4, 0, 105, 110, 117 ); //armor
set_color_profile_slot( 4, 1, 87, 255, 216 ); //visor
set_color_profile_slot( 4, 2, 79, 92, 128 ); //undersuit
set_color_profile_slot( 4, 3, 254, 254, 254 ); //white
set_color_profile_slot( 4, 4, 255, 153, 0 ); //plasma cutter
set_color_profile_slot( 4, 5, 255, 208, 0 ); //flames

// Scorpion Suit
set_color_profile_slot( 5, 0, 130, 78, 71 ); //armor
set_color_profile_slot( 5, 1, 255, 0, 0 ); //visor
set_color_profile_slot( 5, 2, 110, 26, 26 ); //undersuit
set_color_profile_slot( 5, 3, 254, 254, 254 ); //white
set_color_profile_slot( 5, 4, 84, 132, 255 ); //plasma cutter
set_color_profile_slot( 5, 5, 0, 242, 255 ); //flames

// Dread Suit
set_color_profile_slot( 6, 0, 99, 193, 255 ); //armor
set_color_profile_slot( 6, 1, 0, 255, 115 ); //visor
set_color_profile_slot( 6, 2, 219, 219, 219 ); //undersuit
set_color_profile_slot( 6, 3, 254, 254, 254 ); //white
set_color_profile_slot( 6, 4, 171, 79, 79 ); //plasma cutter

// MJOLNIR Suit
set_color_profile_slot( 7, 0, 146, 168, 108 ); //armor
set_color_profile_slot( 7, 1, 255, 195, 0 ); //visor
set_color_profile_slot( 7, 2, 83, 92, 72 ); //undersuit
set_color_profile_slot( 7, 3, 254, 254, 254 ); //white
set_color_profile_slot( 7, 4, 136, 0, 255 ); //plasma cutter

// Ugly Suit
set_color_profile_slot( 8, 0, 255, 66, 233 ); //armor
set_color_profile_slot( 8, 1, 0, 255, 0 ); //visor
set_color_profile_slot( 8, 2, 124, 82, 209 ); //undersuit
set_color_profile_slot( 8, 3, 254, 254, 254 ); //white
set_color_profile_slot( 8, 4, 0, 255, 238 ); //plasma cutter



/* This is a comment used by that one RoA colors.gml generator tool to store palette data. You can safely keep it in your colors.gml if you plan to re-use the tool later, or safely remove it if you don't.
=== BEGIN JSON PALETTE ===
{"formatversion":1,"data":[{"name":"armor","colors":[{"r":120,"g":86,"b":59},{"r":191,"g":133,"b":85,"main":true},{"r":255,"g":177,"b":112},{"r":43,"g":101,"b":118},{"r":85,"g":191,"b":130},{"r":73,"g":44,"b":20}]},{"name":"visor","colors":[{"r":0,"g":112,"b":144},{"r":1,"g":255,"b":255,"main":true}]},{"name":"undersuit","colors":[{"r":25,"g":26,"b":29},{"r":45,"g":45,"b":45},{"r":118,"g":118,"b":118,"main":true},{"r":193,"g":193,"b":193}]},{"name":"white","colors":[{"r":255,"g":255,"b":255,"main":true},{"r":254,"g":254,"b":254}]},{"name":"plasma cutter","colors":[{"r":198,"g":147,"b":3},{"r":255,"g":215,"b":0,"main":true},{"r":255,"g":197,"b":53},{"r":254,"g":216,"b":0},{"r":255,"g":223,"b":54}]},{"name":"flames","colors":[{"r":241,"g":125,"b":30,"main":true}]}]}
=== END JSON PALETTE ===
*/



// Optional Muno Color Method, if you prefer:
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
 
#define rangeSet(sha, col) // Auto-sets ranges to 1. Translates GML's asinine BGR hex colors to RGB.
 
set_color_profile_slot(0, sha, color_get_blue(col), color_get_green(col), color_get_red(col));
set_color_profile_slot_range(sha, 1, 1, 1);
 
 
 
#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));