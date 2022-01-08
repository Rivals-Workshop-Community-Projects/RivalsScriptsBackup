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
 
rangeSet(0, $F2F2F2); //Fur
rangeSet(1, $B3ACBF); //Fur S
rangeSet(2, $8f5c99); //Robe
rangeSet(3, $4d3366); //Robe S
rangeSet(4, $dae4e6); //Sword
rangeSet(5, $8a9499); //Sword S
rangeSet(6, $ffcc66); // Eye
//repeat up to 7... (so 8 total bc it starts from 0)
 
 
 
// if needed, you can change the ranges to non-1 numbers here, just like normal.
// this example is just taken from coda's colors, so it doesn't do anything for
// sandbert...

set_color_profile_slot(0, 7, 57, 128, 87);
set_color_profile_slot_range(7, 21, 11, 21);
 
 
 
// each palette below. just copy-paste the colorSet()s AND the a++; to add more
 
var a = 1;

// Skinname
colorSet(a, 0, $e6f7ff); //Fur
colorSet(a, 1, $a3b8cc); //Fur S
colorSet(a, 2, $cc1f1f); //Robe
colorSet(a, 3, $990838); //Robe S
colorSet(a, 4, $0bace6); //Sword
colorSet(a, 5, $004d99); //Sword S
colorSet(a, 6, $5cb8e6); //Eye
set_color_profile_slot(a, 7, 153, 204, 179); // Ribbon
//repeat up to 7...
a++;

// Skinname
colorSet(a, 0, $fff2e6); //Fur
colorSet(a, 1, $ccb1a3); //Fur S
colorSet(a, 2, $cc5229); //Robe
colorSet(a, 3, $991b0f); //Robe S
colorSet(a, 4, $336680); //Sword
colorSet(a, 5, $17324d); //Sword S
colorSet(a, 6, $4d9966); //Eye
set_color_profile_slot(a, 7, 242, 212, 61); // Ribbon
//repeat up to 7...
a++;

// Skinname
colorSet(a, 0, $e6e2d1); //Fur
colorSet(a, 1, $b3a78f); //Fur S
colorSet(a, 2, $0076b4); //Robe
colorSet(a, 3, $004080); //Robe S
colorSet(a, 4, $997a5c); //Sword
colorSet(a, 5, $664433); //Sword S
colorSet(a, 6, $622680); //Eye
set_color_profile_slot(a, 7, 74, 128, 64); // Ribbon
//repeat up to 7...
a++;

// Skinname
colorSet(a, 0, $cfe6e2); //Fur
colorSet(a, 1, $8fb3b3); //Fur S
colorSet(a, 2, $408075); //Robe
colorSet(a, 3, $1f4d4d); //Robe S
colorSet(a, 4, $8a996b); //Sword
colorSet(a, 5, $5f663d); //Sword S
colorSet(a, 6, $cc4429); //Eye
set_color_profile_slot(a, 7, 77, 115, 153); // Ribbon
//repeat up to 7...
a++;

// Skinname
colorSet(a, 0, $e6eaff); //Fur
colorSet(a, 1, $a3a3cc); //Fur S
colorSet(a, 2, $b34a36); //Robe
colorSet(a, 3, $801919); //Robe S
colorSet(a, 4, $e6d273); //Sword
colorSet(a, 5, $b38f47); //Sword S
colorSet(a, 6, $595980); //Eye
set_color_profile_slot(a, 7, 102, 95, 82); // Ribbon
//repeat up to 7...
a++;

// Skinname
colorSet(a, 0, $e8f7ff); //Fur
colorSet(a, 1, $a3b8cc); //Fur S
colorSet(a, 2, $3D9CCC); //Robe
colorSet(a, 3, $1F5C99); //Robe S
colorSet(a, 4, $e6d6b8); //Sword
colorSet(a, 5, $b3aa7d); //Sword S
colorSet(a, 6, $FF6A4D); //Eye
set_color_profile_slot(a, 7, 102, 95, 82); // Ribbon
//repeat up to 7...
a++;

// Skinname
colorSet(a, 0, $ffddcc); //Fur
colorSet(a, 1, $cc998f); //Fur S
colorSet(a, 2, $808073); //Robe
colorSet(a, 3, $4d4a3d); //Robe S
colorSet(a, 4, $b36c25); //Sword
colorSet(a, 5, $80200d); //Sword S
colorSet(a, 6, $404d3d); //Eye
set_color_profile_slot(a, 7, 102, 95, 82); // Ribbon
//repeat up to 7...
a++;

// Skinname
colorSet(a, 0, $e6e6e6); //Fur
colorSet(a, 1, $a7a1b3); //Fur S
colorSet(a, 2, $554d80); //Robe
colorSet(a, 3, $33264d); //Robe S
colorSet(a, 4, $5252CC); //Sword
colorSet(a, 5, $402e99); //Sword S
colorSet(a, 6, $FFFFFF); //Eye
set_color_profile_slot(a, 7, 102, 95, 82); // Ribbon
//repeat up to 7...
a++;

// Skinname
colorSet(a, 0, $eae6ff); //Fur
colorSet(a, 1, $b1a3cc); //Fur S
colorSet(a, 2, $802671); //Robe
colorSet(a, 3, $4d0f4d); //Robe S
colorSet(a, 4, $a3cc52); //Sword
colorSet(a, 5, $87992e); //Sword S
colorSet(a, 6, $a6b9de); //Eye
set_color_profile_slot(a, 7, 102, 95, 82); // Ribbon
//repeat up to 7...
a++;

// Skinname
colorSet(a, 0, $ffe8f4); //Fur
colorSet(a, 1, $cca3be); //Fur S
colorSet(a, 2, $B32453); //Robe
colorSet(a, 3, $800d46); //Robe S
colorSet(a, 4, $cc2996); //Sword
colorSet(a, 5, $990f6b); //Sword S
colorSet(a, 6, $00ffff); //Eye
set_color_profile_slot(a, 7, 102, 95, 82); // Ribbon
//repeat up to 7...
a++;

// Skinname
colorSet(a, 0, $f6fff2); //Fur
colorSet(a, 1, $adccad); //Fur S
colorSet(a, 2, $4d4417); //Robe
colorSet(a, 3, $1a1a05); //Robe S
colorSet(a, 4, $454d37); //Sword
colorSet(a, 5, $141a0f); //Sword S
colorSet(a, 6, $29660a); //Eye
set_color_profile_slot(a, 7, 102, 95, 82); // Ribbon
//repeat up to 7...
a++;

set_num_palettes(a); // automatically sets the number for you
 
 
 
#define rangeSet(sha, col) // Auto-sets ranges to 1. Translates GML's asinine BGR hex colors to RGB.
 
set_color_profile_slot(0, sha, color_get_blue(col), color_get_green(col), color_get_red(col));
set_color_profile_slot_range(sha, 1, 1, 1);
 
 
 
#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));