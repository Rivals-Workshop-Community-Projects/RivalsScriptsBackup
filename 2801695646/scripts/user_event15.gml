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
num_alts = 30;

// Whether or not to display a name for each alt.
use_alt_names = true;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
alt_ui_recolor = noone; //0 - default

// The list of names for the alts, if enabled.
alt_names = [
	// Default
	"STEALTH - Lethal",		// SOCOM, Smoke Grenades, C4
	"STEALTH - Non-Lethal",	// M9, Smoke Grenades, Satchels
	"ASSAULT - Lethal",		// M4, Frag Grenades, Claymores
	"ASSAULT - Non-Lethal",	// Mosin, Stun Grenades, Claymores
	"NAKED",					// Unarmed
	// SEAL Disguise
	"[STEALTH - Lethal]",		// SOCOM, Smoke Grenades, C4
	"[STEALTH - Non-Lethal]",	// M9, Smoke Grenades, Satchels
	"[ASSAULT - Lethal]",		// M4, Frag Grenades, Claymores
	"[ASSAULT - Non-Lethal]",	// Mosin, Stun Grenades, Claymores
	"[NAKED]",					// Unarmed
	// Gurlukovich Disguise
	"[STEALTH - Lethal]",		// SOCOM, Smoke Grenades, C4
	"[STEALTH - Non-Lethal]",	// M9, Smoke Grenades, Satchels
	"[ASSAULT - Lethal]",		// M4, Frag Grenades, Claymores
	"[ASSAULT - Non-Lethal]",	// Mosin, Stun Grenades, Claymores
	"[NAKED]",					// Unarmed
	// Genome Disguise
	"[STEALTH - Lethal]",		// SOCOM, Smoke Grenades, C4
	"[STEALTH - Non-Lethal]",	// M9, Smoke Grenades, Satchels
	"[ASSAULT - Lethal]",		// M4, Frag Grenades, Claymores
	"[ASSAULT - Non-Lethal]",	// Mosin, Stun Grenades, Claymores
	"[NAKED]",					// Unarmed
	// PMC Disguise
	"[STEALTH - Lethal]",		// SOCOM, Smoke Grenades, C4
	"[STEALTH - Non-Lethal]",	// M9, Smoke Grenades, Satchels
	"[ASSAULT - Lethal]",		// M4, Frag Grenades, Claymores
	"[ASSAULT - Non-Lethal]",	// Mosin, Stun Grenades, Claymores
	"[NAKED]",					// Unarmed
	// Guns of the Patriots
	"[STEALTH - Lethal]",		// SOCOM, Smoke Grenades, C4
	"[STEALTH - Non-Lethal]",	// M9, Smoke Grenades, Satchels
	"[ASSAULT - Lethal]",		// M4, Frag Grenades, Claymores
	"[ASSAULT - Non-Lethal]",	// Mosin, Stun Grenades, Claymores
	"[NAKED]",					// Unarmed
	
	];

/*alt_names = [
	"Default",
	"Navy SEAL Disguise",
	"Gurlukovich Disguise",
	"PMC Disguise",
	"Genome Disguise",
	"Guns of the Patriots",
	"Rookie",
	"S3 Plan",
	"Pretty Good",
	"Joy",
	"Chiral Porter",
	"Ingram",
	"Merry Gear Solid",
	"N313",
	"Ghost Babel",
	"Early Access",
	];*/



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
muno_char_name = "Solid Snake";

// Whether or not the phone sprite should recolor w/ your alt costume.
// (set to "true" if you make a custom phone sprite in your char's colors)
phone.uses_shader = false;

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

initTip("Taunt (Hold): Inventory Navigation");
initWords("To change your equipment, hold TAUNT to open the inventory menu, and hold the right stick in a direction to select a category.");
initWords("Left for throwing weapons (NSpecial), right for firearms (FSpecial), down for placed weapons (DSpecial), and up for items (USpecial).");
initWords("Tapping the right stick instead of holding it allows you to quickly cycle your weapons, without opening the weapon category menu.");
initWords("To get a new weapon or item, open the supply drop menu with SPECIAL, and select the equipment you want.");
initWords("A supply drop point will be placed on your position, where a cardboard box will be dropped. Supply drops take a few seconds to arrive.");
initImage_ext(sprite_get("taunt"), (current_sprite_set == 0) ? 1 : 4, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Taunt (Tap): Quick Toggle Firearm");
initWords("Tapping taunt instead of holding it will allow you to quickly equip/unequip your current firearm.");
initWords("This is particularly useful when a two-handed weapon is equipped. Two-handed weapons handle slower than one-handed weapons,");
initWords("and you cannot perform CQC grabs when a two-handed weapon is equipped.");
initWords("Firearm toggling lets you free your hands in a pinch, without the need to open the weapon menu.");
initWords("Toggling is also useful for cancelling chamber animations, without having to attack or parry.");
initImage_ext(sprite_get("idle_pistol"), (current_sprite_set == 0) ? 0 : 6, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("w_m9s_idle"), 0, fa_center, 2, 2, false, c_white, 1, true, noone, noone, noone, noone);

initTip("NSpecial: Use Throwing Weapon");
initWords("Hold NSpecial to ready the throwing weapon. Use the left stick to adjust the aiming arc. Press ATTACK to throw.");
initWords("Grenades can be readied indefinitely, without exploding.");
initWords("When readying a grenade for long enough, it will begin to flash. Flashing means the grenade will explode on impact.");
initWords("Grenades do NOT explode when hit. Hitting a grenade will bounce it in the knockback direction.");
initWords("However, this also means grenades can be knocked back towards you, by the opponent.");
initWords("Shooting a grenade, or throwing it into a claymore, will cause it to explode on impact.");
initWords("Shooting an empty magazine, or throwing it into a claymore, will cause it to knock out any opponent it hits.");
initImage_ext(sprite_get("aim_legs_idle"), current_sprite_set, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("nspecial"), (current_sprite_set == 0) ? 1 : 21, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);

initTip("FSpecial: Use Firearm");
initWords("Hold SPECIAL to aim. Press ATTACK to fire. Press TAUNT to reload. Dry firing will also cause Snake to automatically reload.");
initWords("You can go into FSpecial while crouched, to fire while crawling.");
initImage_ext(sprite_get("aim_armsb_fspecial_pistol"), (current_sprite_set == 0) ? 1 : 25, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("aim_legs_idle"), current_sprite_set, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("aim_torso_fspecial"), current_sprite_set, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("aim_head_fspecial"), current_sprite_set, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("aim_armsf_fspecial_pistol"), (current_sprite_set == 0) ? 1 : 25, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("w_m9s_fspecial"), (current_sprite_set == 0) ? 1 : 25, fa_center, 2, 2, false, c_white, 1, true, noone, noone, noone, noone);

initTip("DSpecial: Use Placed Weapon");
initWords("Hold SPECIAL to ready the placed weapon. Press ATTACK to plant. Press TAUNT to detonate.");
initWords("Detonating will detonate in order starting from the last placed weapon you planted to first,");
initWords("regardless of what placed weapon you currently have equipped.");
initWords("C4 and sleep gas satchels can be planted on other players.");
initImage_ext(sprite_get("aim_legs_idle"), current_sprite_set, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("dspecial"), (current_sprite_set == 0) ? 1 : 17, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("dspecial_clacker"), 1, fa_center, 2, 2, false, c_white, 1, true, noone, noone, noone, noone);

initTip("USpecial (Ground): Use Item");
initWords("Press UP+SPECIAL while on the ground to use the currently equipped item.");
initImage_ext(sprite_get("ent_pkup_item_ration"), -6, fa_center, 1, 1, false, c_white, 1, true, noone, noone, noone, noone);

initTip("USpecial (Air): Cypher");
initWords("Press UP+SPECIAL while in the air to use the Cypher to recover.");
initWords("The Cypher recovery can be cancelled without pratfall. However, you won't be able to use the Cypher");
initWords("until you touch the ground.");
initImage_ext(sprite_get("uspecial"), (current_sprite_set == 0) ? 0 : 2, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);


initTip("NStrong: CQC Hold");
initWords("Tap STRONG repeatedly to choke the opponent, and knock them out.");
initWords("Press any direction + STRONG to throw the opponent.");
initWords("You can drag opponents by pressing left or right.");
initWords("If a one-handed firearm is equipped, press SPECIAL to aim your weapon.");
initWords("Hold TAUNT to interrogate the opponent.");
initWords("Grabbed opponents escape faster during the ALERT phase. Inversely, if you're in the SNEAK phase, holds last longer.");
initImage_ext(sprite_get("jab"), (current_sprite_set == 0) ? 4 : 24, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FStrong: CQC Slam");
initWords("Holding STRONG while moving to throw the grabbed opponent backwards.");
initImage_ext(sprite_get("nthrow"), (current_sprite_set == 0) ? 35 : 75, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FStrong (Rifle Equipped): Rifle Forward Strike");
initWords("Performs a slow but deadly strong attack in front of Snake.");
initImage_ext(sprite_get("fstrong"), (current_sprite_set == 0) ? 2 : 8, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("w_m4_fstrong"), 2, fa_center, 2, 2, false, c_white, 1, true, noone, noone, noone, noone);

initTip("UStrong (Rifle Equipped): Rifle Upward Strike");
initWords("Performs a slow but deadly strong attack above Snake.");
initImage_ext(sprite_get("ustrong"), (current_sprite_set == 0) ? 1 : 9, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("w_m4_ustrong"), 1, fa_center, 2, 2, false, c_white, 1, true, noone, noone, noone, noone);

initTip("UStrong (Rifle Equipped): Rifle Low Strike");
initWords("Performs a quick strong attack on either side of Snake.");
initImage_ext(sprite_get("dstrong"), (current_sprite_set == 0) ? 1 : 11, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("w_m4_dstrong"), 1, fa_center, 2, 2, false, c_white, 1, true, noone, noone, noone, noone);


initTip("Snake's Bio");
initWords_ext("Overview", fa_center, c_gray, 0, false);
initWords("A former member of FOXHOUND with an IQ of 180 and mastery of six languages. He's an infiltration specialist whose ability to carry out missions under any conditions has made him a legend. He's saved the world three times from the threat of bipedal, nuclear-armed mechs called Metal Gear.");
initWords("Currently he's working with the anti-Metal Gear group known as Philanthropy.");



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

// other patches go here...

initPatch("1.0 Beta", "30 April, 2022");
initHeader("Initial Release");
initSection("Solid Snake is released.");

initPatch("About Solid Snake", "");
initWords("Solid Snake, also known simply as Snake and by his real name David, is a major protagonist of the Metal Gear series, created by Kojima Productions, and published by Konami.");
initWords("He is depicted as a former Green Beret and highly skilled special operations soldier engaged in solo stealth and espionage missions, who is often tasked with destroying models of the");
initWords("bipedal nuclear weapon-armed mecha known as Metal Gear. He must act alone, supported via radio by commanding officers and specialists.");
initHeader("Character by");
initSection("Aaron No. 893");
initHeader("SFX from");
initSection("Metal Gear Solid");
initSection("Metal Gear Solid 2: Sons of Liberty");
initSection("Metal Gear Solid 3: Snake Eater");
initSection("Metal Gear Solid 4: Guns of the Patriots");
initSection("Metal Gear Solid: Peace Walker");
initSection("Metal Gear Solid V: The Phantom Pain");
initHeader("Voices by");
initSection("David Hayter - Solid Snake");
initSection("Christopher Randolf - Hal ''Otacon'' Emmerich");
initHeader("Music by");
initSection("Harry Gregson-williams");
initHeader("Compatible with");
initSection("Trummel & Alto, Steve, Link, Pit");
initSection("(More compatibilities coming soon!)");

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

//CHEAT_FLY		= initCheat("Fly", [0, 1], ["Off", "On"], "Take flight. So balanced
CHEAT_SPAWN_SOCOM			= initCheat("Spawn SOCOM", [1], ["Spawn"], "Spawns a SOCOM.");
CHEAT_SPAWN_M4				= initCheat("Spawn M4", [1], ["Spawn"], "Spawns an M4.");
CHEAT_SPAWN_M9				= initCheat("Spawn M9", [1], ["Spawn"], "Spawns an M9.");
CHEAT_SPAWN_MOSIN			= initCheat("Spawn Mosin", [1], ["Spawn"], "Spawns a Mosin-Nagant.");

CHEAT_SPAWN_SOCOM_AMMO		= initCheat("Spawn SOCOM Ammo", [1], ["Spawn"], "Spawns .45 rounds.");
CHEAT_SPAWN_M4_AMMO			= initCheat("Spawn M4 Ammo", [1], ["Spawn"], "Spawns 5.56 rounds.");
CHEAT_SPAWN_M9_AMMO			= initCheat("Spawn M9 Ammo", [1], ["Spawn"], "Spawns 9mm anesthetic rounds.");
CHEAT_SPAWN_MOSIN_AMMO		= initCheat("Spawn Mosin Ammo", [1], ["Spawn"], "Spawns 7.62 anesthetic rounds.");

CHEAT_SPAWN_SOCOM_SUPP		= initCheat("Spawn SOCOM Suppressor", [1], ["Spawn"], "Spawns a SOCOM suppressor.");
CHEAT_SPAWN_M9_SUPP			= initCheat("Spawn M9 Suppressor", [1], ["Spawn"], "Spawns an M9 suppressor.");

CHEAT_SPAWN_GRENADE			= initCheat("Spawn Frag Grenade", [1], ["Spawn"], "Spawns a frag grenade.");
CHEAT_SPAWN_SMOKE_GRENADE	= initCheat("Spawn Smoke Grenade", [1], ["Spawn"], "Spawns a smoke grenade.");
CHEAT_SPAWN_STUN_GRENADE	= initCheat("Spawn Stun Grenade", [1], ["Spawn"], "Spawns a stun grenade.");

CHEAT_SPAWN_C4				= initCheat("Spawn C4", [1], ["Spawn"], "Spawns a C4 charge.");
CHEAT_SPAWN_CLAYMORE		= initCheat("Spawn Claymore", [1], ["Spawn"], "Spawns a claymore mine.");
CHEAT_SPAWN_BOOK			= initCheat("Spawn Book", [1], ["Spawn"], "Spawns an 18+ magazine.");
CHEAT_SPAWN_SATCHEL			= initCheat("Spawn Sleep Gas Satchel", [1], ["Spawn"], "Spawns a sleeping gas satchel.");

CHEAT_SPAWN_BOX				= initCheat("Spawn Box", [1], ["Spawn"], "Spawns a cardboard box.");
CHEAT_SPAWN_RATION			= initCheat("Spawn Ration", [1], ["Spawn"], "Spawns an MRE.");


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
SPK_SNAKE = initSpeaker(1, "Snake", sprite_get("_pho_snake_speaker"));			// Expression 0 = normal, 1 = angry
SPK_PLISKIN = initSpeaker(2, "Pliskin", sprite_get("_pho_example_speaker"));

initCodec(0); // this should just always be 0, because there are no codec gimmicks
/*initCodecPage(SPK_TRUM, 0, 0, "omg is that snek?");
initCodecPage(SPK_ALTO, 6, 0, "That is indeed Snake.");
initCodecPage(SPK_TRUM, 0, 0, "the legendary hero Solid Snake from the genre-defining stealth-action series Metal Gear Solid - A Hideo Kojima Game!?");
initCodecPage(SPK_SNAKE, 0, GIM_SKIP, "...I'm no hero. Never was. Never will be.");
initCodecPage(SPK_ALTO, 5, GIM_SKIP, "OH NO WHAT HAVE YOU DONE?");*/
initCodecPage(SPK_TRUM, 0, 0, "so whos mr army man?");
initCodecPage(SPK_ALTO, 0, 0, "Wait, you haven't heard of Snake?");
initCodecPage(SPK_TRUM, 0, 0, "literally who?");
initCodecPage(SPK_ALTO, 0, 0, "You know, Solid Snake? He became a legendary hero after the Shadow Moses incident.");
initCodecPage(SPK_SNAKE, 0, 0, "...Legend?");
initCodecPage(SPK_ALTO, 5, GIM_SKIP, "OH NO WHAT HAVE I DONE?");
initCodecPage(SPK_SNAKE, 0, GIM_SKIP, "A legend is nothing but fiction. Someone tells it, someone else remembers, everybody passes it on." );
initCodecPage(SPK_SNAKE, 0, GIM_SKIP, "Even so, I've decided to find a new path in life. We have a responsibility to future generations;");
initCodecPage(SPK_SNAKE, 0, GIM_SKIP, "To keep track of the mistakes we've made as a species. We need to pass the torch. And that's what keeps me alive.");
initCodecPage(SPK_TRUM, 0, 0, "omg hes still going. does he always do this?");
initCodecPage(SPK_ALTO, 8, 0, "I'm afraid so. You'll have to get used to it.");
initCodecPage(SPK_TRUM, 0, 0, "so who is this guy? is he from COD or something?");
initCodecPage(SPK_ALTO, 6, GIM_SKIP, "Okay so, in 1964, a woman known as ''The Boss'' supposedly fired a Davy Crockett at a Russian research facility,");
initCodecPage(SPK_ALTO, 6, GIM_SKIP, "potentially sparking a world war. To avoid a full-scale nuclear conflict, a man named Jack, AKA ''Naked Snake'' was tasked");
initCodecPage(SPK_TRUM, 1, 0, "you know what never mind. so how do we beat mr army man?");
initCodecPage(SPK_ALTO, 0, 0, "Actually, he's not in the military.");
initCodecPage(SPK_TRUM, 0, 0, "wut");
initCodecPage(SPK_ALTO, 0, GIM_SKIP, "Snake works for an NGO named Philanthropy; A non-profit anti Metal Gear organization");
initCodecPage(SPK_TRUM, 0, 0, "cool. how does that help us tho?");
initCodecPage(SPK_ALTO, 0, 0, "My point is, with Snake being a wanted man in the U.S., he has no military backing. He'll always start off unarmed.");
initCodecPage(SPK_ALTO, 0, 0, "And one more thing. Don't you EVER let him out of your sight! If he evades our vision, he'll be in an advantageous state.");
initCodecPage(SPK_ALTO, 9, 0, "Inversely, if we manage to keep an eye on him, he'll be at a disadvantage.");
initCodecPage(SPK_SNAKE, 0, GIM_SKIP, "-- responsibility to leave what traces of life we can. Building the future and keeping the past alive are one in the same thing.");
initCodecPage(SPK_TRUM, 4, GIM_LAUGH_TRACK, "...zzz");
//initCodecPage(SPK_ALTO, 3, 0, "That's our Trummel!");
initCodecPage(SPK_ALTO, 4, 0, "Knock it off, Trummel.");
initCodecPage(SPK_ALTO, 5, 0, "Trummel..? TRUMMEL!!");

spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve remembered that punch.";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 8;

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

if (current_sprite_set == 1) {
	initCodecPit();
	initCodecPagePit(SPK_PIT,	4,	9,	"Snake!?");
	initCodecPagePit(SPK_PALU,	4,	3,	"Hmm? Oh, this guy?");
	initCodecPagePit(SPK_PIT,	7,	6,	"That's got to be him! Right?");
	initCodecPagePit(SPK_VIR,	0,	7,	"C'mon, get real, Pit. You KNOW Snake isn't around anymore.");
	initCodecPagePit(SPK_PALU,	0,	2,	"Lieutenant J.G. Iroquois Pliskin. He's a Navy SEAL. Or at least, so he claims.");
	initCodecPagePit(SPK_PALU,	5,	-1,	"However, it looks like he's been cut off from his squad, and is unarmed to boot.");
	initCodecPagePit(SPK_PALU,	0,	-1,	"So he'll have to scavenge for his weapons and equipment. You can use this to your advantage.");
	initCodecPagePit(SPK_PIT,	10,	5,	"I see...");
	initCodecPagePit(SPK_PALU,	0,	-1,	"You sound disappointed.");
	initCodecPagePit(SPK_PIT,	10,	8,	"I guess -- I was kind of hoping to meet the legend in the flesh.");
	initCodecPagePit(SPK_PALU,	0,	1,	"I understand how you're feeling, but here's no way that can be him.");
	initCodecPagePit(SPK_PALU,	0,	-1,	"Solid Snake died when he destroyed that tanker. They even have a burial record too.");
	initCodecPagePit(SPK_VIR,	0,	8,	"Are you done moping?");
	initCodecPagePit(SPK_VIR,	4,	-1,	"C'mon, this Pliskin guy is just a regular grunt! I'm sure even YOU can handle the likes of him!");
} else {
	initCodecPit();
	initCodecPagePit(SPK_PIT,	4,	9,	"Snake!?");
	initCodecPagePit(SPK_PALU,	2,	2,	"The Legendery Mercenary himself.");
	initCodecPagePit(SPK_PIT,	3,	5,	"I never thought I'd get a chance to fight him again!");
	initCodecPagePit(SPK_PALU,	0,	1,	"Snake may start off unarmed, but he'll gradually procure explosives and firearms. So don't get blown up.");
	initCodecPagePit(SPK_PIT,	0,	7,	"I bet if I put some bombs on the end of my arrows, they'd be more powerful.");
	initCodecPagePit(SPK_VIR,	0,	9,	"Very original, Pit.");
	initCodecPagePit(SPK_PALU,	4,	-1,	"You can't attach bombs to Arrows of Light since they aren't actual arrows.");
	initCodecPagePit(SPK_PIT,	8,	7,	"OK, then let's bust out the cannons!");
	initCodecPagePit(SPK_VIR,	0,	-1,	"Leave the bombs and guns to Snake.");
	initCodecPagePit(SPK_VIR,	3,	4,	"You focus on what you do best. Whatever that is.");
}


//-----------------------------------------
// Aaron's Compatibility Variables
//-----------------------------------------

// Amber
plushForAmber = sprite_get("plushForAmber");

switch (current_sprite_set) {
	
	case 0:																		// Snake text
		// Soulbound Conflict
		battle_text = "Snake lectures you about the dangers of";
		battle_text2 = "nuclear proliferation.";
		// Pokemon Stadium
		pkmn_stadium_name_override = "Snake";
	break;
	
	case 1:																		// Pliskin text
		// Soulbound Conflict
		battle_text = "Pliskin says ''Semper Fi'', despite being";
		battle_text2 = "a Navy SEAL.";
		// Pokemon Stadium
		pkmn_stadium_name_override = "Pliskin";
	break;
	
}

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