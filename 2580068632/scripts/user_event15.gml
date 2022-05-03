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
num_alts = 0;

// Whether or not to display a name for each alt.
use_alt_names = true;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
alt_ui_recolor = noone;

// The list of names for the alts, if enabled.
alt_names = [
	"Default","Blue","Red","Green","Dark","Galacta","Parallel","Gameboy",
	"Yellow","Brown","White","Pink","Orange","Morpho","Stock","NES",
	"Infamous","Pure Gold","Ranked Gold","Champion","Ice General","Fire General","Thunder General","Novel",
	];



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
muno_char_name = "Meta Knight";

// Whether or not the phone sprite should recolor w/ your alt costume.
// (set to "true" if you make a custom phone sprite in your char's colors)
phone.uses_shader = true;

// If you use a custom phone sprite that's taller than the default, enter how
// much taller it is here. (measured in ingame pixels; so if editing the default
// phone sprite, multiply it by two)
phone.extra_top_size = 0;

// Set to true and the "Fast Graphics" feature will be enabled; see _readme.gml.
phone.supports_fast_graphics = false;

// Set to true and the phone will NOT activate Fast Fraphics when FPS gets low.
phone.dont_fast = false;

// Set to true and this will DISABLE a lot of the phone's side utilities.
// If you're porting the phone to an existing char and don't need any of these
// features, you might as well turn on lightweight to save a tiny bit of
// performance. (see _docs.gml for a full list of what this disables)
phone.lightweight = false;

// If you've created custom AG_ or HG_ indexes for your character already,
// use these to change where the phone starts assigning custom AG_s and HG_s.
// If you have no idea what that means, leave these alone!
// There's probably an upper bound here, but it's at least 200, so...
phone.starting_ag_index = 80;
phone.starting_hg_index = 80;

// The above, but for the AT_PHONE index.
// Maximum value is 50, minimum value (to avoid overlap w/ normal ones) is 39.
phone.phone_attack_index = 40;



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

initTip("Nspecial: Mach Tornado");
initWords("Hold the special button to rise. The move has a strong hitbox at the start that can be good for K.O.s off the side.");
initImage_ext(spr_nspecial_muno, -5, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Fspecial: Dimensional Cape");
initWords("A omnidirectional teleport. Hold the special button to attack when you reappear.");
initImage_ext(spr_fspecial_muno, -5, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Uspecial: Shuttle Loop");
initWords("A flying loop, then transitions into a glide. Hold up to fly up but lose some speed, and down to fly down and gain more speed.
Flying for too long or bumping into a wall will cancel the glide.
Can be canceled with an airdodge, aerial or Dspecial.
Canceling into an aerial and whiffing the move will put you into special fall.
Airdodging out of the move will also put you into special fall, even if you waveland with it, so be careful.");
initImage_ext(spr_uspecial_muno, -5, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Dspecial: Meta Condor Dive");
initWords("A dive downward. Has a shockwave hitbox when landing.
The move can be canceled with a wall jump at any time and a doublejump/airdodge after diving for a bit.");
initImage_ext(spr_dspecial_muno, -5, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Jab");
initWords("You can repeatedly use Rapid Jab by holding the attack button. Let it go to do the Jab finisher.");
initImage_ext(spr_jab_muno, -5, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Meta Knight's Wings");
initWords("When Meta Knight uses his doublejump, does USpecial or Dspecial, Meta Knight's cape turns into wings, which actually is reflected in some of his animations! This is purely cosmetic and doesn't affect gameplay, I just thought this was cool.");
initImage_ext(spr_jump_muno, -5, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(spr_jump_wings_muno, -5, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

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

initPatch("1.10", "18 April, 2022");
initHeader("General");
initSection("~ There is now a toggle for if you want to swap the inputs for Jab and Ftilt.
~ Fixed a visual bug where Meta Knight’s wings would appear when falling despite him not taking them out.");
initHeader("Forward Tilt");
initSection("+ The first and second hits shouldn’t put Meta Knight into parry stun anymore to finally give Meta Knight a move that is parry-stun safe, since he did not have a move that did this prior to this patch.
~ Cleaned up some code handling tilt canceling with this move.");
initHeader("Up Special (Shuttle Loop)");
initSection("~ There was a bug where when attacking and landing an aerial out of Uspecial, then doing another aerial and whiffing, it would put you into pratfall. This has now been fixed.
~ Corrected information about this move in the MunoPhone.
+ Using the move grants additional vertical distance to make this move more of a vertical recovery tool.
- Airdodging out of the move puts you in pratfall to prevent usage of other specials.");

initPatch("1.9", "9 January, 2022");
initHeader("General");
initSection("~ Adjusted shading of Meta Knight’s body in some animations.
~ The white shine on Meta Knight’s sword shouldn’t show up during the active frames of parry anymore.");
initHeader("Jab");
initSection("~ Adjusted dust effects.
~ Adjusted smear.");
initHeader("Dash Attack");
initSection("~ Adjusted endlag frames.
~ A dust effect and a sound effect plays when Meta Knight lands.");
initHeader("Forward Tilt");
initSection("~ Adjusted dust effects.
~ Adjusted fading smears.");
initHeader("Down Tilt");
initSection("~ Adjusted dust effects.");
initHeader("Neutral Air");
initSection("~ Adjusted smear to be more rounded.");
initHeader("Forward Air");
initSection("~ Adjusted smear.");
initHeader("Up Air");
initSection("~ Adjusted smear to be more rounded.
~ Hitboxes should better match the smear.");
initHeader("Down Air");
initSection("~ Has an additional startup frame.
~ Cleaned up the animation to remove some jagged outlines.
~ Adjusted smear to be more rounded.
~ Hitboxes should better match the smear.");
initHeader("Back Air");
initSection("~ The first two hits have been adjusted to be more behind Meta Knight.
~ Hitbox sizes adjusted to match the new smears.");
initHeader("Forward Strong");
initSection("~ Adjusted timing of dust effects.");
initHeader("Up Strong");
initSection("~ Fixed a part of Meta Knight’s armor pad being transparent for one frame.");
initHeader("Neutral Special (Mach Tornado)");
initSection("~ The tornado visual is larger.");

initPatch("1.8", "16 November, 2021");
initHeader("General");
initSection("~ The MunoPhone has been upgraded to the MunoPhone Touch.
~ Added a ton of dust effects on grounded normals and such.
~ Added Sleep Kirby compatibility.
~ Added Palutena’s Guidance codec.
~ Rearranged the SFX placement on some of Meta Knight’s moves.
~ Added Voiced Mode. You can activate it by inputting Taunt during the countdown in an actual match, or in Training Mode, use the cheat code in the MunoPhone.");
initHeader("Up Tilt");
initSection("~ Adjusted hit fx when landing the tipper.");
initHeader("Neutral Air");
initSection("- Landing Lag: 5 -> 6");
initHeader("Forward Air");
initSection("+ Frames in between hitboxes: 4 -> 3");
initHeader("Back Air");
initSection("+ Frames in between hitboxes: 6 -> 4");
initHeader("Down Strong");
initSection("~ Hitpause (Both Hits): 5 -> 7");
initHeader("Up Special (Shuttle Loop)");
initSection("- Canceling Shuttle Loop with an aerial and whiffing will cause Meta Knight to be put into pratfall.
- Whiffing an aerial and landing will also put Meta Knight into pratland.
- Letting Meta Knight fly for too long will put him into pratfall.
- Landing normally or wavelanding with Shuttle Loop will put him into landing lag and pratland respectively.
- Trying to input USpecial during Shuttle Loop won’t cancel the move anymore.
- Reduced Meta Knight’s speed when landing.
~ Hitting a wall now has dust effects.
~ Adjusted sfx that plays when hitting a wall.");
initHeader("Down Special (Meta Condor Dive)");
initSection("~ Starting the move from the ground has a dust effect.
~ Adjusted dust effect when landing.");

initPatch("1.7", "14 September, 2021");
initHeader("Jab");
initSection("~ Meta Knight now slashes 4 times instead of 3 for rapid jab. This doesn’t affect how the move works, it just makes the move’s animation abit better.
- Hitboxes should now match the animation.
- Rapid Jab Hitbox SDI Multiplier: 1 -> 1.3");
initHeader("Neutral Air");
initSection("- Landing Lag: 4 -> 5");
initHeader("Forward Air");
initSection("- Hitboxes should now match the animation.");
initHeader("Up Air");
initSection("- Startup: 4 -> 5
+ Knockback Scaling: 0.35 -> 0.4");
initHeader("Down Air");
initSection("- Startup: 4 -> 5
+ Damage: 3 -> 4");
initHeader("Back Air");
initSection("- Hitboxes should now match the animation.
+ Should connect a little bit better.");
initHeader("Up Strong");
initSection("- Lowered DACUS speed.");
initHeader("Neutral Special (Mach Tornado)");
initSection("- Reduced hitbox size a bit.");
initHeader("Forward Special (Dimensional Cape)");
initSection("~ Total time inbetween teleport and attack: 20 -> 12
- Landing the move won’t allow MK to do another Dimensional Cape until he lands, gets hit, or walljumps.
- Removed early attack and dodge inputs.
~ Shouldn’t be able to teleport through Air Armada anymore.
- Strong Hit Knockback Scaling: 0.85 -> 0.8");
initHeader("Up Special (Shuttle Loop)");
initSection("- Can’t cancel into Nspecial or Fspecial anymore.
+ Reversing the move mid-glide should properly work now.");
initHeader("Down Special (Meta Condor Dive)");
initSection("- Endlag: 24 -> 26
+ Can be jump canceled 6 frames earlier.");

initPatch("1.6", "22 August, 2021");
initHeader("General");
initSection("~ Fixed all double outlines on all animations.
~ Added The Chosen One compatibility.
~ Added Hikaru compatibility.
~ Added Rat compatibility.
~ Added Agent N compatibility.
~ Added Mt. Dedede compatibility.
~ Added Soulbound Conflict compatibility.");
initHeader("Up Special (Shuttle Loop)");
initSection("~ Fixed Meta Knight’s back wing appearing in front of Meta Knight’s back arm during startup.");

initPatch("1.5", "21 August, 2021");
initHeader("General");
initSection("~ Some animations have been polished to not have double outlines.");
initHeader("Forward Tilt");
initSection("~ You can now tilt-cancel the move with the right stick.");
initHeader("Down Air");
initSection("~ Fixed Meta Knight’s arm that is holding the sword appearing in front of his body.");
initHeader("Neutral Special (Mach Tornado)");
initSection("~ Strong Hit Hitpause: 9 -> 10");

initPatch("1.4", "21 August, 2021");
initHeader("General");
initSection("~ Updated the Frame Data section of the Munophone to have more accurate hitbox names for each attack.
~ Fixed a typo in the alternate color section of the Munophone.");
initHeader("Up Special (Shuttle Loop)");
initSection("~ Corrected information about the move in the Munophone.
~ Fixed a bug where Meta Knight wouldn’t go into parry stun when Up Special gets parried.");

initPatch("1.3", "20 August, 2021");
initHeader("General");
initSection("~ Meta Knight’s hud arrow should now be more accurate to his height.
~ Fixed Meta Knight’s cape not fully connecting to his body in his portrait.");
initHeader("Jab");
initSection("~ Adjusted hud arrow offset.
- Parrying jab will put Meta Knight in endlag.");
initHeader("Forward Tilt");
initSection("~ Adjusted hit sfx.");
initHeader("Neutral Air");
initSection("~ Adjusted hud arrow offset.
~ Adjusted hit sfx.");
initHeader("Up Air");
initSection("~ Adjusted hud arrow offset.");
initHeader("Up Strong");
initSection("+ Endlag: 28 -> 20
~ Adjusted hitbox sizes.
+ Final Hit Knockback Scaling: 0.95 -> 1");
initHeader("Down Strong");
initSection("+ Damage: 6 -> 7
~ Adjusted hit sfx.");
initHeader("Neutral Special (Mach Tornado)");
initSection("- Max HSP: 5.5 -> 5");
initHeader("Forward Special (Dimensional Cape)");
initSection("+ Startup: 14 -> 12
+ Angle: 50 -> 45
+ Base Knockback: 8 -> 9
+ Knockback Scaling: 0.8 -> 0.85
~ Inputting attack / right stick allows you to do a quick attack, but with less distance and kb. You’ll still need to use the left stick to control where you go.
~ Hud arrow disappears when you teleport.");
initHeader("Up Special (Shuttle Loop)");
initSection("~ Adjusted hitbox size.
~ Adjusted gliding physics.
- You can’t fly to the moon anymore. Locked away forever.
+ Letting the glide run out doesn’t put you into pratfall.
+ Hitpause: 4 -> 8
+ Added Hitpause Scaling. (.4)");
initHeader("Down Special (Meta Condor Dive)");
initSection("~ Fixed an error message caused by landing the shockwave hitbox.
- Base Hitpause: 6 -> 10
+ Added Hitpause Scaling. (.6)");

initPatch("1.2", "20 August, 2021");
initHeader("General");
initSection("~ If a non special gets parried, Meta Knight shouldn’t instantly go into parry stun and the endlag should play.");

initPatch("1.1", "20 August, 2021");
initHeader("General");
initSection("~ DRM now functions.
~ Fixed Meta Knight’s body and sword not recoloring with the parry effect.
- Leave Ground HSP (aka Platboost Speed): 7 -> 6");
initHeader("Forward Air");
initSection("~ Multihit Knockback Scaling: .3 -> .2");
initHeader("Up Strong");
initSection("~ The move should no longer randomly drop people anymore.");
initHeader("Forward Special (Dimensional Cape)");
initSection("~ When using the move on the ground and angling the move down and left/right, you’ll actually go left or right and not stand still.
~ Press parry during the teleport to instantly appear. You’ll travel less distance as a result.");
initHeader("Down Special (Meta Condor Dive)");
initSection("~ Getting hit or walljumping gives you Condor Dive back.");

initPatch("1.0", "20 August, 2021");
initHeader("General");
initSection("Meta Knight was released to the public.");

initPatch("About Meta Knight","");
initHeader("Character by");
initSection("ricE");
initHeader("SFX from");
initSection("- Kirby's Return to Dream Land
- Kirby Super Star Ultra
- Super Smash Bros. Ultimate");
initHeader("Compatible with");
initSection("Trummel & Alto, Otto, Steve, Link, Pit, Sleep Kirby, Hikaru, Rat, Agent N, Henry Stickmin, Dedede Arena, Soulbound Conflict");
initHeader("Credits");
initSection("Kirby is owned by HAL Labratories. No copyright infingement was intended in making this. This is merely made out of love for the series.");




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

CHEAT_VOICED = initCheat("Voice Toggle", [0, 1], ["Off", "On"], "Turn On or Off Meta Knight's voice whenever you want.
To turn on Meta Knight's voice in a match, press Taunt during the countdown.");



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
	//AT_EXTRA_1,
	//AT_EXTRA_2,
	//AT_EXTRA_3,
	//AT_TAUNT,
	//AT_TAUNT_2,
	//AT_PHONE,
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

Codec speaker expressions:
https://pastebin.com/qTLnsNFY

Codec gimmicks:
there aren't any

Page gimmicks:
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

// Custom speaker setup - use 1, 2, 3, 4, ... for the index.
SPK_SAND = initSpeaker(1, "Sandbert", sprite_get("_pho_example_speaker"));
SPK_TWIN = initSpeaker(2, "Sandbert's evil twin", sprite_get("_pho_example_speaker"));

initCodec(0); // this should just always be 0, because there are no codec gimmicks
initCodecPage(SPK_TRUM, 7, 0, "oh god oh frick kirby has a nightcap and pillow");
initCodecPage(SPK_TRUM, 7, 0, "we are doomed");
initCodecPage(SPK_ALTO, 1, 0, "Oh come on, it cant be that bad. Besides, hes sleeping! He cant do anything, right?");
initCodecPage(SPK_OTTO, 0, 0, "Kirby: Battle Royale would like to correct you on that statement. In other words, you are wrong.");
initCodecPage(SPK_CODA, 0, 0, "It would be in your best interest to not get hit by that nightcap of Ability Star of his. One touch, and you will hit the bed instantly.");
initCodecPage(SPK_TRUM, 0, 0, "wait alto
	
if i go to sleep...");
initCodecPage(SPK_TRUM, 0, 0, "cant u still fight since youre not being a sleepyhead");
initCodecPage(SPK_ALTO, 0, 0, "I probably should, but for game logic reasons, I must sleep as well... unfortunately.");
initCodecPage(SPK_CODA, 0, 0, "If you can, try knocking his Ability Star back at him to give him a taste of his own medicine.");

spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("otto");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve had a Meta Knightmare";

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

// Palutena's Guidance (for RuberCuber's Pit character)
// Works kind of similarly to MunoPhone.
// initCodecPagePit(speaker, expression, voice, text);
// List of expressions and voice clips: https://pastebin.com/wsz22ZwJ

initCodecPit();
initCodecPagePit(SPK_PIT,	7,	0,	"I wonder what Meta Knight looks like under that mask.");
initCodecPagePit(SPK_VIR,	0,	4,	"Apparently quite similar to Kirby.");
initCodecPagePit(SPK_PIT,	6,	0,	"If he took off his mask, could he inhale things too?");
initCodecPagePit(SPK_VIR,	0,	5,	"Maybe. And maybe he has Kirby's Copy Ability as well.");
initCodecPagePit(SPK_PIT,	7,	1,	"So if a maskless Meta Knight copied a masked Meta Knight...");
initCodecPagePit(SPK_VIR,	0,	4,	"Well, then he'd just be back where he started.");
initCodecPagePit(SPK_VIR,	1,	1,	"...assuming the dev actually decided to give Meta Knight a Copy Ability.");
initCodecPagePit(SPK_PALU,	2,	5,	"Anyway, Meta Knight is the same as he has always been in Smash... for the most part.");
initCodecPagePit(SPK_VIR,	5,	6,	"Luckily, the dev decided to give him that broken Up Special from Brawl that lets him glive over like, the entire stage!");
initCodecPagePit(SPK_PIT,	3,	0,	"Hey, I could also glide in that game! Lady Palutena, can you let me glide in this game as well?");
initCodecPagePit(SPK_PALU,	1,	0,	"...No.");

/*
EXPRESSIONS
 
0: Pit
  -  0: normal
  -  1: sus
  -  2: hurt
  -  3: happy
  -  4: shocked
  -  5: pensive
  -  6: think
  -  7: squint
  -  8: angry
  -  9: worry
  -  10: sulk
1: Palu
  -  0: normal
  -  1: judge
  -  2: happy
  -  3: surprised
  -  4: think 
  -  5: think 2
  -  6: relieved
2: Viridi
  -  0: gesture
  -  1: smirk
  -  2: surprised
  -  3: command (hand palm)
  -  4: command (hand point)
  -  5: laugh
  -  6: proud
3: Dark Pit
  -  0: smirk
  -  1: anger
  -  2: anger 2
 
SFX
 
0: Pit
  -  0: chuckle
  -  1: gah
  -  2: grr
  -  3: hurt
  -  4: ow
  -  5: pensive
  -  6: question
  -  7: think
  -  8: uhh
  -  9: woah
  -  10: exhale
1: Palu
  -  0: err
  -  1: hmm
  -  2: hmm 2
  -  3: oh
  -  4: umm
  -  5: chuckle
  -  6: gasp
  -  7: uh oh
2: Viridi
  -  0: augh
  -  1: chuckle
  -  2: frustrated
  -  3: hey
  -  4: hrm
  -  5: huh
  -  6: laugh
  -  7: question
  -  8: ugh
  -  9: urgh
3: Dark Pit
  -  0: chuckle
  -  1: grah
  -  2: hurt
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

#define initCodecPit()

with oPlayer if "ruber_pit" in self {
	load_codecs = true;
}

pit_codecs = [];

var new_cdc = {
	pages: []
};

array_push(pit_codecs, new_cdc);

#define initCodecPagePit(cd_speaker, cd_expression, cd_sfx, cd_text)
var new_page = {
	speaker: cd_speaker,
	expression: cd_expression,
	sfx: cd_sfx,
	text: cd_text
};
array_push(pit_codecs[array_length(pit_codecs) - 1].pages, new_page);