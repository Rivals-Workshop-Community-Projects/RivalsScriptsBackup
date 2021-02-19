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
ignore my system without breaking any kind of MunoPhone functionality.



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
 
rangeSet(0, $355fdc); //Blue
rangeSet(1, $1a25a0); //Blue (S)
rangeSet(2, $d8423e); //Red
rangeSet(3, $861729); //Red (S)
rangeSet(4, $f5cd95); //Tan
rangeSet(5, $bc7959); //Tan (S)
rangeSet(6, $e2e7f2); //White
rangeSet(7, $8282a1); //White (S)
 
 
 
// each palette below. just copy-paste the colorSet()s AND the a++;
 
var a = 1;

// blue
colorSet(a, 0, $25417d); //Blue
colorSet(a, 1, $0b1052); //Blue (S)
colorSet(a, 2, $3e8cd8); //Red
colorSet(a, 3, $173786); //Red (S)
colorSet(a, 4, $d2eaf9); //Tan
colorSet(a, 5, $7b8ebc); //Tan (S)
colorSet(a, 6, $f2f0e2); //White
colorSet(a, 7, $a19582); //White (S)
a++;

// red
colorSet(a, 0, $a63333); //Blue
colorSet(a, 1, $66101e); //Blue (S)
colorSet(a, 2, $d8b43e); //Red
colorSet(a, 3, $866017); //Red (S)
colorSet(a, 4, $f2b663); //Tan
colorSet(a, 5, $bc5e32); //Tan (S)
colorSet(a, 6, $f2e8e2); //White
colorSet(a, 7, $a18282); //White (S)
a++;

// green
colorSet(a, 0, $60ad35); //Blue
colorSet(a, 1, $116e22); //Blue (S)
colorSet(a, 2, $424650); //Red
colorSet(a, 3, $232432); //Red (S)
colorSet(a, 4, $f5cd95); //Tan
colorSet(a, 5, $bc7959); //Tan (S)
colorSet(a, 6, $e2f2eb); //White
colorSet(a, 7, $82a19c); //White (S)
a++;

// espio
colorSet(a, 0, $dc3587); //Blue
colorSet(a, 1, $910c73); //Blue (S)
colorSet(a, 2, $e2e7f2); //Red
colorSet(a, 3, $8282a1); //Red (S)
colorSet(a, 4, $e2e7f2); //Tan
colorSet(a, 5, $8282a1); //Tan (S)
colorSet(a, 6, $424650); //White
colorSet(a, 7, $232432); //White (S)
a++;

// shadow
colorSet(a, 0, $424650); //Blue
colorSet(a, 1, $232432); //Blue (S)
colorSet(a, 2, $e2e7f2); //Red
colorSet(a, 3, $8282a1); //Red (S)
colorSet(a, 4, $f5cd95); //Tan
colorSet(a, 5, $bc7959); //Tan (S)
colorSet(a, 6, $d8423e); //White
colorSet(a, 7, $861729); //White (S)
a++;

// abyss
colorSet(a, 0, $484b77); //Blue
colorSet(a, 1, $312d52); //Blue (S)
colorSet(a, 2, $4f3d5e); //Red
colorSet(a, 3, $2e253f); //Red (S)
colorSet(a, 4, $dc71ff); //Tan
colorSet(a, 5, $914ad2); //Tan (S)
colorSet(a, 6, $6426a4); //White
colorSet(a, 7, $311373); //White (S)
a++;

// EA
colorSet(a, 0, $537a3e); //Blue
colorSet(a, 1, $537a3e); //Blue (S)
colorSet(a, 2, $234331); //Red
colorSet(a, 3, $234331); //Red (S)
colorSet(a, 4, $a7ba4a); //Tan
colorSet(a, 5, $a7ba4a); //Tan (S)
colorSet(a, 6, $d3e29a); //White
colorSet(a, 7, $d3e29a); //White (S)
a++;

// silver
colorSet(a, 0, $e8ede9); //Blue
colorSet(a, 1, $969f9c); //Blue (S)
colorSet(a, 2, $1e2f77); //Red
colorSet(a, 3, $0e1354); //Red (S)
colorSet(a, 4, $f4c366); //Tan
colorSet(a, 5, $b66d35); //Tan (S)
colorSet(a, 6, $78ecb9); //White
colorSet(a, 7, $3e978d); //White (S)
a++;

// jet ??
colorSet(a, 0, $2e8468); //Blue
colorSet(a, 1, $15525e); //Blue (S)
colorSet(a, 2, $e3253b); //Red
colorSet(a, 3, $930038); //Red (S)
colorSet(a, 4, $f6c11c); //Tan
colorSet(a, 5, $da8506); //Tan (S)
colorSet(a, 6, $424650); //White
colorSet(a, 7, $232432); //White (S)
a++;

// when u got all the chaos emetalds
colorSet(a, 0, $dcbe35); //Blue
colorSet(a, 1, $a06a1a); //Blue (S)
colorSet(a, 2, $d8423e); //Red
colorSet(a, 3, $861729); //Red (S)
colorSet(a, 4, $f5cd95); //Tan
colorSet(a, 5, $bc7959); //Tan (S)
colorSet(a, 6, $e2e7f2); //White
colorSet(a, 7, $8282a1); //White (S)
a++;

// sticks
colorSet(a, 0, $dc8735); //Blue
colorSet(a, 1, $a03f1a); //Blue (S)
colorSet(a, 2, $703f19); //Red
colorSet(a, 3, $4c1e0c); //Red (S)
colorSet(a, 4, $f5cd95); //Tan
colorSet(a, 5, $bc7959); //Tan (S)
colorSet(a, 6, $a68b68); //White
colorSet(a, 7, $634235); //White (S)
a++;

// silver (no, not that one)
colorSet(a, 0, $94cbda); //Blue
colorSet(a, 1, $53708c); //Blue (S)
colorSet(a, 2, $566475); //Red
colorSet(a, 3, $393e56); //Red (S)
colorSet(a, 4, $b6c7cf); //Tan
colorSet(a, 5, $718195); //Tan (S)
colorSet(a, 6, $9aabc0); //White
colorSet(a, 7, $696d91); //White (S)
a++;

// gold
colorSet(a, 0, $cfae56); //Blue
colorSet(a, 1, $935c30); //Blue (S)
colorSet(a, 2, $504b42); //Red
colorSet(a, 3, $322723); //Red (S)
colorSet(a, 4, $f0e0b4); //Tan
colorSet(a, 5, $9c7454); //Tan (S)
colorSet(a, 6, $f2eee2); //White
colorSet(a, 7, $a19382); //White (S)
a++;

// acid rainbows
colorSet(a, 0, $47b959); //Blue
colorSet(a, 1, $27752b); //Blue (S)
colorSet(a, 2, $ff261d); //Red
colorSet(a, 3, $990500); //Red (S)
colorSet(a, 4, $fed0b1); //Tan
colorSet(a, 5, $d58057); //Tan (S)
colorSet(a, 6, $b649da); //White
colorSet(a, 7, $614460); //White (S)
a++;

switch(get_match_setting(SET_SEASON)){
	
	case 1: // valentines
		colorSet(a, 0, $b2291f); //Blue
		colorSet(a, 1, $730814); //Blue (S)
		colorSet(a, 2, $f69acd); //Red
		colorSet(a, 3, $c258b1); //Red (S)
		colorSet(a, 4, $f69acd); //Tan
		colorSet(a, 5, $c258b1); //Tan (S)
		colorSet(a, 6, $f2ece2); //White
		colorSet(a, 7, $a18a82); //White (S)
		break;
		
	case 2: // summer
		colorSet(a, 0, $f9a62c); //Blue
		colorSet(a, 1, $be4b12); //Blue (S)
		colorSet(a, 2, $59cce9); //Red
		colorSet(a, 3, $2f6dab); //Red (S)
		colorSet(a, 4, $e7db85); //Tan
		colorSet(a, 5, $b18854); //Tan (S)
		colorSet(a, 6, $fffb75); //White
		colorSet(a, 7, $b6943d); //White (S)
		break;
		
	case 3: // halloween
		colorSet(a, 0, $413e37); //Blue
		colorSet(a, 1, $26221b); //Blue (S)
		colorSet(a, 2, $b141d6); //Red
		colorSet(a, 3, $6c219c); //Red (S)
		colorSet(a, 4, $9cab92); //Tan
		colorSet(a, 5, $627d60); //Tan (S)
		colorSet(a, 6, $ff9422); //White
		colorSet(a, 7, $bd4e08); //White (S)
		break;
		
	case 4: // christmas
		colorSet(a, 0, $fdebe8); //Blue
		colorSet(a, 1, $cb9996); //Blue (S)
		colorSet(a, 2, $6dc253); //Red
		colorSet(a, 3, $278027); //Red (S)
		colorSet(a, 4, $c1eebd); //Tan
		colorSet(a, 5, $639571); //Tan (S)
		colorSet(a, 6, $d22727); //White
		colorSet(a, 7, $82081c); //White (S)
		break;
		
}

a++;

set_num_palettes(a); //automatically sets the number to be correct, thanks to the a++ lines
 
 
 
#define rangeSet(sha, col) // Auto-sets ranges to 1. Translates GML's asinine BGR hex colors to RGB.
 
set_color_profile_slot(0, sha, color_get_blue(col), color_get_green(col), color_get_red(col));
set_color_profile_slot_range(sha, 1, 1, 1);
 
 
 
#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));