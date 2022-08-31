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
 
rangeSet(0, $b35324); // Body1
rangeSet(1, $fff2b3); // Body2/Horns
rangeSet(2, $0f993d); // Eyes
rangeSet(3, $e6a88a); // Ears/Nose
rangeSet(4, $b31247); // Neck thingy
rangeSet(5, $805e4d); // Hooves/Laso

//repeat up to 7... (so 8 total bc it starts from 0)
 
 
 
// if needed, you can change the ranges to non-1 numbers here, just like normal.
// this example is just taken from coda's colors, so it doesn't do anything for
// sandbert...
 
set_color_profile_slot_range(0, 11, 11, 22);
set_color_profile_slot_range(1, 11, 11, 22);
set_color_profile_slot_range(2, 11, 11, 22);
set_color_profile_slot_range(3, 11, 11, 22);
set_color_profile_slot_range(4, 11, 11, 22);
set_color_profile_slot_range(5, 11, 11, 22);
 
 
 
// each palette below. just copy-paste the colorSet()s AND the a++; to add more
 
var a = 1;

// Darknesssssssssssssss
colorSet(a, 0, $4d363d); // Body1
colorSet(a, 1, $998a8a); // Body2/Horns
colorSet(a, 2, $0b9de6); // Eyes
colorSet(a, 3, $e6b8c7); // Ears/Nose
colorSet(a, 4, $cc1470); // Neck thingy
colorSet(a, 5, $802653); // Hooves/Laso
//repeat up to 7...
a++;
 
// Icicle
colorSet(a, 0, $e68e50); // Body1
colorSet(a, 1, $ffdf80); // Body2/Horns
colorSet(a, 2, $66e6ff); // Eyes
colorSet(a, 3, $e6735c); // Ears/Nose
colorSet(a, 4, $66e6ff); // Neck thingy
colorSet(a, 5, $3d9ccc); // Hooves/Laso
a++;
 
// Herder
colorSet(a, 0, $e6bfb8); // Body1
colorSet(a, 1, $ffffff); // Body2/Horns
colorSet(a, 2, $33ccbf); // Eyes
colorSet(a, 3, $ffddcc); // Ears/Nose
colorSet(a, 4, $ffd919); // Neck thingy
colorSet(a, 5, $14121a); // Hooves/Laso
a++;
 
// Fire
colorSet(a, 0, $5ee6b8); // Body1
colorSet(a, 1, $b3ffcc); // Body2/Horns
colorSet(a, 2, $cc0000); // Eyes
colorSet(a, 3, $e6bac8); // Ears/Nose
colorSet(a, 4, $ffe14d); // Neck thingy
colorSet(a, 5, $36b39e); // Hooves/Laso
a++;
 
// Wingding
colorSet(a, 0, $ffea80); // Body1
colorSet(a, 1, $e0ac87); // Body2/Horns
colorSet(a, 2, $733380); // Eyes
colorSet(a, 3, $664729); // Ears/Nose
colorSet(a, 4, $ff3355); // Neck thingy
colorSet(a, 5, $1a0c05); // Hooves/Laso
a++;

// Yarr
colorSet(a, 0, $4d382e); // Body1
colorSet(a, 1, $b38659); // Body2/Horns
colorSet(a, 2, $d96257); // Eyes
colorSet(a, 3, $995a45); // Ears/Nose
colorSet(a, 4, $7acccc); // Neck thingy
colorSet(a, 5, $806659); // Hooves/Laso
a++;

// Merchant
colorSet(a, 0, $cc7a52); // Body1
colorSet(a, 1, $e6e6b8); // Body2/Horns
colorSet(a, 2, $993d6b); // Eyes
colorSet(a, 3, $e6aca1); // Ears/Nose
colorSet(a, 4, $146614); // Neck thingy
colorSet(a, 5, $661f4e); // Hooves/Laso
a++;

// Stealth
colorSet(a, 0, $0f394d); // Body1
colorSet(a, 1, $295266); // Body2/Horns
colorSet(a, 2, $2b2933); // Eyes
colorSet(a, 3, $597380); // Ears/Nose
colorSet(a, 4, $08364d); // Neck thingy
colorSet(a, 5, $1a0d0d); // Hooves/Laso
a++;

// Tank
colorSet(a, 0, $5d5e66); // Body1
colorSet(a, 1, $e6aca1); // Body2/Horns
colorSet(a, 2, $1470cc); // Eyes
colorSet(a, 3, $ffd480); // Ears/Nose
colorSet(a, 4, $d2e673); // Neck thingy
colorSet(a, 5, $292933); // Hooves/Laso
a++;

// Chief
colorSet(a, 0, $6b8299); // Body1
colorSet(a, 1, $e6bf73); // Body2/Horns
colorSet(a, 2, $802626); // Eyes
colorSet(a, 3, $99664d); // Ears/Nose
colorSet(a, 4, $17294d); // Neck thingy
colorSet(a, 5, $141a19); // Hooves/Laso
a++;

// Moonlight
colorSet(a, 0, $3d3d66); // Body1
colorSet(a, 1, $ffffff); // Body2/Horns
colorSet(a, 2, $0f993d); // Eyes
colorSet(a, 3, $7d7db3); // Ears/Nose
colorSet(a, 4, $0f990f); // Neck thingy
colorSet(a, 5, $0f0d1a); // Hooves/Laso
a++;

// Macho
colorSet(a, 0, $e62e8a); // Body1
colorSet(a, 1, $ffff33); // Body2/Horns
colorSet(a, 2, $331a00); // Eyes
colorSet(a, 3, $cc7aa3); // Ears/Nose
colorSet(a, 4, $e6177e); // Neck thingy
colorSet(a, 5, $95b300); // Hooves/Laso
a++;

// Milkpool
colorSet(a, 0, $41364d); // Body1
colorSet(a, 1, $cc5252); // Body2/Horns
colorSet(a, 2, $ffffff); // Eyes
colorSet(a, 3, $575066); // Ears/Nose
colorSet(a, 4, $cc5252); // Neck thingy
colorSet(a, 5, $805e4d); // Hooves/Laso
a++;

// Tea
colorSet(a, 0, $5c5f66); // Body1
colorSet(a, 1, $66ccbb); // Body2/Horns
colorSet(a, 2, $6bb3a7); // Eyes
colorSet(a, 3, $e673ac); // Ears/Nose
colorSet(a, 4, $e67399); // Neck thingy
colorSet(a, 5, $292b33); // Hooves/Laso
a++;

// Shadow
colorSet(a, 0, $4d2f48); // Body1
colorSet(a, 1, $804d6f); // Body2/Horns
colorSet(a, 2, $cc1414); // Eyes
colorSet(a, 3, $41084d); // Ears/Nose
colorSet(a, 4, $41084d); // Neck thingy
colorSet(a, 5, $11081a); // Hooves/Laso
a++;

// Toma_Strims
colorSet(a, 0, $0078c8); // Body1
colorSet(a, 1, $ffffff); // Body2/Horns
colorSet(a, 2, $000000); // Eyes
colorSet(a, 3, $e6b8a1); // Ears/Nose
colorSet(a, 4, $5e5c66); // Neck thingy
colorSet(a, 5, $2c2933); // Hooves/Laso
a++;

// AmberLearner
colorSet(a, 0, $80460d); // Body1
colorSet(a, 1, $cc9966); // Body2/Horns
colorSet(a, 2, $52cc78); // Eyes
colorSet(a, 3, $ffbb33); // Ears/Nose
colorSet(a, 4, $336666); // Neck thingy
colorSet(a, 5, $cc7014); // Hooves/Laso (Dark First)
a++;
 
set_num_palettes(a); // automatically sets the number for you
 
 
 
#define rangeSet(sha, col) // Auto-sets ranges to 1. Translates GML's asinine BGR hex colors to RGB.
 
set_color_profile_slot(0, sha, color_get_blue(col), color_get_green(col), color_get_red(col));
set_color_profile_slot_range(sha, 1, 1, 1);
 
 
 
#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));