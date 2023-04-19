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
	case 1: // jacket color
		alt_ui_recolor = 6;
		break;
	case 6: // skin color
	case 8:
		alt_ui_recolor = 4;
		break;
	default: // shell color
		alt_ui_recolor = 0;
		break;
}

// The list of names for the alts, if enabled.
alt_names = [];



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
muno_char_name = "Trummel & Alto";
muno_char_id = 1;

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
	
initTip("Making Clouds");
initWords("All of your Strongs and Specials can create clouds, and you can have up to 3 out at a time. Any player can move them around by using hitboxes.");
initImage_ext(sprite_get("fspecial"), -5, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("cloud_idle"), -5, fa_left, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Getting Lightning");
initWords("After using USpecial, FSpecial, or a successful NSpecial, land in a cloud to become actionable again and enter Lightning state! After this, you can't land in a cloud again until you land, walljump, or get hit.");
initImage_ext(sprite_get("snail_idle"), -5, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("snail_land"), -5, fa_left, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Angry Thunderclouds");
initWords("At the moment you land in a cloud, all of your OTHER clouds get jealous and angry. Luckily, the electric burst can't hit you - so use it for stage control and combos!");
initImage(sprite_get("cloud_explode"), -5);

initTip("Lightning Attacks");
initWords("While in Lightning state, your DSpecial is powered up with a stun effect and travels infinitely far downward in the blink of an eye.");
initWords("Also, you can access all-new midair Strongs! You can fly during the charge of a Lightning Strong, but they cause pratfall on use.");
initWords("And your regular Strongs get in on the fun too, with a second electrical hit for more damage and combo potential.");
initImage_ext(sprite_get("lightning_dstrong"), -5, fa_right, 1, 1, true, c_white, 1, true, 100, 100, 100, 64);
initImage_ext(sprite_get("lightning_fstrong"), -5, fa_left, 1, 1, true, c_white, 1, false, 100, 100, 100, 64);

initTip("Lightning Lock");
initWords("Hit an enemy into a cloud, and they'll be slowed down during their hitstun state! Chase them for a free follow-up.");
initWords("This also happens automatically when you hit the enemy with a projectile Strong Attack or the third hit of DSpecial. However, this version of the Lightning Lock doesn't last as long, so try hitting into existing clouds too.");
initWords("P.S. You can't use the Lightning Lock while in the Lightning state, so it's a bit of a tradeoff.");
initWords("P.P.S. You can get Lightning state by landing in the cloud locking an enemy!");
initImage(sprite_get("cloud_slowmo"), 0);

initTip("NSpecial: Call & Response");
initWords("Connect with NSpecial successfully, and Trummel will perform a follow-up attack! Any available clouds will join in to power up the blast. Get all 3 clouds for a WOAG!");
initImage_ext(sprite_get("nspecial"), -5, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("nspecial_2"), -5, fa_left, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FSpecial: Shell Stride");
initWords("After hitting with FSpecial, you can jump immediately! This counts as a grounded jump, even in midair.");
initImage(sprite_get("fspecial"), -5);

initTip("USpecial: Blues Jump");
initWords("USpecial has no invulnerability or ascending hitbox... BUT at the beginning, it hits foes. If you're far from the stage, try landing back in your cloud to recover with a flying Lightning Strong!");
initImage(sprite_get("uspecial"), -5);

initTip("Strong Atk. Cooldown");
initWords("The non-Lightning Strongs have a shared cooldown of 1 second. So, if your dream was to bring all the projectiles together for one big jamboree, I'm sorry, but it's not gonna happen.");
initImage(sprite_get("fspecial"), -5);

initTip("DStrong: Mechagastropod");
initWords("DStrong does not gain power when charged. Instead, the wind-up robot lasts for a longer time. Its timer is paused in midair, so you can set up long-lasting traps using a platform.");
initImage(sprite_get("dstrong_proj"), -5);

initTip("DAttack: Turnaround Slide");
initWords("Hold jump during DAttack's power-slide to jump high into the air! If you also hold attack, the jump goes sideways instead of straight up.");
initWords("You can't airdodge right away when using this technique.");
initImage(sprite_get("dattack"), -5);

initTip("DAir: Spincopation");
initWords("DAir slows your fall very briefly, but also restricts your horizontal movement. You can use this to mix up your recovery and landings!");
initImage(sprite_get("dair"), -5);

initTip("Codecs in VS Mode");
initWords("Hold the taunt button for a couple of seconds to access codecs in VS Mode! Also, try holding down when you taunt...");
initImage(sprite_get("taunt"), -9);



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

initPatch("2.2", "14 April, 2023");
initWords("Advertising");
initHeader("FStrong - Nerfs");
initSection("Now has extended parry stun.
(I did this ages ago and forgot to upload apparently)");

initPatch("2.1", "04 October, 2021");
initHeader("General - Bugfixes");
initSection("Re-added the internal Muno Character ID, the absence of which caused a bug.");

initPatch("2.0", "19 September, 2021");
initHeader("General");
initSection("Upgraded to MunoPhone Touch.
Added dust effects to grounded normals.
Adjusted color palette.");
initHeader("New Mechanic - Lightning Lock");
initSection("Allows you to put enemies into a slow-mo hitstun state by using clouds.
See Tips for details!
Knockback and hitstun of Projectile Strongs and DSpecial have been changed accordingly.");
initHeader("Lightning - Buffs, Nerfs, Aesthetics");
initSection("You can now use the projectile Strongs while in Lightning state; Lightning Strongs now activate only in the air.
Lightning now buffs initial dash speed, dash speed, air speed, and air accel while active.
Lightning no longer ticks down while in hitpause.
Hitting an enemy while in Lightning state restores a small amount of the Lightning meter, proportional to damage dealt.
Lightning attacks no longer cause recoil damage.
Animation for landing in a cloud / landing from snail state has a hitbox again.
Animation for entering Lightning state can no longer be canceled.
Lightning form now produces small lightning bolt vfx.");
initHeader("Stats - Buffs, Nerfs");
initSection("Double jump speed 9 --> 10.
Prat land time 16 --> 8.
Air speed (snail form) 5.5 --> 4.");
initHeader("USpecial - Adjustments");
initSection("Removed hitbox (to help with consistency of Lightning Lock).");
initHeader("FTilt - Nerfs");
initSection("Hitbox's inward reach reduced.");
initHeader("NAir, FAir - Buffs");
initSection("Landing lag 7 --> 5.")
initHeader("Dair - Adjustments");
initSection("Hit 4 angle 90 --> 270.
Hit 4 knockback 7/0.7 --> 6/0.6.");
initHeader("FStrong - Nerfs, Aesthetics");
initSection("Projectile is no longer transcendent.
Projectile travels more slowly over a similar distance.
Projectile is now a bullet.");
initHeader("Strong Attacks - Nerfs");
initSection("Cooldown 60 --> 90.");
initHeader("UStrong - Aesthetics");
initSection("Changed hit sound.");
initHeader("Clouds - Bugfixes");
initSection("Can no longer be pushed into the ground.
Offscreen indicator no longer moves with the cloud's idle animation.");

initPatch("1.12", "20 July, 2021");
initHeader("Clouds - Nerfs, Buffs");
initSection("You now lose a cloud when getting hit with a hitbox that has knockback growth, or when getting parried.
The animation when entering lightning state can now be canceled after a few frames.");
initHeader("NSpecial - Bugfixes");
initSection("Added code to make the sax hit ignore crouch-canceling.
Improved code to manipulate the enemy's horizontal velocity.
Drift DI multiplier of sax hit 1 --> 0.001. (trumpet hit still has normal drift)
Trumpet hitbox moved slightly back.");
initHeader("UStrong, DStrong - Buffs");
initSection("Projectiles are no longer transcendent.");
initHeader("BAir - Adjustments");
initSection("Angle 135 --> 140.
Knockback growth 0.6 --> 0.8.");

initPatch("1.11", "03 March, 2021");
initHeader("NSpecial - Nerfs");
initSection("Base knockback of all variants reduced by 1.");
initHeader("FSpecial - Nerfs");
initSection("Movement speed reduced.");
initHeader("Lightning Strongs - Nerfs");
initSection("Flight speed now decreases much more as the charge progresses, all the way to 0 speed at the end.");
initHeader("Lightning DSpecial - Nerfs");
initSection("Endlag 15 --> 24.");
initHeader("DStrong - Nerfs");
initSection("On parry, the mech now resets its hitbox timer and speeds up.");
initHeader("BAir - Nerfs");
initSection("Landing lag 6 --> 8.");

initPatch("1.10", "07 February, 2021");
initHeader("Lightning Strongs, Lightning DSpecial - Nerfs");
initSection("These moves now inflict 3 recoil damage (up to 5 for charged Strongs).
Lightning Strongs now have pratfall even on hit.");
initHeader("NSpecial - Nerfs, Bugfixes");
initSection("Sax hit sends the enemy a shorter distance forward.
Sax hit now has pratfall on whiff.
Fixed a bug preventing the enemy from using Drift DI on the trumpet hit (by removing the useless Drift DI multiplier on the sax hit).");

initPatch("1.9", "29 December, 2020");
initHeader("Lightning Strongs, Lightning DSpecial - Nerfs");
initSection("Using one of these moves now drains 30f of duration from the lightning meter.");
initHeader("Clouds - Bugfixes");
initSection("Fixed parrystun on the lightning cloud explosion.");

initPatch("1.8", "12 December, 2020");
initHeader("USpecial, FSpecial - Nerfs, Adjustments");
initSection("Removed hitbox when landing in a cloud (both w/ and w/o lightning).
Landing in a cloud no longer has whifflag.");
initHeader("FSpecial - Nerfs, Adjustments");
initSection("When used in midair, FSpecial goes at a downward angle and has less horizontal speed.
The hop at the end of the move is lower. (prev. patch undone)");

initPatch("1.7", "08 December, 2020");
initHeader("NAir - Reworks");
initSection("NAir is now a sex kick, with a late hitbox that lasts 6 frames.");
initHeader("FSpecial - Adjustments");
initSection("The hop at the end of the move is higher.");
initHeader("USpecial - Nerfs");
initSection("Removed super armor.");
initHeader("FStrong - Nerfs");
initSection("Hitbox spawns further forward; total distance (roughly) unchanged.");
initHeader("UStrong - Nerfs");
initSection("The molotov's hitbox disappears once it begins turning into a cloud.");
initHeader("FTilt - Nerfs");
initSection("Hurtbox now extends to the ground during the flip.");

initPatch("1.6", "01 December, 2020");
initHeader("USpecial - Bugfixes");
initSection("SFX issues corrected.");
initHeader("MunoPhone - Aesthetics");
initSection("Phone now gets recolored to the alt.");

initPatch("1.5", "23 November, 2020");
initHeader("USpecial - Adjustments");
initSection("Pre-armor frames 1 --> 4.
Armor now lasts until Trummel leaves the cloud.
Armor now appears in the frame data guide.");

initPatch("1.4", "19 November, 2020");
initHeader("NSpecial - Bugfixes");
initSection("Added another measure to try and prevent weird linking errors.");
initHeader("Palettes - Clarity");
initSection("Alts #05 and #11 now use the shell color, not the skin color, as the basis for the lightning color.");
initHeader("Codecs - Bugfixes");
initSection("Steve portrait works now.
Text color gimmick works now.");

initPatch("1.3", "14 November, 2020");
initHeader("Misc. - Performance, Clarity, Bugfixes");
initSection("Lightning visual effects are less laggy.
Clouds now have an offscreen indicator.
If you manage to glitch and use 4 clouds for NSpecial, the hitbox will no longer fail to come out. (The strength is the same as 3 clouds.)");

initPatch("1.2", "10 November, 2020");
initHeader("FStrong, UStrong, DStrong - Buffs");
initSection("Projectiles are now transcendent.");
initHeader("FStrong - Buffs");
initSection("Angle 60 --> 45.
Projectile spawns further back; speed increased to compensate.");
initHeader("DAttack - Bugfixes");
initSection("Superjump now ACTUALLY works with tap jump.");
initHeader("Codecs - Continuity");
initSection("Kragg's codec changed due to gun now being transcendent.");

initPatch("1.1", "09 November, 2020");
initHeader("NSpecial - Consistency");
initSection("Sax hit SDI multiplier 1x --> 0.001x.
Trumpet hitbox size and position adjusted.");
initHeader("DAttack - Bugfixes");
initSection("Getting parried now disables the superjump.
Superjump now works with tap jump.");
initHeader("FSpecial - Bugfixes");
initSection("Jump cancel now works with tap jump.");

initPatch("1.0", "09 November, 2020");
initHeader("General");
initSection("The character was released.");

initPatch("About Trummel & Alto", "");
initHeader("Character by");
initSection("Muno - byMuno.com");
initHeader("SFX from");
initSection("Super Paper Mario
Super Smash Bros. Ultimate");
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
	
CHEAT_CODEC		= initCheat("Codecs", [0], ["Click to Activate"], "Easily access Codec Conversations in Practice Mode.

Click again to skip a page.");
CHEAT_WOAG		= initCheat("Say woag", [0, 1], ["no", "yes"], "pls laugh");
CHEAT_TRAILER	= initCheat("Trailer Mode", [0, 1], ["Off", "On"], "Hides or moves certain HUD elements for trailer recording; meant to be used in conjunction with hiding the overhead name and damage indicators.");
CHEAT_NO_CD		= initCheat("Disable Cooldowns", [0, 1], ["Off", "On"], "Disables all restrictions on move usage.")



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
var h = GIM_LAUGH_TRACK;
initCodecPage(SPK_TRUM, 0, h, "woag");
initCodecPage(SPK_ALTO, 0, h, "woag");
initCodecPage(SPK_OTTO, 0, h, "woag");
initCodecPage(SPK_CODA, 0, h, "woag");
initCodecPage(SPK_ECHO, 0, h, "woag");

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve got woaged";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 7;

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