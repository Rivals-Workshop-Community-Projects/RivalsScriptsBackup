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
 
 
 
// default palette
 
// my personal naming scheme is (S) for the dark shade of a color, and (R) for a
// color which uses ranges to group shades together.
 
// rangeSet(0, $ffffff); //White
// rangeSet(1, $c0c0c0); //White (S)
//repeat up to 7... (so 8 total bc it starts from 0)
 
 
 
// if needed, you can change the ranges to non-1 numbers here, just like normal.
// this example is just taken from coda's colors, so it doesn't do anything for
// sandbert...
 
// set_color_profile_slot_range(6, 10, 15, 10);
// set_color_profile_slot_range(7, 20, 20, 20);
 
// DEFAULT COLOR

// base
set_color_profile_slot( 0, 0, 242, 226, 84 );
set_color_profile_slot_range( 0, 1, 1, 1 );

// base shade
set_color_profile_slot( 0, 1, 233, 150, 58 );
set_color_profile_slot_range( 1, 1, 1, 1 );

// cheek
set_color_profile_slot( 0, 2, 194, 37, 29 );
set_color_profile_slot_range( 2, 7, 17, 14 );

// brown
set_color_profile_slot( 0, 3, 155, 84, 6 );
set_color_profile_slot_range( 3, 1, 1, 1 );

// elec
set_color_profile_slot( 0, 4, 0, 179, 173 );
set_color_profile_slot_range( 4, 1, 1, 31 );

// thunder
set_color_profile_slot( 0, 5, 255, 175, 52 );
set_color_profile_slot_range( 5, 17, 11, 1 );

// thunder glow
set_color_profile_slot( 0, 6, 255, 243, 158 );
set_color_profile_slot_range( 6, 1, 1, 1 );

// white
set_color_profile_slot( 0, 7, 255, 255, 255 );
set_color_profile_slot_range( 7, 1, 1, 1 );



 
 
// each palette below. just copy-paste the colorSet()s AND the a++; to add more
 
var a = 1;

// // blue
// colorSet(a, 0, $9d9fff); //White
// colorSet(a, 1, $6952c0); //White (S)
// //repeat up to 7...
// a++;
 
// // red
// colorSet(a, 0, $ff4b4b); //White
// colorSet(a, 1, $ac1535); //White (S)
// a++;
 
// // green
// colorSet(a, 0, $78ff78); //White
// colorSet(a, 1, $30a153); //White (S)
// a++;
 
// // grey
// colorSet(a, 0, $b4b4b4); //White
// colorSet(a, 1, $757575); //White (S)
// a++;
 
// // yellow
// colorSet(a, 0, $ebf845); //White
// colorSet(a, 1, $c48e1a); //White (S)
// a++;

//ALTERNATE COLORs


// pikablue
set_color_profile_slot( 1, 0, 115, 197, 246 ); //base
set_color_profile_slot( 1, 1, 41, 156, 238 ); //base shade
set_color_profile_slot( 1, 2, 148, 24, 0 ); //cheek
set_color_profile_slot( 1, 3, 255, 255, 255 ); //brown
set_color_profile_slot( 1, 4, 0, 98, 179 ); //elec
set_color_profile_slot( 1, 5, 255, 175, 52 ); //thunder
set_color_profile_slot( 1, 6, 255, 243, 158 ); //thunder glow
set_color_profile_slot( 1, 7, 255, 255, 255 ); //white
a++;
// pikagenta
set_color_profile_slot( 2, 0, 199, 101, 101 ); //base
set_color_profile_slot( 2, 1, 145, 41, 41 ); //base shade
set_color_profile_slot( 2, 2, 255, 195, 0 ); //cheek
set_color_profile_slot( 2, 3, 179, 107, 0 ); //brown
set_color_profile_slot( 2, 4, 179, 0, 95 ); //elec
set_color_profile_slot( 2, 5, 255, 175, 52 ); //thunder
set_color_profile_slot( 2, 6, 255, 243, 158 ); //thunder glow
set_color_profile_slot( 2, 7, 255, 255, 255 ); //white
a++;
// pikagreen
set_color_profile_slot( 3, 0, 154, 255, 94 ); //base
set_color_profile_slot( 3, 1, 63, 176, 63 ); //base shade
set_color_profile_slot( 3, 2, 119, 112, 255 ); //cheek
set_color_profile_slot( 3, 3, 41, 89, 102 ); //brown
set_color_profile_slot( 3, 4, 80, 161, 37 ); //elec
set_color_profile_slot( 3, 5, 255, 175, 52 ); //thunder
set_color_profile_slot( 3, 6, 207, 255, 158 ); //thunder glow
set_color_profile_slot( 3, 7, 255, 255, 255 ); //white
a++;
// pikablack
set_color_profile_slot( 4, 0, 92, 72, 66 ); //base
set_color_profile_slot( 4, 1, 56, 45, 50 ); //base shade
set_color_profile_slot( 4, 2, 117, 2, 2 ); //cheek
set_color_profile_slot( 4, 3, 64, 12, 12 ); //brown
set_color_profile_slot( 4, 4, 140, 20, 20 ); //elec
set_color_profile_slot( 4, 5, 46, 37, 23 ); //thunder
set_color_profile_slot( 4, 6, 184, 184, 184 ); //thunder glow
set_color_profile_slot( 4, 7, 255, 255, 255 ); //white
a++;
// pikurple
set_color_profile_slot( 5, 0, 225, 99, 227 ); //base
set_color_profile_slot( 5, 1, 129, 40, 161 ); //base shade
set_color_profile_slot( 5, 2, 140, 45, 45 ); //cheek
set_color_profile_slot( 5, 3, 122, 20, 20 ); //brown
set_color_profile_slot( 5, 4, 110, 58, 166 ); //elec
set_color_profile_slot( 5, 5, 255, 175, 52 ); //thunder
set_color_profile_slot( 5, 6, 255, 243, 158 ); //thunder glow
set_color_profile_slot( 5, 7, 247, 255, 247 ); //white
a++;
// pikalbino
set_color_profile_slot( 6, 0, 255, 255, 255 ); //base
set_color_profile_slot( 6, 1, 207, 190, 178 ); //base shade
set_color_profile_slot( 6, 2, 117, 76, 56 ); //cheek
set_color_profile_slot( 6, 3, 138, 103, 103 ); //brown
set_color_profile_slot( 6, 4, 0, 179, 173 ); //elec
set_color_profile_slot( 6, 5, 255, 175, 52 ); //thunder
set_color_profile_slot( 6, 6, 255, 243, 158 ); //thunder glow
set_color_profile_slot( 6, 7, 255, 255, 255 ); //white
a++;
// Shiny
set_color_profile_slot( 7, 0, 251, 181, 5 ); //unnamed color row
set_color_profile_slot( 7, 1, 204, 139, 26 ); //unnamed color row
set_color_profile_slot( 7, 2, 194, 37, 29 ); //unnamed color row
set_color_profile_slot( 7, 3, 155, 84, 6 ); //unnamed color row
set_color_profile_slot( 7, 4, 0, 179, 173 ); //unnamed color row
set_color_profile_slot( 7, 5, 255, 175, 52 ); //unnamed color row
set_color_profile_slot( 7, 6, 255, 243, 158 ); //unnamed color row
set_color_profile_slot( 7, 7, 255, 255, 255 ); //unnamed color row
a++;
// Classic
set_color_profile_slot( 8, 0, 255, 239, 255 ); //base
set_color_profile_slot( 8, 1, 255, 231, 115 ); //base shade
set_color_profile_slot( 8, 2, 214, 165, 0 ); //cheek
set_color_profile_slot( 8, 3, 214, 165, 0 ); //brown
set_color_profile_slot( 8, 4, 214, 165, 0 ); //elec
set_color_profile_slot( 8, 5, 214, 165, 0 ); //thunder
set_color_profile_slot( 8, 6, 255, 231, 115 ); //thunder glow
set_color_profile_slot( 8, 7, 255, 239, 255 ); //white
a++;
// Gameboy
set_color_profile_slot( 9, 0, 167, 186, 74 ); //base
set_color_profile_slot( 9, 1, 83, 122, 62 ); //base shade
set_color_profile_slot( 9, 2, 35, 67, 49 ); //cheek
set_color_profile_slot( 9, 3, 35, 67, 49 ); //brown
set_color_profile_slot( 9, 4, 83, 122, 62 ); //elec
set_color_profile_slot( 9, 5, 35, 67, 49 ); //thunder
set_color_profile_slot( 9, 6, 83, 122, 62 ); //thunder glow
set_color_profile_slot( 9, 7, 211, 226, 154 ); //white
a++;
// GnW
set_color_profile_slot( 10, 0, 20, 20, 20 ); //unnamed color row
set_color_profile_slot( 10, 1, 20, 20, 20 ); //unnamed color row
set_color_profile_slot( 10, 2, 20, 20, 20 ); //unnamed color row
set_color_profile_slot( 10, 3, 20, 20, 20 ); //unnamed color row
set_color_profile_slot( 10, 4, 207, 207, 207 ); //unnamed color row
set_color_profile_slot( 10, 5, 207, 207, 207 ); //unnamed color row
set_color_profile_slot( 10, 6, 20, 20, 20 ); //unnamed color row
set_color_profile_slot( 10, 7, 207, 207, 207 ); //unnamed color row
a++

set_num_palettes(a); // automatically sets the number for you
 
 
 
#define rangeSet(sha, col) // Auto-sets ranges to 1. Translates GML's asinine BGR hex colors to RGB.
 
set_color_profile_slot(0, sha, color_get_blue(col), color_get_green(col), color_get_red(col));
set_color_profile_slot_range(sha, 1, 1, 1);
 
 
 
#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));