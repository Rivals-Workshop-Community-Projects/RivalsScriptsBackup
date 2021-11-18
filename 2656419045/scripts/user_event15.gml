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
num_alts = 8;

// Whether or not to display a name for each alt.
use_alt_names = false;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
alt_ui_recolor = 0;

// The list of names for the alts, if enabled.
alt_names = [
	"Super Mario",
	"Super Luigi",
	"Bucken-Berry",
	"Toadette",
	"Ala-Gold",
	"Toad",
	"Banktoad",
	"Mailtoad",
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
muno_char_name = neo_char.name;

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

initTip("Jump");
initWords(`${neo_char.name} has no jumpsquat, so ${neo_char.prnns.their} jumps leave the ground on frame 1. Rather than having shorthops and fullhops, ${neo_char.name} chooses the height of ${neo_char.prnns.their} jump by releasing the button at any time during ${neo_char.prnns.their} ascent. This will cap off ${neo_char.prnns.their} upward velocity, bringing the peak of ${neo_char.prnns.their} jump lower.`);
initWords(`As a result of this granular control, ${neo_char.name} has dozens of possible jump heights. Deciding how long to stay in the air and at what height to cap your jump is an essential skill for playing as Qua Mario (or the predecessor character Neo Mario, for that matter!)`);

initTip("Momentum & Physics");
initWords(`${neo_char.name}'s physics are unlike any other Rivals fighter. ${neo_char.prnns.They} ${neo_char.prnns.plurconj?"have":"has"} to accelerate to move quickly, and can't snap back and forth like a normal fighter. ${neo_char.name} will accelerate faster and reach a higher top speed when holding the Run button. Either Attack or Special work for this; these buttons are completely interchangable when playing as Qua Mario.`);

initTip("Attacks");
initWords(`${neo_char.name}'s most versatile attack is the Stomp, which is performed simply by falling onto an opponent from above. Stomp comes out frame 1 as soon as ${neo_char.prnns.they} ${neo_char.prnns.plurconj?"begin":"begins"} descending, and it ends with no lag upon touching the ground, making it a phenomenally safe attack. Just by jumping around, ${neo_char.name} can threaten large amounts of space. ${neo_char.prnns.They} can also stomp off of most projectiles, and any article that can be attacked. Performing multiple Stomp attacks in a row without touching the ground makes each one more powerful than the last.`);
initWords(`The Ground Pound is another essential move. It can be performed by tilting the control stick down at any time while in midair. Ground Pounds are ${neo_char.name}'s most reliable kill move. The Ground Pound is possibly the closest option ${neo_char.name} has to a conventional move, as it has both startup and endlag - upon intiating the attack, ${neo_char.prnns.they} ${neo_char.prnns.plurconj?"spin":"spin"} around for a moment, then slam downwards butt-first. Upon hitting the ground, ${neo_char.prnns.theyre} unable to act for a moment.
Holding Down on the stick during the Ground Pound allows ${neo_char.name} to crash through any platforms in the way. However, this isn't possible when in the small powered-down form.`);
initWords(`${neo_char.name}'s most niche attack is the Ceiling Bump Attack. By jumping up into a ceiling from below, ${neo_char.name} can create a hitbox that penetrates up through the ceiling to damage anyone standing on the floor directly above. The attack is also useful for hitting solid articles that are floating in midair or sitting on platforms. Ceiling Bump Attacks deal 0% damage when in depowered form, but still cause knockback.`);

initTip("Spinning and Twirling");
initWords(`${neo_char.name} can perform moves related to spinning with the Parry button. On the ground, this results in a Spin Jump. In the air, it results in an Air Twirl. The spin button is also used for rolling.`);
initWords(`Pressing Spin again during a Spin Jump causes ${neo_char.name} to pull ${neo_char.prnns.their} arms in. The change in animation is subtle, but important - while in this animation, ${neo_char.name} will fall right past platforms. This is still possible when carrying something, but it becomes impossible to tell the animations apart.`);
initWords(`Midair twirls are useful for stalling ${neo_char.name}'s descent after a jump. When ${neo_char.name} twirls while falling, ${neo_char.prnns.their} downward velocity is changed to 0 and ${neo_char.prnns.their} gravity is temporarily reduced until the animation ends. Additionally, ${neo_char.prnns.their} horizontal air drift is much stronger while performing a falling twirl.`);
initWords(`Performing a twirl while rising in the air has none of these properties - velocity, gravity, and horizontal drift are all unaffected. However, moving upwards through a platform while twirling will snap ${neo_char.name} on top of it without allowing ${neo_char.prnns.them} to jump past. This technique is called a Wavetwirl due to its similarity to wavelanding. Similar to a waveland, a Wavetwirl also gives ${neo_char.name} some horizontal momentum along the floor, affected by the angle of the control stick. Jumping after a Wavetwirl always results in a Double Jump, regardless of what aerial state ${neo_char.name} was in prior to landing. Additionally, the timing window for the Wavetwirl Double Jump is much more lenient than the timing for a normal Double Jump, since it's harder to buffer a Double Jump out of a Wavetwirl.`);

initTip("Lifting (and Grabbing)");
initWords(`${neo_char.name} can lift opponents over ${neo_char.prnns.their} head by holding the Run button and pressing Spin, and then throw them by releasing the Run button. Holding down while releasing the Run button will instead place the other player down gently. Throwing an enemy puts them in hitstun like an attack, and can KO at high percentages. Because lifting isn't an attack, it ignores parries.`);
initWords(`When a player is lifted, they're completely inactionable. However, they can use Up Special to escape, analogous to how other players can escape a lift by Spin Jumping in New Super Mario Bros. Wii. Escaping with Up Special is only possible when ${neo_char.name} is on the ground, so jumping immediately after lifting someone can offer ${neo_char.name} some extra time to position ${neo_char.prnns.themself} closer to a ledge before throwing. If the player being lifted is also playing Qua Mario, though, they can escape at any time by Spin Jumping.`);
initWords(`Throwing a teammate won't put them into hitstun, and the strength of the throw won't be affected by their damage percentage.`);
initWords(`${neo_char.name} can also lift some items and objects overhead using the same input. Some objects can also be Grabbed by simply touching them while holding the Run button - however heavier objects can usually only be Lifted, not Grabbed.`);
initWords(`Lifting another Qua Mario player is a unique interaction - the lifted player remains somewhat actionable, capable of ducking, using their power-ups, spin-jumping, collecting power-ups, and even grabbing/lifting/throwing things themselves. Power-up attacks can be directed left or right regardless of the direction the player lifting them is facing. Lifting up another Qua Mario player can be a useful strategy in Doubles matches.`);
// initWords(`While items can be Grabbed in almost any state, a Lift can only be inputted while ${neo_char.name} is grounded. The only exception: If another Qua Mario using a Propeller Suit flies up past ${neo_char.name}, ${neo_char.prnns.they} can grab on and come along for the ride.`);
//^ not implemented yet...
initWords(`While items can be Grabbed in almost any state, a Lift can only be inputted while ${neo_char.name} is on the ground.`);
initWords(`${neo_char.name} can kick an item upwards by tilting the stick up while releasing the run button. However, this can only be done out of a Grab, not a Lift.`);

initTip("Fancy Jumps");
initWords_ext("1. Spin Jump", fa_left, c_gray, 1, false);
initWords(`${neo_char.name} can perform a Spin Jump by pressing the Spin (parry) button while grounded. Spin Jumps are much shorter than regular jumps, but they have a number of useful traits. Holding the button past the peak of ${neo_char.name}'s jump will cause ${neo_char.prnns.them} to fall past platforms, or the button can be released before then to land on them. Spin Jumps can also bounce harmlessly off of enemy hitboxes, and the lower half of ${neo_char.name}'s body is intangible when the falling hitbox is out, making it a good counter to an opponent relying too heavily on anti-airs.`);
initWords_ext("2. Double Jump", fa_left, c_gray, 1, false);
initWords(`While most of the time a character's midair jump is referred to as a "double jump", ${neo_char.name}'s Double Jump is a strictly grounded move. To do a Double Jump, ${neo_char.prnns.they} ${neo_char.prnns.plurconj?"have":"has"} to jump once, then jump again immediately after landing. This input can be buffered to perform it more easily. A Double Jump has greater height than a standard jump. Much like in Mario 64 and Mario Galaxy, the Double Jump can be performed from a complete standstill - no need for forward momentum like in the NSMB series.`);
initWords(`The only thing to consider: ${neo_char.name} can't do a Double Jump when moving backwards.`);
initWords_ext("3. Triple Jump", fa_left, c_gray, 1, false);
initWords(`The Triple Jump is one of the flashiest moves in the Mario series. ${neo_char.name} can perform it by jumping again after landing from a Double Jump, if ${neo_char.prnns.they} ${neo_char.prnns.plurconj?"have":"has"} enough forward momentum. Like the Double Jump, this input can be buffered for an easy Triple Jump. The Triple Jump is ${neo_char.name}'s highest jump, capable of crossing impressive gaps and reaching very high platforms quickly. Plus, it looks cool as heck - the double-frontflip from Super Mario 64 has been recreated in all of its glory in 2D.`);
initWords_ext("4. Sideflip", fa_left, c_gray, 1, false);
initWords(`Sideflips are a good way to quickly jump away from a sticky situation. They give ${neo_char.name} impressive height and a handy backwards speed boost. To perform a Sideflip, ${neo_char.name} has to turn around with enough forward momentum to enter the skidding animation. Once ${neo_char.prnns.theyve} come to a complete stop, press the Jump button to perform a Sideflip. The correct timing is indicated by a special sound and a cloud of dust that rises upwards. If the button is pressed too early or too late, ${neo_char.name} will just perform a normal jump.`);
initWords_ext("5. Long Jump", fa_left, c_gray, 1, false);
initWords(`Long Jumps can cover large horizontal gaps and allow ${neo_char.name} to move incredibly fast, however they're much lower than most other jumps. As a result, not all characters can be stomped with a Long Jump. To perform a Long Jump, ${neo_char.name} must jump while rolling. The simplest way to begin rolling is by pressing the Spin button while ducking. ${neo_char.name} will roll much faster if ${neo_char.prnns.theyre} moving quickly before ${neo_char.prnns.they} duck.`);
initWords(`${neo_char.name}'s gravitational acceleration is halved during the Long Jump. This is what gives it its characteristically long distance, but it also means ${neo_char.name} is in midair for longer than you might expect. Combined with the fact that ${neo_char.prnns.their} aerial drift doesn't benefit from the run button in this state, you've got a jump that can lead to disaster if used carelessly.`);
initWords(`Be careful not to hit any walls, as well, or ${neo_char.name} will bonk off the wall and be vulnerable until ${neo_char.prnns.they} ${neo_char.prnns.plurconj?"stand":"stands"} back up.`);
initWords_ext("6. Wall Jump", fa_left, c_gray, 1, false);
initWords(`Wall Jumps, also known as Wall Kicks, are the most niche jump in ${neo_char.name}'s kit. They can be performed by pressing Jump while sliding down the side of a wall. They shouldn't be disregarded, though. When there's a wall in play, such as on the Aether form of Fire Capital or when there are solid articles in play, they can be a tricky mixup option. Additionally, wall-jumps are essential to recover from offstage. I'm sure you'll find them quite useful in Adventure Mode stages, too.`);

initTip("Rolling");
initWords(`Rolling is a useful ability that can be tricky to use right. There are multiple ways to start rolling:`);
initWords(`1. Duck + Spin while grounded
Pressing the Spin button while ducking is the most straightforward way to roll, and the only way to initiate a roll from the ground. Grounded Rolls move faster when ${neo_char.name} ${neo_char.prnns.themself} is moving quickly.`);
initWords(`2. Duck + Spin after Ground-Pound landing
Doing the normal Grounded Roll input right after landing from a Ground Pound will cancel the Pound's landing lag into a high-speed Pound Roll, a technique lifted from Super Mario Odyssey. This roll always has the same amount of speed, but the startup of a ground-pound makes it more predictable for ${neo_char.name}'s enemies.`);
initWords(`3. Spin during Ground-Pound startup
Pressing the Spin button during the startup lag for a Ground Pound will transition the attack into a Midair Roll from Bowser's Fury. Even after pressing the Spin button, ${neo_char.name} still has to go through the full duration of the Ground Pound's startup lag before the roll will be triggered. The true magic of the Midair Roll is how its properties change after performing a Wall Jump. Until the next time ${neo_char.name} touches the ground, ${neo_char.prnns.their} Midair Roll will go higher and further. This makes it an excellent move to chain after a Wall Kick to scramble up over a ledge. Don't expect any miracles, though - jumping into a bottomless pit has never been a winning strategy in Super Mario, so don't expect it to work out for you in Rivals of Aether.`);

initTip("Not Rolling");
initWords(`While there are many ways to enter a roll, ending the roll is harder:`);
initWords(`1. ${neo_char.name} will stop rolling once ${neo_char.prnns.their} speed hits 0. ${neo_char.name} has no way of deliberately reducing ${neo_char.prnns.their} own speed, though, so ${neo_char.prnns.theyll} have to wait for friction to bring ${neo_char.prnns.them} to a halt.`);
initWords(`2. Rolling into a wall will cause ${neo_char.name} to bonk backwards. This leaves ${neo_char.prnns.them} more vulnerable than if ${neo_char.prnns.they} had just slowed down due to friction, though, and in some situations the bonk might knock ${neo_char.name} offstage.`);
initWords(`3. Pressing Jump while rolling will cancel the roll into a Long Jump, preserving its speed. This is usually ${neo_char.name}'s best option to stop rolling, as ${neo_char.name} can control ${neo_char.prnns.their} horizontal speed during a Long Jump, and ${neo_char.prnns.they} can stomp some short characters or low articles. However, the Long Jump still has poor acceleration and an unavoidably long airtime that render ${neo_char.name} vulnerable when performing one, especially at low speeds.`);

initTip("Coins");
initWords(`Much like in the classic games, certain actions will cause ${neo_char.name} to earn coins. Upon collecting 100 coins, the counter resets and ${neo_char.prnns.they} ${neo_char.prnns.plurconj?"receive":"receives"} an extra life.`);
initWords(`Coins can be earned in the following ways:`);
initWords_ext(`Stomping on a projectile: 5 coins`, fa_left, c_yellow, 1, false);
initWords_ext(`Stomping on an article: 1 coin`, fa_left, c_yellow, 1, false);
initWords_ext(`Spin-Jumping on a player or article: 1 coin`, fa_left, c_yellow, 1, false);
initWords_ext(`Ground-Pounding anything: 3 coins`, fa_left, c_yellow, 1, false);
initWords_ext(`Hitting anything with a fireball: 1 coin`, fa_left, c_yellow, 1, false);
initWords_ext(`Shattering an Ice Block with anything other than a Ground-Pound: 3 coins`, fa_left, c_yellow, 1, false);
initWords_ext(`Hitting anything with a Shell Dash: 1 coin`, fa_left, c_yellow, 1, false);

initTip("Points & Score");
initWords(`Many attacks will cause ${neo_char.name}'s score to increase. Points don't do anything, but they're pretty neat.`);
initWords(`Some attacks will gain more points the more times they can be landed in a row. These attacks follow a pattern of 200/400/800/1000/2000/4000/8000. Landing one of these attacks again after the 8000-point hit, such as by stomping an enemy eight times in a row, will cause ${neo_char.name} to earn an extra life. Successive hits after that will cause the score reward to loop, so ${neo_char.name} will earn a second extra life after a total of 16 consecutive stomps. Characters other than Qua Mario can't earn points, but if they can somehow take ownership of an attack that follows the standard point progression (such as by reflecting a Koopa Shell), they can still earn extra lives from it - so be very wary not to let that happen.`);
// initWords(`Another detail of note is that only Qua Mario and Shovel Knight are capable of collecting coins. Every coin is worth 300 gems for Shovel Knight.`);
//^ not implemented yet...
initWords(`Points can be earned in the following ways:`);
initWords_ext(`Stomping on enemies, projectiles, or objects: Standard progression. Resets upon touching the ground. Shares consecutive hits with spin-jumps and ground-pounds.`, fa_left, c_orange, 1, false);
initWords_ext(`Spin-jumping on enemies or objects: Standard progression. Resets upon touching the ground. Shares consecutive hits with stomps and ground-pounds.`, fa_left, c_orange, 1, false);
initWords_ext(`Ground-Pounding on enemies, projectiles, or objects: Standard progression. Resets upon touching the ground. Shares consecutive hits with stomps and spin-jumps.`, fa_left, c_orange, 1, false);
initWords_ext(`Hitting something with a Fire Flower: +100`, fa_left, c_orange, 1, false);
initWords_ext(`Hitting something with an Ice Flower: +200`, fa_left, c_orange, 1, false);
initWords_ext(`Hitting something with a Tail Attack: +400`, fa_left, c_orange, 1, false);
initWords_ext(`Hitting something with a thrown Koopa Shell: Standard progression. Resets upon stopping the shell.`, fa_left, c_orange, 1, false);
initWords_ext(`Hitting something with a Shell Dash: Standard progression. Resets upon exiting the shell, stopping the shell, or holding Spin to turn around.`, fa_left, c_orange, 1, false);
initWords_ext(`Collecting a coin: +10`, fa_left, c_orange, 1, false);

initTip("Power-ups Rules");
initWords(`Power-ups are the bread and butter of any Super Mario game, and so they also provide the very foundation of ${neo_char.name}'s gameplay. ${neo_char.prnns.They} can only have one power-up active at any given moment, and taking damage will cause ${neo_char.prnns.them} to revert a form. Most power-ups revert to Super form, however Super form reverts to Depowered form. Getting hit by an attack that would cause ${neo_char.name} to revert while in Small form results in immediate death, regardless of ${neo_char.prnns.their} damage percentage.
New power-ups can only be acquired by getting KO'd, so the importance of evading enemy attacks cannot be overstated.`);
initWords(`Attacks that cause no knockback won't cause ${neo_char.name} to revert a stage, nor will attacks that deal 0% damage.`);
initWords(`When ${neo_char.name} reverts, ${neo_char.prnns.theyll} be helpless until ${neo_char.prnns.they} ${neo_char.prnns.plurconj?"touch":"touches"} the ground again, at which point ${neo_char.prnns.theyll} receive invulnerability frames. While helpless, additional attacks won't cause ${neo_char.name} to revert further or die, but percentage damage will still accumulate. Getting launched too hard can KO ${neo_char.prnns.them} no matter what ${neo_char.prnns.their} power-up state, so combo DI and survival DI remain essential skills carried over from normal Rivals gameplay.`);
initWords(`Other players can take ${neo_char.name}'s power-up if ${neo_char.prnns.they} ${neo_char.prnns.plurconj?"don't":"doesn't"} collect it in time. If said player is also playing as Qua Mario, they'll receive the power-up form. If they're playing as a different character, though, they'll recover health instead. Most power-ups will heal an enemy by 12%. The Super Mushroom heals for less, the Tanooki Leaf heals a variable amount depending on whether the fighter has a tail, and the Blue Koopa Shell can't be stolen at all (except for by other Qua Mario players). One important consideration is that the amount of health recovered is quadrupled if the player collecting the power-up is a teammate. 48% damage recovery is nothing to scoff at, so it's up to ${neo_char.name} and ${neo_char.prnns.their} teammate to decide which player needs the power-up more. When another Qua Mario takes the power-up, it doesn't matter at all whether they're a friend or a foe.
Power-ups can't be interacted with at all by other players until they've begun falling, so if ${neo_char.name} can reach the top of the screen during the intial "Offer" phase, there's no risk. Even teammates can't interact with the power-up during this time!`);

initTip("Reserve");
initWords(`Every time ${neo_char.name} respawns, ${neo_char.prnns.theyre} given a Fire Flower and allowed to pick one extra power-up from the Roulette Platform. The power-up ${neo_char.prnns.they} ${neo_char.prnns.plurconj?"select":"selects"} from the block is sent to Reserve.`);
initWords(`An item stored in Reserve can be accessed at any time by pressing Attack and Special at the same time. The timing for the input isn't strict; just holding one of the buttons and then pressing the other is sufficient.`);
initWords(`Normally, an item pulled from Reserve will appear at the top of the screen, then fall down after a few moments. While the item is at the top of the screen, only the player who summoned it can interact with it, but once it starts falling, it's fair game for any player.`);
initWords(`However, if ${neo_char.name} has a power-up in Reserve that has the same number of hitpoints as the currently equipped power-up, inputting Reserve will instantly swap the powers out. This technique is called Quick Reserve, and it allows ${neo_char.name} to employ greater strategy in how ${neo_char.prnns.they} ${neo_char.prnns.plurconj?"use":"uses"} ${neo_char.prnns.their} power-ups. After accessing Quick Reserve, it's inaccessible for a few frames.`);
initWords(`Getting attacked during the transition will end the animation early without causing ${neo_char.name} to lose their power. A well-timed Instant Reserve can take advantage of this mechanic to tank a hit that would have otherwise costed ${neo_char.name} ${neo_char.prnns.their} power-up. However, the percent damage taken is multiplied by 1.6, so this strategy shouldn't be abused.`);

initTip("List of Power-ups");
initWords_ext(`1. Fire Flower: The Fire Flower is a simple but effective power-up that excels in racking up safe damage and earning coins. The moment one fireball hits, ${neo_char.name} can throw another.`, fa_left, c_white, 1, false);
initWords_ext(`2. Ice Flower: The Ice Flower can freeze opponents as well as projectiles in solid blocks of ice. Players will escape the ice after a few moments, but shattering it with an attack first doubles the damage of the attack and also increases its knockback.`, fa_left, c_white, 1, false);
initWords_ext(`3. Tanooki Leaf: The Tanooki Leaf offers ${neo_char.name} a wide variety of abilities. The tail attack is a close-range melee attack, tail-stalling allows ${neo_char.name} to slow ${neo_char.prnns.their} descent, and P-flight offers the aerial freedom ${neo_char.name} typically lacks.`, fa_left, c_white, 1, false);
initWords_ext(`4. Blue Shell: The Blue Koopa Shell is a very tricky but versatile power-up that provides a mix of offense, defense, and mobility, but makes ${neo_char.name} harder to control. Hiding inside the shell prevents ${neo_char.prnns.them} from losing the Shell, but doesn't prevent damage or knockback.`, fa_left, c_white, 1, false);
initWords_ext(`Knowing the uses of each power-up and being willing to apply their unique attributes in battle can enable ${neo_char.name} to account for any situation, so dedicating careful attention to all four powers is recommended.`, fa_left, c_white, 1, false);

initTip("The Fire Flower");
initWords(`The Fire Flower originates from Super Mario Bros. on the NES, making it one of Mario's earliest power-ups. True to its legacy, the Fire Flower is also the power up that Qua ${neo_char.name} will be using most often. ${neo_char.name} starts the beginning of the match and every successive stock in Fire ${neo_char.name} form. This form excels in racking up safe damage and earning coins, but offers no enhanced mobility or kill power.`);
initWords(`Fire ${neo_char.name} can throw fireballs two-at-a-time by pressing the Run button. There's a short delay before ${neo_char.prnns.they} can throw another two, but this delay is cancelled if the fireballs are destroyed by hitting an enemy or a wall. However, skipping this delay causes the fireballs to come out significantly weaker, dealing only 1% damage and having reduced hitpause. This makes it impossible to stunlock opponents with fireballs.`);
initWords(`When a fireball is parried, it becomes much faster, does more damage and knockback, and becomes transcendent. This doesn't apply if it's reflected by anything besides a parry, though - for example, Ori's bash, or a Tanooki form tail attack.`);
initWords(`The Fire Flower works underwater, but the magical water of Orcane's puddles causes fireballs to extinguish. Proper spacing is necessary to bounce a fireball over a puddle.`);

initTip("The Ice Flower");
initWords(`The Ice Flower was first seen in Super Mario Galaxy, but the form used in Qua Mario is from New Super Mario Bros. Wii. Fun fact: this was the first console game that Qua Mario's developer (that's me) ever played! The Ice Flower can be seen as a more complex but dynamic alternative to the Fire Flower.`);
initWords(`Much like in Fire form, Ice ${neo_char.name} can throw iceballs two-at-a-time with the Run button. Both the delay between shots and the delay between volleys is noticeably higher than the Fire Flower's, and it can't be skipped by hitting walls or opponents like the Fire Flower's shots. Iceballs themselves also deal no damage and can only bounce once, in a high arc, before melting on the floor.`);
initWords(`The Ice Flower can freeze enemy players as well as most projectiles in a solid block of ice. Frozen players will escape on their own after a moment, or they can escape early by using Upspecial.`);
initWords(`An object that's been encased in ice can be Lifted overhead. Especially small ice blocks can also be Grabbed, allowing ${neo_char.name} to duck while carrying them or kick them upwards.`);
initWords(`Shattering an ice block will cause it to eject three coins. If it was shattered by an attack, the coins it ejects will belong to the player who attacked it; if that player isn't capable of collecting coins none will appear. However, ground-pounding a frozen block causes it to release no coins.`);
initWords(`When a frozen player is shattered by an attack, the frozen player will take 2x damage, the base knockback will be multiplied by 1.25, and the knockback scale will be increased by 0.1.`);
initWords(`Freezing an object in midair causes it to stay in place for a moment before it begins to fall. During this time, it's possible to jump into it from below to shatter it with the Ceiling Bump attack. It can also be stood on or wall-jumped from during that time.`);
initWords(`Be warned: Ice blocks, even when they're just sitting around, can be Bashed by Ori. When Ori Bashes an ice block, the hitbox belongs to them. If it somehow hits eight objects before shattering, Ori can earn an extra life like this!`);

var tanLeafWord = (neo_char.use_alts)?"Kitsune":"Tanooki";
initTip("The Tanooki Leaf");
initWords(`Qua Mario's Tanooki Leaf is a fusion of the Super Leaf from Super Mario Bros. 3, the Tanooki Suit from the same game, and the Super Leaf from Super Mario 3D Land. Like in 3D Land, the power-up grants the full ${neo_char.use_alts?"Kitsune":"Tanooki"} ${neo_char.name} form, rather than the ${neo_char.use_alts?"Fox":"Raccoon"} form like it did in SMB3. However, unlike in 3D Land, it offers the full suite of powers from the Tanooki Suit in its first appearance. This makes the Tanooki Leaf a contender for ${neo_char.name}'s most versatile power-up, and certainly ${neo_char.prnns.their} most varied.`);
initWords(`The Tanooki Leaf is also special in that some characters get a special form from it. While Mario becomes Tanooki Mario upon collecting it, Luigi becomes Kitsune Luigi. They're functionally identical, but have different appearances and names. Bucken-Berry, Toadette, Toad, and Mailtoad also use the Tanooki form, while Ala-Gold and Banktoad use Kitsune forms.`);
initWords(`${tanLeafWord} ${neo_char.name} can perform a Tail Attack by pressing the Run button. Tail Attacks have decent range and damage, and can combo into more Tail Attacks at low damage percentages. Additionally, the Tail Attack reflects enemy projectiles.`);
initWords(`Holding the Jump button while falling performs a Tail Stall, causing ${neo_char.name} to descend at a slow, constant speed with improved aerial control. ${neo_char.name} won't Tail Stall if ${neo_char.prnns.theyre} too close to the floor when the button is pressed, to make buffering Double Jumps and Triple Jumps easier. It should be noted, though, that Tail Stalling at any point during a jump prevents ${tanLeafWord} ${neo_char.name} from performing either of these moves upon landing. Notably, Tail Stalling can be used while Spin Jumping or Long Jumping to transition to the normal aerial state, which isn't ordinarily possible.`);
initWords(`While in ${tanLeafWord} form, ${neo_char.name} also receives the P Meter. While grounded, the P Meter fills to match how fast ${neo_char.name} is moving relative to ${neo_char.prnns.their} top speed. In midair, the P Meter disappears. The P Meter can be filled by running at top speed or by performing a Triple Jump, which will cause it to start flashing. If ${neo_char.name} leaves the ground while the P Meter is flashing, it will remain visible and slowly drain down to 0, at which point it will stop flashing. For as long as the P Meter continues flashing, holding Jump will cause ${neo_char.name} to fly instead of Tail Stalling. P Speed drains faster while flying, is reset to 0 upon sliding down a wall, and doesn't drain at all while Ground Pounding. With the extreme hitstun and downwards knockback of Stomp, this gives ${tanLeafWord} ${neo_char.name} an incredibly menacing edgeguarding game that is normally to risky to be useable.`);
initWords(`A useful property of P Speed is that it's still calculated even when not in Tanooki Form. If ${neo_char.name} becomes airborne with high speed and then transforms to ${tanLeafWord} ${neo_char.name}, ${neo_char.prnns.theyll} be able to fly. This is particularly valuable in combination with Instant Reserve - ${neo_char.name} can Triple Jump offstage in Fire Flower form to try and land a stomp on an unsuspecting enemy, and use Instant Reserve to transform to ${tanLeafWord} ${neo_char.name} and fly back safely if ${neo_char.prnns.they} ${neo_char.prnns.plurconj?"miss":"misses"}`);
initWords(`Holding down on the control stick and pressing the Run button causes ${tanLeafWord} ${neo_char.name} to transform into Statue ${neo_char.name}. In Statue form, ${neo_char.prnns.they} resist all damage and knockback. However, the form only activates after 3 frames, and can only be maintained for a brief moment before transforming back into ${tanLeafWord} form. It can be ended early by releasing the Run button. ${neo_char.name} is vulnerable for a few frames after detransforming, but this vulnerability period is skipped if ${neo_char.prnns.they} ${neo_char.prnns.plurconj?"were":"was"} attacked at any point during the transformation. Statue Form can be ended earlier on the ground than in the air, however the maximum transformation time remains the same. Additionally, when in midair Statue ${neo_char.name} will fall downwards at high speed, moving directly through platforms with a powerful hitbox similar to a Ground Pound. However, unlike a Ground Pound, using Statue Form in midair instantly reduces P Speed to 0.`);
initWords(`Statue Form can be used as a pseudo-parry, as getting hit by an attack allows ${neo_char.name} to instantly return to normal form and perform a Tail Attack while the opponent is still in endlag. However, a patient opponent can simply not attack until ${neo_char.name} is forced to detransform, at which point ${neo_char.prnns.theyll} be defenseless.`);
initWords(`The last interesting detail about the Tanooki Leaf is that, when another player that isn't Qua Mario takes it, the amount of health they receive depends on whether that fighter has a tail. Fighters with tails will recover 16% damage, while fighters who have no tails will recover only 10%.`);

initTip("The Blue Shell");
initWords(`Blue Koopa Troopa shells have been seen as early as in Super Mario World, but they were introduced as a useable power-up in New Super Mario Bros. for the Nintendo DS. The Blue Shell offers a unique mix of offensive and defensive power, but can be tricky to control. Unlike in New Super Mario Bros., though, the Blue Shell power-up can be used as a normal Koopa Troopa Shell in addition to being equipped as a power-up. To transform to Shell ${neo_char.name}, ${neo_char.name} must crouch while holding the Blue Shell, similarly to how Shellmets are equipped in Super Mario Maker. Because it's impossible to crouch while holding items in an overhead Lift, this can only be done by Grabbing the shell. Because it's applied indirectly in this way, the Blue Shell can't be equipped using Instant Reserve, however Shell ${neo_char.name} can still use Instant Reserve to swap out of Shell form to use a different power-up (usually this will be a Fire Flower). As another consequence of this, the Blue Shell is the only power-up which can't be intercepted by other players to heal. However, it can still be stolen and equipped by another Qua Mario player, or attacked to bat it away. If it gets hit by a strong enough attack, it will react as if it was kicked or thrown by turning into a hitbox!`);
initWords(`Shell ${neo_char.name} has no specific action bound to the run-button, and instead enters ${neo_char.prnns.their} shell in certain situations. While inside ${neo_char.prnns.their} shell, ${neo_char.name} won't revert to Super ${neo_char.name} upon taking damage, however ${neo_char.prnns.they} still ${neo_char.prnns.plurconj?"receive":"receives"} knockback and percent damage. Additionally, upon tanking a hit using the shell, ${neo_char.name} will be unable to exit the shell for the same amount of time a normal character would be in hitstun from the same attack.`);
initWords(`When running at top speed, Shell ${neo_char.name} will enter ${neo_char.prnns.their} shell and slide along the ground, retaining the ability to jump. This move is called the Shell Dash, and has similar properties to a thrown or kicked Koopa Shell, including the ability to chain several consecutive hits together for an extra life. While Shell Dashing, ${neo_char.name} can hold the Spin button while grounded to turn around and start sliding the other way without exiting the shell - a technique copied from the Koopalings. However, turning around in this way resets the number of consecutive hits, so sliding back and forth along the stage won't allow Shell ${neo_char.name} to earn an extra life. However, the combo won't be reset when bouncing off a wall. ${neo_char.prnns.they} can exit the shell at any point by releasing the run button or holding backwards on the control stick, so long as the control stick isn't being tilted down. Shell ${neo_char.name} can be forced into a Shell Dash if launched while inside the shell. When this occurs, the Shell Dash hitbox will earn coins, points, and potentially lives for whichever player launched ${neo_char.name}. The ownership will be reset back to ${neo_char.name} if ${neo_char.prnns.they} exit the shell, or hold Spin to turn around; however both of these will reset the combo. Other players can also take ownership of the combo by parrying Shell ${neo_char.name}, which will cause them to earn coins and points instead.`);
initWords(`Shell ${neo_char.name} will also enter ${neo_char.prnns.their} shell when crouching. However, ${neo_char.prnns.they} ${neo_char.prnns.plurconj?"have":"has"} no aerial acceleration while in the shell, and ${neo_char.prnns.they} also cannot begin rolling.`);
initWords(`The Blue Shell also slightly modifies the way Ground-Pounds work. Shell ${neo_char.name} hides inside ${neo_char.prnns.their} shell during the entire attack, making the move overall safer. Additionally, upon landing, rather than entering the Ground Pound's endlag, ${neo_char.name} transitions directly into the crouching state and is unable to exit the shell for the same duration as the endlag would normally take. As a result, ${neo_char.name} can jump during the endlag of a Ground Pound, but cannot Pound-Roll.`);
initWords(`Additionally, Shell ${neo_char.name} enters ${neo_char.prnns.their} shell when performing the input for a Midair Roll, rather than actually rolling. The more powerful midair roll after a Wall Jump gives Shell ${neo_char.name} enough speed to begin a Shell Dash in midair.`);
initWords(`The last change made by the Shell form is to the Triple Jump. Upon performing a Triple Jump, Shell ${neo_char.name} will duck inside the shell as ${neo_char.prnns.they} ${neo_char.prnns.plurconj?"spin":"spins"} through the air, with a constant hitbox and all the defensive benefits of being inside the shell. This is the only situation where ${neo_char.name} is inside the shell while retaining full control over ${neo_char.prnns.their} aerial movement. The shell can be exited at any time during the jump by releasing the Run button. Upon landing from a Shell Triple Jump, ${neo_char.name} will transition to a Shell Dash if they have enough speed, or the normal shell crouch state if not.`);
initWords(`Because all three methods of initiating a roll are replaced, there is no way for Shell ${neo_char.name} to roll and therefore no way for ${neo_char.prnns.them} to Long Jump either. Additionally, entering the shell while carrying an object or a player will cause ${neo_char.prnns.them} to drop it. Despite these limitations, the Blue Shell form's ability to protect ${neo_char.name} from attacks while moving and attacking gives it a place in ${neo_char.prnns.their} toolkit.`);
initWords(`The Shell form has some interesting quirks in a Qua Mario ditto. First, when hiding in the shell without an active hitbox, Shell ${neo_char.name} is immune to the standard Stomp attack. In this state, ${neo_char.prnns.they} can be grabbed by other Qua Mario players just like an unoccupied Koopa Shell. If ${neo_char.name} exits the shell while being held in a Grab, the other player will be forced to drop ${neo_char.prnns.them}. Shell ${neo_char.name} can also freely enter and exit the shell while being carried in a Lift.`);

initTip("The Super Mushroom");
initWords(`The Super Mushroom, first seen in Super Mario Bros., is the reserved power-up at the start of every match. It's also available from the Roulette Block, but selecting it is never a good idea - the Fire Flower, Ice Flower, Tanooki Leaf, and Blue Shell are all wiser choices due to their greater number of hitpoints and additional abilities.`);
initWords(`Upon being drawn from Reserve, the Super Mushroom drops down on-stage and begins sliding to the right. It will bounce off of any solid walls it encounters.`);
initWords(`The last detail of note about the Super Mushroom is that, when stolen by a player who isn't Qua Mario, it only heals 8% damage instead of the usual 12%.`);

initTip("The Bowser Slot");
initWords(`The Bowser Slot is the last entry on the Roulette Block and should never be selected. Upon picking the Bowser Slot, the Reserve is completely emptied. There's no benefit to picking it, unless you want to sandbag.`);

initTip("Slippery Floors");
initWords(`Some surfaces will cause ${neo_char.name} to have a harder time moving around. Icey surfaces, such as stage terrain frozen by Etalus and the tops of things frozen by the Ice Flower, are very slippery and make it hard to accelerate or come to a stop. Jumping off of an icey surface will cause ${neo_char.name} to do an elegant pirouette jump, which makes it impossible to Triple Jump off of such surfaces.`);
initWords(`Orcane's puddles are also slippery, but to a lesser extent - they'll only affect ${neo_char.name}'s movement when skidding to a stop. This can still make performing a Sideflip harder, though.`);
initWords(`Sylvanos's grass, however, is the opposite of slippery - when standing on it, ${neo_char.name}'s traction is improved dramatically. This doesn't affect ${neo_char.name}'s top speed, but it does give ${neo_char.prnns.them} better control over ${neo_char.prnns.their} grounded movement. Because ${neo_char.name} will skid to a stop faster, this will give ${neo_char.prnns.them} quicker access to the Sideflip as well; however the timing for the input becomes more strict. Don't let the different timing throw you off!`);
initWords(`The floor and platforms on some stages will play different sound effects and make different particle effects when ${neo_char.name} moves, but don't be fooled - this change is only cosmetic.`);

initTip("Spinning Wall Kicks");
initWords(`Spin Jumps and Wall Jumps go together surprisingly well. When sliding down a wall, ${neo_char.name} can press Spin instead of Jump to perform a Spinning Wall Kick instead of a normal Wall Jump. One useful trait of Spinning Wall Kicks is that they don't affect ${neo_char.name}'s aerial drift at all, allowing ${neo_char.prnns.them} to return to the wall again afterwards without losing much height.`);
initWords(`Another unique type of Wall Jump is the High Velocity Wall Kick. While a normal Wall Jump is performed out of the "Wall Slide" state, while ${neo_char.name} is slowly sliding down a wall, the High Velocity Wall Kick is performed by pressing the Jump button while falling past a wall in the Spin Jump state. It's important to note that there's no such thing as a High Velocity Spinning Wall Kick; pressing the Spin button while falling past a wall in the Spin Jump state doesn't do anything. High Velocity Wall Kicks are functionally identical to a normal Wall Kick, but they give ${neo_char.name} much more momentum upwards and away from the wall.`);
initWords(`The Spinning Wall Kick can easily be followed up with a High Velocity Wall Kick simply by performing the Spinning Wall Kick, drifting back towards the wall, and pressing Jump. Combining the two moves allows ${neo_char.name} to perform a High Velocity Wall Kick in any situation where ${neo_char.prnns.they} could perform a normal Wall Jump. To avoid losing too much height in between the moves, it's important to hold the Spin button (to get maximum height from the Spinning Wall Kick) and the Run button (to return to the wall as quickly as possible). The increased momentum away from the wall means that High Velocity Wall Kicks aren't too much better than a normal Wall Jump for the purpose of recovering, but it makes for a decent mixup and can be very useful in Adventure Mode stages.`);

initTip(`${neo_char.name}'s Lore`);
switch(neo_char.name) {
	case "Mario":
		initWords("Mario is the hero of the Mushroom Kingdom. He's cheerful, optimistic, and always willing to help, although he can be impulsive and sometimes a little hot-headed. Mario's kindness and courage have lead him on countless adventures, making all kinds of friends (and enemies) across the world. His most common escapades involve rescuing Princess Peach from Bowser. Sure, she's definitely capable of escaping on her own most of the time, but... I think foiling kidnapping attempts are their love language? It's a weird relationship, but it's kinda cute.");
		initWords("In addition to his heroism, Mario's second defining trait is his incredible array of skills. Mario's done just about every job in the Mushroom Kingdom, and done it well. Does the guy ever relax?");
	break;
	case "Luigi":
		initWords("Luigi is Mario's brother. He's a bit less adventurous than Mario, likely due to how easily spooked he tends to be. Despite this, Luigi is often just as cheerful and kind as his brother, and can rise to any challenge when he really needs to. Most of Luigi's adventures involve tagging along with Mario on a quest to defeat Bowser, but he's also had his fair share of one-man quests, often instigated by King Boo. What's that guy always bothering Luigi for, anyways?");
		initWords("Luigi and Mario have a pretty strong sibling rivalry, but they're very close and supportive of each other at the end of the day. The bond between Mario and Luigi is so strong that, as infants, Mario could sense Luigi's location and lead the Yoshis all the way across an island to reach him. The connection probably went both ways, which would've been very useful to Kamek if his minions had thought to use that to track down Baby Mario. Fortunately, the Toadies are absolutely terrible with children and didn't figure that out.");
	break;
	case "Bucken-Berry":
		initWords("Bucken-Berry is a friend of Mario. Evidently, Mario saw the heroic potential in him even before his first real adventure - when Mario dreamed of an adventure in Subcon, Blue Toad was one of the three heroes that fought Wart by his side.");
		initWords("If you didn't know, Bucken-Berry is the nickname the developers of New Super Mario Bros. Wii gave to Blue Toad. Some real nerds out there might argue that the Toad who fought Wart in Mario's dream was actually the red Toad. But does that really look red to you? And besides - the same Toad from NSMB Wii shows up again in Super Mario Maker 2, where the SMB2 Mushroom transforms him into the exact same Toad from Mario's dream. It's the same guy!!");
	break;
	case "Toadette":
		initWords("Toadette is a mushroom girl. She's a girl who's a mushroom! Most Toads are agender and default to he/him (why would a species of fungi ever develop gender?), but some Toads do have genders, and Toadette is one of them. What a queen!");
		initWords("Toadette's defining traits are her curiousity and intelligence. Princess Peach chose her to direct the construction of a new castle for her, and created gigantic Papercrafts to help Mario, Luigi, and Paper Mario to defeat the ones crafted by Paper Kamek's magic. Toadette also has a gift for numbers, working briefly as an archivist. Recently, Toadette's joined Mario and Captain Toad on their adventures.");
		// initWords("");
	break;
	case "Ala-Gold":
		initWords("Ala-Gold is a friend of Princess Peach - they were among her four closest friends invited to attend her birthday party. This party also marked their first adventure alongside the Mario bros when Bowser had Junior and the Koopalings hide inside a giant cake to kidnap her. Ala-Gold, like Bucken-Berry, is a nickname given by the developers to Yellow Toad.");
		initWords("Prior to this, they met the bros during an adventure through the galaxy, as one of the members of the Toad Brigade. Something about hanging out with the Captain seems to make them awfully lethargic, though.");
	break;
	case "Toad":
		initWords(`Now hold on, I know what you're thinking. "That's not THE Toad! Toad has a red cap and a blue vest!" Sure, I'll admit you're right about that. But you should be quiet anyways. Toad is wearing a red vest right now because I asked him to very nicely, because with the way Rivals' character alts work I'd have to spend 600 years recolouring sprites if I wanted to make his cap and vest different colours. Let me have this.`);
		initWords("Anyways... Toad has done a whole lot. But is he the same guy as the Captain?");
	break;
	case "Banktoad":
		initWords(`Banktoad is a member of the Toad Brigade who helped Mario and Luigi during their intergalactic quests through space. Banktoad, in addition to helping the Brigade, also aided Mario and Luigi directly by storing Star Bits for them. He used to have a spear and a shield at one point in his career. You'd think that's a bit much, but they say that Star Bits taste really great - he probably just needed to look a little menacing to keep the Lumas out of Mario's bank account. I wonder if it worked?`);
	break;
	case "Mailtoad":
		initWords("Mailtoad is one of the members of the Toad Brigade. Mailtoad aided Mario by slipping past Bowser's defenses to collect letters from Princess Peach - and sometimes helping out Luigi when he got stuck in a tree or something, poor guy. Mailtoad doesn't seem to be much of a go-getter himself, though - he couldn't do much for Peach (or Luigi) himself even when he was in a position to collect letters from them. At least he does what he can.");
	break;
}

// initTip("The Tanooki Leaf");
// initWords(`Qua Mario's Tanooki Leaf is a fusion of its appearances in Super Mario Bros. 3 and Super Mario 3D Land. The aesthetics of the suit are primarily based on 3D Land, in which collecting the leaf power-up grants Mario the full Tanooki Suit; however the abilities are more inspired by Super Mario Bros. 3, where the Tanooki Suit has more powers. As a result, the Tanooki Suit in Qua Mario is a highly versatile and dynamic power-up.`);
// initWords(`Pressing the Run button at any time will cause ${neo_char.name} to perform a Tail Attack. Tail attacks can combo into themselves at low percents,`);












// initTip("NSpecial: Kamehameha");
// initWords("This Sandbert's NSpecial is completely different from the normal version of the character: it's Goku's Kamehameha!");
// initWords("The longer it's charged, the more distance it travels. The more distance it has left to travel by the time it reaches the enemy, the more damage and knockback it deals.");
// initWords("If two Kamehamehas clash, you'll get into a beam struggle! Mash B to overpower your opponent.");
// initImage_ext(sprite_get("nspecial"), -4, fa_right, -1, 1, true, c_white, 1, true, noone, noone, noone, noone);
// initImage_ext(sprite_get("nspecial"), -4, fa_left, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

// initTip("FSpecial: Sandbert Delusion");
// initWords("Just like vanilla Sandbert, you can shorten the FSpecial by pressing B at the correct moment.");
// initWords("It's handy as a mixup when recovering!");
// initImage_ext(sprite_get("fspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

// initTip("USpecial: Forbidden Flight");
// initWords("USpecial is significantly toned down from regular Sandbert: its flight has a set, short duration, and you're forced to end with the big hit.");
// initWords("On the bright side, you can now cancel the move into a wall jump! Also, its finishing hit is just as strong as before.");
// initImage_ext(sprite_get("uspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

// initTip("DSpecial: Hexagon of Power");
// initWords("Sandbert's DSpecial can be canceled into a jump, but only if you successfully hit an opponent.");
// initWords("It's useful for combos, but maybe not as punish-safe as you'd expect based on its appearance.");
// initImage_ext(sprite_get("dspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

// initTip("FStrong: Burning Dropkick");
// initWords("During the charge of FStrong, Sandbert slides as if on ice. Get a running start to ambush a foe!");
// initImage_ext(sprite_get("fstrong"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
	
// initTip("Sandbert's Lore");
// initWords_ext("Chapter 1", fa_center, c_gray, 0, false);
// initWords("Sandbert, a son of the ruling family of the Firelands, is an experienced and hardened warrior. He has fought many wars for the Fire Capital, a bellicose nation that constantly seeks to expand its influence over neighbouring lands. His courage in battle has made him a hero among his people.");
// initWords("However, his straightforward character and unquestioning allegiance to the Fire Nation blind him at times. He is a reliable general on the field, but naive to the larger politics of Aether. In battle, Sandbert is equally forthright; he uses no weapons except for his razor-sharp claws and ability to control flame.");
// initWords_ext("Chapter 2", fa_center, c_gray, 0, false);
// initWords("When he first arrived in Water Town, the merchant capital of Aether, Sandbert was considered a dangerous nuisance and a criminal. Sandbert is a playful trickster, notorious for escaping even the most precarious of situations.");
// initWords("However, while the Water Merchants denounce Sandbert in public, they do not hesitate to call upon him when they need a situation dealt with quietly. Sandbert is sly and can infiltrate even the most secure strongholds. He can transform into water and confuse enemies with a spray of bubbles, making him the perfect candidate for stealth assignments.");
// initWords_ext("Chapter 3", fa_center, c_gray, 0, false);
// initWords("The youngest trainee in the history of the Air Academy, Sandbert has never lived by anyone's rules but his own. After graduating at the top of his class, he joined the Air Armada, the military force of Air Nation.");
// initWords("Within a year, Sandbert became renowned not just in Air Nation but across Aether as a fierce and unpredictable figher. However, among his superiors, he is more infamous for his brashness and arrogance than for his daring deeds. Currently an Aerial Ace for the Air Armada, Sandbert is wrecking havoc among the Armada's enemies and generals alike.");
// initWords_ext("Chapter 4", fa_center, c_gray, 0, false);
// initWords("Sandbert is a defender of the colossal Aetherian Forest. Deliberate and loyal, he is one of the infamous Wall Runners who patrol the Rock Wall. From their position atop the Wall, Sandbert and his fellow Runners defend both sides of the rock face and the forest below.");
// initWords("While normally slow because of their massive bodies, Wall Runners can curl up into balls and traverse the Wall at high speeds. Unlike other Wall Runners, Sandbert has the legendary ability to control the earth with his will. When in peril, Sandbert can summon the earth to aid him, and he repairs the Wall when it is under siege.");



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

// initPatch("1.1", "20 September, 2021");
// initHeader("DStrong - Adjustments, Bugfixes");
// initSection("Angle 290 --> 280.
// Fixed hurtbox.");

initPatch("2.0 (Initial Release)", "?? October, 2021");
initWords("Uploaded the character after TEN MONTHS GOOD GOD finally");

initPatch("Sprite Credits", "");
initWords("The character animations and power-up sprites were made by the incredibly talented folks behind the Super Mario World Super Sheet Collab. Those people are what made almost every improvement from Neo Mario to Qua Mario possible.");
initWords("Big thanks to these people:");
initWords_ext("GlacialSiren484", fa_left, $e15330, 1, false);
initWords_ext("AwesomeZack", fa_left, $0000f8, 1, false);
initWords_ext("MauricioN64", fa_left, $f49d0b, 1, false);
initWords_ext("SubPixuru (aka TheMushrunt)", fa_left, $b464ff, 1, false);
initWords_ext("Jamestendo64", fa_left, c_white, 1, false);
initWords_ext("LinkStormZ", fa_left, c_white, 1, false);

initPatch("About Qua Mario", "");
initWords("Qua Mario is the sequel character to Neo Mario, who was a spiritual successor to SMB1 Mario.");
initWords("Neo Mario built upon SMB1 Mario by adding wall jumps, spin jumps, midair twirls, and the ability to lift+throw enemy players.");
initWords("Qua Mario makes further improvements by introducing additional power-ups, along with moves from the 3D games such as Triple Jumps and Long Jumps.");
initHeader("SMB1 Mario was developed by:");
initSection("Turretbot");
initHeader("Neo Mario and Qua Mario were created by:");
initWords_ext("floral Qua Floral", fa_left, $ee9bff, 1, false);
initHeader("SFX from:");
initSection("New Super Mario Bros Wii");
initSection("Super Mario Maker");
initSection("Super Mario Maker 2");
initHeader("Compatibility");
initSection("Steve by Muno (custom death messages)");

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

// CHEAT_FLY		= initCheat("Fly", [0, 1], ["Off", "On"], "Take flight. So balanced

// (hold shield to not fly)");

CHEAT_POWER_STATE			= initCheat("Power-up Override", [POWER_OBJ.depowered, POWER_OBJ.super_mushroom, POWER_OBJ.fire_flower, POWER_OBJ.ice_flower, POWER_OBJ.tanooki_leaf, POWER_OBJ.blue_shell], ["Depowered", `Super ${neo_char.name}`,  `Fire ${neo_char.name}`,  `Ice ${neo_char.name}`,  `${neo_char.use_alts?"Kitsune":"Tanooki"} ${neo_char.name}`,  `Shell ${neo_char.name}`], "Instantly swaps out the current power-up state");
CHEAT_RESERVE_CONTENTS		= initCheat("Reserve Override", [RESERVE_OBJ.empty, RESERVE_OBJ.super_mushroom, RESERVE_OBJ.fire_flower, RESERVE_OBJ.ice_flower, RESERVE_OBJ.tanooki_leaf, RESERVE_OBJ.blue_shell, RESERVE_OBJ.red_koopa_shell, RESERVE_OBJ.green_koopa_shell], ["Empty", "Super Mushroom", "Fire Flower", "Ice Flower", "Tanooki Leaf", "Blue Koopa Shell", "Red Koopa Shell", "Green Koopa Shell"], "Instantly swaps out the currently held Reserve item");
CHEAT_INFINITE_RESERVE		= initCheat("Bottomless Reserve", [false, true], ["Disabled", "Enabled"], "Prevents the Reserve Slot from becoming empty when used.");
CHEAT_SUPPRESS_POWERCHANGE	= initCheat("Suppress Transitions", [false, true], ["Disabled", "Enabled"], `Prevents ${neo_char.name} from changing state after collecting a power-up or taking damage`);
CHEAT_CHANGE_CHAR			= initCheat("Change Character", [CHAR_OBJ.mario, CHAR_OBJ.luigi, (neo_char.use_alts?CHAR_OBJ.yellow_toad:CHAR_OBJ.blue_toad), CHAR_OBJ.toadette], ["Mario", "Luigi", "Toads", "Toadette"], `Swaps out your character for another one. This won't correctly update text such as MunoPhone tips. Changing between different Toads isn't possible, so the Toad you get when you pick "Toads" the colour you'll get depends on what alt you selected on the CSS.`);

CHEAT_FIRESPAM				= initCheat("Fast Fireballs", [0, 1, 2, 3], ["Disabled", "Enabled", "Turbo", "Rapidfire"], `Allows ${neo_char.name} to throw fireballs and iceballs much faster. The third option allows ${neo_char.prnns.them} to throw 7 fireballs in quick succession with a single press of the Run button. The fourth option causes ${neo_char.name} to throw a fireball every frame that the Run button is held.`);
CHEAT_CARRY_ALL				= initCheat("Carry Anything", [0, 1, 2, 3], ["Disabled", "Enabled", "Enabled (except terrain)", "Enabled (player articles only)"], `Allows ${neo_char.name} to Grab and Lift any article or projectile. The third option allows ${neo_char.prnns.them} to Grab and Lift anything except for platforms/solids spawned by the stage. The fourth option allows ${neo_char.prnns.them} to Grab and Lift only articles spawned by players, with no projectiles or articles belonging to the stage. Note: Due to technical limitations there is no way to prevent ${neo_char.name} from grabbing projectiles spawned by the stage.`);
CHEAT_AIRLIFT				= initCheat("Aerial Lifts", [0, 1, 2], ["Disabled", "Enabled", "Enabled (instantaneous)"], `Allows ${neo_char.name} to lift items or players while grounded. The third option also skips the Lift Pickup state, making Lifting an object or player instantaneous.`);
CHEAT_ALWAYSONICE			= initCheat("Floor Type", [undefined, MOVESTATS_OBJ.ice, MOVESTATS_OBJ.puddle, MOVESTATS_OBJ.agent4_ink], ["Disabled", "Ice", "Puddle", "Agent 4 Ink"], `Makes ${neo_char.name} act as if ${neo_char.prnns.theyre} always on a certain type of floor. Agent 4 Ink is from an unreleased character that I haven't been able to finish because I can't make animations. If you can do pixel art character animations and wanna help me out, shoot me a Discord message at floralQuaFloral#0013, kay? :)`);
CHEAT_NOHUD					= initCheat("Remove Overheads", [false, true], ["Disabled", "Enabled"], "Hides the arrow and overhead indicator above fighters (used for trailer footage)");

CHEAT_KEYBOARD_CHEATS		= initCheat("Developer Keyboard Cheats", [false, true], ["Disabled", "Enabled"], `Allows the player to press V, B, N, or M on their keyboard to do things (this was used for debugging while creating the character)`);
CHEAT_QDEBUGGER				= initCheat("QDebugger (UNSTABLE)", [false, true], ["Disabled", "Enabled (Not recommended!)"], "Enables the QDebugger. Press F3 to open the Debug Board; use arrow keys and space bar to operate it. THIS IS DISABLED FOR A REASON! I'm not sure why, but this often causes the game to freeze up or crash upon deselecting the character on the CSS or pressing F5 in Practice Mode. I'm not supporting this, so don't expect it to work very well. (By the way - you can still use it in frame-by-frame mode, just FYI)");

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
phone.include_stats = false;

// Notes for the "Stats" page - put "-" for no notes.
phone.stats_notes = "-";

// Whether or not to include a custom data page, which can hold any values you
// want - useful for data that's specific to your character's mechanics.
phone.include_custom = false;

// The name of the custom page.
phone.custom_name = "Power-Up Stats";

// The content of the custom page.
initCFDHeader("Tanooki Suit: P Meter");
initCFDBody(`${neo_char.name} normally loses 0.5% of the P Meter per frame while airborne.`);
initCFDBody(`While flying upwards, this increases to 1.0% per frame.
While Ground-Pounding, this is reduced to 0.2% per frame.
All P-Speed is instantly lost upon sliding down a wall or turning into a statue.`);
initCFDHeader("");
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
// otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
// otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Qua Mario's death message wasn't applied correctly?!";

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

if(false) switch(neo_char.name) {
	case "Mario":
	initCodecPit();
		initCodecPagePit(SPK_PIT,	4,	1,	"Another Mario?! Who's behind all this? How many Marios have to die before the madness ends?!");
		initCodecPagePit(SPK_PALU,	4,	1,	"I guess that is pretty strange, now that you mention it. I'm certainly not the one behind it.");
		initCodecPagePit(SPK_VIR,	2,	4,	"Shouldn't you know? After all, he is one of your precious humans, isn't he?");
		initCodecPagePit(SPK_PIT,	9,	8,	"Wait... I've just been taking that for granted this whole time. Is he... Is he a Toad???");
		initCodecPagePit(SPK_PALU,	1,	2,	"Of course he's a human! I don't keep track of every human in existence, you know.");
		initCodecPagePit(SPK_PIT,	1,	5,	"Hold on, you sound like you're trying to hide something... If he's REALLY a human, why's he so short?");
		initCodecPagePit(SPK_PIT,	7,	6,	"And why's he so much smaller than Princess Peach? And why is his nose so big? And WHY DOESN'T HE TALK IN FULL SENTENCES-");
		initCodecPagePit(SPK_PALU,	1,	5,	"Calm down, Pit. The reason Mario doesn't look the same as the other humans from his world is because he's a different species.");
		initCodecPagePit(SPK_PALU,	0,	-1,	"There used to be multiple species of humans in our world too, such as the Neanderthals.");
		initCodecPagePit(SPK_PIT,	6,	7,	"So... So Mario is a Neanderthal...?");
		initCodecPagePit(SPK_VIR,	2,	2,	"Ugh! Why did I expect the human-lovers to understand the NATURAL process of evolution?");
		initCodecPagePit(SPK_VIR,	0,	4,	"Mario and his brother Luigi are both Mushroom Kingdom humans. They're short and stubby, with big noses and heads.");
		initCodecPagePit(SPK_VIR,	6,	-1,	"The other primary kind in his world are New Donk humans. They're taller and look more like the humans that live in our world.");
		initCodecPagePit(SPK_VIR,	4,	5,	"Princess Peach is a hybrid, which is why she's tall and has a small nose, despite looking nothing like an Earth human. Understand?");
		initCodecPagePit(SPK_PIT,	5,	4,	"This is hurting my head... Maybe we should just stick to battle strategies next time.");
		initCodecPagePit(SPK_PALU,	2,	5,	"Alright, Pit. I'll give you some real advice next fight - ask me about Luigi this time.");
	break;
	case "Luigi":
		initCodecPit();
		initCodecPagePit(SPK_PIT,	3,	0,	"Alright! I'm all ready for some Luigi-fighting advice!");
		initCodecPagePit(SPK_VIR,	1,	6,	"You really need advice to deal with this guy? Look at him! He's probably terrified of you. Try your best zombie groan!");
		initCodecPagePit(SPK_PALU,	1,	5,	"Come on, Viridi, that's not helpful. Everyone knows a ghostly wail is the way to go against Luigi.");
		initCodecPagePit(SPK_PIT,	9,	8,	"Uhm, I don't think I'm good at being scary... How about hitting him instead?");
		initCodecPagePit(SPK_PALU,	2,	3,	"That will certainly do the trick. In fact, if you can land a blow on him, Luigi will lose whatever power-up he has equipped.");
		initCodecPagePit(SPK_PALU,	0,	1,	"If you knock him all the way down to his smallest form and then nail him again, that's it for him, no matter his percent.");
		initCodecPagePit(SPK_PIT,	0,	1,	"");
	break;
	case "Bucken-Berry":
		
	break;
	case "Toadette":
		
	break;
	case "Ala-Gold":
		
	break;
	case "Toad":
		
	break;
	case "Banktoad":
		
	break;
	case "Mailtoad":
		
	break;
	default:
		
	break;
}

// initCodecPit();
// initCodecPagePit(SPK_PIT,	3,	0,	"Hey, it's Sandbert!");
// initCodecPagePit(SPK_PIT,	1,	6,	"...Isn't he a bit above my power level?");
// initCodecPagePit(SPK_PALU,	0,	3,	"Actually, this version of Sandbert has received a lot of nerfs to his damage and frame data.");
// initCodecPagePit(SPK_PALU,	0,	2,	"He can't even cancel his USpecial or end it early anymore!");
// initCodecPagePit(SPK_VIR,	5,	1,	"But yes, Pit, he IS still above your power level.");
// initCodecPagePit(SPK_PIT,	6,	0,	"Pssh, sounds like a pushover to me.");
// initCodecPagePit(SPK_PALU,	0,	4,	"Don't be so sure - despite the nerfs, his power and attack speed are still a force to be reckoned with.");
// initCodecPagePit(SPK_PALU,	0,	2,	"Also, he has the same MunoPhone as you do - so he'll be well-versed in his frame data and combos.");
// initCodecPagePit(SPK_VIR,	6,	4,	"Maybe you should turn on some Cheats for this fight, Pit?");
// initCodecPagePit(SPK_PALU,	0,	2,	"No, I'm sure he'll be fine.");
// initCodecPagePit(SPK_PALU,	2,	5,	"...As long as he avoids the Kamehameha.");
// initCodecPagePit(SPK_PIT,	4,	1,	"The WHAT?!?");



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