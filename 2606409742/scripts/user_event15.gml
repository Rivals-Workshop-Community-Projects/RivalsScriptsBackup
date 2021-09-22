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
	case 4:
	case 8:
	case 10:
	case 12:
		alt_ui_recolor = 2;
		break;
	case 6:
		alt_ui_recolor = 4;
		break;
	default:
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
muno_char_name = "Link";
muno_char_id = 9;

// Whether or not the phone sprite should recolor w/ your alt costume.
// (set to "true" if you make a custom phone sprite in your char's colors)
phone.uses_shader = true;

// If you use a custom phone sprite that's taller than the default, enter how
// much taller it is here. (measured in ingame pixels; so if editing the default
// phone sprite, multiply it by two)
phone.extra_top_size = 28;

// Set to true and the "Fast Graphics" feature will be enabled; see _readme.gml.
phone.supports_fast_graphics = false;

// Set to true and the phone will NOT activate Fast Fraphics when FPS gets low.
phone.dont_fast = false;

// Set to true and this will DISABLE a lot of the phone's side utilities.
// If you're porting the phone to an existing char and don't need any of these
// features, you might as well turn on lightweight to save a tiny bit of
// performance. (see _docs.gml for a full list of what this disables)
phone.lightweight = false;

sfx_pho_open = sound_get("botw_ui_decide_1");
sfx_pho_close = sound_get("botw_ui_cancel_5");
sfx_pho_move = sound_get("botw_ui_move_1");
sfx_pho_move_home = sound_get("botw_ui_move_2");
sfx_pho_page = sound_get("botw_ui_decide_4");
sfx_pho_open_app = sound_get("botw_ui_decide_2");
sfx_pho_close_app = sound_get("botw_ui_cancel_3");
sfx_pho_power_off = sound_get("botw_ui_chime_1");
sfx_pho_power_on = sound_get("botw_ui_decide_1");



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

initTip("DSpecial: Remote Bomb");
initWords("While holding a Remote Bomb, you can walk, jump, and double jump; wall jumping or dodging will drop the bomb on-the-spot.");
initWords("Press Attack to toss the bomb, and hold up or down for different trajectories!");
initImage_ext(sprite_get("dspecial"), 8, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("bomb_idle"), -5, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("While it's on the field, you can't pick the bomb back up, but you can hit it with any attack to send it flying!");
initWords("Press DSpecial again to detonate the bomb at any time. (Note that enemies can hit the Remote Bomb to delay its explosion - it won't explode until it lands back on the ground.)");

initTip("Bomb Recovery");
initWords("In Rivals, the classic bomb recovery technique uses an airdodge!");
initWords("Try airdodging sideways and then immediately detonating the Remote Bomb for best results.");
initImage_ext(sprite_get("vfx_bomb_explode"), -5, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Taunt: Rune Selection");
initWords("The Sheikah Slate comes equipped with more than just the Remote Bomb - you can use three other Sheikah Runes, too!");
initWords("Hold Taunt to pull up the Rune Select menu, and then scroll through the list with the right analog stick - or, alternatively, the inputs used to move your character left and right.");
initWords("You can also press up to access the Camera app (which is a taunt), or down to access the MunoPhone.");
initWords("Once you pick a Rune, you'll notice that DSpecial still throws a Remote Bomb - in fact, in RoA, all four Runes affect what happens when you DETONATE the Remote Bomb!");
initImage_ext(sprite_get("ui_rune_reminder"), 0, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

var rune_descs = [
	"A powerful explosive - simple and to-the-point. Threatens a pretty large area, and always launches horizontally, which is good for edgeguards or combos.",
	"A miniature version of Captain Toad's Pull Star - handy for mobility. It's best used as a recovery option when you've already got a bomb sitting on the stage.",
	"Freezes the Remote Bomb in midair for a short time. From here, you can switch Runes and detonate it, OR hit it for a powerfully-hitting, auto-aim launch!",
	"Creates a giant pillar of ice, while also hitting enemies for a short moment. Useful for denying space or climbing, but goes away when struck with a single attack.",
	];

initTip("Four Runes");
for (var i = 0; i < array_length(runes); i++){
	var cur = runes[i];
	initWords_ext(cur.name + ":
	" + rune_descs[i], fa_left, cur.color, 2, true);
	initImage_ext(sprite_get("ui_rune_icons"), i + 4, fa_left, 1, 1, false, c_white, 1, false, 28, 28, 28, 40);
}

var rune_shortcuts = [
	"Attack",
	"Special",
	"Jump",
	"Shield",
	];

initTip("Rune Shortcuts");
initWords("While scrolling through Runes feels straight out of Breath of the Wild, sometimes you need split-second access to a specific option.");
initWords("For situations like these, there are button shortcuts for each Rune, performed by holding Taunt and then pressing a certain button!");
initWords("Try committing them to memory to optimize your play.");
for (var i = 0; i < array_length(runes); i++){
	var cur = runes[i];
	initWords_ext(cur.name + ":", fa_left, cur.color, 5 * i, true);
	initWords_ext("
	" + rune_shortcuts[i], fa_left, c_white, 5 * i, true);
}

initTip("Stamina and Recovery");
initWords("Link has a unique wall jump, based on the climbing system from his home game. He can jump over and over to ascend up the side of the stage!");
initWords("This ability is limited by the Stamina Wheel, a unique resource which refills over time when Link is grounded or in hitstun.");
initImage(sprite_get("stamina_wheel"), -5);
initWords("If you find yourself out of Stamina, you won't be able to wall jump at all - so look out!");
initWords("Link's USpecial, the Paraglider, also relies on Stamina. NSpecial and FSpecial can be used without Stamina, but they consume a tiny bit on use.");
initWords_ext("USpecial is notable because it has no limit on its use, other than your remaining Stamina. Try interrupting it with a double jump and then starting the glide again for extra height!", fa_left, c_white, 0, true);
initWords(""); // for spacing of below image
initImage_ext(sprite_get("uspecial"), -5, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Spear Durability");
initWords("NSpecial, FStrong, UStrong, and UAir all use Spear weapons. Unlike the Master Sword, these Spears are prone to wear and tear - and so after 5 uses, they'll break!");
initWords("The breaking hit deals extra damage and knockback, so be sure to keep track of the durability and plan out when you'll land the final blow!");
initImage_ext(sprite_get("fstrong"), -5, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("ustrong"), -5, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("Of course, once the Spear breaks, you'll be without a weapon for all of these moves... luckily, hitting an enemy with any non-projectile attack will drop a fresh Spear for you to pick up.");

initTip("Different Spears");
initWords("There are eight possible types of Spear that can drop. They're just for looks, though, even the extra-rare Elemental and Guardian variants - the damage, knockback, and speed are all identical.");
initWords("Spear drops are random... but the first time per-match that a Base Rivals character drops a Spear, it'll be a specific Spear assigned to that character! (e.g. Zetterburn will drop a Flamespear first, and after that, it's random)");
initWords("Workshop characters can also have Spears assigned to them, as character compatibility - see MunoPhone files for details.");
for (var i = 1; i < array_length(spears); i++){
	initImage_ext(sprite_get("spears"), i, fa_left, 1, 1, true, c_white, 1, i != 8, i * 74, 48, 32, 128);
}
initWords_ext("(I wonder why the Wooden Mop deals the same damage as the Flamespear...)", fa_right, c_gray, 0, false);

initTip("NSpecial: Traveler's Bow");
initWords("Link's NSpecial is more like Byleth's arrow shot than Link's own Smash version of the attack. Its charge has a fixed length, instead of being based on how long you hold the button.");
initWords("Also, you can cancel the charge at any point by jumping or dodging, which lets you fake out the opponent and bait a parry.");
initImage(sprite_get("nspecial"), -5);
initWords("...Of course, since you throw away your only Spear by using this move, it's less practical as a repeated-use projectile. Instead, try saving it for big moments! It's pretty strong, after all.");

initTip("FSpecial: Shield Jump");
initWords("FSpecial isn't a projectile in this game; instead, it's an athletic Shield Surf Jump straight from Breath of the Wild!");
initWords("It hits more powerfully during the initial flip kick, but you can also fall on enemies during the long-lasting surf pose.");
initImage(sprite_get("fspecial"), -5);
initWords("Legend has it that by B-Reversing the move with specific timing, you can travel in one direction, but launch enemies in the other! Sneaky.");

initTip("UTilt: Sneakstrike");
initWords("UTilt spikes at the very tip of the sword.");
initImage(sprite_get("utilt"), -5);
initWords_ext("it's pretty funny", fa_right, c_white, 0, false);

initTip("Traveler's Shield");
initWords("Link has a familiar passive: the ability to block projectiles while standing, walking, or crouching!");
initWords("FTilt has this passive too - and even has soft armor during its startup!");
initImage(sprite_get("ftilt"), -5);

initTip("FAir: Flooded Stab");
initWords("FAir has a sweetspot at the hilt of the Master Sword! Get in your enemy's face to deal the most damage.");
initImage(sprite_get("fair"), -5);



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

initPatch("1.1", "20 September, 2021");
initHeader("NSpecial - Nerfs, Bugfixes");
initSection("Base knockback (regular) 6 --> 8.
Hitstun multiplier (both) 1.0 --> 0.75.
Weird stuff no longer happens when your spear gets parried.");
initHeader("Dash Attack - Adjustments");
initSection("Hit 2 knockback 9/0.9 --> 6/1.0.");
initHeader("NAir - Adjustments");
initSection("Early hit base knockback 7 --> 6.");
initHeader("FAir - Nerfs");
initSection("Base knockback 7/8 --> 6/7.");
initHeader("BAir - Adjustments");
initSection("Hit 2 knockback 7/0.5 --> 6/0.6.");
initHeader("FStrong - Nerfs");
initSection("Endlag 20 --> 24.")
initHeader("FSpecial - Bugfixes");
initSection("Frame-perfect parry stun bug MIGHT be fixed.");
initHeader("DSpecial - Bugfixes");
initSection("Bomb explosion, Stasis launch, and Cryonis pillar hitboxes now have extended parry stun.
Hitting the bomb multiple times no longer causes the hitboxes to stack.");

initPatch("1.0", "19 September, 2021");
initHeader("General");
initSection("The character was released.");

initPatch("About Link", "");
initHeader("Original IP");
initSection("Nintendo");
initHeader("Character by");
initSection("Muno - byMuno.com");
initHeader("SFX from");
initSection("The Legend of Zelda: Breath of the Wild
Minecraft
Super Smash Bros. Ultimate");



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

CHEAT_STAMINA	= initCheat("Infinite Stamina", [0, 1], ["Off", "On"], "Never run out of Stamina! Climb to the heavens.");
CHEAT_SPEAR_DUR	= initCheat("Spear Durability", [0, 1, 2], ["Default", "Never Break", "Always Break"], "Change how the Spear's durability behaves.");
var spear_ids = [0];
var spear_names = ["Default"];
for (var i = 1; i < array_length(spears); i++){
	var cur = spears[i];
	array_push(spear_ids, i);
	array_push(spear_names, cur.name);
}
CHEAT_SPEAR_ID	= initCheat("Spear Drops", spear_ids, spear_names, "Control which Spear drops from hit opponents, instead of leaving the result up to chance.");
CHEAT_TRAILER	= initCheat("Trailer Mode", [0, 1], ["Off", "On"], "Disable the Sheikah Rune icon on the HUD, to help get cleaner clips for trailers or videos.");



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

initCodec(0); // this should just always be 0, because there are no codec gimmicks
initCodecPage(SPK_ALTO, 2, 0, "...Hey Coda, who's this guy? I don't think he's from around here.");
initCodecPage(SPK_CODA, 0, 0, "That's Link, the Hero of the Wild. He's from a distant future where all of Hyrule's timelines converge.");
initCodecPage(SPK_TRUM, 0, 0, "so hyrule warriors");
initCodecPage(SPK_ECHO, 2, 0, "No, this is a *different* time paradox thing that makes no sense.");
initCodecPage(SPK_OTTO, 5, 0, "I guess Aether got pulled into it this time?");
initCodecPage(SPK_ALTO, 0, 0, "So this guy's from the future? That explains why he brought his own MunoPhone, huh.");
initCodecPage(SPK_ECHO, 0, 0, "His tech is a lot more advanced than you'd think from looking at his fashion sense.");
initCodecPage(SPK_CODA, 0, 0, "In particular, his Remote Bomb can be detonated whenever he feels like it...");
initCodecPage(SPK_CODA, 1, 0, "...and he can switch to different Sheikah Runes to make it do something else instead of exploding, like create a pillar of ice.");
initCodecPage(SPK_ALTO, 9, 0, "So all we've gotta do is pay attention to which symbol is on his HUD.");
initCodecPage(SPK_OTTO, 0, 0, "Those spears of his also look pretty fragile... but the breaking hit is extra strong, so watch out.");
initCodecPage(SPK_ECHO, 2, 0, "You guys should try camping him out when his spear breaks - he has to hit you to get a new one!");
initCodecPage(SPK_TRUM, 1, 0, "where does he get them from anyway

i dont carry spears or anything");
initCodecPage(SPK_ALTO, 2, 0, "...Probably best not to question it.");

spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve ran out of fairies in bottles";

// Link spear. (determines which spear your char will drop the first time)
// link_spear_drop = 3;

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