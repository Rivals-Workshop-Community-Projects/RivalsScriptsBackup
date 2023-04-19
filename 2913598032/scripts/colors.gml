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
 
rangeSet(0, $f2f2f2); // Body1
rangeSet(1, $b4aebf); // Body2
rangeSet(2, $663d14); // ShipWheel1
rangeSet(3, $331405); // ShipWheel2
rangeSet(4, $e63917); // Hat1
rangeSet(5, $b30000); // Hat2
rangeSet(6, $ffd919); // Gold1 - Range
rangeSet(7, $194d80); // Spyglass - Range


//repeat up to 7... (so 8 total bc it starts from 0)
 
 
 
// if needed, you can change the ranges to non-1 numbers here, just like normal.
// this example is just taken from coda's colors, so it doesn't do anything for
// sandbert...
 
//set_color_profile_slot_range(0, 11, 11, 22);
//set_color_profile_slot_range(1, 11, 11, 22);
//set_color_profile_slot_range(2, 11, 11, 22);
//set_color_profile_slot_range(3, 11, 11, 22);
set_color_profile_slot_range(6, 11, 11, 22);
set_color_profile_slot_range(7, 12, 10, 21);
 
 
 
// each palette below. just copy-paste the colorSet()s AND the a++; to add more
 
var a = 1;

// 1 - Ghost Pirate Le Chuck
colorSet(a, 0, $1884c8); // Body1
colorSet(a, 1, $0000b0); // Body2
colorSet(a, 2, $6c3808); // ShipWheel1
colorSet(a, 3, $3c2000); // ShipWheel2
colorSet(a, 4, $707070); // Hat1
colorSet(a, 5, $3c2000); // Hat2
colorSet(a, 6, $1884c8); // Gold1
colorSet(a, 7, $0000b0);
//repeat up to 7...
a++;

// 2 - Bonewheel Skeleton
colorSet(a, 0, $e7d388); // Body1
colorSet(a, 1, $a18c4a); // Body2
colorSet(a, 2, $68633d); // ShipWheel1
colorSet(a, 3, $585431); // ShipWheel2
colorSet(a, 4, $fbf0c6); // Hat1
colorSet(a, 5, $ded399); // Hat2
colorSet(a, 6, $fbf0c6); // Gold1
colorSet(a, 7, $ded399);
//repeat up to 7...
a++;

// 3 - Sans Undertale
colorSet(a, 0, $FFFFFF); // Body1
colorSet(a, 1, $beb8cc); // Body2
colorSet(a, 2, $2a2a2a); // ShipWheel1
colorSet(a, 3, $1f1f1f); // ShipWheel2
colorSet(a, 4, $485bc4); // Hat1
colorSet(a, 5, $3e50b2); // Hat2
colorSet(a, 6, $ffd919); // Gold1
colorSet(a, 7, $cc8800);
//repeat up to 7...
a++;

// 4 - Grayfruit
colorSet(a, 0, $4c5769); // Body1
colorSet(a, 1, $09204c); // Body2
colorSet(a, 2, $49dbc8); // ShipWheel1
colorSet(a, 3, $54ff9e); // ShipWheel2
colorSet(a, 4, $49dbc8); // Hat1
colorSet(a, 5, $54ff9e); // Hat2
colorSet(a, 6, $49dbc8); // Gold1
colorSet(a, 7, $54ff9e);
//repeat up to 7...
a++;

// 5 - Wither
colorSet(a, 0, $313636); // Body1
colorSet(a, 1, $222220); // Body2
colorSet(a, 2, $6e6b6c); // ShipWheel1
colorSet(a, 3, $49494b); // ShipWheel2
colorSet(a, 4, $403114); // Hat1
colorSet(a, 5, $281d0a); // Hat2
colorSet(a, 6, $403114); // Gold1
colorSet(a, 7, $281d0a);
//repeat up to 7...
a++;

// 6 - Forsaken
colorSet(a, 0, $bdb7c1); // Body1
colorSet(a, 1, $9789a1); // Body2
colorSet(a, 2, $314072); // ShipWheel1
colorSet(a, 3, $0c0f40); // ShipWheel2
colorSet(a, 4, $314072); // Hat1
colorSet(a, 5, $0c0f40); // Hat2
colorSet(a, 6, $ffffff); // Gold1
colorSet(a, 7, $d5cadd);
//repeat up to 7...
a++;

// 7 - Skeletor
colorSet(a, 0, $ffcf69); // Body1
colorSet(a, 1, $e2ad3d); // Body2
colorSet(a, 2, $5691f7); // ShipWheel1
colorSet(a, 3, $3b76dc); // ShipWheel2
colorSet(a, 4, $39399d); // Hat1
colorSet(a, 5, $262684); // Hat2
colorSet(a, 6, $c2e2e3); // Gold1
colorSet(a, 7, $91b9b4);
//repeat up to 7...
a++;

//  - Toma_Strims
colorSet(a, 0, $e4f4ff); // Body1
colorSet(a, 1, $99bcd4); // Body2
colorSet(a, 2, $0078c8); // ShipWheel1
colorSet(a, 3, $0062a3); // ShipWheel2
colorSet(a, 4, $0078c8); // Hat1
colorSet(a, 5, $0062a3); // Hat2
colorSet(a, 6, $e4f4ff); // Gold1
colorSet(a, 7, $99bcd4);
//repeat up to 7...
a++;

//  - AmberLearner
colorSet(a, 0, $f2f2f2); // Body1
colorSet(a, 1, $b4aebf); // Body2
colorSet(a, 2, $80460d); // ShipWheel1
colorSet(a, 3, $4d1900); // ShipWheel2
colorSet(a, 4, $336666); // Hat1
colorSet(a, 5, $142e33); // Hat2
colorSet(a, 6, $ffd919); // Gold1
colorSet(a, 7, $cc8800);
//repeat up to 7...
a++;

//  - Chop_Milk
colorSet(a, 0, $ed1c24); // Body1
colorSet(a, 1, $c40424); // Body2
colorSet(a, 2, $ffffff); // ShipWheel1
colorSet(a, 3, $c3c3c3); // ShipWheel2
colorSet(a, 4, $9d53b8); // Hat1
colorSet(a, 5, $720899); // Hat2
colorSet(a, 6, $ed1c24); // Gold1
colorSet(a, 7, $c40424);
//repeat up to 7...
a++;
 
set_num_palettes(a); // automatically sets the number for you
 
 
 
#define rangeSet(sha, col) // Auto-sets ranges to 1. Translates GML's asinine BGR hex colors to RGB.
 
set_color_profile_slot(0, sha, color_get_blue(col), color_get_green(col), color_get_red(col));
set_color_profile_slot_range(sha, 1, 1, 1);
 
 
 
#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));