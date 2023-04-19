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
num_alts = 32;

// Whether or not to display a name for each alt.
use_alt_names = true;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
alt_ui_recolor = 0;
if(get_player_color(player) == 12 || get_player_color(player) == 26){
	alt_ui_recolor = 6;
}else if(get_player_color(player) == 14 || get_player_color(player) == 19){
	alt_ui_recolor = 2;
}else if(get_player_color(player) == 20 || get_player_color(player) == 21 || get_player_color(player) == 22 || get_player_color(player) == 25 || get_player_color(player) == 27){
	alt_ui_recolor = 1;
}

// The list of names for the alts, if enabled.
alt_names = [
	"Default",
	"Classic",
	"Old School",
	"House",
	"Hotel",
	"Dice",
	"5 Dollar",
	"10 Dollar",
	"20 Dollar",
	"50 Dollar",
	"100 Dollar",
	"500 Dollar",
	"It's electrifying!",
	"Tinkyspin",
	"Mr Oarly",
	"Oarluis",
	"R. J. Pasino",
	"I'm feeling lucky today!",
	"MG",
	"Wah",
	//"Fast Food",
	"Ruby Merchant",
	"Gwonam",
	"Meen",
	"Father's Money",
	"Snow Miser",
	"Brutal",
	"Toadsworth",
	"Cranky Kong",
	"Plans",
	"Master Roshi",
	"Ice King",
	"The Richest Duck",
	//"Skinner",
	//"Herbert",
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
muno_char_name = "Mr Monopoly";

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

initTip("Money mechanic");
initWords("Mr Monopoly entirely revolves around his main mechanic: Money.
Money changes how certain moves work such as UStrong and BAir, allows you to boost certain moves like Jab and UAir, and gives you access to things like banks and hotels with DSpecial.

Mr Monopoly mainly gains money from hitting opponents, parrying attacks, etc. Some money is also lost on hit, on death, or if he himself gets parried. In most cases, when money is lost it gets dropped and can be picked up again by any character.");

initTip("NSpecial: Dice");
initWords("Time to throw the dice! Mr Monopoly throws a dice. The dice is completely random, and while they all act the same, each one has different stats, with 6 being the strongest.
Dices can also be hit around by any attacks, and the throw can be angled.

If you roll a double, the dice will turn yellow and become stronger! If you roll a triple, the dice even becomes a burning dice, which is even more powerful... But you also go to jail for speeding. Oops!");

initTip("FSpecial: Token");
initWords("Move your token! Mr Monopoly throws a monopoly token for a small money cost. Can be charged to throw a golden token instead which costs more, but is more powerful than normal tokens.

The token itself is completely random between 8 different ones, and each one acts differently. Tokens can also be hit around by attacks!");

initTip("USpecial: Chance Card");
initWords("Take a chance! Monopoly draws a chance card from the community chest.
He can get 5 different cards; Goal (the most common one and a fairly standard recovery), Home (returns to center stage), Property (flies back to his property if he has one), get out of jail free card (a small hop, but you get another shot at recovering and can use the card later), and... Jail.

Once again, the card is completely random, but the likelihood for each card isn't the same, as some are more common than others. Make sure to always have a get out of jail free card just in case!");

initTip("DSpecial: Property");
initWords("I love building houses! Mr Monopoly throws down a property, which is either a house, hotel, or bank.
Which one depends on how long the move is charged and how much money he has, or if they are upgraded after being placed. Properties can store money for you, which is great for keeping your money safe in case you lose a stock.

Houses and hotels can also generate money for you either over time or if an opponent passes them while in hitstun, but they're easier to destroy, leaving your money vulnerable.
The bank does the same, although slower, and the money is stored within the bank itself. The bank is also much harder to break, and the money will return to you if it's destroyed.

Using DSpecial again while a property is out will also cause it to explode, so use that against your opponents! But be aware that if a property is thrown offstage, all the money invested into it will be lost.");

initTip("Jail");
initWords("If you end up in Jail, you must either roll a double (3 attempts), pay the fine, or use a get out of jail free card!

It's recommended to always have a get out of jail free card if possible, so that you can escape quickly... Especially if you end up in jail while offstage, as it can be used immediately, even when aerial!

Also, if you're out of money and can't pay the fine, and you don't have a card... You're forced to continue rolling the dices until you hit a double. Try avoid getting into that situation!");

initTip("UStrong and BAir");
initWords("With UStrong and BAir, Mr Monopoly swings his bags of money. If he has less than 1.5 million the bag will be light and fast, but if he has more than 3 million it will be slow and heavy. While inbetween is obviously medium.

If you hold the button down during BAir, he will also throw the money bag as a projectile!");

initTip("DAir");
initWords("Mr Monopoly can hold DAir indefinitely, bouncing on the stage, opponents, and even hitboxes! You can also hold parry to fall through platforms, too.");

initTip("Taunts");
initWords("Mr Monopoly has 3 different taunts. His side taunt is especially useful as it has him throw 1 million (if you have that much); a great way invest in a property or give to a teammate quickly!");

/*initTip("NSpecial: Kamehameha");
initWords("This Sandbert's NSpecial is completely different from the normal version of the character: it's Goku's Kamehameha!");
initWords("The longer it's charged, the more distance it travels. The more distance it has left to travel by the time it reaches the enemy, the more damage and knockback it deals.");
initWords("If two Kamehamehas clash, you'll get into a beam struggle! Mash B to overpower your opponent.");
initImage_ext(sprite_get("nspecial"), -4, fa_right, -1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("nspecial"), -4, fa_left, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FSpecial: Sandbert Delusion");
initWords("Just like vanilla Sandbert, you can shorten the FSpecial by pressing B at the correct moment.");
initWords("It's handy as a mixup when recovering!");
initImage_ext(sprite_get("fspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("USpecial: Forbidden Flight");
initWords("USpecial is significantly toned down from regular Sandbert: its flight has a set, short duration, and you're forced to end with the big hit.");
initWords("On the bright side, you can now cancel the move into a wall jump! Also, its finishing hit is just as strong as before.");
initImage_ext(sprite_get("uspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSpecial: Hexagon of Power");
initWords("Sandbert's DSpecial can be canceled into a jump, but only if you successfully hit an opponent.");
initWords("It's useful for combos, but maybe not as punish-safe as you'd expect based on its appearance.");
initImage_ext(sprite_get("dspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FStrong: Burning Dropkick");
initWords("During the charge of FStrong, Sandbert slides as if on ice. Get a running start to ambush a foe!");
initImage_ext(sprite_get("fstrong"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);*/




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

initPatch("1.18", "30th March, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Fixed a bug where cancelling USpecial would spawn a hitbox sometimes");
initSection("+ Fixed money when cancelling USpecial being able to hit opponents");

initPatch("1.17", "3rd March, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Fixed a misc error and some projectile things");

initPatch("1.16", "3rd March, 2023");
initHeader("Buffs");
initSection("+ Increased money gain on hit somewhat, to balance out that he loses money much easier after last patch");
initSection("+ Falling money will now gravitate towards Mr Monopoly if he is near them, making it a bit easier to collect (doesn't work while in hitstun or similar, and only with his own money)");
initSection("+ Reverted USpecial money nerf (125k->200k)");
initSection("+ Mr Monopoly can now pick up his own money 10f earlier than before, and money is protected from other characters 10f longer. In addition, money piles now follow these rules as well (previously only falling money did, so any character could pick up piles instantly), and Mr Monopoly's teammates can collect his money early now too");
initHeader("Fixes / Other Changes");
initSection("+ Added Toadsworth sfx to css and on galaxy");
initSection("+ Added rune K");

initPatch("1.15", "20th February, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Fixed bug where rune A wouldn't work properly");

initPatch("1.14", "14th February, 2023");
initHeader("Skillful Buffs");
initSection("+ If Mr Monopoly is flying during USpecial for longer than 50 frames, he can cancel out of the move (at a cost). USpecial should still be very vulnerable even with this, but it will hopefully make him just a bit less vulnerable, especially when getting Home far from the center");
initSection("+ House and Hotel now gains more passive income (100k->150k, 200k->300k)");
initSection("+ House and Hotel now have more health in a match with 3+ players, since they are harder to defend and easily destroyed");
initSection("+ DAttack can be cancelled early if Mr Monopoly hits the first hit (at a cost), and if you hold down while jumping off the train normally he'll do a lower jump that makes it easier to get on top of the train");
initSection("+ When boosting UTilt, it will boost the damage of the main hit as well, instead of only spawning more money (6->9)");
initSection("+ Money gained on hit now takes strong charge into account (so a charged strong attack will gain more money)");
initSection("+ When doing side taunt, you can hold Attack to drop 4 million instead of just 1 million like normal, allowing you to put money into a property even faster");
initHeader("Unskillful Nerfs");
initSection("- Money received when passing Go during USpecial reduced a bit (200k->125k)");
initSection("- Boosted UAir spends a bit more money (250k->350k), which also results in a loss on whiff");
initSection("- UTilt base damage is lower (7->6)");
initSection("- Money dropped on hit now takes the opponents strong charge into account (previously a charged strong attack would only count the base damage). Also, if Mr Monopoly takes more than 8% from the hit, he will drop a bit more money than before");
initHeader("Fixes / Other Changes");
initSection("+ Falling money can now merge with other ones in mid-air, made money merge together a bit more in general, and also made money merge with another Monopoly's money even if they aren't on your team. Should help boost FPS more overall");
initSection("+ Updated Wario alt colors, and enabled Kewt tokens on Oarly and Pasino alts. Also replaced Fast Food, Skinner, and Herbert alts with Oarluis, Toadsworth, and Cranky Kong alts");
initSection("+ Fixed shader stuff not working online on the css");
initSection("+ If Mr Monopoly (somehow) reaches 100 million, the UI will stretch to fit the numbers. The same will happen if he reaches 1 billion");
initSection("+ Added runes: A, B, C, D, E, F, G, H, I, J, L, M. He now almost has a full set!");

initPatch("1.13", "29th December, 2022");
initHeader("Fixes / Other Changes");
initSection("- Hotfixed an error from last patch");

initPatch("1.12", "24th December, 2022");
initHeader("Skillful Buffs");
initSection("- Some normals have 1-2 frames quicker startup (ex: Jab1, FTilt, DTilt, UTilt)");
initSection("- Due to the projectile parry change (see below), parrying certain weaker moves will now make Mr Monopoly drop less money (ex: Jab1)");
initHeader("Unskillful Nerfs");
initSection("- Money thrown during certain moves are now less active (16f->10f)");
initSection("- When parrying one of Mr Monopoly's projectiles, he will now drop just as much money as if you parried a physical attack (previously, parrying projectiles dropped less). Instead of dropping extra money for specifically physical attacks, extra money will drop if the parried hitbox did 6% or more");
initHeader("Fixes / Other Changes");
initSection("- Fixed a bug from one of the previous patches where parrying one of Mr Monopoly's dices wouldn't make him drop money (this was only meant to apply to the 1 dice but was broken in a patch later on, now it works again)");
initSection("- Added Green Flower Zone compatibility (credit to DonGT for making it)");
initSection("- Updated some compatibility with other KoB characters");

initPatch("1.11", "30th October, 2022");
initHeader("Skillful Buff");
initSection("- Added another CSS (credit to DonGT for making it, I just cleaned it up)");

initPatch("1.10", "12th October, 2022");
initHeader("Fixes / Other Changes");
initSection("- Fixed a bug where if another character grabbed a dice/token and got hit out of the grab, the projectile would get sorta stuck by being unhittable and unable to hit anyone. Now, if this happens, the projectile goes away on it's own");

initPatch("1.9", "5th October, 2022");
initHeader("Skillful Buffs");
initSection("- If Mr Monopoly has 15 million invested into a property, he can now taunt in front of it (while holding the button) to invest in stocks! Very skillful!");
initSection("- Mr Monopoly can now re-grab his own dropped money 10 frames before other characters can");
initSection("- Increased property health slightly (50->75 for House, 100->150 for Hotel), and House and Hotel properties now generate more money passively (50k->100k for House, 100k->200k for Hotel)");
initSection("- If a Dice 1 is parried, it won't force Mr Monopoly to drop money");
initHeader("Unskillful Nerfs");
initSection("- When using heavy UStrong and BAir, Mr Monopoly will drop some money on whiff (for BAir, this doesnt happen if the bag is thrown though)");
initSection("- FSpecial tokens now don't hit quite as often (10 frames longer between hits)");
initHeader("Fixes / Other Changes");
initSection("- Fixed a bug where go to property USpecial would sometimes not refresh Mr Monopoly's collisions depending on the stage");

initPatch("1.8", "17th September, 2022");
initHeader("Skillful Buffs");
initSection("- You can now press Parry to activate the Kewtian FSpecial tokens as any alt");

initPatch("1.7", "16th September, 2022");
initHeader("Nerfs");
initSection("- NSpecial dice and FSpecial tokens now have slightly larger hit collision, making them a bit easier to hit back");
initSection("- All FSpecial tokens now deal less hitstun on weaker hits (1->0.9), and some normal tokens (shoe, iron, duck, and hat) deal even less (1->0.7), to make token multihits a bit weaker (doesn't affect tokens that move faster and do more damage, only the slower, weaker hits)");
initSection("- Most FSpecial tokens now can't multihit quite as quickly (30->40), and FSpecial has a bit more startup (16->19)");
initSection("- Mr Monopoly no longer gains any money when hitting opponents with projectiles; only physical hits give money. This was already the case for some projectiles, but will now affect all of them");
initHeader("Fixes / Other Changes");
initSection("- Fixed a bug where dices and tokens would sometimes be unhittable");
initSection("- When you can't afford any tokens, they will now be greyed out on the UI, and Mr Monopoly will throw dust instead like with other moves. Also, fixed so you can use tokens if you have the exact values needed (100k and 300k), and not just above");
initSection("- Fixed a bug where if a House or Hotel drained money from an enemy Mr Monopoly, they could get below 0 money");

initPatch("1.6", "10th September, 2022");
initHeader("Buffs");
initSection("- All FSpecial tokens can now hit multiple times (can hit again 30 frames after hitting someone), and not just Hat, Iron, and Shoe. They also do more damage when going faster (previously this would only buff knockback)");
initSection("- FSpecial Rubber Duck token now slows down on hit, and Car + Plane tokens do more damage and have a bit more armor. Car and Plane tokens also now have slightly different patterns that are hopefully more useful");
initHeader("Nerfs");
initSection("- FSpecial shoe token has a bit lower base damage to compensate for the above");
initHeader("Fixes / Other Changes");
initSection("- Properties are now Bounceable if they are aerial");

initPatch("1.5", "8th September, 2022");
initHeader("Buffs");
initSection("- Increased Jab3 kbs (0.6->0.8 normal, 0.9->1.0 boosted). Also increased the hitbox size of boosted Jab3");
initHeader("Fixes / Other Changes");
initSection("- Fixed DSpecial properties being indestructible");
initSection("- Made some hitboxes (NSpecial dices, FSpecial tokens, DSpecial falling properties, USpecial Jail and goal, and DAttack choo choo) unabsorbable. Golden FSpecial tokens are also now unreflectable, unlike their normal counterparts");

initPatch("1.4", "29th August, 2022");
initHeader("Buffs");
initSection("- If you hold forward or special while riding the choo choo, it will accelerate much faster at the cost of more money dropping");
initHeader("Nerfs");
initSection("- If a move hits the choo choo during DAttack while Mr Monopoly is still on it, it can knock the choo choo back (similarly to how it works after he jumps off)");

initPatch("1.3", "24th August, 2022");
initHeader("Nerfs");
initSection("- NSpecial Dices now only remove cooldown on hit if they land quickly after being thrown (so combo throws are rewarded, but spam is not)");
initSection("- NSpecial + FSpecial now have higher cooldowns if they're used repeatedly after eachother (the extra cooldown is indicated by them being red on the HUD)");

initPatch("1.2", "20th August, 2022");
initHeader("Nerfs");
initSection("- Reduced the amount of properties that would fall during his final smash");
initHeader("Fixes / Other Changes");
initSection("- Fixed bug where Jail would sometimes make an error sound when opponents launched it");
initSection("- Fixed bug where Jail would sometimes have more armor than intended, making it difficult for opponents to knock around");
initSection("- Fixed DStrong reflect hitbox not being unreflectable");
initSection("- Fixed Mr Oarly Bank sprite a little");

initPatch("1.1", "12th August, 2022");
initHeader("Fixes / Other Changes");
initSection("- You can now pay the jail fine by pressing any of the buttons you would use to roll the dices once you've used up your roll attempts");
initSection("- If you have a get out of jail free card, an upward arrow is shown above the card to help indicate that you have to press up to use it");
initSection("- Fixed NSpecial dice and FSpecial tokens not being destroyed (and glitching out) if thrown by certain throws that were meant to break them (ex: Sol FSpecial)");

initPatch("About Mr Monopoly", "");
initSection("Mr Monopoly, also known as Rich Uncle Pennybags, comes straight from the Monopoly board and into Rivals!

Featuring lots of luck-based moves and an in-depth money mechanic, he requires you to be very skillful to win!");
initHeader("Character by");
initSection("FelixBlobDev");
initHeader("Compatible with");
initSection("Toon Link, Final Smash Buddy, Wily Castle, Miiverse, Agent N, Steve, Link");

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

CHEAT_Money	= initCheat("Money!", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], ["0", "1,000,000", "2,000,000", "3,000,000", "4,000,000", "5,000,000", "6,000,000", "7,000,000", "8,000,000", "9,000,000", "10,000,000", "Infinite"], "Set your money!");

CHEAT_Dice	= initCheat("NSpecial Dices", [0, 1, 2, 3, 4, 5, 6], ["Random", "1", "2", "3", "4", "5", "6"], "Guarantee which dice to throw during NSpecial!");

CHEAT_Dice2	= initCheat("NSpecial Dice Luck", [0, 1, 2, 3, 4], ["Normal", "White", "Yellow", "Red", "Red (+ Jail)"], "Set your dices!");

CHEAT_Fspec	= initCheat("FSpecial Token", [0, 1, 2, 3, 4, 5, 6, 7, 8], ["Random", "Top Hat", "Dog", "Cat", "Car", "Plane", "Rubber Duck", "Iron", "Shoe"], "Guarantee which token to throw during FSpecial!");

CHEAT_Uspec	= initCheat("USpecial Luck", [0, 1, 2, 3, 4, 5], ["Random", "Goal", "Property", "Home", "Jail", "Get out of jail free card"], "Guarantee a specific USpecial!");

CHEAT_JailCard	= initCheat("Get out of jail free card", [0, 1], ["Off", "On"], "Activate the get out of jail free card!");

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
SPK_SAND = initSpeaker(1, "Sandbert", sprite_get("_pho_example_speaker"));
SPK_TWIN = initSpeaker(2, "Sandbert's evil twin", sprite_get("_pho_example_speaker"));

initCodec(0); // this should just always be 0, because there are no codec gimmicks
initCodecPage(SPK_TRUM, 0, 0, "wow is that sandbert with a phone");
initCodecPage(SPK_ALTO, 4, 0, "UNBLOCK ME ON FACEBOOK, COWARD");
initCodecPage(SPK_SAND, 0, GIM_COLOR * GIM_LAUGH_TRACK, "no"); // this page uses the custom speaker

spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve hit bankruptcy!";

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