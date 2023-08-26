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
	case 1: // pants
	case 4:
	case 11:
		alt_ui_recolor = 2;
		break;
	case 5: // skin
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
muno_char_name = "Steve";
muno_char_id = 5;

// Whether or not the phone sprite should recolor w/ your alt costume.
// (set to "true" if you make a custom phone sprite in your char's colors)
phone.uses_shader = true;

// If you use a custom phone sprite that's taller than the default, enter how
// much taller it is here. (measured in ingame pixels; so if editing the default
// phone sprite, multiply it by two)
phone.extra_top_size = 0;

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

initTip("USpecial: Block Parkour");
initWords("Your USpecial can only place so many blocks. To refill your stock, pick up the dropped item - or wait for it to come to you. Blocks that fall offstage take ten seconds to appear back in your inventory.");
initImage_ext(sprite_get("uspecial"), -5, fa_center, 1, 1, true, c_white, 1, false, 100, 100, 100, 2);
initImage_ext(sprite_get("blocks"), player - 1, fa_center, 1, 1, true, c_white, 1, false, 100, 100, 2, 50);
initWords("Placing a block has a hitbox, and you can wavedash instantly after placing. Separately, note that blocks aren't fully solid; they act like platforms.");
initWords("Also, blocks placed at high altitude break more quickly.");

// initTip("Block Parkour");
// initWords("While standing on a block, your movement speed is increased. Use this to leap off a block at high speed!");
// initImage(other.spr_dash, -3, fa_center, 1, c_white, 3);

initTip("FSpecial: Flint and Steel");
initWords("The fire created from the Flint and Steel can light MANY things on fire - you, the enemy, arrows... Good thing you can attack it to get rid of it.");
initImage(sprite_get("fire"), -5);

initTip("DSpecial: Water Bucket");
initWords("Water pushes EVERYTHING up - players, projectiles, and even dropped items. After using it, you'll need to wait to use it again (with the exception of teching).");
initImage_ext(sprite_get("flowing_water"), -10, fa_center, 1, 1, false, c_white, 1, true, noone, noone, noone, noone);

initTip("NSpecial: Item Pillaging");
initWords("NSpecial lets you pick an item to hold in your off hand; use it by pressing NSpecial again. Some have durability, others have quantities... but once an item is used up, it's gone! (Your items get restocked when you use them ALL up.)");
initImage(sprite_get("nspecial_cont_craft"), -7);

initTip("Experience Bar");
initWords("In order to pull another item, you first need to hit the foe with a melee attack to gain an Experience Bar. So no, you can't just camp using projectile items...");
initImage(sprite_get("hud_experience"), 0);
initImage(sprite_get("hud_experience"), 2);
initWords("You can also get EXP by parrying an attack, dying, killing another player (or being a passive witness to a player's death), or placing a Slime Block.");

initTip("Item Containers");
initWords("There are 7 NSpecial ''containers'', each with 3 items. You get containers in a set order, not RNG. If you pick the 1st item, you advance 1 space in the list; 2nd item = advance 2 spaces; 3rd item = advance 3 spaces.");
initImage_ext(sprite_get("nspecial_guis"), -30, fa_right, 1, 1, true, c_white, 1, true, 50, 50, 100, 10);
initWords("The order is:
- Crafting Table
- Furnace
- Chest
- Ender Chest
- Brewing Stand
- Enchanting Table
- Villager (poor guy...)");
initWords("If you exhaust all 7 of these containers, you'll get access to an unusual 8th container...");

var item_descs = [
	"A block that bounces players and some projectiles,
	as well as giving you back your EXP points on use.",
	"A long-range attack that pulls foes towards you. You
	can also grapple to walls or platforms!",
	"A block that fires arrows every time it cracks. The
	arrows are identical to an uncharged FStrong.",
	
	"A quick pick-me-up that heals a bit of damage. Ah,
	the days before the hunger bar was added...",
	"A devastating falling projectile that ignores
	platforms and turns into a block upon landing.",
	"A slower variant of water that sets players and
	arrows ablaze... be careful around this one.",
	
	"A long-distance ramming attack that can be jump-
	canceled to combo on hit.",
	"A set of three long-range projectiles that burn
	enemies and deal inward knockback.",
	"An explosive that skips its fuse if you launch it at an
	enemy or light it on fire. It can hit you too, careful!",
	
	"A set of three mystical pearls that teleport you to
	whatever they hit, while also dealing damage and combo KB.",
	"A set of three mystical eyes that drag foes with multi-
	hits. I wonder if there's a Stronghold nearby...",
	"A pair of wings that let you float leisurely through the
	air after an initial wing-spreading attack.",
	
	"A potion that powers up your attacks for a few seconds.
	Could this secretly be a fire resistance potion...?",
	"A set of three throwable potions which have poor range,
	compensating with downward reach and a splash hitbox.",
	"A single throwable potion which covers a huge area with a
	multi-hitting poison cloud.",
	
	"A pair of boots that makes a sheet of ice, which acts
	like a wide block and can also freeze grounded foes.",
	"A trident that sends you soaring into the air, going
	even higher if you're touching water.",
	"A chestplate that allows you to tank an attack without
	flinching, then retaliate with a powerful blow.",
	
	"A pre-charged bow that lets you instantly fire off one
	fully-charged FStrong shot.",
	"A bell that stuns enemies and can travel upward through
	solid terrain. This feels familiar...",
	"A mysterious artifact that allows the user to cheat death
	while in hand. Hold NSpecial to discard.",
	
	"An odd-tasting fungus that doubles your size for a short time.
	It doesn't make you hit any harder, though.",
	"A time-hardened shell that you can hit over and over at
	enemies. Legend has it that there's a way to turn it red...",
	"A powerful artifact that makes you completely invincible for
	a few seconds when consumed.",
	];

for (var index = 1; index < array_length(items); index++){
	if (index % 3 == 1) initTip(containers[floor(index / 3)].name + " Items");
	initImage_ext(items[index].inv_sprite, 0, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
	initWords_ext("-- " + items[index].name + " --
	" + item_descs[index-1], fa_left, c_white, 2, false);
}

initTip("Bow Cooldown");
initWords("FStrong and DAir have a shared cooldown. You can end it early either by hitting with the melee hitbox, OR by picking up the arrow embedded in the ground (if the arrow misses the opponent).");
initImage_ext(sprite_get("fstrong"), -5, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("dair"), -5, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("NAir: Popular Game Update");
initWords("Hold the button when using NAir to block attacks, with the same resistance as Etalus FAir but slight pushback like Kragg FSpecial. Blocking a move makes you invulnerable while attacking. Your own Lava and TNT, despite their strength, can be blocked as a special case.");
initImage_ext(sprite_get("nair"), 1, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("tnt_blast"), -5, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Taunts");
initWords("Steve's two taunts are Tributes to Minecraft in their own right... but I'll let you discover their secrets on your own. (Hold a direction to taunt without pulling out the phone)");
initImage_ext(sprite_get("taunt"), -5, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("taunt_2"), -5, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Steve's Lore?");
initWords_ext("I see the player you mean.", fa_left, c_aqua, 0, false);
initWords_ext("Steve?", fa_left, c_lime, 0, false);
initWords_ext("Yes. Take care. It has reached a higher level now. It can read our thoughts.", fa_left, c_aqua, 0, false);
initWords_ext("That doesn't matter. It thinks we are part of the game.", fa_left, c_lime, 0, false);
initWords_ext("I like this player. It played well. It did not give up.", fa_left, c_aqua, 0, false);
initWords_ext("It is reading our thoughts as though they were words on a screen.", fa_left, c_lime, 0, false);
initWords_ext("That is how it chooses to imagine many things, when it is deep in the dream of a game.", fa_left, c_aqua, 0, false);
initWords_ext("Words make a wonderful interface. Very flexible. And less terrifying than staring at the reality behind the screen.", fa_left, c_lime, 0, false);
initWords_ext("They used to hear voices. Before players could read. Back in the days when those who did not play called the players witches, and warlocks. And players dreamed they flew through the air, on sticks powered by demons.", fa_left, c_aqua, 0, false);
initWords_ext("What did this player dream?", fa_left, c_lime, 0, false);
initWords_ext("This player dreamed of sunlight and trees. Of fire and water. It dreamed it created. And it dreamed it destroyed. It dreamed it hunted, and was hunted. It dreamed of shelter.", fa_left, c_aqua, 0, false);
initWords_ext("Hah, the original interface. A million years old, and it still works. But what true structure did this player create, in the reality behind the screen?", fa_left, c_lime, 0, false);
initWords_ext("It worked, with a million others, to sculpt a true world in a fold of the[scrambled], and created a [scrambled]for [scrambled], in the [scrambled].", fa_left, c_aqua, 0, false);
initWords_ext("It cannot read that thought.", fa_left, c_lime, 0, false);
initWords_ext("No. It has not yet achieved the highest level. That, it must achieve in the long dream of life, not the short dream of a game.", fa_left, c_aqua, 0, false);
initWords_ext("Does it know that we love it? That the universe is kind?", fa_left, c_lime, 0, false);
initWords_ext("Sometimes, through the noise of its thoughts, it hears the universe, yes.", fa_left, c_aqua, 0, false);
initWords_ext("But there are times it is sad, in the long dream. It creates worlds that have no summer, and it shivers under a black sun, and it takes its sad creation for reality.", fa_left, c_lime, 0, false);
initWords_ext("To cure it of sorrow would destroy it. The sorrow is part of its own private task. We cannot interfere.", fa_left, c_aqua, 0, false);
initWords_ext("Sometimes when they are deep in dreams, I want to tell them, they are building true worlds in reality. Sometimes I want to tell them of their importance to the universe. Sometimes, when they have not made a true connection in a while, I want to help them to speak the word they fear.", fa_left, c_lime, 0, false);
initWords_ext("It reads our thoughts.", fa_left, c_aqua, 0, false);
initWords_ext("Sometimes I do not care. Sometimes I wish to tell them, this world you take for truth is merely &^*#$#* and &$#*^*, I wish to tell them that they are ^*@*^#^ in the &^@#@)(. They see so little of reality, in their long dream.", fa_left, c_lime, 0, false);
initWords_ext("And yet they play the game.", fa_left, c_aqua, 0, false);
initWords_ext("But it would be so easy to tell them...", fa_left, c_lime, 0, false);
initWords_ext("Too strong for this dream. To tell them how to live is to prevent them living.", fa_left, c_aqua, 0, false);
initWords_ext("I will not tell the player how to live.", fa_left, c_lime, 0, false);
initWords_ext("The player is growing restless.", fa_left, c_aqua, 0, false);
initWords_ext("I will tell the player a story.", fa_left, c_lime, 0, false);
initWords_ext("But not the truth.", fa_left, c_aqua, 0, false);
initWords_ext("No. A story that contains the truth safely, in a cage of words. Not the naked truth that can burn over any distance.", fa_left, c_lime, 0, false);
initWords_ext("Give it a body, again.", fa_left, c_aqua, 0, false);
initWords_ext("Yes. Player...", fa_left, c_lime, 0, false);
initWords_ext("Use its name.", fa_left, c_aqua, 0, false);
initWords_ext("Steve. Player of games.", fa_left, c_lime, 0, false);
initWords_ext("Good.", fa_left, c_aqua, 0, false);
initWords_ext("Take a breath, now. Take another. Feel air in your lungs. Let your limbs return. Yes, move your fingers. Have a body again, under gravity, in air. Respawn in the long dream. There you are. Your body touching the universe again at every point, as though you were separate things. As though we were separate things.", fa_left, c_lime, 0, false);
initWords_ext("Who are we? Once we were called the spirit of the mountain. Father sun, mother moon. Ancestral spirits, animal spirits. Jinn. Ghosts. The green man. Then gods, demons. Angels. Poltergeists. Aliens, extraterrestrials. Leptons, quarks. The words change. We do not change.", fa_left, c_aqua, 0, false);
initWords_ext("We are the universe. We are everything you think isn't you. You are looking at us now, through your skin and your eyes. And why does the universe touch your skin, and throw light on you? To see you, player. To know you. And to be known. I shall tell you a story.", fa_left, c_lime, 0, false);
initWords_ext("Once upon a time, there was a player.", fa_left, c_lime, 0, false);
initWords_ext("The player was you, Steve.)", fa_left, c_aqua, 0, false);
initWords_ext("Sometimes it thought itself human, on the thin crust of a spinning globe of molten rock. The ball of molten rock circled a ball of blazing gas that was three hundred and thirty thousand times more massive than it. They were so far apart that light took eight minutes to cross the gap. The light was information from a star, and it could burn your skin from a hundred and fifty million kilometres away.", fa_left, c_lime, 0, false);
initWords_ext("Sometimes the player dreamed it was a miner, on the surface of a world that was flat, and infinite. The sun was a square of white. The days were short; there was much to do; and death was a temporary inconvenience.", fa_left, c_lime, 0, false);
initWords_ext("Sometimes the player dreamed it was lost in a story.", fa_left, c_aqua, 0, false);
initWords_ext("Sometimes the player dreamed it was other things, in other places. Sometimes these dreams were disturbing. Sometimes very beautiful indeed. Sometimes the player woke from one dream into another, then woke from that into a third.", fa_left, c_lime, 0, false);
initWords_ext("Sometimes the player dreamed it watched words on a screen.", fa_left, c_aqua, 0, false);
initWords_ext("Let's go back.", fa_left, c_lime, 0, false);
initWords_ext("The atoms of the player were scattered in the grass, in the rivers, in the air, in the ground. A woman gathered the atoms; she drank and ate and inhaled; and the woman assembled the player, in her body.", fa_left, c_lime, 0, false);
initWords_ext("And the player awoke, from the warm, dark world of its mother's body, into the long dream.", fa_left, c_lime, 0, false);
initWords_ext("And the player was a new story, never told before, written in letters of DNA. And the player was a new program, never run before, generated by a sourcecode a billion years old. And the player was a new human, never alive before, made from nothing but milk and love.", fa_left, c_lime, 0, false);
initWords_ext("You are the player. The story. The program. The human. Made from nothing but milk and love.", fa_left, c_aqua, 0, false);
initWords_ext("Let's go further back.", fa_left, c_lime, 0, false);
initWords_ext("The seven billion billion billion atoms of the player's body were created, long before this game, in the heart of a star. So the player, too, is information from a star. And the player moves through a story, which is a forest of information planted by a man called Julian, on a flat, infinite world created by a man called Markus, that exists inside a small, private world created by the player, who inhabits a universe created by...", fa_left, c_lime, 0, false);
initWords_ext("Shush. Sometimes the player created a small, private world that was soft and warm and simple. Sometimes hard, and cold, and complicated. Sometimes it built a model of the universe in its head; flecks of energy, moving through vast empty spaces. Sometimes it called those flecks ''electrons'' and ''protons''.", fa_left, c_aqua, 0, false);
initWords_ext("Sometimes it called them ''planets'' and ''stars''.", fa_left, c_lime, 0, false);
initWords_ext("Sometimes it believed it was in a universe that was made of energy that was made of offs and ons; zeros and ones; lines of code. Sometimes it believed it was playing a game. Sometimes it believed it was reading words on a screen.", fa_left, c_lime, 0, false);
initWords_ext("You are the player, reading words...", fa_left, c_aqua, 0, false);
initWords_ext("Shush... Sometimes the player read lines of code on a screen. Decoded them into words; decoded words into meaning; decoded meaning into feelings, emotions, theories, ideas, and the player started to breathe faster and deeper and realised it was alive, it was alive, those thousand deaths had not been real, the player was alive", fa_left, c_lime, 0, false);
initWords_ext("You. You. You are alive.", fa_left, c_aqua, 0, false);
initWords_ext("and sometimes the player believed the universe had spoken to it through the sunlight that came through the shuffling leaves of the summer trees", fa_left, c_lime, 0, false);
initWords_ext("and sometimes the player believed the universe had spoken to it through the light that fell from the crisp night sky of winter, where a fleck of light in the corner of the player's eye might be a star a million times as massive as the sun, boiling its planets to plasma in order to be visible for a moment to the player, walking home at the far side of the universe, suddenly smelling food, almost at the familiar door, about to dream again", fa_left, c_aqua, 0, false);
initWords_ext("and sometimes the player believed the universe had spoken to it through the zeros and ones, through the electricity of the world, through the scrolling words on a screen at the end of a dream", fa_left, c_lime, 0, false);
initWords_ext("and the universe said I love you", fa_left, c_aqua, 0, false);
initWords_ext("and the universe said you have played the game well", fa_left, c_lime, 0, false);
initWords_ext("and the universe said everything you need is within you", fa_left, c_aqua, 0, false);
initWords_ext("and the universe said you are stronger than you know", fa_left, c_lime, 0, false);
initWords_ext("and the universe said you are the daylight", fa_left, c_aqua, 0, false);
initWords_ext("and the universe said you are the night", fa_left, c_lime, 0, false);
initWords_ext("and the universe said the darkness you fight is within you", fa_left, c_aqua, 0, false);
initWords_ext("and the universe said the light you seek is within you", fa_left, c_lime, 0, false);
initWords_ext("and the universe said you are not alone", fa_left, c_aqua, 0, false);
initWords_ext("and the universe said you are not separate from every other thing", fa_left, c_lime, 0, false);
initWords_ext("and the universe said you are the universe tasting itself, talking to itself, reading its own code", fa_left, c_aqua, 0, false);
initWords_ext("and the universe said I love you because you are love.", fa_left, c_lime, 0, false);
initWords_ext("And the game was over and the player woke up from the dream. And the player began a new dream. And the player dreamed again, dreamed better. And the player was the universe. And the player was love.", fa_left, c_aqua, 0, false);
initWords_ext("You are the player.", fa_left, c_aqua, 0, false);
initWords_ext("Wake up.", fa_left, c_lime, 0, false);
initWords_ext("...", fa_right, c_white, 0, false);
initWords_ext("Sir, this is a Wendy's", fa_right, c_white, 0, true);



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

initPatch("2.11", "21 August, 2023");
initHeader("Abyss Runes - Adjustments");
initWords("Rune M now disables the Star item.");
initWords("Removed Herobrine");

initPatch("2.10", "14 April, 2023");
initWords("Advertising");
initWords("Removed Herobrine");

initPatch("2.9", "31 August, 2022");
initHeader("UAir - Adjustments");
initImage(sprite_get("civic"), 0);
initWords("Removed Herobrine");

initPatch("2.8", "29 August, 2022");
initHeader("UStrong - Corrections");
initSection("Corrected knockback angle.");
initWords("Removed Herobrine");

initPatch("2.7", "28 August, 2022");
initHeader("Taunt - Aesthetics, Bugfixes");
initSection("Adjusted the sprint particles.");
initSection("Fixed an infinite stall.");
initWords("Removed Herobrine");

initPatch("2.6", "28 July, 2022");
initHeader("Taunt - Additions");
initSection("Added chat typing (up+taunt). Offline only.");
initSection("Added player chat reporting.");
initWords("Removed Herobrine");

initPatch("2.5", "17 July, 2022");
initHeader("DStrong - Nerfs");
initSection("Back hit size reduced.");
initHeader("Sticky Piston - Bugfixes");
initSection("Fixed a freeze glitch?");
initWords("Removed Herobrine");

initPatch("2.4", "07 March, 2022");
initWords("Community Patch: Dakota");
initHeader("NSpecial Items - Nerfs, Buffs");
initSection("Sticky Piston startup 9 --> 13.
Throwable item startup 8 --> 10.
Crossbow arrow is now transcendent.");
initHeader("USpecial - Reworks");
initSection("Block lifetime is now based on the height it's placed at.
High-altitude blocks break very quickly, but low-altitude blocks last longer than before.");
initHeader("DTilt - Nerfs");
initSection("Startup 4 --> 6.
Knockback scaling 0.2 --> 0.3.");
initHeader("NAir - Nerfs");
initSection("Startup after block window 4 --> 6.");
initHeader("FAir - Nerfs");
initSection("Hitbox size reduced, position adjusted.");
initHeader("UAir - Adjustments, Nerfs");
initSection("Hitbox 1 angle 80 --> 90.
Hitbox 1 upward range reduced.");
initHeader("FStrong - Buffs");
initSection("Startup 19 --> 16.
Arrow is now transcendent.");
initHeader("UStrong - Nerfs, Adjustments");
initSection("Endlag 15 --> 18.
Angle 80 --> 90.");
initWords("Removed Herobrine");

initPatch("2.3", "18 January, 2022");
initHeader("DTilt - Bugfixes");
initSection("No longer interrupts certain armored attacks.");
initWords("Removed Herobrine");

initPatch("2.2", "16 January, 2022");
initHeader("DTilt - Bugfixes");
initSection("Now correctly deals knockback at the edge of platforms.");
initWords("Removed Herobrine");

initPatch("2.1", "20 November, 2021");
initHeader("NSpecial - Reworks");
initSection("? Block only appears once the other 7 containers have been exhausted.");
initHeader("Super Mushroom - Buffs, Bugfixes");
initSection("Duration 300 --> 360.
Corrected hitstun sprite.");
initHeader("Green Shell - Buffs");
initSection("Quantity 1 --> 2.");
initHeader("Starman - Buffs");
initSection("Duration 300 --> 360.");
initHeader("DTilt - Adjustments");
initSection("Angle 75 --> 40.
Knockback 6/0.3 --> 4/0.2.
Hitpause 6/0.5 --> 5/0.3.
Can no longer be teched.");
initWords("Removed Herobrine");

initPatch("2.0", "19 September, 2021");
initHeader("General");
initSection("Upgraded to MunoPhone Touch.
All character sprites given a glow-up.
Added dust effects to grounded normals.");
initHeader("NSpecial - Reworks, Buffs");
initSection("Now has an eighth item container, with three brand-new items!
EXP Orb now gravitates more strongly at close distances.");
initHeader("DTilt - Reworks");
initSection("Replaced with a new attack.");
initHeader("BAir - Reworks");
initSection("Replaced with a new attack.");
initHeader("DAttack - Buffs");
initSection("Startup 11 --> 9.");
initHeader("USpecial - Cosmetics");
initSection("Grass Block resprited to make it more clearly a non-solid platform.");
initHeader("Frost Walker - Adjustments");
initSection("Now snaps away from the edge of the screen, similarly to USpecial.");
initHeader("Sticky Piston - Bugfixes");
initSection("No longer carries armored opponents.
Now manipulates hitpause directly, instead of using extra hitpause.");
initHeader("Thorns - Bugfixes");
initSection("Hitpause capped to 20 when tanking hits.");
initHeader("Down Taunt - Bugfixes");
initSection("No longer falls in midair.");
initWords("Removed Herobrine");

initPatch("1.18", "03 March, 2021");
initHeader("NSpecial Items - Nerfs, Buffs");
initSection("Anvil knockback 9/1.1 --> 8/1.
Fire Charge knockback growth 0.9 --> 0.7.
Bell is now transcendent.
Totem of Undying's pratfall no longer allows air drift.");
initHeader("UTilt - Nerfs");
initSection("Endlag 12 --> 14.");
initWords("Removed Herobrine");

initPatch("1.17", "16 February, 2021");
initHeader("FStrong, Crossbow - Adjustments");
initSection("Melee hitbox no longer reaches behind Steve.
As a result of the adjustment, the forward range is slightly increased.
Melee hitbox lifetime 2 --> 3 (to match the animation).");
initWords("Removed Herobrine");

initPatch("1.16", "07 February, 2021");
initWords("Added an Advancement.");
initWords("Removed Herobrine");

initPatch("1.15", "19 January, 2021");
initWords("Only 5 Dispensers can exist at once now. (to prevent memory leaks???)");
initWords("Removed Herobrine");

initPatch("1.14", "19 January, 2021");
initWords("Added Abyss Runes.");
initWords("Removed Herobrine");

initPatch("1.13", "18 January, 2021");
initHeader("NSpecial Items - Buffs");
initSection("Steve is now actionable 10 frames earlier when consuming a Porkchop or Potion of Strength. (Duration 28f --> 18f)");
initHeader("DSpecial - Adjustments");
initSection("Steve can no longer fast fall while using the move, and prior fast falls are negated.
(This also applies to the Lava Bucket.)");
initWords("Removed Herobrine");

initPatch("1.12", "15 January, 2021");
initHeader("NSpecial Items - Nerfs, Bugfixes");
initSection("TNT now has extended parry stun.
Lava Bucket hitbox size increased (NOT the initial hit detection, but rather the hitbox that spawns when you touch the lava).");
initHeader("DSpecial - Adjustments");
initSection("Water now uses collision box, not hurtbox, for pushing players. (makes certain interactions, like DSpecial --> immediate FStrong, better)");
initHeader("UAir - Nerfs, Adjustments");
initSection("Startup 6f --> 9f.
Landing lag 6f --> 7f.
Early hit damage 5 --> 7.
Early hit knockback 6/0.75 --> 8/0.75.
Late hit knockback 6/0.75 --> 7.5/0.7.
Late hit sfx adjusted.");
initHeader("BAir - Adjustments");
initSection("Angle 135 --> 115.");
initHeader("DTilt - Bugfixes");
initSection("Can no longer slide off an edge when parried.");
initHeader("Taunt - Buffs");
initSection("Punch knockback growth and hitpause growth 0 --> 0.4.");
initHeader("Misc. - Aesthetics");
initSection("Added an effect when an enemy first parries a projectile.");
initWords("Removed Herobrine");

initPatch("1.11", "28 December, 2020");
initHeader("USpecial - Nerfs, Bugfixes");
initSection("Break speed multiplier when standing on a block 3x --> 5x.
Fixed bug where you could pick up dropped blocks before landing on non-block ground.");
initHeader("FSpecial - Bugfixes");
initSection("Fire on the ground should no longer burn players in i-frames.");
initWords("Removed Herobrine");

initPatch("1.10", "21 December, 2020");
initHeader("NSpecial - Buffs, Clarity");
initSection("The following actions now cause an exp orb to spawn:
- Parrying an enemy attack
- Killing an enemy (or witnessing an enemy's death at the hands of someone else)
- Placing a Slime Block
Item loss from parry / death now plays the item break sound.");
initHeader("NSpecial Items - Buffs, Bugfixes");
initSection("Thorns now has invincibility after blocking an enemy attack.
Totem of Undying no longer inflicts parry stun, only ordinary pratfall.
Crossbow projectile now pierces enemies. (Is there a hidden meaning behind this...?)
Anvil no longer crashes the game when Ori bashes it.
Elytra SFX now stops when you die.");
initHeader("USpecial - Nerfs, Bugfixes");
initSection("Blocks no longer grant a speed boost; this is now exclusive to the ice from Frost Walker.
Added extra checks to prevent blocks from permanently disappearing from your inventory.");
initHeader("UAir - Adjustments");
initSection("Base knockback 9.5 --> 6.
Knockback scaling 0.6 --> 0.75.");
initHeader("FSpecial - Bugfixes");
initSection("Projectile no longer crashes the game when Ori bashes it.");
initHeader("MunoPhone - QoL");
initSection("Too Many Items cheat disables exp requirement and item loss on parry / death.");
initWords("Removed Herobrine");

initPatch("1.9", "08 December, 2020");
initHeader("NSpecial - Nerfs");
initSection("You now lose any held items on death or (experimentally) when your move gets parried.
Mercy use mechanic removed (Sticky Piston, Riptide, and Minecart).
Sticky Piston can no longer be delayed by holding the button.
Totem of Undying drops you in pratfall + parry stun if you died while in hitstun.");
initHeader("USpecial - Nerfs");
initSection("Getting spiked now destroys any blocks below you.");
initHeader("UAir - Adjustments");
initSection("Base knockback 8.5 --> 9.5.
Knockback growth 0.7 --> 0.6.");
initWords("Removed Herobrine");

initPatch("1.8", "06 December, 2020");
initHeader("Thorns - Adjustments");
initSection("Angle flipper 0 --> 6.");
initHeader("FStrong, DAir, Crossbow - Bugfixes");
initSection("Fixed arrow behavior on weird platform layouts.");
initHeader("USpecial - Clarity");
initSection("Increased color contrast between filled and empty slots on the block meter.");
initWords("Removed Herobrine");

initPatch("1.7", "01 December, 2020");
initHeader("NSpecial - Buffs, Bugfixes");
initSection("You now get free a exp orb on death if you have no item.
Riptide no longer desyncs on Mollusk Dock.");
initHeader("FStrong, DAir, Crossbow - Buffs");
initSection("A flaming arrow will create actual fire where it lands.");
initHeader("Taunt - Buffs, Clarity");
initSection("You can now place blocks by pressing B.
Taunt sprite is now shown in hitstun.
There is no longer lag after exiting hitstun.");
initHeader("Palettes - Aesthetics");
initSection("Adjusted alt #10.");
initHeader("MunoPhone - Aesthetics");
initSection("Phone now gets recolored to the alt.");
initWords("Removed Herobrine");

initPatch("1.6", "23 November, 2020");
initHeader("FAir - Nerfs");
initSection("Startup 12 --> 16.");
initHeader("NAir - Buffs, Nerfs, Visuals");
initSection("Hit 1 range increased.
Startup 13 --> 11.
Landing lag 5 --> 6.
Move now uses the sword.");
initHeader("BAir - Buffs");
initSection("Startup 8 --> 6.");
initHeader("FStrong, DAir, Crossbow - Buffs");
initSection("If you're on fire, so are your arrows.");
initWords("Removed Herobrine");

initPatch("1.5", "19 November, 2020");
initHeader("NSpecial - Clarity");
initSection("EXP Orbs now spawn a new visual effect when spawned or collected.
Hitting an enemy after spawning an orb won't spawn another one.");
initWords("Removed Herobrine");

initPatch("1.4", "18 November, 2020");
initHeader("NSpecial - Nerfs");
initSection("EXPERIENCE SYSTEM: You must hit an enemy with a melee attack before pulling another item.
Item pull menu no longer slows your max fall speed.");
initHeader("Items - Buffs, Nerfs, Clarity, Bugfixes");
initSection("Porkchop heal amount 12 --> 20.
Frost Walker is now one-time-use.
Elytra is now one-time-use.
Elytra flight time 180f --> 300f.
Items with a mercy use (e.g. Sticky Piston) now have a durability display.
Eye of Ender lifetime resets on parry.
Anvil hit lockout 0 --> 10.
TNT no longer freaks out if you press F5 in Practice Mode against another Workshop character.");
initHeader("USpecial - Nerfs");
initSection("If a block item falls offstage, it won't respawn for 300 frames.");
initHeader("FAir - Adjustments");
initSection("Base knockback 7 --> 8.
Knockback scaling 0.75 --> 0.65.");
initHeader("UAir - Nerfs");
initSection("Damage 7 --> 5.");
initHeader("Enemy Death Messages - Flexibility");
initSection("The steve_death_message var is now checked on hit, not on death.
Hitboxes can now have the steve_death_message var to override the one in the player object.");
initWords("Removed Herobrine");

/*

shulker box
- end crystal
- lightning rod
- chorus fruit?
- shulker projectile?

cheat code to bypass exp (tmi?)

*/

initPatch("1.3", "14 November, 2020");
initHeader("Taunt - Buffs");
initSection("Punch angle 60 --> 50.
Punch base knockback 4 --> 6.");
initHeader("USpecial - Performance, Clarity");
initSection("Effects when standing on a block are less laggy.
Blocks now have an onscreen indicator.");
initHeader("NSpecial - Nerfs, Bugfixes");
initSection("Dispenser no longer shoots two arrows at once when dying.
Anvil no longer reflects when parried (to prevent a crash).
TNT now has extended parry stun.
Elytra flight now ends when you get parried.
Lingering Potion multi-hits now change player when parried.
Various items no longer place blocks in the CSS playtest (to prevent a crash).");
initWords("Removed Herobrine");

initPatch("1.2", "12 November, 2020");
initHeader("FSpecial - Bugfixes");
initSection("No longer reflects when parried (to prevent a crash).");
initWords("Removed Herobrine");

initPatch("1.1", "12 November, 2020");
initHeader("Phone - Accessibility, Bugfixes");
initSection("Added ability to discard items while using the Too Many Items cheat.
Fixed an error in the About app.");
initHeader("Riptide - Continuity");
initSection("Water boost now works with the water on Mollusk Dock.");
initHeader("Minecart - Bugfixes");
initSection("You can no longer jump out after getting parried.");
initHeader("Thorns - Bugfixes");
initSection("Thorns actually works now.");
initHeader("Taunt - ...Buffs?");
initSection("Getting hit will now only end the taunt if you press taunt while in knockback.
Punch is now untechable.");
initHeader("FStrong, DAir, Crossbow - Bugfixes");
initSection("The bow charge sound no longer continues after getting hit.");
initHeader("Intro - Aesthetics");
initSection("The intro animation now has some SFX play during it.");
initHeader("AI - Bugfixes");
initSection("The AI no longer tries to use NSpecial.");
initWords("Removed Herobrine");

initPatch("1.0", "12 November, 2020");
initHeader("General");
initSection("The character was released.");
initWords("Removed Herobrine");

initPatch("About Steve", "");
initHeader("Character by");
initSection("Muno - byMuno.com");
initHeader("SFX from");
initSection("Minecraft
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

CHEAT_TRAILER	= initCheat("Trailer Mode", [0, 1], ["Off", "On"], "Hides or moves certain HUD elements for trailer recording; meant to be used in conjunction with hiding the overhead name and damage indicators.");
CHEAT_TMI		= initCheat("Too Many Items", [0, 1], ["Off", "On"], "Items never run out, and the inventory is restocked whenever you select an item.

Hold Special while parrying to discard an item.");
CHEAT_CONT_PICK	= initCheat("Container Select", [0, 1], ["Off", "On"], "Press up and down to scroll through NSpecial containers.");
CHEAT_CONT_VIEW	= initCheat("Container View", [0, 1], ["Off", "On"], "View the queue of item containers (helpful for learning the pattern in which they appear; see Tips).");



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
	AT_USTRONG_2,
	AT_DSTRONG_2,
	AT_NAIR,
	AT_FAIR,
	AT_BAIR,
	AT_UAIR,
	AT_DAIR,
	AT_FSPECIAL,
	AT_FSPECIAL_AIR,
	AT_FSPECIAL_2,
	AT_USPECIAL,
	AT_USPECIAL_GROUND,
	AT_USPECIAL_2,
	AT_DSPECIAL_AIR,
	AT_DSPECIAL,
	AT_DSPECIAL_2,
	AT_NSPECIAL,
	AT_FSTRONG_2,
	AT_NSPECIAL_AIR,
	AT_NSPECIAL_2,
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
phone.include_custom = true;

// The name of the custom page.
phone.custom_name = "Misc. Data"

// The content of the custom page.
initCFDHeader("Strength Potion");
initCFDBody("Time: " + string(strength_pot_max) + "f
Buff: " + string(strength_pot_mult) + "x");

initCFDHeader("Porkchop");
initCFDBody("Heal: " + string(porkchop_heal_amt));

initCFDHeader("Elytra");
initCFDBody("Time: " + string(elytra_max) + "f");



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

// Custom speaker setup - use 1, 2, 3, 4, ... for the index.
initCodec(0);
initCodecPage(SPK_TRUM, 0, 0, "hey alto


wanna see me speed bridge");
initCodecPage(SPK_ALTO, 0, 0, "Uh... sure?");
initCodecPage(SPK_TRUM, 0, 0, "ok");
var h = GIM_SKIP;
initCodecPage(SPK_TRUM, 4, h, "HDGFHJSGFHJGSDF SDGFJHGF JKHS FJHGSD JHFGKSJHG FJHSDGFJKHGDSJHFG JHDSFG JKHSDG FJHKSGFJHSGFJKHGSJHFGJDHS GFJHDG JHKFSG FKJH F JDFHSKAJL FHOKF GSKHFL GSJHFGBSJH FGBSLJHF GDSLJHHF GSLJHFGKSLJHFGKDS F");
initCodecPage(SPK_ALTO, 0, 0, "Cool");

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve's worst enemy was himself";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 4;

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