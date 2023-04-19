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
 
rangeSet(0, $ff4d4d); //Head
rangeSet(1, $b3122d); //Head (S) 
rangeSet(2, $a9f57c); //Stem
rangeSet(3, $59a44a); //Stem (S) 
rangeSet(4, $b36d47); //Pot
rangeSet(5, $803826); //Pot (S) 
rangeSet(6, $f2f9ff); //Spots
rangeSet(7, $f6f2ff); //Lips
//repeat up to 7... (so 8 total bc it starts from 0)
 
 
 
// if needed, you can change the ranges to non-1 numbers here, just like normal.
// this example is just taken from coda's colors, so it doesn't do anything for
// sandbert...
 
set_color_profile_slot_range(2, 1, 1, 1); 
set_color_profile_slot_range(4, 1, 1, 1); 
set_color_profile_slot_range(5, 1, 1, 1);
set_color_profile_slot_range(6, 5, 15, 15);
set_color_profile_slot_range(7, 5, 15, 15);
 
 
 
// each palette below. just copy-paste the colorSet()s AND the a++; to add more
 
var a = 1;

// blue
colorSet(a, 0, $2b4fff); //Head
colorSet(a, 1, $0c28b3); //Head (S) 
colorSet(a, 2, $4af066); //Stem
colorSet(a, 3, $0f8a36); //Stem (S) 
colorSet(a, 4, $9417cf); //Pot
colorSet(a, 5, $47097a); //Pot (S) 
colorSet(a, 6, $59eeff); //Spots
colorSet(a, 7, $f2f3ff); //Lips
//repeat up to 7...
a++;
 
// red
colorSet(a, 0, $ff1717); //Head
colorSet(a, 1, $850000); //Head (S) 
colorSet(a, 2, $ff1717); //Stem
colorSet(a, 3, $850000); //Stem (S) 
colorSet(a, 4, $e344b9); //Pot
colorSet(a, 5, $961187); //Pot (S) 
colorSet(a, 6, $ffe0e0); //Spots
colorSet(a, 7, $ffe0e0); //Lips
a++;
 
// green
colorSet(a, 0, $23c429); //Head
colorSet(a, 1, $006e23); //Head (S) 
colorSet(a, 2, $e250f2); //Stem
colorSet(a, 3, $9b1dc2); //Stem (S) 
colorSet(a, 4, $457b2b); //Pot
colorSet(a, 5, $103e1c); //Pot (S) 
colorSet(a, 6, $f3f2ff); //Spots
colorSet(a, 7, $f3f2ff); //Lips
a++;
 
// grey
colorSet(a, 0, $4d4d4d); //Head
colorSet(a, 1, $1a1c2b); //Head (S) 
colorSet(a, 2, $89d57c); //Stem
colorSet(a, 3, $29843a); //Stem (S) 
colorSet(a, 4, $2e3075); //Pot
colorSet(a, 5, $0a074d); //Pot (S) 
colorSet(a, 6, $f2f9ff); //Spots
colorSet(a, 7, $f2f9ff); //Lips
a++;
 
// pink
colorSet(a, 0, $ff7df8); //Head
colorSet(a, 1, $ad3ecf); //Head (S) 
colorSet(a, 2, $b9f58c); //Stem
colorSet(a, 3, $59944a); //Stem (S) 
colorSet(a, 4, $a759ff); //Pot
colorSet(a, 5, $5627b3); //Pot (S) 
colorSet(a, 6, $f6f2ff); //Spots
colorSet(a, 7, $f6f2ff); //Lips
a++;
 
// yellow
colorSet(a, 0, $ffe530); //Head
colorSet(a, 1, $d06215); //Head (S) 
colorSet(a, 2, $a9d57c); //Stem
colorSet(a, 3, $59844a); //Stem (S) 
colorSet(a, 4, $ff751f); //Pot
colorSet(a, 5, $a81c00); //Pot (S) 
colorSet(a, 6, $f6f2ff); //Spots
colorSet(a, 7, $f6f2ff); //Lips
a++;
 
// fire
colorSet(a, 0, $4f291d); //Head
colorSet(a, 1, $300b0b); //Head (S) 
colorSet(a, 2, $a9f57c); //Stem
colorSet(a, 3, $59a44a); //Stem (S) 
colorSet(a, 4, $ed2d2d); //Pot
colorSet(a, 5, $800026); //Pot (S) 
colorSet(a, 6, $ff751f); //Spots
colorSet(a, 7, $f6f2ff); //Lips
a++;
 
// 64
colorSet(a, 0, $ff1919); //Head
colorSet(a, 1, $940023); //Head (S) 
colorSet(a, 2, $20c956); //Stem
colorSet(a, 3, $00632e); //Stem (S) 
colorSet(a, 4, $a15222); //Pot
colorSet(a, 5, $5c0f00); //Pot (S) 
colorSet(a, 6, $fefeff); //Spots
colorSet(a, 7, $3cb521); //Lips
a++;
 
// Prickly
colorSet(a, 0, $c844e3); //Head
colorSet(a, 1, $640e8c); //Head (S) 
colorSet(a, 2, $89f57c); //Stem
colorSet(a, 3, $39a44a); //Stem (S) 
colorSet(a, 4, $ffee6e); //Pot
colorSet(a, 5, $c27230); //Pot (S) 
colorSet(a, 6, $f7fbff); //Spots
colorSet(a, 7, $f7fbff); //Lips
a++;
 
// Muncher
colorSet(a, 0, $2c2d3b); //Head
colorSet(a, 1, $0c0e17); //Head (S) 
colorSet(a, 2, $f5c133); //Stem
colorSet(a, 3, $a66219); //Stem (S) 
colorSet(a, 4, $f0f0f0); //Pot
colorSet(a, 5, $8a9bbf); //Pot (S) 
colorSet(a, 6, $2a2b38); //Spots
colorSet(a, 7, $f0bb29); //Lips
a++;
 
// Nipper
colorSet(a, 0, $ffffff); //Head
colorSet(a, 1, $88a8b3); //Head (S) 
colorSet(a, 2, $6eff92); //Stem
colorSet(a, 3, $299945); //Stem (S) 
colorSet(a, 4, $646a73); //Pot
colorSet(a, 5, $2d313d); //Pot (S) 
colorSet(a, 6, $ffffff); //Spots
colorSet(a, 7, $f5fdff); //Lips
a++;
 
// Petey
colorSet(a, 0, $ff1919); //Head
colorSet(a, 1, $940023); //Head (S) 
colorSet(a, 2, $3cb521); //Stem
colorSet(a, 3, $006e23); //Stem (S) 
colorSet(a, 4, $ff1919); //Pot
colorSet(a, 5, $940023); //Pot (S) 
colorSet(a, 6, $ffd000); //Spots
colorSet(a, 7, $3cb521); //Lips
a++;
 
// Putrid
colorSet(a, 0, $fff42b); //Head
colorSet(a, 1, $c47600); //Head (S) 
colorSet(a, 2, $35a32f); //Stem
colorSet(a, 3, $0a632c); //Stem (S) 
colorSet(a, 4, $9417cf); //Pot
colorSet(a, 5, $47097a); //Pot (S) 
colorSet(a, 6, $ff1f1f); //Spots
colorSet(a, 7, $45d126); //Lips
a++;
 
// Clown Car
colorSet(a, 0, $ffffff); //Head
colorSet(a, 1, $afb1c7); //Head (S) 
colorSet(a, 2, $6be84f); //Stem
colorSet(a, 3, $229936); //Stem (S) 
colorSet(a, 4, $787878); //Pot
colorSet(a, 5, $464559); //Pot (S) 
colorSet(a, 6, $ffffff); //Spots
colorSet(a, 7, $ff8f17); //Lips
a++;
 
// VAE
colorSet(a, 0, $dd213a); //Head
colorSet(a, 1, $761747); //Head (S) 
colorSet(a, 2, $fffcff); //Stem
colorSet(a, 3, $d199d8); //Stem (S) 
colorSet(a, 4, $412872); //Pot
colorSet(a, 5, $290b29); //Pot (S) 
colorSet(a, 6, $412872); //Spots
colorSet(a, 7, $fffcff); //Lips
a++;
 
// Ramen
colorSet(a, 0, $cf66ff); //Head
colorSet(a, 1, $6722b5); //Head (S) 
colorSet(a, 2, $13b0a0); //Stem
colorSet(a, 3, $005569); //Stem (S) 
colorSet(a, 4, $d41340); //Pot
colorSet(a, 5, $820027); //Pot (S) 
colorSet(a, 6, $f7f8ff); //Spots
colorSet(a, 7, $f7f8ff); //Lips
a++;
 
// Abyss
colorSet(a, 0, $503f5e); //Head
colorSet(a, 1, $2a2338); //Head (S) 
colorSet(a, 2, $a6acd6); //Stem
colorSet(a, 3, $626490); //Stem (S) 
colorSet(a, 4, $565492); //Pot
colorSet(a, 5, $443366); //Pot (S) 
colorSet(a, 6, $dc71ff); //Spots
colorSet(a, 7, $dc71ff); //Lips
a++;
 
// Piranha Drip
colorSet(a, 0, $ffbb00); //Head
colorSet(a, 1, $b85f00); //Head (S) 
colorSet(a, 2, $bfeaff); //Stem
colorSet(a, 3, $648fb5); //Stem (S) 
colorSet(a, 4, $9f5cd6); //Pot
colorSet(a, 5, $622594); //Pot (S) 
colorSet(a, 6, $ffecc2); //Spots
colorSet(a, 7, $ffecc2); //Lips
a++;
 
// Pesky Plumber
colorSet(a, 0, $ff4d4d); //Head
colorSet(a, 1, $b3122d); //Head (S) 
colorSet(a, 2, $587ff5); //Stem
colorSet(a, 3, $2f43a3); //Stem (S) 
colorSet(a, 4, $964f29); //Pot
colorSet(a, 5, $662413); //Pot (S) 
colorSet(a, 6, $f2f9ff); //Spots
colorSet(a, 7, $565559); //Lips
a++;
 
// Boo Killer
colorSet(a, 0, $70ff57); //Head
colorSet(a, 1, $18a337); //Head (S) 
colorSet(a, 2, $5059de); //Stem
colorSet(a, 3, $2d1b94); //Stem (S) 
colorSet(a, 4, $964f29); //Pot
colorSet(a, 5, $662413); //Pot (S) 
colorSet(a, 6, $f2f9ff); //Spots
colorSet(a, 7, $565559); //Lips
a++;
 
// Treasure Hunter
colorSet(a, 0, $fffc33); //Head
colorSet(a, 1, $a86b00); //Head (S) 
colorSet(a, 2, $d119ff); //Stem
colorSet(a, 3, $63008a); //Stem (S) 
colorSet(a, 4, $1dcc28); //Pot
colorSet(a, 5, $006332); //Pot (S) 
colorSet(a, 6, $f2f9ff); //Spots
colorSet(a, 7, $565559); //Lips
a++;
 
// Tennis Player
colorSet(a, 0, $be33ff); //Head
colorSet(a, 1, $550ca8); //Head (S) 
colorSet(a, 2, $464961); //Stem
colorSet(a, 3, $252640); //Stem (S) 
colorSet(a, 4, $ff7017); //Pot
colorSet(a, 5, $a82207); //Pot (S) 
colorSet(a, 6, $f2f9ff); //Spots
colorSet(a, 7, $565559); //Lips
a++;
 
// Chomper
colorSet(a, 0, $b54dff); //Head
colorSet(a, 1, $5921a3); //Head (S) 
colorSet(a, 2, $65cf53); //Stem
colorSet(a, 3, $198a28); //Stem (S) 
colorSet(a, 4, $d1530f); //Pot
colorSet(a, 5, $802200); //Pot (S) 
colorSet(a, 6, $c71cad); //Spots
colorSet(a, 7, $93e6aa); //Lips
a++;
 
// Deku Baba
colorSet(a, 0, $3e84b3); //Head
colorSet(a, 1, $1a416e); //Head (S) 
colorSet(a, 2, $72c756); //Stem
colorSet(a, 3, $1f733f); //Stem (S) 
colorSet(a, 4, $e34f42); //Pot
colorSet(a, 5, $9c1722); //Pot (S) 
colorSet(a, 6, $2061c7); //Spots
colorSet(a, 7, $ffdbc4); //Lips
a++;
 
// Mean & Green
colorSet(a, 0, $78bf41); //Head
colorSet(a, 1, $397a12); //Head (S) 
colorSet(a, 2, $47913a); //Stem
colorSet(a, 3, $115e1b); //Stem (S) 
colorSet(a, 4, $bf541b); //Pot
colorSet(a, 5, $6b1d00); //Pot (S) 
colorSet(a, 6, $2a8212); //Spots
colorSet(a, 7, $ff9175); //Lips
a++;
 
// Trans
colorSet(a, 0, $ff75bc); //Head
colorSet(a, 1, $a82799); //Head (S) 
colorSet(a, 2, $ffffff); //Stem
colorSet(a, 3, $9899b5); //Stem (S) 
colorSet(a, 4, $59bdff); //Pot
colorSet(a, 5, $3074c2); //Pot (S) 
colorSet(a, 6, $fcfdff); //Spots
colorSet(a, 7, $fcfdff); //Lips
a++;
 
// 8-Bit
colorSet(a, 0, $d82800); //Head
colorSet(a, 1, $d82800); //Head (S) 
colorSet(a, 2, $00a800); //Stem
colorSet(a, 3, $00a800); //Stem (S) 
colorSet(a, 4, $c84c0c); //Pot
colorSet(a, 5, $c84c0c); //Pot (S) 
colorSet(a, 6, $ffffff); //Spots
colorSet(a, 7, $ffffff); //Lips
a++;
 
// OG
colorSet(a, 0, $00a800); //Head
colorSet(a, 1, $00a800); //Head (S) 
colorSet(a, 2, $fc9838); //Stem
colorSet(a, 3, $fc9838); //Stem (S) 
colorSet(a, 4, $00a800); //Pot
colorSet(a, 5, $00a800); //Pot (S) 
colorSet(a, 6, $fc9838); //Spots
colorSet(a, 7, $ffffff); //Lips
a++;
 
// Underground
colorSet(a, 0, $007b8c); //Head
colorSet(a, 1, $007b8c); //Head (S) 
colorSet(a, 2, $c84c0c); //Stem
colorSet(a, 3, $c84c0c); //Stem (S) 
colorSet(a, 4, $007b8c); //Pot
colorSet(a, 5, $007b8c); //Pot (S) 
colorSet(a, 6, $c84c0c); //Spots
colorSet(a, 7, $fcbcb0); //Lips
a++;
 
// Lost Levels
colorSet(a, 0, $d82800); //Head
colorSet(a, 1, $d82800); //Head (S) 
colorSet(a, 2, $fc9838); //Stem
colorSet(a, 3, $fc9838); //Stem (S) 
colorSet(a, 4, $d82800); //Pot
colorSet(a, 5, $d82800); //Pot (S) 
colorSet(a, 6, $fc9838); //Spots
colorSet(a, 7, $ffffff); //Lips
a++;
 
// Sarasa Land
colorSet(a, 0, $537a3e); //Head
colorSet(a, 1, $537a3e); //Head (S) 
colorSet(a, 2, $a7ba4a); //Stem
colorSet(a, 3, $a7ba4a); //Stem (S) 
colorSet(a, 4, $234331); //Pot
colorSet(a, 5, $234331); //Pot (S) 
colorSet(a, 6, $d3e29a); //Spots
colorSet(a, 7, $d3e29a); //Lips
a++;
 
set_num_palettes(a); // automatically sets the number for you
 
 
 
#define rangeSet(sha, col) // Auto-sets ranges to 1. Translates GML's asinine BGR hex colors to RGB.
 
set_color_profile_slot(0, sha, color_get_blue(col), color_get_green(col), color_get_red(col));
set_color_profile_slot_range(sha, 1, 1, 1);
 
 
 
#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));