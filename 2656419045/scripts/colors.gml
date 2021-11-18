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

//default (Mario)
rangeSet(0, $FF143C); //Character ID colour
rangeSet(1, $1E6EFF); //Toad's spots
rangeSet(2, $1E5AC8); //Toad's spots (shade)
rangeSet(3, $1C436D); //Toad's outline
rangeSet(4, $C2D6FF); //Toad's white (shade)
rangeSet(5, $3264FF); //HUD Toad's spots
rangeSet(6, $2431C0); //HUD Toad's darker blue
rangeSet(7, $5050FF); //HUD Toad's SMB1 blue
//repeat up to 7... (so 8 total bc it starts from 0)
 
 
 
// if needed, you can change the ranges to non-1 numbers here, just like normal.
// this example is just taken from coda's colors, so it doesn't do anything for
// sandbert...
 
// set_color_profile_slot_range(6, 10, 15, 10);
// set_color_profile_slot_range(7, 20, 20, 20);



// each palette below. just copy-paste the colorSet()s AND the a++; to add more

var a = 1;

//Luigi
colorSet(a, 0, $00A000); //Character ID colour
colorSet(a, 1, $1E6EFF); //Toad's spots
colorSet(a, 2, $1E5AC8); //Toad's spots (shade)
colorSet(a, 3, $1C436D); //Toad's outline
colorSet(a, 4, $C2D6FF); //Toad's white (shade)
colorSet(a, 5, $3264FF); //HUD Toad's spots
colorSet(a, 6, $2431C0); //HUD Toad's darker blue
colorSet(a, 7, $5050FF); //HUD Toad's SMB1 blue
//repeat up to 7...
a++;

//Bucken-Berry
colorSet(a, 0, $3C3CFF); //Character ID colour
colorSet(a, 1, $1E6EFF); //Toad's spots
colorSet(a, 2, $1E5AC8); //Toad's spots (shade)
colorSet(a, 3, $1C436D); //Toad's outline
colorSet(a, 4, $C2D6FF); //Toad's white (shade)
colorSet(a, 5, $3264FF); //HUD Toad's spots
colorSet(a, 6, $2431C0); //HUD Toad's darker blue
colorSet(a, 7, $5050FF); //HUD Toad's SMB1 blue
a++;

//Toadette
colorSet(a, 0, $f99bee); //Character ID colour (Floral pink! <3)
colorSet(a, 1, $1E6EFF); //Toad's spots
colorSet(a, 2, $1E5AC8); //Toad's spots (shade)
colorSet(a, 3, $1C436D); //Toad's outline
colorSet(a, 4, $C2D6FF); //Toad's white (shade)
colorSet(a, 5, $3264FF); //HUD Toad's spots
colorSet(a, 6, $2431C0); //HUD Toad's darker blue
colorSet(a, 7, $5050FF); //HUD Toad's SMB1 blue
a++;

//Ala-Gold
colorSet(a, 0, $FFE31E); //Character ID colour
colorSet(a, 1, $FFE31E); //Toad's spots
colorSet(a, 2, $CEB521); //Toad's spots (shade)
colorSet(a, 3, $786818); //Toad's outline
colorSet(a, 4, $DCE0AE); //Toad's white (shade)
colorSet(a, 5, $FFDC00); //HUD Toad's spots
colorSet(a, 6, $FFA41B); //HUD Toad's darker blue
colorSet(a, 7, $DC852C); //HUD Toad's SMB1 blue
a++;

//Wario
// colorSet(a, 0, $f99bee); //Character ID colour (Floral pink! <3)
// colorSet(a, 1, $1E6EFF); //Toad's spots
// colorSet(a, 2, $1E5AC8); //Toad's spots (shade)
// colorSet(a, 3, $1C436D); //Toad's outline
// colorSet(a, 4, $C2D6FF); //Toad's white (shade)
// colorSet(a, 5, $3264FF); //HUD Toad's spots
// colorSet(a, 6, $2431C0); //HUD Toad's darker blue
// a++;

//Red Toad
colorSet(a, 0, $FF4070); //Character ID colour
colorSet(a, 1, $FF4070); //Toad's spots
colorSet(a, 2, $B02860); //Toad's spots (shade)
colorSet(a, 3, $500000); //Toad's outline
colorSet(a, 4, $FFC2C2); //Toad's white (shade)
colorSet(a, 5, $FE000A); //HUD Toad's spots
colorSet(a, 6, $9C1500); //HUD Toad's darker blue
colorSet(a, 7, $F73910); //HUD Toad's SMB1 blue
a++;

//Green Toad
colorSet(a, 0, $00B800); //Character ID colour
colorSet(a, 1, $00B800); //Toad's spots
colorSet(a, 2, $007800); //Toad's spots (shade)
colorSet(a, 3, $005020); //Toad's outline
colorSet(a, 4, $B7F191); //Toad's white (shade)
colorSet(a, 5, $3CC92F); //HUD Toad's spots
colorSet(a, 6, $3D922B); //HUD Toad's darker blue
colorSet(a, 7, $1A912E); //HUD Toad's SMB1 blue
a++;

//Purple Toad
colorSet(a, 0, $9868F8); //Character ID colour
colorSet(a, 1, $9868F8); //Toad's spots
colorSet(a, 2, $7028F8); //Toad's spots (shade)
colorSet(a, 3, $39007B); //Toad's outline
colorSet(a, 4, $C8C8FF); //Toad's white (shade)
colorSet(a, 5, $B934EE); //HUD Toad's spots
colorSet(a, 6, $58238C); //HUD Toad's darker blue
colorSet(a, 7, $D023CA); //HUD Toad's SMB1 blue
a++;
/*
//Cyan Toad
colorSet(a, 0, $2AD6C5); //Character ID colour
colorSet(a, 1, $9868F8); //Toad's spots
colorSet(a, 2, $7028F8); //Toad's spots (shade)
colorSet(a, 3, $39007B); //Toad's outline
colorSet(a, 4, $C8C8FF); //Toad's white (shade)
a++;

//Orange Toad
colorSet(a, 0, $9868F8); //Character ID colour
colorSet(a, 1, $9868F8); //Toad's spots
colorSet(a, 2, $7028F8); //Toad's spots (shade)
colorSet(a, 3, $39007B); //Toad's outline
colorSet(a, 4, $C8C8FF); //Toad's white (shade)
a++;

//Pink Toad
colorSet(a, 0, $9868F8); //Character ID colour
colorSet(a, 1, $9868F8); //Toad's spots
colorSet(a, 2, $7028F8); //Toad's spots (shade)
colorSet(a, 3, $39007B); //Toad's outline
colorSet(a, 4, $C8C8FF); //Toad's white (shade)
a++;

//Black Toad
colorSet(a, 0, $9868F8); //Character ID colour
colorSet(a, 1, $9868F8); //Toad's spots
colorSet(a, 2, $7028F8); //Toad's spots (shade)
colorSet(a, 3, $39007B); //Toad's outline
colorSet(a, 4, $C8C8FF); //Toad's white (shade)
a++;

//Brown Toad
colorSet(a, 0, $9868F8); //Character ID colour
colorSet(a, 1, $9868F8); //Toad's spots
colorSet(a, 2, $7028F8); //Toad's spots (shade)
colorSet(a, 3, $39007B); //Toad's outline
colorSet(a, 4, $C8C8FF); //Toad's white (shade)
a++;

//Inverse Toad
colorSet(a, 0, $9868F8); //Character ID colour
colorSet(a, 1, $9868F8); //Toad's spots
colorSet(a, 2, $7028F8); //Toad's spots (shade)
colorSet(a, 3, $39007B); //Toad's outline
colorSet(a, 4, $C8C8FF); //Toad's white (shade)
a++;
*/
set_num_palettes(a); // automatically sets the number for you


#define rangeSet(sha, col) // Auto-sets ranges to 1. Translates GML's asinine BGR hex colors to RGB.
    set_color_profile_slot(0, sha, color_get_blue(col), color_get_green(col), color_get_red(col));
    set_color_profile_slot_range(sha, 1, 1, 1);

#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
    set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));