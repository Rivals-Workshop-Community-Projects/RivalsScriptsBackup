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
	"Default","Blue","Red","Green","Monochrome","Purple","Shadow","Gameboy",
	"Yellow","Carbon","Brown","Ivory","Sapphire","Valk","Pink","Red + Blue",
	"Infamous","Pure Gold","Ranked Gold","Champion","Orange","Emerald","Snow","Adventure Ability",
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
muno_char_name = "Sleep Kirby";

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
phone.lightweight = true;

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

initTip("Passive: Sweet Dreams");
initWords("Standing idle for too long has Sleep Kirby fall fast asleep. While in this state, Sleep Kirby can slowly recover percent. You can also cancel out of the sleep animation with anything!");
initImage_ext(sprite_get("sleep"), -6, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Sleep Status ( + Fspecial)");
initWords("Sleep Kirby can inflict a special stats called Sleep. Two moves in Sleep Kirby's kit can inflict this: Fspecial (which will be covered in this page) and Dspecial (which will be covered later).
When an opponent is put to sleep, they will become motionless and unable to do anything. The time the opponent is put to sleep is equivalent to their percentage, and caps out at 65 %.
If an opponent is put to sleep while airborne, they will instantly fall asleep and fall to the ground. If they hit the bottom blastzone, instead of instantly getting K.O.'d (which is no fun), they will instead bounce back up with their airdodge and jumps restored.");
initImage_ext(sprite_get("fspecial"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initWords("






Now for Fspecial: Nightly Nightcap.
Fspecial has high startup and endlag with mediocre range, but landing the move forces the opponent to sleep.
Also, landing the move on airborne opponents will not put the status on them: they will be dunked instead.");


initTip("Nspecial: Burst Bubble");
initWords("A chargeable projectile. The projectile will only work when it is fully charged. You can even move while charging!
The projectile itself is fairly slow, but deals big damage. Could be useful for stage control.
Press parry when the bubble is fully charged to store the charge. Press NSpecial again to release it!
Hold the opposite direction you're facing when firing the bubble to move back much further! Use this as a recovery mix up option, or as a way to get around.");
initWords("Now for some synergy!
If you use Fspecial on it, you'll change the direction the bubble goes. The bubble will go at a downward angle in addition to going forward.
If you use Uspecial into it, or run into it during pratfall, you'll bounce off the bubble.
If the bubble touches either one of your Sleep Copy Essences or the Ability Star that gets knocked out of it, the bubble will pick it up! If it hits someone, then they will be put to sleep!");
initImage_ext(sprite_get("nspecial"), -6, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("nspecial_bubble"), -5, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Dspecial: Sleep Copy Essence");
initWords("Dspecial places a Sleep Copy Essence on the stage. After the star materializes, you can hit it around with any of your normals!
Having the star hit someone puts the sleep status on them, so this is a fairly versatile option. The star only lasts for 4 seconds after being hit by something (and refreshes after being hit by anything), so keep this in mind.
Be careful: the opponent can also hit it, which could lead to you falling victim to your own status! Note: Opponents can't hit it back with a projectile.
If you knock an opponent into the Essence while the Ability Star is still in the Essence, it will automatically put the Sleep Ability onto them.");
initImage_ext(sprite_get("essence_ability"), -6, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Jab");
initWords("This is fairly a basic 3 hit jab at a first glance: but after Jab 3 is used, Sleep Kirby lies down. After 10 frames, you cancel it into anything.
Lying down for a while lets Kirby activate Sweet Dreams.");
initImage_ext(sprite_get("jab"), -5, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Dtilt");
initWords("A slide. Hitting an opponent bounces both of you upward. Can be ledge canceled.");
initImage_ext(sprite_get("dtilt"), -5, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Nair");
initWords("A full 360 degree swing around Sleep Kirby. Landing during the move's active frames autocancels into Jab 3.
If you land and cancel into Jab 3, it becomes a deadly kill option. Use this to catch your opponent off guard!");
initImage_ext(sprite_get("nair"), -5, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Fstrong");
initWords("Kirby's Fsmash from Smash Bros. You'll go a little bit farther if you charge it.");
initImage_ext(sprite_get("fstrong"), -5, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

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

initPatch("1.9", "29 November, 2021");
initHeader("General");
initSection("~ Added Finished tag.
~ Added Greenflower Zone compatibility.
~ Added TCO Art compatibility.
~ Adjusted Muno Steve death message.
~ Adjusted Steam preview image a little bit.");
initHeader("Jab");
initSection("- Jab 3 now has parry stun.");
initHeader("Down Air");
initSection("~ Adjusted endlag animation to be a bit smoother.");
initHeader("Up Strong");
initSection("~ Fixed a part of Sleep Kirby’s arm not being shaded for a frame.");
initHeader("Down Special (Sleep Copy Essence)");
initSection("~ Fixed the Ability Star drawing an opponent’s hit fx if the Ability Star hits someone.
~ Fixed a bug where if both players hit the Ability Star at the same time while having their hitboxes overlapping each other, both would get put to sleep.
~ Fixed a bug where if an opponent hit Sleep Kirby’s Ability Star into his own Burst Bubble (NSpecial projectile), the bubble would pick up the Ability Star.");

initPatch("1.8", "8 November, 2021");
initHeader("General");
initSection("~ Adjusted the screenshots on the Steam page.
~ Adjusted the icon for Sleep Kirby on the CSS.
~ Fixed the names for the Emerald and Snow palettes being swapped on the CSS.
~ Fixed the hat overlapping the pillow’s outlines for a frame in the jump animation.
~ Adjusted hud sprite.");
initHeader("Dash Attack");
initSection("~ Adjusted hit fx when landing the early hit.");
initHeader("Down Tilt");
initSection("~ Fixed parts of Sleep Kirby’s feet overlapping outlines on his body for a single frame.");
initHeader("Down Air");
initSection("- Final Hit Angle: 285 -> 275
+ Final Hit Knockback Scaling: 0.4 -> 0.5
+ Multihit Knockback Scaling: 0.1 -> None (The multihits should connect better now.)");
initHeader("Neutral Special (Burst Bubble)");
initSection("~ Added dust effects when using the move on the ground.");
initHeader("Forward Special (Nightly Nightcap)");
initSection("~ Added dust effects when using the move on the ground.");

initPatch("1.7", "31 October, 2021");
initHeader("General");
initSection("~ Adjusted VFX for the intro animation.
~ Fixed a bug where an attack after any hit of Jab or landing Nair would have Sleep Kirby’s hurtbox be his jab hurtbox.
~ Fixed a bug where opponents could tech out of the Sleep status.
~ Fixed opponents flying to the top of the screen if they hit the bottom blastzone while under the Sleep status.
~ Adjusted sound effect for when the Sleep status wears off.
~ Added dust effects for when Sleep Kirby activates Sweet Dreams (aka he falls asleep) by idling.");
initHeader("Jab");
initSection("~ Added dust effects to Jab 1 and Jab 2.
~ Adjusted Jab 3 hitbox to connect better when doing landing Neutral Air.");
initHeader("Forward Tilt");
initSection("~ Added dust effects.");
initHeader("Up Tilt");
initSection("~ Adjusted hitbox sizes to better match the animation.");
initHeader("Down Tilt");
initSection("~ Adjusted hitbox size to better match the animation.");
initHeader("Neutral Air");
initSection("~ The spin sound effect now stops when the move is parried.");
initHeader("Forward Air");
initSection("~ Adjusted hitbox size to better match the animation.");
initHeader("Up Air");
initSection("~ Adjusted sfx timing.
+ Knockback Scaling: .4 -> .5");
initHeader("Down Air");
initSection("~ Adjusted hitbox sizes to better match the animation.");
initHeader("Back Air");
initSection("~ Adjusted hitbox sizes to better match the animation.");
initHeader("Neutral Special (Burst Bubble)");
initSection("- Now properly puts Sleep Kirby into parry stun when parried.");

initPatch("1.6", "28 September, 2021");
initHeader("General");
initSection("~ Hotfix to remove debug text.");

initPatch("1.5", "27 September, 2021");
initHeader("General");
initSection("~ Minor hotfix for compatability.");

initPatch("1.4", "27 September, 2021");
initHeader("General");
initSection("~ You can now add custom sprites (and hat offsets) for when you are put to sleep by Sleep Kirby. Look at the Google Doc in the Steam Description for more details.
~ Updated MunoPhone Touch firmware.");
initHeader("Up Tilt");
initSection("~ Added dust effects.");
initHeader("Forward Strong");
initSection("~ The dust effect changes depending on how long you charge the move.");
initHeader("Up Strong");
initSection("~ Added dust effects.");
initHeader("Down Strong");
initSection("~ Added dust effects.");
initHeader("Down Special");
initSection("~ The Ability star flashes right before it’s going to disappear.
~ When the Ability Star disappears, there should now be a visual effect.
~ When the Ability Star gets parried, it will only put Sleep Kirby in parry stun if it belongs to him.
~ Adjusted the dust effect when the Ability Star lands.");

initPatch("1.3", "20 September, 2021");
initHeader("General");
initSection("~ Hurtbox adjusted.
~ The MunoPhone has been upgraded to the MunoPhone Touch!");

initPatch("1.2", "19 September, 2021");
initHeader("Neutral Air");
initSection("- Landing Hit Knockback Scaling: 0.8 -> 0.7");
initHeader("Neutral Special");
initSection("~ Fixed a bug where hitting the bubble while it held an Ability Star would send it the other way.");

initPatch("1.1", "19 September, 2021");
initHeader("General");
initSection("General
~ Fixed double outlines on the respawn platform.
~ Putting Muno Steve to sleep sets his respawn point to where you put him to sleep.
~ Added Trummel Codec.
~ Added Otto bobblehead.
~ Added Steve death message.
~ Added Hikaru Title.
~ Added Mt. Dedede Stadium title.
~ Added Henry Stickmin fail text.
~ Added Agent N text.
~ Added Soulbound Conflict text.");
initHeader("Neutral Air");
initSection("- Getting parried should put you into parry stun now.
+ Landing Lag: 9 -> 7
+ Landing Nair Base Knockback: 8 -> 9
+ Landing Nair Knockback Scaling: 0.7 -> 0.8
(this is what it originally was in beta before i toned it down a bit lol)");
initHeader("Back Air");
initSection("~ Adjusted hitbox sizes.");
initHeader("Neutral Special");
initSection("+ Cooldown: 120 Frames -> 80 Frames");
initHeader("Up Special");
initSection("+ Base Knockback: 4 -> 5
+ Knockback Scaling: .4 -> .5
~ Added destroy effect to the hand.");
initHeader("Down Special");
initSection("+ Opponents can’t destroy the Essence before the Ability star loads in anymore.");

initPatch("1.0", "18 September, 2021");
initHeader("General");
initSection("Kirby got the Sleep Ability in Rivals. Now nobody is safe from him. Brace yourself.");

initPatch("About Sleep Kirby", "It's Kirby!
	
...but with the Sleep Ability.");
initHeader("Character by");
initSection("ricE");
initHeader("SFX from");
initSection("- Kirby's Return to Dream Land
- Kirby Super Star Ultra
- Kirby: Canvas Curse
- Super Smash Bros. 64
- Super Smash Bros. for Nintendo 3DS and Wii U");
initHeader("Compatible with");
initSection("Trummel & Alto, Otto, Steve, Link, Hikaru, TCO, Agent N, Henry Stickmin, Dedede Arena, Soulbound Conflict, Greenflower Zone");
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

CHEAT_FLY		= initCheat("there is no cheat code", [0, 1], ["Off", "On"], "go to bed");



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
steve_death_message = "Steve got sent to Dream Land";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 3;

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
initCodecPagePit(SPK_PIT,	3,	0,	"What's up with Kirby? Did you invite him over for a sleepover, Palutena?");
initCodecPagePit(SPK_DPIT,	0,	0,	"Oh please. Next thing youll say is that youre already in your jammies.");
initCodecPagePit(SPK_PIT,	7,	0,	"Very funny.");
initCodecPagePit(SPK_PALU,	1,	0,	"Get it together, Pit.");
initCodecPagePit(SPK_VIR,	5,	1,	"Sleep Kirby may look harmless, but he can still fight: and fight well, at that.");
initCodecPagePit(SPK_PIT,	3,	0,	"Pssh, when did he ever do that in his games?");
initCodecPagePit(SPK_VIR,	2,	6,	"Well, actually, Pit - believe it or not, the Sleep Ability actually has a moveset - too bad its relegated to a spin-off.");
initCodecPagePit(SPK_PALU,	4,	1,	"Watch out for his Copy Essence or Nightcap: if he lands either of those, its lights out for you.");
initCodecPagePit(SPK_PALU,	6,	5,	"Luckily, you can knock his star back at him with one of your melee attacks. And the nightcap only puts you to sleep when youre grounded, so stay in the air and you should be fine.");
initCodecPagePit(SPK_DPIT,	0,	2,	"Am I gonna have to come over here and tuck you in for an early bedtime while I take care of this guy myself?");
initCodecPagePit(SPK_PIT,	8,	2,	"I'll be the one to do that to you, right after I beat Kirby!");

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