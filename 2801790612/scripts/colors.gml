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

rangeSet(0, $1940ff); //Blue
rangeSet(1, $0022cc); //Blue (S)
rangeSet(2, $f2f2f2); //White
rangeSet(3, $b4aebf); //White (S)
rangeSet(4, $001eb3); //LogoBlue
rangeSet(5, $ff1919); //LogoRed
rangeSet(6, $802a19); //PepsiLight
rangeSet(7, $4d0808); //PepsiDark

//repeat up to 7... (so 8 total bc it starts from 0)
 
 
 
// if needed, you can change the ranges to non-1 numbers here, just like normal.
// this example is just taken from coda's colors, so it doesn't do anything for
// sandbert...
 
//set_color_profile_slot_range(6, 10, 15, 10);
//set_color_profile_slot_range(7, 20, 20, 20);
 
 
 
// each palette below. just copy-paste the colorSet()s AND the a++; to add more
 
var a = 1;

// classic
colorSet(a, 0, $d42313); //Blue
colorSet(a, 1, $ac1407); //Blue (S)
colorSet(a, 2, $f2f2f2); //White
colorSet(a, 3, $b4aebf); //White (S)
colorSet(a, 4, $001eb3); //LogoBlue
colorSet(a, 5, $ff1919); //LogoRed
colorSet(a, 6, $802a19); //PepsiLight
colorSet(a, 7, $4d0808); //PepsiDark

//repeat up to 7...
a++;
 
// Fanta Orange
colorSet(a, 0, $ff6619); //Blue
colorSet(a, 1, $cc2200); //Blue (S)
colorSet(a, 2, $f2f2f2); //White
colorSet(a, 3, $b4aebf); //White (S)
colorSet(a, 4, $0a1966); //LogoBlue
colorSet(a, 5, $33991f); //LogoRed
colorSet(a, 6, $ff9413); //PepsiLight
colorSet(a, 7, $ff8016); //PepsiDark
a++;
 
// Mountain Dew
colorSet(a, 0, $7db347); //Blue
colorSet(a, 1, $628026); //Blue (S)
colorSet(a, 2, $f2f2f2); //White
colorSet(a, 3, $b4aebf); //White (S)
colorSet(a, 4, $cc1433); //LogoBlue
colorSet(a, 5, $4d4d4d); //LogoRed
colorSet(a, 6, $94c93d); //PepsiLight
colorSet(a, 7, $85b537); //PepsiDark
a++;
 
// Crush Grape
colorSet(a, 0, $8f5c99); //Blue
colorSet(a, 1, $553366); //Blue (S)
colorSet(a, 2, $f2f2f2); //White
colorSet(a, 3, $b3aebf); //White (S)
colorSet(a, 4, $8f5c99); //LogoBlue
colorSet(a, 5, $006644); //LogoRed
colorSet(a, 6, $52334f); //PepsiLight
colorSet(a, 7, $261e2a); //PepsiDark
a++;
 
// A&W
colorSet(a, 0, $886640); //Blue
colorSet(a, 1, $544420); //Blue (S)
colorSet(a, 2, $fdf7e9); //White
colorSet(a, 3, $c9c5a7); //White (S)
colorSet(a, 4, $cc2929); //LogoBlue
colorSet(a, 5, $4d3326); //LogoRed
colorSet(a, 6, $4f2400); //PepsiLight
colorSet(a, 7, $371900); //PepsiDark
a++;

//BEPIS
colorSet(a, 0, $4bd3c9); //Blue
colorSet(a, 1, $29949e); //Blue (S)
colorSet(a, 2, $f2f2f2); //White
colorSet(a, 3, $b4aebf); //White (S)
colorSet(a, 4, $4bd3c9); //LogoBlue
colorSet(a, 5, $df7635); //LogoRed
colorSet(a, 6, $802a19); //PepsiLight
colorSet(a, 7, $4d0808); //PepsiDark
a++;

//Infamous
colorSet(a, 0, $5653aa); //Blue
colorSet(a, 1, $484194); //Blue (S)
colorSet(a, 2, $00ffa8); //White
colorSet(a, 3, $03d08a); //White (S)
colorSet(a, 4, $d445fe); //LogoBlue
colorSet(a, 5, $37eaff); //LogoRed
colorSet(a, 6, $37eaff); //PepsiLight
colorSet(a, 7, $00ebc0); //PepsiDark
//colorSet(a, 0, $5653aa); //Blue
//colorSet(a, 1, $484194); //Blue (S)
//colorSet(a, 2, $37eaff); //White
//colorSet(a, 3, $00ebc0); //White (S)
//colorSet(a, 4, $d445fe); //LogoBlue
//colorSet(a, 5, $37eaff); //LogoRed
//colorSet(a, 6, $00ffa8); //PepsiLight
//colorSet(a, 7, $03d08a); //PepsiDark
a++;

//Abyss
colorSet(a, 0, $565492); //Blue
colorSet(a, 1, $32305f); //Blue (S)
colorSet(a, 2, $dc71ff); //White
colorSet(a, 3, $a93fc9); //White (S)
colorSet(a, 4, $503d5f); //LogoBlue
colorSet(a, 5, $32305f); //LogoRed
colorSet(a, 6, $dc71ff); //PepsiLight
colorSet(a, 7, $923bce); //PepsiDark
a++;

//Genesis
colorSet(a, 0, $464444); //Blue
colorSet(a, 1, $2c2223); //Blue (S)
colorSet(a, 2, $e00b00); //White
colorSet(a, 3, $ab1700); //White (S)
colorSet(a, 4, $464444); //LogoBlue
colorSet(a, 5, $464444); //LogoRed
colorSet(a, 6, $ffffff); //PepsiLight
colorSet(a, 7, $e00b00); //PepsiDark
a++;

//Early Access
colorSet(a, 0, $53703e); //Blue
colorSet(a, 1, $53703e); //Blue (S)
colorSet(a, 2, $a7ba4a); //White
colorSet(a, 3, $a7ba4a); //White (S)
colorSet(a, 4, $d3e29a); //LogoBlue
colorSet(a, 5, $53703e); //LogoRed
colorSet(a, 6, $d3e29a); //PepsiLight
colorSet(a, 7, $a7ba4a); //PepsiDark
a++;

//BLM
colorSet(a, 0, $212121); //Blue
colorSet(a, 1, $0f0f0f); //Blue (S)
colorSet(a, 2, $e6ff00); //White
colorSet(a, 3, $d9b500); //White (S)
colorSet(a, 4, $150b04); //LogoBlue
colorSet(a, 5, $703b16); //LogoRed
colorSet(a, 6, $e6ff00); //PepsiLight
colorSet(a, 7, $d9b500); //PepsiDark
a++;

//Toma Strims
colorSet(a, 0, $0078c8); //Blue
colorSet(a, 1, $0062a3); //Blue (S)
colorSet(a, 2, $e4f4ff); //White
colorSet(a, 3, $a3b5cc); //White (S)
colorSet(a, 4, $0062a3); //LogoBlue
colorSet(a, 5, $0078c8); //LogoRed
colorSet(a, 6, $0078c8); //PepsiLight
colorSet(a, 7, $0062a3); //PepsiDark
a++;

//AmberLearner
colorSet(a, 0, $cc8f66); //Blue
colorSet(a, 1, $803500); //Blue (S)
colorSet(a, 2, $ffca80); //Whiteffca80
colorSet(a, 3, $ffaf40); //White (S)
colorSet(a, 4, $595959); //LogoBlue
colorSet(a, 5, $808080); //LogoRed
colorSet(a, 6, $ffaf40); //PepsiLight
colorSet(a, 7, $ffca80); //PepsiDark
a++;















//Golden
//colorSet(a, 0, $ffcc00); //Blue
//colorSet(a, 1, $d0a703); //Blue (S)
//colorSet(a, 2, $ffcc00); //White
//colorSet(a, 3, $d0a703); //White (S)
//colorSet(a, 4, $ff2800); //LogoBlue
//colorSet(a, 5, $f0a703); //LogoRed
//colorSet(a, 6, $ffcc00); //PepsiLight
//colorSet(a, 7, $d0a703); //PepsiDark
//a++;

set_num_palettes(a); // automatically sets the number for you
 
 
 
#define rangeSet(sha, col) // Auto-sets ranges to 1. Translates GML's asinine BGR hex colors to RGB.
 
set_color_profile_slot(0, sha, color_get_blue(col), color_get_green(col), color_get_red(col));
set_color_profile_slot_range(sha, 1, 1, 1);
 
 
 
#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));