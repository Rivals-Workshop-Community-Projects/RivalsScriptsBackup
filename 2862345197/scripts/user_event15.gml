// phone - frontend

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
muno_char_name = "Shelly";

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

initTip("Squid");
initImage(sprite_get("squid"), 3);
initWords("Hello, human! My name is Squid, and I'm the doom of humanity.");
initWords("I've hacked your dumb fighting game, and this even dumber phone, too. It was stupidly easy, even a human like you could have done it! But you didn't, and now you get to listen to my amazing advice. I wrote all my best tips and tricks on how to use this dumb character, so use them and maybe you'll become 0.00001% as skilled as me! (unlikely)")

initTip("Shelly's Movement");
initWords("Just like in his source game, Shelly is very fast and twitchy to control. He's quick to start, quick to stop, and falls VERY fast. In fact he has a higher gravity than anyone in basecast, so be careful offstage, and use this property to your advantage.");
initWords("While Shelly falls fast, don't let that trick you into thinking he's heavy! Shelly is a lightweight character and very suceptible to early KOs, so use your surperior speed and range to dodge and strike at the perfect opportunities! His kill moves are quite slow, so precision is key.");
initWords("Though Shelly's movement and air speed are fast, his dodging suffers, having low distance. His walljump is also very small, making his recovery very reliant on USpecial.");
initImage_ext(sprite_get("dash"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords_ext("- Squid's Advice -", fa_center, "h", 0, false);
initImage(sprite_get("squid"), 1);
initWords("You'd think a snail would be slower, hm? My advice is rush in and use as many strongs as you can. They're the strongest attacks, after all, it makes perfect sense to only use those.");

initTip("Laser Gun");
initWords("Shelly wields a gun not for his neutral special, but for a whole bunch of moves! Jab, FTilt, NAir, UAir, and DAir all use this not-so-deadly weapon to attack, carrying some special properties.");
initWords_ext("Jab, FTilt and NAir", fa_left, "h", 0, false);
initWords("While using any of these moves Shelly can move almost entirely freely, aside from dashing, dodging, or cancelling into other attacks. While Jab is held holding forward will transition to FTilt as Shelly moves forward continuing to fire, and vice versa for stopping. You can even turn around while maintaining the attack!");
initWords("Jumping while continuing to hold the attack button will cause Shelly to continue firing with NAir during said jump, and even double jumping works as you would expect. Landing during NAir will put Shelly back into Jab, after enduring some extra landing lag of course.");
initWords("While launching bullets nearly continuously sounds like a lot to deal with, the tradeoff is the bullets being quite weak. Each bullet only does 1% of damage, and has weak set knockback. Bullets can also be quite easily destroyed by another attack, so fire wisely or you might pay the price!");
initWords("Every 3rd bullet fired will be more powerful, launching opponents into the air. After this third bullet the gun will be on cooldown, and not fire anything. Jumping and moving works as normal, just with nothing being fired. If an opponent parries any bullet, it will put Shelly into parry stun.");
initWords("");
initWords_ext("UAir, DAir", fa_left, "h", 0, false);
initWords("Unlike the moves covered above, these are distinct and can't be cancelled into. Despite this they're still good for movement, the upward and downward volleys giving Shelly a vertical boost. Not to mention they fire a spread of 5 bullets, covering a wide area that opponents should look out for!");
initWords("The upward volley gives a downward recoil, launching Shelly toward the ground. While not immediately looking beneficial, this could be used as a vertical mixup, or for getting back to the ground for another jump to juggle your opponent.");
initWords("The downward volley is more immediately useful, providing a small upward boost. An upward boost is always handy for delaying falls, though for Shelly it's even more useful. Using it stops Shelly's fast falling speed in it's tracks, making it a lot easier not to fall too fast and lose control.");
initWords("Unlike the horizontal shots, volleys do not put Shelly into parry stun when parried. Instead the entire group of shots will be sent flying back at him, and in the case of UAir they even gain the ability to pass thtough platforms!");
initWords("");
initWords_ext("- Squid's Advice -", fa_center, "h", 0, false);
initImage(sprite_get("squid"), 1);
initWords("Really? All that info for a dumb little peashooter? This is why your species is doomed, human.");
initImage(sprite_get("squid"), 3);
initWords("This moveset took me such a short time to comprehend, there isn't even a word for such a small unit in my entire database. But if there was, then it would also be the perfect description for your skill level! ;)");

initTip("Puzzle Nodes");
initWords("Place down nodes, link them up, and apply power for a massive attack! NSpecial places a regular node, and DSpecial places a power station. Plan carefully with proper spacing and movement to lay out a pathway of pain!");
initWords("When Shelly passes a node, he'll link up to it. The node he's linked to is indicated by a line drawn between Shelly and the node. While linked, drag the line to another node to link them. Nodes outside of their radiuses cannot be linked, and another one must be placed.");
initWords("Power stations can only be placed on the ground, but regular nodes can be placed anywhere. To create a link in the air, use other nodes bridge the gap.");
initWords("Once a power station is linked up to a node, it and any lines further along will surge with power, hitting any opponents that cross through. This active period is shortly followed by all powered nodes being dismantled, though nodes that were left unpowered will stay up. This also puts Shelly on a small cooldown before he can begin setting up more nodes.");
initWords("While taking some effort to set up, the attack is well worth it for stage control. Powered lines also have high knockback, killing off the top even sooner than UStrong!");
initWords("");
initImage_ext(spr_node, n_sprid, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(spr_node_power, n_sprid, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(spr_node, n_sprid, fa_left, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("");
initWords_ext("- Squid's Advice -", fa_center, "h", 0, false);
initImage(sprite_get("squid"), 5);
initWords("Ugh, BOOOORINNNG! You're going to put me into sleep mode with all this puzzle stuff. Someone wake me up when something interesting happens, like some good ol' fashioned fun for the whole family death and misery. :)");

initTip("DAttack: Mood Booster");
initWords("Use the boost to get through! By using this dash arrow Shelly gains a massive burst of speed.");
initWords("The part that warrants this basic move getting it's own tip is the fact that Shelly can turn around instantly while boosting. Yes, INSTANTLY. Tap the direction opposite from the one you're facing and Shelly will stop on a dime, instantly speeding in the opposite direction. This is great for mixups or evading after whiffing the attack.");
initWords("Because of this incredible tool for mobility, using DAttack will place a small cooldown on it.");
initWords(" ");
initWords_ext("- Squid's Advice -", fa_center, "h", 0, false);
initImage(sprite_get("squid"), 6);
initWords("Say it with me. I love. Stupid. Leveling. Games. I. LOVE. STUPID. LEVELLING. GAMES.");

initTip("FAir: Block Drop");
initWords("Shelly spins around with a destructible block as it fills up, then drops it in front of himself. This move has an active hitbox for a good chunk of the spin, hitting behind and above Shelly before the block is dropped.");
initWords("After the block is dropped it becomes a projectile that falls down. It will shatter when touching the ground or if thrown too close to a wall, so it's best used against offstage opponents. That being said, it's very versatile onstage too!");
initWords("");
initWords_ext("- Squid's Advice -", fa_center, "h", 0, false);
initImage(sprite_get("squid"), 5);
initWords("This move is no good. Use it as little as possible, human, you'll thank me later. Or not, I might kill you first, lol.");
initImage(sprite_get("squid"), 3);
initWords("Though just between you and me, blocks are super fun to crush stuff with. ...Actually I changed my mind, use this move as MUCH as possible, I want to see the DESTRUCTION!");

initTip("BAir: Airspike");
initWords("This slow move packs quite the punch, being Shelly's most reliable kill move. It has a high knockback and sends at a more favourable angle than any of his strongs, but is much harder to hit.");
initWords("The hitbox for this move only lasts for 2 frames, so precision is a must. Along with Shelly's high fall speed it can be tricky to land, but when it does hit the reward is well worth it! The long startup does require some thinking in advance, so think smart and be careful.");
initWords("");
initWords_ext("- Squid's Advice -", fa_center, "h", 0, false);
initImage(sprite_get("squid"), 6);
initWords("My favourite little reliable airspike, huh? Are you even going to be able to land that thing? It's easy for me to land precise shots way in advance, but you? Really?? Just don't bother with this move, you'll just mess it up.");

initTip("FStrong: Turret Spread");
initWords("This FStrong launches 3 slow noving projectiles from a large gun on Shelly's back. While having good coverage and range, using this move point blank will guarantee that all 3 bullets land, dealing a very powerful hit.");
initWords("When parried the bullets are not reflected, and will put Shelly into extended parry stun. The bullets are also transcendant, so feel free to power through stuff with them!");
initWords("");
initWords_ext("- Squid's Advice -", fa_center, "h", 0, false);
initImage(sprite_get("squid"), 0);
initWords("HEY! Where did Shelly get a hold of one of my turret guns?! How did he even get it off the wall?! That's it, I'm going to destroy every last human AND every last snail! I'm sick of these STUPID inferior species trying to get one over on me! Especially when they both only have 2 brain cells...");

initTip("DStrong: Spiketrap");
initWords("Use the power of deadly spikes to impale your enemies! As this move is charged, more and more spikes will appear on the ground. Spikes won't appear in midair though, so be careful on platforms.");
initWords("Along with the spikes, Shelly slamming down also has a slightly smaller, weaker hitbox. Use this in afformentioned cases where only 1 or 2 spikes spawn (which is usually when using this move on platforms.)");
initWords("If opponents parry any spike Shelly will be put in extended parry stun. Parrying the physical hitbox will only put Shelly in regular parry stun.");
initWords("");
initWords_ext("- Squid's Advice -", fa_center, "h", 0, false);
initImage(sprite_get("squid"), 0);
initWords("WHAT. THE. HECK. Those are MINE! I can't believe my signature move has been stolen right out from my (nonexistent) nose! There's a DMCA with your name on it, you stupid snail! >:( As for you, human... you already know what's coming for you...");

initTip("UStrong: Laser Show");
initWords("Shelly fires a laser above himself, with a tall, thin hitbox. While useful for covering a large space in the air, it's fairly slow, so be careful with how you use it to not get punished. If opponents parry the laser Shelly will be put in extended parry stun.");
initWords("");
initWords_ext("- Squid's Advice -", fa_center, "h", 0, false);
initImage(sprite_get("squid"), 4);
initWords("I love the laser show! I don't even care how Shelly got this from my levels, I'm just happy to see it used to fry everything to a crisp! ...I might have to start playing this game too, I doubt a stinky human like you could do this amazing weapon the justice it deserves.");

initTip("USpecial: Rising Bubble");
initWords("Use a bubble to rise to the top of the stage, and pop out when you hit the ceiling. While extremely good for recovery, this USpecial has no hitbox. While in the bubble Shelly can move left and right, so what it lacks in offensive utility it makes up for in evasiveness when used correctly.");
initWords("Pressing either Special or Jump will cause Shelly to pop out of the bubble with an upward boost, and put him into pratfall afterward. The bubble also automatically pops when near the top blastzone, giving opponents an opportunity to catch your landing if you aren't careful.");
initWords("The bubble also preserves Shelly's momentum when activated, giving a large downward bob when falling quickly, and will keep his horizontal momentum. Don't worry though, once inside the bubble it will bounce off the blastzones, so don't worry about bobbing straight to your doom.");
initWords("");
initWords_ext("- Squid's Advice -", fa_center, "h", 0, false);
initImage(sprite_get("squid"), 2);
initWords("A bubble? Really? Normally I love bubbles, but you're just asking to have someone jump out and pop you to your doom. And I'm asking too! If anyone else is reading this, make it happen!");

initTip("FSpecial: Lock-On Shot");
initWords("Fire a volley of 3 semi-weak shots that aim at the opponent. After using this move there is a small cooldown, so use it wisely.");
initWords("While similar to the shots fired by the Laser Gun, these circular projectiles deal more damage, and while they still break when hitting a solid wall, they coast straight through platforms. These projectiles are also transcendant, meaning they cannot be destroyed by other attacks. They also carry the same knockback as the more powerful 3rd shots from the laser gun.");
initWords("The shots are locked on to the opponent when the move is initialized, meaning a lot of movement will spread them out. Try to fire the shots when the opponent will be stationary, or moving along the same trajectory of the bullets. Watch out for opponents parrying this move, as it will put Shelly into parry stun.");
initWords("");
initWords_ext("- Squid's Advice -", fa_center, "h", 0, false);
initImage(sprite_get("squid"), 5);
initWords("No no no you're doing it all wrong! You have to aim where they will be (in 1 to 2 seconds), not where they are! Leave it up to a snail to do an AI's job. While you're at it aim for their pathetic, squishy vital organs, you amateur.");

initTip("DSpecial Air: Snail Spike");
initWords("A slow starting powerful spike using a Power Node as a weapon. Manage to hit an opponent with this, and they'll feel it in their soul.");
initWords("");
initWords_ext("- Squid's Advice -", fa_center, "h", 0, false);
initImage(sprite_get("squid"), 3);
initWords("Yes. YEEES! This is my favourite move. Only try to hit this is you have 0 respect for your opponent! Which ideally should be all the time. Never respect anyone trying to kill you (except me of course).");


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

initPatch("1.3", "12 April 2024");
initHeader("Balance");
initSection("-Increased pratland time from 20 to 30
-Increased Jab/FTilt/NAir cooldown from 20 to 25
-Added a 0.8x hitstun multiplier to DAir");
initHeader("Fixes");
initSection("-Fixed attacking P-Shooter sprites not having a recoloured outline on alts
-Fixed P-Shooter not being recoloured for 1 frame after landing from NAir
-Removed lag machine and invincibility from the anticheap, and made it use the undistorted version of the song");

initPatch("1.2", "21 August 2023");
initHeader("Balance");
initSection("-FTilt movement speed reduced from 4 to 2.5
-FTilt projectile lifetime reduced from 20 to 10 (Changes should hopefully stop being able to chase ppl with it)
-Jab/NAir projectile lifetime reduced from 20 to 15 (Matches FTilt change + could stand to be less annoying anyway)
-Increased FStrong KB from 7 BKB, 0.7 scaling to 8 BKB, 0.9 scaling
-Increased UStrong KB from 7 BKB, 0.8 scaling to 8 BKB, 1.0 scaling
-Increased DStrong KB scaling from 0.7 to 1.1");
initHeader("Fixes");
initSection("-Jab spritesheet is no longer 300 frames (DON'T ASK)
-Optimized some other spritesheets (alt costumes amirite)
-Fixed Shelly's alts showing up on the sprites when using the Munophone (and by fixed i mean removed those sprites entirely lol)");

initPatch("1.1", "15 September 2022");
initHeader("Aesthetic");
initSection("-Updated Munophone entry for Nodes to mention their new high kill power");
initHeader("Balance");
initSection("-Node link radius increased from 120 to 150
-Node hitbox lifetime increased from 10 to 15
-Node BKB increased from 8 to 10
-Node base hitpause increased from 8 to 10
-Node hitpause scaling increased from 0.8 to 1
");

initPatch("1.0", "12 September 2022");
initHeader("General");
initSection("Character is released woaw!");

initPatch("About Shelly", "");
initHeader("General Info");
initWords("Shelly, the Simulated Saviour from Will You Snail comes to Rivals of Aether!");
initWords("Like in the simulation of his home game, it's up to you to avoid attacks with you fast movement and strike at the right times. With light weight and weak moves, it's all about using what you have to overcome the odds!");

initHeader("Character by Flophawk and Mr. Nart");
initSection("Flophawk: Animator, coder, moveset, etcetc.");
initSection("Mr. Nart: Article coder, Tophat costume spriter, and generally very helpful");
initSection("supersonic: Alternate Costume template");
initSection("Special thanks to the Will You Snail? Discord server for providing feedback and ideas, and following the development of the project! Biggest shoutouts go to Joy! and BlueDayse");

initHeader("SFX from");
initSection("Will You Snail?, Super Mario World, and various Jonas Tyroller videos.");
initSection("AnnoyingRageGameMusic by Yän");
initHeader("Compatible with");
initSection("Trummel & Alto, Otto, Steve, Link, Pit, TCO, Feri, Agent N, Hikaru, Rat, Miiverse, Pokemon Stadium, Trial/Killing Grounds, Last Resort, Mt. Dedede, Soulbound Conflict, Adventure Mode, Final Smash Buddy and Dialogue Buddy");
initSection("Extra Miiverse posts contributed by Cleo Knight, MissingTextureMan, JeremyGamer13, and BlueDayse");

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

CHEAT_HOMING		= initCheat("Infinite FSpecial", [0, 1], ["Off", "On"], "Removes the cooldown from Lock-On Shot");
CHEAT_SPEEP		    = initCheat("Infinite DAttack", [0, 1], ["Off", "On"], "Removes the cooldown from Mood Booster");
CHEAT_GUN		    = initCheat("g u n", [0, 1], ["Off", "On"], "Removes bullet cooldown on Jab/FTilt/NAir");
CHEAT_YO		    = initCheat("yo", [0, 1], ["no", "yo"], "yo");


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
	AT_NAIR,
	AT_DTILT,
	AT_UTILT,
	AT_DATTACK,
	AT_FSTRONG,
	AT_USTRONG,
	AT_DSTRONG,
	AT_FSTRONG_2,
	AT_USTRONG_2,
	AT_DSTRONG_2,
	AT_FAIR,
	AT_BAIR,
	AT_UAIR,
	AT_DAIR,
	AT_NSPECIAL,
	AT_NSPECIAL_AIR,
	AT_NSPECIAL_2,
	AT_DSPECIAL,
	AT_DSPECIAL_AIR,
	AT_DSPECIAL_2,
	AT_FSPECIAL,
	AT_FSPECIAL_AIR,
	AT_FSPECIAL_2,
	AT_USPECIAL,
	AT_USPECIAL_GROUND,
	AT_USPECIAL_2,
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
initCodecPage(SPK_TRUM, 0, 0, "woag its the snail from did yous nail");
initCodecPage(SPK_ALTO, 2, 0, "Well I guess now he's the snail from Rivals.");
initCodecPage(SPK_TRUM, 1, 0, "but i thought i was the snail from rivals");
initCodecPage(SPK_ALTO, 11, GIM_SHUT_UP, "");
initCodecPage(SPK_ALTO, 4, GIM_DIE * GIM_LAUGH_TRACK, "");

spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve was erased from the simulation.";

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

// Palutena's Guidance (for RuberCuber's Pit character)
// Works kind of similarly to Trummel codecs.
// initCodecPagePit(speaker, expression, voice, text);
// List of expressions and voice clips: https://pastebin.com/wsz22ZwJ

initCodecPit();
initCodecPagePit(SPK_PIT,	3,	0,	"Aw, a little snail! He looks so harmless, and... boxy.");
initCodecPagePit(SPK_PIT,	9,	8,	"Honestly I'm not sure how I feel about beating him up...");
initCodecPagePit(SPK_PALU,	0,	2,	"Don't hold back, Pit. Shelly has gone toe to toe fighting powerful beings amd deadly robots, and won.");
initCodecPagePit(SPK_PIT,	4,	9,	"Woah, really??");
initCodecPagePit(SPK_VIR,	2,	4,	"His whole reality was controlled by an evil AI that tortured him for fun!");
initCodecPagePit(SPK_VIR,	3,	1,	"But he managed to break free, and come here to Aether!");
initCodecPagePit(SPK_PIT,	10,	5,	"Poor guy! Now I still don't wanna fight him! All that stuff he went through...");
initCodecPagePit(SPK_PALU,	1,	0,	"I wouldn't advise that, Pit. He's brought all sorts of traps and weapons from his reality, and won't hesitate to use them.");
initCodecPagePit(SPK_VIR,	5,	6,	"So get over it and beat him up, unless you want lasers for breakfast-");
initCodecPagePit(SPK_PIT,	5,	10,	"...why am I always being shot with things...");



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