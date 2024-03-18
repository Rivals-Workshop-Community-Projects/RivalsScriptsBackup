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
num_alts = 27;

// Whether or not to display a name for each alt.
use_alt_names = true;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
alt_ui_recolor = 0;

// The list of names for the alts, if enabled.
alt_names = [
	"Default",
	"Blue",
	"Yellow",
	"Green",
	"Grey",
	"Purple (OG palette)",
	"Kyle asked me to add this one so I added it here you go kyle enjoy your FIL reference",
	"Celia",
	"Wes",
	"Rosso",
	"Pohaku",
	"Flo",
	"Mako",
	"Silverjack",
	"Nautilith",
	"Lux",
	"Wren",
	"Tanya",
	"Archarid",
	"Crest",
	"not based on anything",
	"I think they look cool",
	"Abyss",
	"Early Access",
	"Infamous",
	"Gold Rank",
	"Genesis",
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
muno_char_name = "Coldwin";

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

// Set to true and the copyrighted sfx will be replaced with RoA menu sounds.
// They'll still be present in the files.
phone.copyright_safe_mode = true;

// Set to true and this will DISABLE a lot of the phone's side features, mostly
// the coding shortcuts.
// See _docs.gml for a full list of what it disables.
// If you don't intend to use any of those bonus features in your character,
// you should set this to true since it saves a bit of performance.
// (it's false by default since Phone Sandbert uses some of those features)
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

initTip("NSpecial: Lantern Throw");
initWords("With Nspecial, Coldwin will throw his lantern forward as a projectile. The brighter the flame, the more damage and knockback it will do.");
initWords("It will float in place, and you can grapple to it with Fspecial!");
initWords("Using a lantern move will recall it back to you.");
initImage_ext(sprite_get("pho_nspecial"), 5, fa_left, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initImage_ext(sprite_get("pho_nspecial"), 7, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("lantern"), 7, fa_middle, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FSpecial: Knife Grapple");
initWords("On input, Coldwin throws his knife. If the knife hits something, he will pull himself to whatever he hit!");
initWords("Use it to extend combos or recover!");
initImage_ext(sprite_get("pho_fspecial"), -5, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("USpecial: Knifecopter lol");
initWords("USpecial has Coldwin swing his knife around him 3 times.");
initWords("The last hit has a sweetspot, so do well to position yourself for big knockback!");
initImage_ext(sprite_get("uspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSpecial: Soul Lantern");
initWords("Landing this move drains the energy from your foe, preventing them from doing anything until they recover.");
initWords_ext("Non lore version: It stuns your enemy until they touch the ground.",fa_center, c_gray, 0, false);
initWords("It has a long startup, however, so use it at your own risk.");
initImage_ext(sprite_get("dspecial"), -6, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Gimmick: Phantom Mode");
initHeader("Building Charge");
initWords("Landing attacks will fill the meter a little bit at a time.");
initWords("Moves that use his lantern (ftilt, dstrong, dspecial, bair, etc.) will fill more of the meter.");
initImage_ext(sprite_get("meter_back"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("meter_charge"), -6, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("meter_front"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initHeader("Going Ghost");
initWords("Using DSpecial while your lantern meter is full will put Coldwin in Phantom Mode.");
initWords("While in Phantom Mode, Coldwin is very floaty, and he has afterimages that mimic his moves!");
initWords("Landing lantern moves will fill up your next meter even while in Phantom Mode.");
initImage_ext(sprite_get("meter_install_flame"), -6, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("meter_install"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
	
initTip("Lore: The Lantern");
initWords_ext("The true Spectral Flame", fa_center, c_gray, 0, false);
initWords("His lantern is a cursed family heirloom passed down from many generations of his family. Once inherited, it is bound to the owner until death. The lantern grants him control over the fiery essence of all living things–souls. He can take one’s soul out of their body and put it back in. He can use it to communicate with the dead, if their souls still linger. He can absorb soul energy into the lantern and use it to empower himself.

How is it cursed, you may ask? The lantern tries to influence the current owner into using its abilities to cause as much chaos and damage as possible. It’s like a little shoulder devil, without the angel. The lantern doesn’t gain anything from this. All it wants is to see the world burn.

Coldwin, however, is able to resist the lantern’s influence so well that he doesn’t hear the voice. This is due to an amazing combo of having a strong willpower and just being too smart to not make dumb decisions. However, this led him to not believe the lantern is cursed at all, leaving him vulnerable to its influence if it ever gets an opening.

Unbeknownst to anyone in Aether, the lantern was originally found in the Abyss. This is why the lantern influences the owner. This fact has since been lost to time, and it is unknown how Coldwin’s ancestors came into possession of the lantern.
");


initTip("Lore: Background pt. 1");
initWords("Coldwin grew up living in the Fire Capitol. He tried out to join the Air Armada, but his flight abilities left something to be desired, so he never made the cut. Instead, he went to school to be a doctor.

While studying, his father passed away, leaving his lantern to Coldwin. He was able to find use for his lantern as a healer despite its malicious influence. He is able to use the lantern’s abilities to stabilize patients and keep their soul from moving on (with the patient’s consent of course), allowing them to operate on the patient without as much risk.

After inheriting the lantern, he puts on the mask to hide something he is self conscious of.

When Emperor Renburn was murdered and Zetterburn and Forsburn disappeared shortly after, it shook Coldwin to the core and made him incredibly paranoid. Three royals… gone, just like that, in such a short amount of time. What does this say about the safety of the citizens?

This gives the lantern an opportunity to corrupt him. While Coldwin still has good intentions, he starts doing some questionable things. He starts storing patients’ souls in his lantern, thinking they would be safer there, but he constantly loses them inside the lantern. He learns self defense with his signature rope knives. He starts believing conspiracy theories.");


initTip("Lore: Background pt. 2");
initWords("Eventually, he is approached by someone; a certain panther who claims to be from the future. Clairen, on a mission to find the Champions of Aether, is desperately asking for their whereabouts, so that she can ask them for help with dethroning Loxodont before he can establish his tyrannical rule. Due to the recent insanity, no one wants to give her a straight answer, until she meets Coldwin.

She asks him for his assistance, as she would need all the help she can get.Coldwin, feeling a sense of duty from all the stuff going on, agrees to help. They immediately assume the Champions disappeared in the Abyss, so they set off.

On the way, they meet the smoke clan. Clairen, being the granddaughter of their leader, convinces them to help out, forming a resistance against Loxodont and a search party for the missing princes.

Coldwin makes an outpost on the ledge overlooking the big hole that was once the Aethereal Gates, and settles down there for the time being.");

initTip("Lore: Coldwin's Sister");
initWords("Coldwin has an older sister named Coldvic. 
She moved to Merchant Port after Renburn’s murder, but before Zetterburn set fire to it. She came out just fine, luckily, but now she wants nothing to do with politics. 
Coldvic still lives in Merchant Port, and is helping them recover. She has since developed water powers
She is sick of Coldwin’s ''conspiracy theories.''");

initTip("Lore: Coldwin's Last Journal Entry");
initWords("For as long as I can recall, the Aethereal Gates have harbored a dark plague. Lately, this miasma has been seeping out, spreading…

Prince Forsburn. He was framed for the murder of Emperor Renburn, then exiled. Orcane stole the ceremonial torch. Seeking vengeance, Prince Zetterburn chased him to Merchant Port and burnt it down.
But then, they all vanished… along with the Aethereal Gates! In their place, the foul maw of the Abyss lies agape.

Now, rumors run rampant of shady deals and plots against the Air Armada…

It really seems that Aether has gone insane.

And it doesn't end there…
Someone approached me, claiming to be the granddaughter of Prince Forsburn, on a quest from the future to find him, along with the other Champions of Aether.

The insane part?
She asked me for help.

I can’t sit around and do nothing, though. Someone has to fight this disease.
And at this point, the Hippocratic oath has become more of a suggestion.");


initTip("Lore: Coldwin's second to Last Journal Entry");
initWords("As a doctor, I must prioritize the health of the citizens of Aether. Fitness is a big part of health, so I have came up with something to motivate such an ideal.

Here's what I'm thinking...

It's a multistage aerobic capacity test that progressively gets more difficult as it continues.
There is a 20 meter space dedicated for the exercise, and you run back and forth between it.

The running speed starts slowly, but gets faster each minute after you hear a signal, like a ding sound.
A single lap should be completed each time you hear another sound, probably a different ding.

You should run in a straight line, and the goal is to keep going back and forth as long as possible.
The second time you fail to complete a lap before the sound, the test is over.
Obviously, the test would begin on the word ''start.''");
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

initPatch("1.1", "1/31/23")
initWords("FSpecial
- Cooldown 25 > 30

Alts
+ Added Crest and Genesis alts
~ Changed the color of the Phantom Mode afterimages on a few alts for readability

Other
+ Fixed grammar and stuff in Munophone tips
+ Added stuff in the character select info thing 
")

initPatch("1.0", "12/19/23")
initWords("Finished lol")

initPatch("About Coldwin", "");
initWords("Coldwin is a rushdown/install character, being best at carrying your opponents offstage or up in the air to get quick kills.");
initHeader("Character owned, animated, and developed by");
initSection("Coldcolor");
initHeader("Additional code by");
initSection("Barney");
initHeader("Victory theme by");
initSection("Ellery - https://www.youtube.com/@ellerysmusic");
initHeader("Compatible with");
initSection("Trummel & Alto, Otto, Steve, Link, Miiverse");

// Recommended template for non-Sandbert characters (delete the other patches):

/*

// other patches go here...

initPatch("1.0", "42 Shmebruary, 2021"); // (replace the date lol)
initHeader("General");
initSection("The character was released.");

initPatch("About CHARACTER NAME", "");
initHeader("Character by");
initSection("your name here");
initHeader("SFX from");
initSection("any places you got sfx (or other assets)");
initHeader("Compatible with");
initSection("Trummel & Alto, Otto, Steve, Link");

*/



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

CHEAT_LANTERN	= initCheat("Full Lantern Charge", [0, 1], ["Off", "On"], "Keeps your lantern burning bright.");

CHEAT_PHANTOM	= initCheat("Perma-Phantom", [0, 1], ["Off", "On"], "Just use Dspecial once while it is at full charge, and  you will stay in Phantom Mode infinitely.");


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
phone.stats_notes = "Max Lantern Charge: " + string(lantern_charge_max);

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
initCodecPage(SPK_TRUM, 0, 0, "bird up");
//initCodecPage(SPK_SAND, 0, GIM_COLOR * GIM_LAUGH_TRACK, "no"); // this page uses the custom speaker

spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve's soul was drained.'";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 5;

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
// Works kind of similarly to Trummel codecs.
// initCodecPagePit(speaker, expression, voice, text);
// List of expressions and voice clips: https://pastebin.com/wsz22ZwJ

initCodecPit();
initCodecPagePit(SPK_PIT,	3,	0,	"Hey, it's Sandbert!");
initCodecPagePit(SPK_PIT,	1,	6,	"...Isn't he a bit above my power level?");
initCodecPagePit(SPK_PALU,	0,	3,	"Actually, this version of Sandbert has received a lot of nerfs to his damage and frame data.");
initCodecPagePit(SPK_PALU,	0,	2,	"He can't even cancel his USpecial or end it early anymore!");
initCodecPagePit(SPK_VIR,	5,	1,	"But yes, Pit, he IS still above your power level.");
initCodecPagePit(SPK_PIT,	6,	0,	"Pssh, sounds like a pushover to me.");
initCodecPagePit(SPK_PALU,	0,	4,	"Don't be so sure - despite the nerfs, his power and attack speed are still a force to be reckoned with.");
initCodecPagePit(SPK_PALU,	0,	2,	"Also, he has the same MunoPhone as you do - so he'll be well-versed in his frame data and combos.");
initCodecPagePit(SPK_VIR,	6,	4,	"Maybe you should turn on some Cheats for this fight, Pit?");
initCodecPagePit(SPK_PALU,	0,	2,	"No, I'm sure he'll be fine.");
initCodecPagePit(SPK_PALU,	2,	5,	"...As long as he avoids the Kamehameha.");
initCodecPagePit(SPK_PIT,	4,	1,	"The WHAT?!?");



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