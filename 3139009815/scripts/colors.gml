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
 
rangeSet(0, $cd0054); //cloak
rangeSet(1, $790056); //cloak (S)
rangeSet(2, $342020); //feathers
rangeSet(3, $241118); //feathers (S)
rangeSet(4, $ffffff); //mask
rangeSet(5, $ffb9b9); //mask (S)
rangeSet(6, $dc71ff); //knives
rangeSet(7, $c93fc1); //knives (S)
//repeat up to 7... (so 8 total bc it starts from 0)
 
 
 
// if needed, you can change the ranges to non-1 numbers here, just like normal.
// this example is just taken from coda's colors, so it doesn't do anything for
// sandbert...

//set_color_profile_slot_range(6, 10, 15, 10);
//et_color_profile_slot_range(7, 20, 20, 20);
 
 
 
// each palette below. just copy-paste the colorSet()s AND the a++; to add more
 
var a = 1;

// blue
colorSet(a, 0, $082699); //cloak
colorSet(a, 1, $050266); //cloak (S)
colorSet(a, 2, $222034); //feathers
colorSet(a, 3, $1a1124); //feathers (S)
colorSet(a, 4, $73f1ff); //mask
colorSet(a, 5, $3bb7e1); //mask (S)
colorSet(a, 6, $e4af00); //knives
colorSet(a, 7, $b56b0e); //knives (S)
//repeat up to 7...
a++;
 
// yellow
colorSet(a, 0, $e4af00); //cloak
colorSet(a, 1, $b56b0e); //cloak (S)
colorSet(a, 2, $6d320a); //feathers
colorSet(a, 3, $4d2112); //feathers (S)
colorSet(a, 4, $ffffff); //mask
colorSet(a, 5, $ffdf75); //mask (S)
colorSet(a, 6, $222034); //knives
colorSet(a, 7, $1a1124); //knives (S)
a++;
 
// green
colorSet(a, 0, $004057); //cloak
colorSet(a, 1, $002036); //cloak (S)
colorSet(a, 2, $203424); //feathers
colorSet(a, 3, $11241c); //feathers (S)
colorSet(a, 4, $dbf877); //mask
colorSet(a, 5, $57d857); //mask (S)
colorSet(a, 6, $6748fb); //knives
colorSet(a, 7, $5e25d7); //knives (S)
a++;
 
// grey
colorSet(a, 0, $ffffff); //cloak
colorSet(a, 1, $eeb9ff); //cloak (S)
colorSet(a, 2, $6e6a92); //feathers
colorSet(a, 3, $453952); //feathers (S)
colorSet(a, 4, $222034); //mask
colorSet(a, 5, $1a1124); //mask (S)
colorSet(a, 6, $ffffff); //knives
colorSet(a, 7, $eeb9ff); //knives (S)
a++;
 
// purple
colorSet(a, 0, $4e178d); //cloak
colorSet(a, 1, $361268); //cloak (S)
colorSet(a, 2, $222034); //feathers
colorSet(a, 3, $1a1124); //feathers (S)
colorSet(a, 4, $ffffff); //mask
colorSet(a, 5, $eeb9ff); //mask (S)
colorSet(a, 6, $dc71ff); //knives
colorSet(a, 7, $c93fc1); //knives (S)
a++;

// PPD
colorSet(a, 0, $6e6a92); //cloak
colorSet(a, 1, $453952); //cloak (S)
colorSet(a, 2, $222034); //feathers
colorSet(a, 3, $1a1124); //feathers (S)
colorSet(a, 4, $ffffff); //mask
colorSet(a, 5, $73f1ff); //mask (S)
colorSet(a, 6, $e4af00); //knives
colorSet(a, 7, $b56b0e); //knives (S)
a++;

//Celia
colorSet(a, 0, $53b86c); //cloak
colorSet(a, 1, $1d8765); //cloak (S)
colorSet(a, 2, $543e57); //feathers
colorSet(a, 3, $342435); //feathers (S)
colorSet(a, 4, $ddb391); //mask
colorSet(a, 5, $ac725e); //mask (S)
colorSet(a, 6, $ff7f53); //knives
colorSet(a, 7, $d24135); //knives (S)
a++;

// Wes
colorSet(a, 0, $aa224a); //cloak
colorSet(a, 1, $911137); //cloak (S)
colorSet(a, 2, $1f2342); //feathers
colorSet(a, 3, $0d1424); //feathers (S)
colorSet(a, 4, $00ff00); //mask
colorSet(a, 5, $009b00); //mask (S)
colorSet(a, 6, $aa224a); //knives
colorSet(a, 7, $911137); //knives (S)
a++;

// Rosso
colorSet(a, 0, $804646); //cloak
colorSet(a, 1, $5b1b1b); //cloak (S)
colorSet(a, 2, $40494c); //feathers
colorSet(a, 3, $283237); //feathers (S)
colorSet(a, 4, $8f8f8f); //mask
colorSet(a, 5, $665b5b); //mask (S)
colorSet(a, 6, $ff8282); //knives
colorSet(a, 7, $ff0000); //knives (S)
a++;

// Pohaku
colorSet(a, 0, $6b293a); //cloak
colorSet(a, 1, $401425); //cloak (S)
colorSet(a, 2, $c4726a); //feathers
colorSet(a, 3, $99534e); //feathers (S)
colorSet(a, 4, $f7b543); //mask
colorSet(a, 5, $ed5a2d); //mask (S)
colorSet(a, 6, $6b293a); //knives
colorSet(a, 7, $401425); //knives (S)
a++;

// Flo
colorSet(a, 0, $585060); //cloak
colorSet(a, 1, $3b3446); //cloak (S)
colorSet(a, 2, $ffffff); //feathers
colorSet(a, 3, $c5bad6); //feathers (S)
colorSet(a, 4, $f7553a); //mask
colorSet(a, 5, $c2204e); //mask (S)
colorSet(a, 6, $938080); //knives
colorSet(a, 7, $70505a); //knives (S)
a++;

// Mako
colorSet(a, 0, $2d3e50); //cloak
colorSet(a, 1, $182839); //cloak (S)
colorSet(a, 2, $f0e7e0); //feathers
colorSet(a, 3, $d1c3b8); //feathers (S)
colorSet(a, 4, $51ff9a); //mask
colorSet(a, 5, $5ace8b); //mask (S)
colorSet(a, 6, $adffff); //knives
colorSet(a, 7, $5ebed7); //knives (S)
a++;

//Silverjack
colorSet(a, 0, $c54444); //cloak
colorSet(a, 1, $862020); //cloak (S)
colorSet(a, 2, $848ed1); //feathers
colorSet(a, 3, $57629e); //feathers (S)
colorSet(a, 4, $3a2c94); //mask
colorSet(a, 5, $311e67); //mask (S)
colorSet(a, 6, $f2e821); //knives
colorSet(a, 7, $bcb524); //knives (S)
a++;

//Nautilith
colorSet(a, 0, $7ad6eb); //cloak
colorSet(a, 1, $1695be); //cloak (S)
colorSet(a, 2, $084646); //feathers
colorSet(a, 3, $031b1b); //feathers (S)
colorSet(a, 4, $95faff); //mask
colorSet(a, 5, $7ad6eb); //mask (S)
colorSet(a, 6, $ffd6b1); //knives
colorSet(a, 7, $ff9f4a); //knives (S)
a++;

//Lux
colorSet(a, 0, $3c3164); //cloak
colorSet(a, 1, $271d48); //cloak (S)
colorSet(a, 2, $6d4553); //feathers
colorSet(a, 3, $522a38); //feathers (S)
colorSet(a, 4, $ffffff); //mask
colorSet(a, 5, $ffd46e); //mask (S)
colorSet(a, 6, $cd688c); //knives
colorSet(a, 7, $b34770); //knives (S)
a++;

//Wren
colorSet(a, 0, $ff6e11); //cloak
colorSet(a, 1, $ca2e04); //cloak (S)
colorSet(a, 2, $50466c); //feathers
colorSet(a, 3, $363252); //feathers (S)
colorSet(a, 4, $84d8e4); //mask
colorSet(a, 5, $468db2); //mask (S)
colorSet(a, 6, $ffba80); //knives
colorSet(a, 7, $cf7d51); //knives (S)
a++;

//Tanya
colorSet(a, 0, $ff82bd); //cloak
colorSet(a, 1, $ff579c); //cloak (S)
colorSet(a, 2, $68ff76); //feathers
colorSet(a, 3, $45a857); //feathers (S)
colorSet(a, 4, $ffcfe5); //mask
colorSet(a, 5, $ffb0d5); //mask (S)
colorSet(a, 6, $fbfafc); //knives
colorSet(a, 7, $d1ffd1); //knives (S)
a++;

//Archarid
colorSet(a, 0, $6c846c); //cloak
colorSet(a, 1, $39513d); //cloak (S)
colorSet(a, 2, $314731); //feathers
colorSet(a, 3, $17301a); //feathers (S)
colorSet(a, 4, $ffffff); //mask
colorSet(a, 5, $9ed3d9); //mask (S)
colorSet(a, 6, $ffe200); //knives
colorSet(a, 7, $e1a700); //knives (S)
a++;

//Crest
colorSet(a, 0, $00ccff); //cloak
colorSet(a, 1, $007ed1); //cloak (S)
colorSet(a, 2, $5a2cf2); //feathers
colorSet(a, 3, $2a0096); //feathers (S)
colorSet(a, 4, $ffffff); //mask
colorSet(a, 5, $bce2ff); //mask (S)
colorSet(a, 6, $00ccff); //knives
colorSet(a, 7, $007ed1); //knives (S)
a++;

//cool skin 1
colorSet(a, 0, $00ffd9); //cloak
colorSet(a, 1, $00957e); //cloak (S)
colorSet(a, 2, $222034); //feathers
colorSet(a, 3, $1a1124); //feathers (S)
colorSet(a, 4, $cd0054); //mask
colorSet(a, 5, $790056); //mask (S)
colorSet(a, 6, $e4af00); //knives
colorSet(a, 7, $b56b0e); //knives (S)
a++;

//cool skin 2
colorSet(a, 0, $e4af00); //cloak
colorSet(a, 1, $b56b0e); //cloak (S)
colorSet(a, 2, $222034); //feathers
colorSet(a, 3, $1a1124); //feathers (S)
colorSet(a, 4, $082699); //mask
colorSet(a, 5, $050266); //mask (S)
colorSet(a, 6, $00ffd9); //knives
colorSet(a, 7, $00957e); //knives (S)
a++;

// Abyss
colorSet(a, 0, $4e178d); //cloak
colorSet(a, 1, $361268); //cloak (S)
colorSet(a, 2, $4f3d5e); //feathers
colorSet(a, 3, $3c2b48); //feathers (S)
colorSet(a, 4, $8d83bc); //mask
colorSet(a, 5, $565492); //mask (S)
colorSet(a, 6, $dc71ff); //knives
colorSet(a, 7, $c93fc1); //knives (S)
a++;

// Early Access
colorSet(a, 0, $a7ba4a); //cloak
colorSet(a, 1, $a7ba4a); //cloak (S)
colorSet(a, 2, $537a3e); //feathers
colorSet(a, 3, $537a3e); //feathers (S)
colorSet(a, 4, $d3e29a); //mask
colorSet(a, 5, $d3e29a); //mask (S)
colorSet(a, 6, $a7ba4a); //knives
colorSet(a, 7, $a7ba4a); //knives (S)
a++;

// Infamous
colorSet(a, 0, $37eaff); //cloak
colorSet(a, 1, $00a8c7); //cloak (S)
colorSet(a, 2, $5653aa); //feathers
colorSet(a, 3, $2f2e74); //feathers (S)
colorSet(a, 4, $00ffa8); //mask
colorSet(a, 5, $00a96f); //mask (S)
colorSet(a, 6, $b92cb8); //knives
colorSet(a, 7, $63008e); //knives (S)
a++;

// Gold Rank
colorSet(a, 0, $f79d00); //cloak
colorSet(a, 1, $e37200); //cloak (S)
colorSet(a, 2, $c8d7e8); //feathers
colorSet(a, 3, $afb4d6); //feathers (S)
colorSet(a, 4, $7e84bd); //mask
colorSet(a, 5, $494d71); //mask (S)
colorSet(a, 6, $fff300); //knives
colorSet(a, 7, $dfc000); //knives (S)
a++;

// Genesis
colorSet(a, 0, $8d0a00); //cloak
colorSet(a, 1, $4a0500); //cloak (S)
colorSet(a, 2, $454545); //feathers
colorSet(a, 3, $302729); //feathers (S)
colorSet(a, 4, $ffffff); //mask
colorSet(a, 5, $ffb9b9); //mask (S)
colorSet(a, 6, $ff5246); //knives
colorSet(a, 7, $db170a); //knives (S)
a++;

set_num_palettes(a); // automatically sets the number for you
 
 
 
#define rangeSet(sha, col) // Auto-sets ranges to 1. Translates GML's asinine BGR hex colors to RGB.
 
set_color_profile_slot(0, sha, color_get_blue(col), color_get_green(col), color_get_red(col));
set_color_profile_slot_range(sha, 1, 1, 1);
 
 
 
#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));