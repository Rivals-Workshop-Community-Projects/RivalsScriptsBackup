// phone - frontend

if object_index == asset_get("cs_playerbg_obj"){
	CORE_css_draw();
	exit;
}

CORE_general();
CORE_tips();
CORE_patches();
CORE_cheats();
CORE_frame_data();
CORE_muno_compatibility();



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ CSS Draw																	║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Set parameters that are used by the CSS drawing code.

*/

#define CORE_css_draw

// The number of alt costumes your char has, up to 32.
num_alts = 16;

// Whether or not to display a name for each alt.
use_alt_names = false;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
switch(get_player_color(player)){
	case 6: // brown
	case 13:
	case 14:
	case 15:
		alt_ui_recolor = 2;
		break;
	default:
		alt_ui_recolor = 0;
		break;
}

// The list of names for the alts, if enabled.
alt_names = []



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ General Settings															║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Set miscellaneous values to customize how your character interacts with the
MunoPhone Touch.

*/

#define CORE_general

// Character's name, used in a couple of places in the phone.
// (if you delete this line, it'd just use the config.ini name)
muno_char_name = "Otto";
muno_char_id = 2;

// Whether or not the phone sprite should recolor w/ your alt costume.
// (set to "true" if you make a custom phone sprite in your char's colors)
phone.uses_shader = true;

// Set to true and the "Fast Graphics" feature will be enabled; see _readme.gml.
phone.supports_fast_graphics = true;

// Set to true and the phone will NOT activate Fast Fraphics when FPS gets low.
phone.dont_fast = false;

// Set to true and this will DISABLE a lot of the phone's side utilities.
// If you're porting the phone to an existing char and don't need any of these
// features, you might as well turn on lightweight to save a tiny bit of
// performance. (see _docs.gml for a full list of what this disables)
phone.lightweight = false;



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Tips																		║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Add Tips to your character, giving info on how to play or trivia. You can add
both text and images. It's recommended to keep these short-and-sweet, as in the
examples.

Use the initTip() function to start a new Tip:

	initTip(name);

Then, use the following functions to add content or paragraphs:

	initWords(text)
	
	initWords_ext(text, alignment, color, indent, ignore_height)
	
	initImage(sprite, frame)
	
	initImage_ext(sprite, frame, alignment, xscale, yscale, uses_shader, color,
		alpha, ignore_height, crop_left, crop_right, crop_up, crop_down)

Glossary:
	
	"_ext" at the end of a function name means an extended version of the
		function it's named after - giving you more formatting options.
	
	"alignment" can be the GML constants fa_left, fa_center, or fa_right.
	
	"color" can be any GML color, e.g. c_red, #00ff00, or make_color_hsv(...).
		Set this to a string (e.g. "h"), and it will be colored to the main
		color of whichever phone app the text is being displayed in.
	
	"indent" basically allows you to put any amount of "tabs" to the left of a
		paragraph.
	
	"sprite" can be any sprite index, e.g. sprite_get(...) or asset_get(...).
	
	"ignore_height" prevents this element from pushing the one below it
		downward. Set this to true to achieve effects such as two elements
		being side-by-side.
	
	"frame" can be 0 or any positive number for a static image, or a negative
		number for an animated image. The size of the negative number determines
		the framerate; -1 is the fastest, -2 is half as fast, -3 a third, etc.
	
	"uses_shader" determines whether or not the image should recolor with the
		character's alt costumes.
	
	"crop_left", "crop_right", etc allow you to crop an image by determining how
		far from the image's offset it should be drawn. Set all four to "noone"
		and it will use the entire image (including empty space).

NOTE: It's recommended to separate each paragraph into its own initWords() line,
so that things like page breaks can work properly.

*/

#define CORE_tips

initTip("NSpecial: Angle Shot");
initWords("When shooting a pool ball, you can charge it to change its shape, giving it a different knockback angle.");
initWords("Circle sends at a normal angle, triangle sends in, and square spikes enemies.");
initImage_ext(sprite_get("ball_idle"), -5, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("ball_idle_triangle"), -5, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("ball_idle_square"), -5, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Trick Shots");
initWords("While the ball travels through the air, you can tap B to make it hover in midair, or hold B to make it bounce. While hovering or charging the bounce, it cannot hit enemies. You can make it bounce repeatedly in a zig-zag pattern.");
initWords("The ball also bounces in different ways when it hits a wall or an enemy.");
initWords("At any time, you can hit the ball with an attack to send it flying! Each hitbox has its own launch angle, so try them all.");
initImage(sprite_get("ball_idle"), -5);

initTip("Motorcycle Stance");
initWords("USpecial, FSpecial, and DSpecial all cause you to board a motorcycle! In this state, you're way faster but can't parry right away.");
initImage(sprite_get("bike_dash"), -5);
initWords("Pro tip: a midair Bike Special can be canceled into an airdodge during startup!");

initTip("Bike-Ball Duality");
initWords("Your ball and bike are actually the exact same thing. So, use a Bike Special while the ball is out, and you'll teleport to the ball! You can do this at any time when the ball projectile is in play, so get creative!");
initImage(sprite_get("ball_compress"), -5);

initTip("DSpecial: Slate Slam");
initWords("The regular DSpecial is a downward slam with the bike. If performed while grounded, bikeless, and with no ball in play, it's instead a quick bike mount.");
initImage_ext(sprite_get("dspecial_air"), -5, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("dspecial"), -5, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("UStrong: Jump Shot");
initWords("UStrong is a flying command grab with several quirks. You can charge the attack to go higher; you can turn around after grabbing an enemy; and you can fastfall the throw to chase the downward knockback.");
initWords("P.S. Try grabbing a billiard ball!");
initImage(sprite_get("ustrong"), -5);

initTip("DAir: Chalk Breaker");
initWords("DAir bounces upward when it hits an enemy or a ball, but you can choose to hitfall it instead for a quick landing.");
initImage(sprite_get("dair"), -5);

initTip("DTilt: Frontspin Dash");
initWords("While performing a DTilt or DAttack, you can go over the edge of the stage or platform - and DTilt even lets you cancel the move early to combo.");
initImage_ext(sprite_get("dtilt"), -5, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("dattack"), -5, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("BAir: Elbow Scratch");
initWords("After hitting an enemy with BAir, jumping/attacking and holding left or right will cause Otto to turn around - so you can pursue with a FAir.");
initImage(sprite_get("bair"), -5);



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Patches																	║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Keep a record of your character's update history, and at the end, also give
credits to the developer(s) of the character or any assets used.

Use the initPatch() function to start a new Patch:

	initPatch(version_number, date)

If the "date" field is set to an empty string, then the Patch will act more like
a Tip - mainly useful for making an "About [character]" page.

Use the same functions as in the Tips app to populate the Patch with text and
images.

Here are two more content functions, which are designed for use in Patches but
also work in Tips:

	initHeader(text)
	initSection(text)

These are basically shortcuts for two different types of formatted text.
initHeader() is a text heading that is colored either blue or green, depending
on whether it's a Tip or a Patch. initSection() is an indented block of text.

These are handy for dividing a Tip/Patch into sections, such as different moves
in a Patch.

*/

#define CORE_patches

initPatch("1.32", "14 April, 2023");
initWords("Advertising");

initPatch("1.31", "17 July, 2022");
initHeader("FSpecial - Buffs");
initSection("No longer goes into pratfall on hit, but can only be used once per airtime.");

initPatch("1.30", "08 March, 2022");
initHeader("General");
initSection("no way
evil otto");

initPatch("1.29", "19 September, 2021");
initHeader("General");
initSection("Upgraded to MunoPhone Touch.
Added dust effects to grounded normals.");

initPatch("1.28", "30 August, 2021");
initHeader("FSpecial - Buffs");
initSection("Knockback scaling 0.5 --> 0.8.");
initHeader("BAir - Buffs, Nerfs");
initSection("Startup 15 --> 12.
Endlag 16 --> 12.
Damage 9 --> 8.
You now get a small upward boost when canceling into an aerial on-hit.");
initHeader("UAir - Buffs");
initSection("Startup 8 --> 5.");
initHeader("UStrong - Nerfs");
initSection("Hitstun multiplier 1.0 --> 0.8.");

initPatch("1.27", "04 August, 2021");
initHeader("NSpecial - Nerfs");
initSection("You can no longer spin-bounce the ball while in hitstun.");

initPatch("1.26", "01 August, 2021");
initHeader("NSpecial - Nerfs, Bugfixes");
initSection("You can no longer spin-bounce the ball when it's in the bouncing state after hitting an opponent.
After it gets hit by something, the ball cannot get hit again for 15 frames (not counting hitpause).");
initHeader("FTilt - Buffs");
initSection("Startup 12 --> 9.");

initPatch("1.25", "31 July, 2021");
initHeader("BAir - Bugfixes");
initSection("Added missing hurtbox. (oops)");

initPatch("1.24", "31 July, 2021");
initHeader("BAir - Reworks");
initSection("Attack replaced with Otto 1's BAir!");
initHeader("UAir - Reworks");
initSection("Attack replaced with an altered version of Otto 2's old BAir!");
initHeader("USpecial, FSpecial - Nerfs, Buffs");
initSection("These moves now have pratfall even on hit.
USpecial knockback scaling 0.8 --> 0.95.");
initHeader("NSpecial - Buffs");
initSection("Charge time for spinning ricochet 20f --> 10f, and no longer increases by 10f for each repeated use.");
initHeader("Bike - Adjustments");
initSection("Otto now leaves bike state when wall jumping.");
initHeader("DAir - Bugfixes");
initSection("Made adjustments to prevent an infinte stall.");

initPatch("1.23", "29 July, 2021");
initWords("Otto is in the upcoming Riptide tournament's Workshop side event! This patch just gets a couple of things ready for that event.")
initHeader("Cosmetics");
initSection("Seasonal alt replaced with a special Riptide-colored alt.
To avoid copyright issues, during 10-13 September, 2021, Otto's victory theme will be replaced with Trummel's.");

initPatch("1.22", "16 February, 2021");
initHeader("DSpecial - Nerfs, Adjustments");
initSection("Active hitbox duration 18f --> 12f.
Now has landing lag (18f) instead of bouncing.
When started on the ground, the dive is now preceded by a jump.");
initHeader("UStrong - Bugfixes");
initSection("No longer grabs armored players.");

initPatch("1.21", "07 February, 2021");
initHeader("NSpecial - Buffs");
initSection("The change made last patch now only applies to melee hitboxes.
Projectiles simply destroy the ball instead.");

initPatch("1.20", "07 February, 2021");
initHeader("NSpecial - Nerfs, Buffs");
initSection("When the enemy hits the ball, it will now fly towards Otto and hit him, just like when it gets parried.
Damage of the ball in the above scenario 14 --> 10.");
initHeader("FAir - Nerfs");
initSection("Hitbox size reduced.");
initHeader("DAir - Nerfs");
initSection("Hitbox width reduced.
There is now a tipper sweetspot, which has the same stats DAir has always had. The rest of the move is weaker and sends upward.");
initHeader("DSpecial - Bugfixes");
initSection("Now creates a silhouette on the ball when teleporting to it, like with FSpecial and USpecial.");

initPatch("1.19", "27 January, 2021");
initHeader("DTilt - Nerfs");
initSection("Hit 2 lifetime 8 --> 4. (the original duration was an accident, now it properly aligns with the animation!)");
initHeader("DAttack - Nerfs");
initSection("Both hitboxes moved a bit further back.");

initPatch("1.18", "21 January, 2021");
initHeader("NSpecial - Adjustments");
initSection("The first bounce takes only 20f to charge, instead of 30f.
Each consecutive bounce adds 10f to the charge time, to a maximum of 60f.");

initPatch("1.17", "19 January, 2021");
initHeader("NSpecial - Bugfixes");
initSection("Ball should no longer have weird changes in behavior between the first time you hit it VS subsequent times.");

initPatch("1.16", "18 January, 2021");
initHeader("NSpecial - Bugfixes");
initSection("Ball can now be manipulated properly after Otto launches it with a move.");
initHeader("DSpecial - Bugfixes");
initSection("Otto will no longer bounce off the ground after being parried.");

initPatch("1.15", "17 January, 2021");
initHeader("NSpecial - Reworks");
initSection("Bounce system changed - instead of consecutive taps, it's now tap vs. hold.
Tap to make the ball hover.
Hold for 30f to make the ball bounce in a wide arc.
This applies for any of the ball's non-hovering states, and can even be done repeatedly.");
initHeader("USpecial, DSpecial - Nerfs");
initSection("Damage 13 --> 11.");
initHeader("FAir - Buffs");
initSection("Angle 45 --> 40.
Knockback scaling 0.6 --> 0.65.
Hit sfx adjusted.");
initHeader("BAir - Buffs");
initSection("Startup 7 --> 6.
Angle flipper 5 --> 3.
Angle 75 --> 80.
Knockback scaling 0.7 --> 0.6.
Hitbox extends further into Otto's body.");
initHeader("DStrong - Buffs");
initSection("Startup 16 --> 12.");
initHeader("UStrong - Nerfs");
initSection("You can no longer slide off an edge to charge in midair.");

initPatch("1.14", "14 January, 2021");
initWords("Tiny patch to try and fix a couple of visual (and VERY minor gameplay) bugs with the ball article / projectile.");

initPatch("1.13", "04 January, 2021");
initHeader("NSpecial - Buffs");
initSection("Parried ball damage 18 --> 14.");

initPatch("1.12", "04 January, 2021");
initHeader("NSpecial - Nerfs, Clarity");
initSection("Bouncing the ball grants it less speed and duration.
A parried ball now does 18 damage.
The blinking effect (when about to disappear) begins later.");

initPatch("1.11", "02 January, 2021");
initHeader("NSpecial - Nerfs");
initSection("Bouncing the billiard ball now takes 5 frames longer.");
initHeader("UStrong - Buffs");
initSection("Grab hitbox lifetime 3 --> 6.");

initPatch("1.10", "28 December, 2020");
initHeader("DSpecial - Nerfs");
initSection("The base knockback now decays from 6 to 3 across the hitbox's duration.");
initHeader("Bobbleheads - Bugfixes");
initSection("There should no longer be an error message at the start of a match.
Otto's bobblehead in the ditto matchup is no longer Sandbert.");

initPatch("1.9", "24 December, 2020");
initHeader("FSpecial, USpecial, DSpecial - Bugfixes");
initSection("The special-button input buffer is now cleared at the start of the move.
(This prevents weird action sequences when wavelanding out of the special.)");

initPatch("1.8", "21 December, 2020");
initHeader("FSpecial, USpecial, DSpecial - Buffs");
initSection("The startup of these moves can now be airdodge-canceled, leaving you on the bike.");
initHeader("FSpecial - Buffs");
initSection("Hitbox size increased.
Angle 55 --> 45.");
initHeader("USpecial - Nerfs");
initSection("Knockback scaling 0.85 --> 0.8.");

initPatch("1.7", "02 December, 2020");
initHeader("FSpecial, DSpecial - Aesthetics");
initSection("Adjusted head size during startup.");

initPatch("1.6", "01 December, 2020");
initHeader("NSpecial - Buffs");
initSection("Charge time for each ball 20 --> 15.");
initHeader("DStrong - Bugfixes");
initSection("Hit 2 size is doubled after hitting an enemy if that enemy ends up grounded.");
initHeader("MunoPhone - Aesthetics");
initSection("Phone now gets recolored to the alt.");

initPatch("1.5", "18 November, 2020");
initHeader("NSpecial - Nerfs");
initSection("Instead of holding up/down, you need to charge NSpecial to get the different ball shapes.
Triangle: 20f / Square: 40f
Initial ball travel speed is a bit slower.");

initPatch("1.4", "18 November, 2020");
initHeader("NSpecial - Nerfs");
initSection("Startup 10 --> 15.
During teleport startup, hitting the ball will cause a premature teleport (so Otto gets hit by the hitbox).");
initHeader("FSpecial, USpecial, DSpecial - Nerfs");
initSection("Startup 15 --> 20.");
initHeader("DAttack - Nerfs, Adjustments");
initSection("Early hit base knockback 9 --> 8.
Late hit angle 40 --> 45.");

initPatch("1.3", "14 November, 2020");
initHeader("NSpecial - Nerfs, Clarity");
initSection("NSpecial now has a cooldown of 60 frames minimum between firing the ball.
When parried, the ball now flies straight toward Otto. It cannot be manipulated with NSpecial or hit with melee moves, and using a Bike Special will result in getting hit by the ball.
NSpecial availability is now shown by the player arrow.
The ball now has an offscreen indicator.");
initHeader("FSpecial, USpecial, DSpecial - Clarity");
initSection("Bike Specials now have an added visual tell during startup.");

initPatch("1.2", "11 November, 2020");
initHeader("NSpecial - Clarity, Bugfixes");
initSection("Holding up/down now visually changes the ball's shape.
Holding up/down no longer changes the firing height.
Kragg rock shards no longer use billiard ball code.");
initHeader("FSpecial, USpecial - Bugfixes");
initSection("Parry stun now works properly.");
initHeader("Palettes - Aesthetics");
initSection("Adjusted alt #5.");

initPatch("1.1", "10 November, 2020");
initHeader("NSpecial - Bugfixes");
initSection("It's no longer possible to charge the move by holding the strong button. (oops)");

initPatch("1.0", "10 November, 2020");
initHeader("General");
initSection("The character was released.");

initPatch("About Otto", "");
initHeader("Character by");
initSection("Muno - byMuno.com");
initHeader("SFX from");
initSection("Sims Pool for iPod");
initHeader("Compatible with");
initSection("Trummel & Alto, Otto, Steve, Link");



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Cheats																	║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Create options for players to change how the character plays, either as silly
fun bonuses or useful training utilities (e.g. filling a meter instantly).

Use the initCheat() function to create a Cheat:

	CHEAT_[NAME_HERE] = initCheat(name, [options], [option_names], description)

Glossary:
	
	"CHEAT_[NAME_HERE]" is a variable that stores the ID of the Cheat. In the
		example below, CHEAT_FLY is equal to 0. This is necessary for
		referencing your cheat later in your character's code.
	
	"[options]" is an array of the possible values that the Cheat can have. A
		simple example is [0, 1] for on and off, but it could also be something
		like [0, 1, 5, 9] or ["Cherry", "Strawberry", ""].
	
	"[option_names]" is an array of the displayed names for the options given in
		"[options]". It should be the same length as "[options]", and each entry
		should be a string.
	
To access a Cheat's current value inside your character's code, grab the entry
in the "phone_cheats" array at the index of the "CHEAT_" variable. For example:

	// update.gml
	
	if phone_cheats[CHEAT_FLY] == 1{
		vsp = -2;
	}

The "phone_cheats" array entry holds whatever value you defined in "[options]",
for the Cheat's current setting. (e.g. "phone_cheats" could contain a string,
not just a number)

You can also run code only at the moment that the Cheat was clicked on, by
using the "phone_cheats_updated" array (each entry is just true or false):
	
	// update.gml
	
	if phone_cheats_updated[CHEAT_FLY]{
		phone_cheats_updated[CHEAT_FLY] = 0; // you have to reset it yourself
		if phone_cheats[CHEAT_FLY]{
			print("Flight started");
		}
		else{
			print("Flight ended");
		}
	}

Pro tip: having a Cheat with only a single option is useful if you just need a
"click button to do X" thing for your character, e.g. "click to reset meter to
zero".

*/

#define CORE_cheats

CHEAT_TRAILER	= initCheat("Trailer Mode", [0, 1], ["Off", "On"], "Hides or moves certain HUD elements for trailer recording; meant to be used in conjunction with hiding the overhead name and damage indicators.");



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Frame Data																║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Customise the Frame Data guide.

*/

#define CORE_frame_data

// Reorder this list to change the order that moves appear in the guide!
phone.move_ordering = [
	AT_JAB,
	AT_FTILT,
	AT_DTILT,
	AT_UTILT,
	AT_DATTACK,
	AT_FSTRONG,
	AT_USTRONG,
	AT_DSTRONG,
	AT_FSTRONG_2,
	AT_USTRONG_2,
	AT_DSTRONG_2,
	AT_NAIR,
	AT_FAIR,
	AT_BAIR,
	AT_UAIR,
	AT_DAIR,
	AT_NSPECIAL,
	AT_NSPECIAL_AIR,
	AT_NSPECIAL_2,
	AT_FSPECIAL,
	AT_FSPECIAL_AIR,
	AT_FSPECIAL_2,
	AT_USPECIAL,
	AT_USPECIAL_GROUND,
	AT_USPECIAL_2,
	AT_DSPECIAL,
	AT_DSPECIAL_AIR,
	AT_DSPECIAL_2,
	AT_NTHROW,
	AT_FTHROW,
	AT_UTHROW,
	AT_DTHROW,
	AT_EXTRA_1,
	AT_EXTRA_2,
	AT_EXTRA_3,
	AT_TAUNT,
	AT_TAUNT_2,
	AT_PHONE,
	2,
	3,
	39,
	42,
	43,
	44,
	45,
	46,
	47,
	48,
	49,
	50
];

// Whether or not to include the "Stats" page.
phone.include_stats = true;

// Notes for the "Stats" page - put "-" for no notes.
phone.stats_notes = "-";

// Whether or not to include a custom data page, which can hold any values you
// want - useful for data that's specific to your character's mechanics.
phone.include_custom = false;

// The name of the custom page.
phone.custom_name = "Example Custom Data"

// The content of the custom page.
initCFDHeader("Article lifetime");
initCFDBody("100 frames");
initCFDHeader("Second value");
initCFDBody("459");
initCFDBody("epic");



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Muno Character Compatibility												║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Add bonus features and interactions with Muno's characters, like a codec for
Trummel & Alto.

If you don't feel like adding one of them, you can just comment out the lines
of code.

*/

#define CORE_muno_compatibility

/*
Trummel codec:

initCodec(gimmick)
initCodecPage(speaker, expression, gimmick, text)

The variable trummel_id is initially set to noone (-4). When Trummel opens this
char's codec, trummel_id is set to Trummel's object ID.

Codec speaker handles:
SPK_TRUM: Trum
SPK_ALTO: Alto
SPK_OTTO: Otto
SPK_CODA: Coda
SPK_ECHO: Tempo
SPK_MINE: Steve (i dont normally use this one... like, what is he supposed to say?? the funny oof noise? you can if you want)
SPK_SEGA: Sonic (see above)

Codec gimmicks:
there aren't any

Page gimmick handles:
GIM_CHOMP			make the enemy ftilt
GIM_CLONE 			display 2 speakers
GIM_LAUGH_TRACK		play the funny haha sound
GIM_SKIP 			advance the page immediately when the text finishes
GIM_DIE				die
GIM_SHUT_UP			no chatter sfx
GIM_HOWL			make the enemy dspecial
GIM_SHADER			use your char's shaders (palette swaps) for the speaker portrait
GIM_TEXTBOX			text color				is set to the value of the	spr_custom_trummel_textbox	variable in the player object
GIM_COLOR			textbox sprite index	is set to the value of the	spr_custom_trummel_color	variable in the player object

To use multiple gimmicks on a single page, MULTIPLY them together.
*/

initCodec(0);
initCodecPage(SPK_ALTO, 3, 0, "Where's your 8 Ball now, huh, Otto?");
var h = GIM_SHADER;
initCodecPage(SPK_OTTO, 3, h, "Not like I ever needed it to mop the floor with you guys! Let's put a wager on it.");
initCodecPage(SPK_ALTO, 4, 0, "Those sound like betting odds to me!");
initCodecPage(SPK_TRUM, 0, 0, "anything is betting odds when ur drunk");

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve lost a bet";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 2;

/*
Spear IDs:

1: Traveler's Spear
2: Knight's Halberd
3: Wooden Mop
4: Spiked Boko Spear
5: Flamespear
6: Frostspear
7: Thunderspear
8: Guardian Spear
*/



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Behind-The-Scenes															║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

This is the end of the stuff you need to worry about!

Below this point are just all of the functions used to make the above sections
work.

It's not recommended to edit anything below here unless you know what you're
doing and have a good reason to.

*/

#define initTip(tip_name)

array_push(phone.tips, {
	name: tip_name,
	objs: [],
	page_starts: [0]
});

phone.currently_edited_obj = phone.tips[array_length(phone.tips) - 1];

initWords_ext("- " + tip_name + " -", fa_center, phone.apps[phone.APP_TIPS].color, 0, 0);

#define initPatch(patch_version, patch_date)

array_push(phone.patches, {
	name: (patch_date == "" ? "" : "v") + patch_version,
	objs: [],
	page_starts: [0]
});

phone.currently_edited_obj = phone.patches[array_length(phone.patches) - 1];

if patch_date == ""{
	initWords_ext("- " + patch_version + " -", fa_center, phone.apps[phone.APP_PATCHES].color, 0, 0);
}
else{
	initWords_ext("- v" + patch_version + ": " + patch_date + " -", fa_center, phone.apps[phone.APP_PATCHES].color, 0, 0);
}

#define initHeader(obj_text)

initWords_ext(obj_text, fa_left, "h", 0, 0);

#define initSection(obj_text)

initWords_ext(obj_text, fa_left, c_white, 1, 0);

#define initWords(obj_text)

array_push(phone.currently_edited_obj.objs, {
	type: 0,
	text: obj_text,
	align: fa_left,
	color: c_white,
	indent: 0,
	side_by_side: false
});

#define initWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_ignore_height)

array_push(phone.currently_edited_obj.objs, {
	type: 0,
	text: obj_text,
	align: obj_align,
	color: obj_color,
	indent: obj_indent,
	side_by_side: obj_ignore_height
});

#define initImage(obj_sprite, obj_frame)

array_push(phone.currently_edited_obj.objs, {
	type: 1,
	sprite: obj_sprite,
	frame: obj_frame,
	align: fa_center,
	xscale: 1,
	yscale: 1,
	uses_shader: 1,
	color: c_white,
	alpha: 1,
	margin_l: noone,
	margin_r: noone,
	margin_u: noone,
	margin_d: noone,
	needs_auto_margins: true,
	side_by_side: false
});

#define initImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_yscale, obj_uses_shader, obj_color, obj_alpha, obj_ignore_height, obj_l, obj_r, obj_u, obj_d)

array_push(phone.currently_edited_obj.objs, {
	type: 1,
	sprite: obj_sprite,
	frame: obj_frame,
	align: obj_align,
	xscale: obj_xscale,
	yscale: obj_yscale,
	uses_shader: obj_uses_shader,
	color: obj_color,
	alpha: obj_alpha,
	margin_l: obj_l,
	margin_r: obj_r,
	margin_u: obj_u,
	margin_d: obj_d,
	needs_auto_margins: (obj_l == noone && obj_r == noone && obj_u == noone && obj_d == noone),
	side_by_side: obj_ignore_height
});

#define initCheat(ch_name, ch_opt, ch_opt_name, ch_desc)

array_push(phone.cheats, {
	name: ch_name,
	options: ch_opt,
	option_names: ch_opt_name,
	description: ch_desc,
	on: 0
});

array_push(phone_cheats, ch_opt[0]);
array_push(phone_cheats_updated, 0);
return array_length(phone.cheats) - 1;

#define initCFDHeader(text)

array_push(phone.custom_fd_content, {
	type: 0, // header
	content: text
});

#define initCFDBody(text)

array_push(phone.custom_fd_content, {
	type: 1, // body
	content: text
});

#define initCodec(cd_gimmick)

if "trummel_codecs" not in self trummel_codecs = [];

var new_cdc = {
	gimmick: cd_gimmick,
	pages: []
};

array_push(trummel_codecs, new_cdc);

#define initCodecPage(cd_speaker, cd_expression, cd_gimmick, cd_text)

var new_page = {
	speaker: cd_speaker,
	expression: cd_expression,
	gimmick: cd_gimmick,
	text: cd_text
};

array_push(trummel_codecs[array_length(trummel_codecs) - 1].pages, new_page);

#define initSpeaker(idx, speak_name, speak_sprite)

if "trummel_speakers" not in self trummel_speakers = [];

trummel_speakers[idx] = {
	name: speak_name,		// Name displayed while talking
	sprite: speak_sprite	// Sprite of face
};

return idx * -1;