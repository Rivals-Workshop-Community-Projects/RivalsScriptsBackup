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
	"Default","Blue","GonGon","Green","White","Meemee","Abyss","Gameboy",
	"Yellow","Dr. BadBoon","Inverse","Magenta","Cyan","Monochrome","Baby","Sonic",
	"Infamous","Pure Gold","Ranked Gold","Champion",
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
muno_char_name = "AiAi";

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

initTip("Monkey Ball");
initWords("AiAis main stage control is the Monkey Ball. All of his specials use it.
While inside the Monkey Ball, you can do any normal (or Dspecial) to get out of it and place the Monkey Ball down onstage.
Your movement speed is also increased while inside of it, and your physics are much more slippery, but your hurtbox is much bigger as a result.
Very useful as an offsenive tool, as it can quickly rack up damage on opponents if you use it as a projectile, then repeatedly hit it into them alongside using your normals to damage them.
Be careful, though: your opponents can knock the Monkey Ball around as well, so watch out.

Also, a unique downside of being in the Monkey Ball is that you can't tech. At all. It's really funny.");
initImage_ext(sprite_get("monkey_ball_front"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("monkey_ball"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("NSpecial: Monkey Shot");
initWords("AiAi will kick the Monkey Ball forward like a soccer ball.
If the Monkey Ball is already onstage, AiAi will kick the air instead. Bounces up on hit, so it could probably be useful as a combo tool.
Using NSpecial (with the Monkey Ball or not) has a cooldown.");
initImage_ext(sprite_get("phone_tip_nspec"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("FSpecial: Monkey Dash");
initWords("Dash forward while in the Monkey Ball. You will automatically get inside the Monkey Ball if it is not onstage. If it is, you will perform a worse version of the move.
Touching the Monkey Ball during startup will put you in the Monkey Ball.
Hitting an opponent (or also the ground or a wall) will have you bounce off of it. If not inside the Monkey Ball, you will not bounce.
Hold up during startup to dash a bit more upward but less horizontally.");
initImage_ext(sprite_get("fspecial"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("USpecial: Monkey Target");
initWords("Rise upward with a hitbox, then glide. You will automatically get inside the Monkey Ball if it is not onstage. If it is, you will perform a worse version of the move.
Touching the Monkey Ball during startup will put you in the Monkey Ball.
When gliding, you can drift left and right with the control stick. Cannot glide if you are not in the Monkey Ball.
Press parry to stop gliding and go into pratfall.");
initImage_ext(sprite_get("monkey_ball_uspec"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("uspecial"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("monkey_ball_front_uspec"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("DSpecial: Monkey Ball");
initWords("Manually get in and out of the Monkey Ball.
TAPPING the button simply puts you in and out of the Monkey Ball.
HOLDING the button when inside the Monkey Ball places it down.
Keep in mind that trying to do Dspecial when the Monkey Ball is onstage won't allow you go get inside of it, since it's already onstage.
Using the move next to your own Monkey Ball will put you inside of it.");
initImage_ext(sprite_get("dspecial"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Normals");
initWords("AiAis normals are fairly barebones - theres nothing too gimmicky to them.");
initImage_ext(get_attack_value( AT_JAB, AG_SPRITE ), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("ustrong"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(get_attack_value( AT_BAIR, AG_SPRITE ), -4, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initWords("




");
initImage_ext(sprite_get("ftilt"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("nair"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(get_attack_value( AT_FSTRONG, AG_SPRITE ), -4, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
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

initPatch("1.5", "16 January, 2022");
initHeader("Back Air");
initSection("~ Early Hit Hitpause Scaling: .5 -> .7 
~ Late Hit Base Hitpause: 6 -> 6.5
~ Late Hit Hitpause Scaling: .4 -> .65");
initHeader("Down Strong");
initSection("~ Both Hits Hitpause Scaling: .5 -> .7");
initHeader("Forward Special (Monkey Dash)");
initSection("~ Adjusted rotation of the Monkey Ball after bonking into a wall.");
initHeader("Down Special (Monkey Ball)");
initSection("~ The hitbox on the Monkey Ball should now not copy what the angle flipper was of the hitbox it got hit by.
~ The angle of the hitbox is now dependent on the Monkey Ball’s current speed.
~ Added a very slight cooldown to specials if the Monkey Ball despawns.");

initPatch("1.4", "12 January, 2022");
initHeader("Back Air");
initSection("~ Using the move while on the Pure Gold alt now properly plays the animation. I accidentally changed the file name at one point and it messed up the animation.");

initPatch("1.3", "9 January, 2022");
initHeader("Down Special (Monkey Ball)");
initSection("~ Fixed a bug where if the Monkey Ball was parried, it would never respawn.");

initPatch("1.2", "9 January, 2022");
initHeader("General");
initSection("~ Fixed a bug where if AiAi slid off a ledge while in the Monkey Ball after previously taunting, the respawn platform would show up for one frame.
- Initial Dash Speed (outside of Monkey Ball): 7.2 -> 7
- Dash Speed (outside Monkey Ball: 6.6 -> 6
+ Initial Dash Speed (while inside Monkey Ball): 7.6 -> 8
+ Platboost (while inside Monkey Ball): 5.5 -> 6.5
~ Air Friction (while inside Monkey Ball): .02 -> .04

Basically, movement inside the Monkey Ball should be more noticeably faster than AiAi’s movement outside the Monkey Ball.
Said movement outside the Monkey Ball is also lowered a little bit to make the change in speed more noticeable.

~ All hitboxes have been given names to what they are in the Data section of the MunoPhone.");
initHeader("Forward Tilt");
initSection("~ Adjusted animation to have a smoother motion and a visual kick effect.
~ Adjusted dust effects.");
initHeader("Up Air");
initSection("~ Adjusted the arms during startup and his lower half during endlag a tiny bit.");
initHeader("Down Special (Monkey Ball)");
initSection("~ Fixed AiAi’s hurtbox not properly changing when he gets inside the Monkey Ball when using DSpecial.
~ Adjusted gravity speed of the Monkey Ball.
~ A bug where the Monkey Ball not respawning when it hits the blastzone while it still looks like the hitbox is active should be fixed.");

initPatch("1.1", "7 January, 2022");
initHeader("General");
initSection("+ Double Jump Speed: 9.5 -> 10
~ Being inside the Monkey Ball has more slippery physics.
~ Fixed AiAi’s hurtbox not changing if he taunts while inside the Monkey Ball.
~ Some animations now change if AiAi is in the Monkey Ball.
~ The Monkey Ball now visually rotates when moonwalking.");
initHeader("Neutral Special (Monkey Shot)");
initSection("~ Fixed a bug where AiAi's hurtbox would not match his sprite.");
initHeader("Up Special (Monkey Target)");
initSection("~ Fixed a bug where AiAi's hurtbox would not match his sprite.");

initPatch("1.0", "7 January, 2022");
initHeader("General");
initSection("AiAi was released to the public.");

initPatch("About AiAi", " ");
initHeader("Character by");
initSection("ricE");
initHeader("SFX from");
initSection("- Super Monkey Ball 2
- Super Monkey Ball: Banana Mania");
initHeader("Compatible with");
initSection("Trummel & Alto, Otto, Steve, Link, Pit, Sleep Kirby, Hikaru, Rat, Agent N, Henry Stickmin, Dedede Arena, Soulbound Conflict, Greenflower Zone");
initHeader("Credits");
initSection("AiAi is owned by SEGA. No copyright infingement was intended in making this.");




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
phone.stats_notes = "Being inside the Monkey Ball changes your stats. Reopen the phone while inside/out of the ball to change the stats shown on this page.";

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
initCodecPage(SPK_ALTO, 2, 0, "Who's this guy? He looks like he's not from around here.");
initCodecPage(SPK_ECHO, 0, 0, "That's AiAi, a resident of Jungle Island. He looks kinda young.");
initCodecPage(SPK_CODA, 0, 0, "He once faced off against the evil Dr. BadBoon in an attempt to reclaim all the stolen bananas the Dr. stole from the village.");
initCodecPage(SPK_ECHO, 3, 0, "His family and friends also joined him as well. ...although its kinda weird how most of their names are just 2 syllables.");
initCodecPage(SPK_OTTO, 0, 0, "Either way, this guy certainly knows how to put up a fight! He definitely knows some fighting techniques.");
initCodecPage(SPK_OTTO, 9, 0, "He also can knock and throw around that Monkey Ball of his like it's nothing! Although not as good as I can...");
initCodecPage(SPK_CODA, 0, 0, "Knock his Monkey Ball back at him if you can get the chance. Turn his projectile into yours to turn the odds in your favor.");
initCodecPage(SPK_CODA, 0, 0, "Also, his recovery is exploitable - shock him while he's gliding to bring him down!");
initCodecPage(SPK_ALTO, 9, 0, "Isn't it weird how he can just open that ball of his and it just becomes a glider? Where is the logic in that?");
initCodecPage(SPK_TRUM, 0, 0, "video gaem logic


thats why Lol!");

spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("otto");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve couldn't keep himself from monkeying around";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 7;
//i made it thunderspear because its yellow lol

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

initCodecPagePit(SPK_PIT,	7,	7,	"Who's this little monkey?");
initCodecPagePit(SPK_PALU,	2,	5,	"Would you look at that! It's AiAi! He's from Jungle Island.");
initCodecPagePit(SPK_PALU,	0,	1,	"There, he lives with his friends and family. One day, the nefarious Dr. BadBoon arrived to steal all of the bananas.");
initCodecPagePit(SPK_PALU,	0,	1,	"He and his friends managed to put an end to his scheming plans, and retrieved all the bananas to Jungle Island.");
initCodecPagePit(SPK_PIT,	3,	0,	"I guess you could say he's kinda bananas for picking a fight?");
initCodecPagePit(SPK_PALU,	0,	0,	"...sure, I guess. Putting aside his many adventures, he's picked up a lot of techniques to throw at you, so be ready.");
initCodecPagePit(SPK_VIR,	0,	3,	"That plastic ball of his is his main weapon, believe it or not. He can get inside of it to build up speed and roll around.");
initCodecPagePit(SPK_DPIT,	0,	0,	"He can also kick it around like a projectile and even fly with that thing by cracking it in half. Kinda crazy.");
initCodecPagePit(SPK_PIT,	4,  9,	"So you're telling me that someone like him, who doesnt have wings, can fly?!");
initCodecPagePit(SPK_PALU,	0,	1,	"Calm down, Pit. He can fly, but he needs that Monkey Ball. Knock it and keep it away from him, and he can't use it at all.");
initCodecPagePit(SPK_VIR,	3,	1,	"Also, try knocking it back at him! Giving him a taste of his own medicine will do wonders for you in this fight.");
initCodecPagePit(SPK_PIT,	10,	8,	"Uhh... yeah, sure. I'll do that.");


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