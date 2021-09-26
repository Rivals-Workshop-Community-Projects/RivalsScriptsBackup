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
use_alt_names = true;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
alt_ui_recolor = 0;

// The list of names for the alts, if enabled.
alt_names = [
	"Standard",
	"Green",
	"Cyan",
	"Blue",
	"Yellow",
	"Purple",
	"Fusion(includes fusion varia and fusion gravity)",
	"Latex",
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
muno_char_name = "Samus";

// Whether or not the phone sprite should recolor w/ your alt costume.
// (set to "true" if you make a custom phone sprite in your char's colors)
phone.uses_shader = false;

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

initTip("Samus general info");
initWords("Samus has really floaty jumps and relatively aveage movement speed.");
initWords("There are many tweaks I had to make in order to make her play and feel exactly like in Super Metroid.");
initWords("Samus cannot normally die (she will just respawn since there's no actual way I could implement a proper death).");
initWords("Remember to lower her hp to 0 if you want to take her down.")
initImage_ext(sprite_get("samus_idle_aim_forward_right"), 0, fa_right, -2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("samus_idle_aim_forward_left"), 0, fa_left, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Navigating the HUD");
initWords("It's important to understand how the HUD works.");
initWords("On the left you have the energy side, here it's shown how much energy, energy tanks and reserve tanks you have and the state of each.");
initWords("Near the energy you have the hit counter, every 10 hits you will level up and gain new power ups.");
initWords("On the far right there's the Chozo statue, it holds the next power-up you will obtain.");
initWords("The small icons on the right are the ammo selectables, each will appear once you unlock the respective weapon and it will turn green once you select it.");
initImage_ext(sprite_get("hud_big"), 0, fa_left, 0.7, 0.7, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Diagonal aiming");
initWords("Just like in Super Metroid, you can aim diagonally both up and down.");
initWords("It is toggled by holding down the shield button, this enables upwards diagonal aim, while if you hold down it will transition to downwards diagonal aim.");
initWords("This works both in air and while crouched.");
initWords("(I know Super Metroid uses 2 buttons for diagonal aiming but I had to work with what I had)")
initImage_ext(sprite_get("samus_idle_aim_diagonal_down_right"), 0, fa_right, -2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("samus_idle_aim_diagonal_up_left"), 0, fa_left, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Crouch and morph");
initWords("If you press down while on the ground you'll enter the crouched state, you can't move but you can still aim wherever you like and turn around.");
initWords("If you are in crouched state and press down again (if you have unlocked the morph ball that is) you'll transition into morph ball state, in this state you can move freely and jump if you have spring jump unlocked.");
initImage_ext(sprite_get("samus_idle_aim_forward_right"), 0, fa_left, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("samus_crouch_idle_aim_forward_right"), 0, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("samus_morph_ball_cycle_right"), 0, fa_right, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Normal attack 1: Beam attack");
initWords("When the attack button is pressed and none of the other kinds of ammo (except power bombs) is selected a beam attack will fire.");
initWords("It's appearance, damage, and properties change based on the unlocked power-ups (except for hyper beam, which changes only the properties of the charged version) (all the power ups and effects are listed below).");
initImage_ext(sprite_get("beam_attacks_1_shot_+"), 0, fa_center, 3, 3, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Normal attack 2: Charge shot");
initWords("When the attack button is held down a charging animation will play and once it's over you can release the button to fire a strong projectile.");
initWords("Like the normal beam it's properties will change with each beam upgrade you get.");
initImage_ext(sprite_get("beam_attacks_1_charge_shot_+"), -2, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Toggling ammo");
initWords("You can press the special button to switch ammo between missiles, super missiles, power bombs, grapple beam and Xray scope, you can also press the strong input to go directly to beam attacks.");
initWords("(the last 2 are not done yet because they involve concepts too hard for me to make)");
initImage_ext(sprite_get("hud_selectables_missiles"), 0, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("hud_selectables_super_missiles"), 0, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("hud_selectables_power_bombs"), 0, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initImage_ext(sprite_get("hud_selectables_grapple_beam"), 0, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("hud_selectables_Xray_scope"), 0, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
	
initTip("Energy and hp system");
initWords("Energy is basically health and each energy unit is equal to 1/2% of damage (so an attack that does 6% would deal 12 energy).");
initWords("there are 3 ways to replenish energy:")
initWords("1. Get energy tanks from leveling up")
initWords("Each tank adds 100 energy to the total and is a single use tool, it will automathically replenish your energy whenever it goes below 0.")
initWords("2. Use reserve tanks to replenish energy tanks")
initWords("Basically they are the tanks of the tanks, there's a maximum of 4 and you get one every 4 levels, once you finish all your tanks, if you have at least 1 full reserve tank, you'll get 1 tank back at the cost of the reserve tank")
initWords("3. Perform a crystal flash")
initWords("I will explain this later in the advanced techniques section")

initTip("Ammo 1: missiles");
initWords("when missiles are selectd the icon will turn green.");
initWords("They are projectiles with no knockback, they fly progressively faster and deal 4%.");
initWords("They cannot be replenished without leveling up and each tank will add 5 to your total, the maximum amount is 230 missiles");
initImage_ext(sprite_get("physical_attacks_missile_+"), 0, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Ammo 2: super missiles");
initWords("When super missiles are selectd the icon will turn green.");
initWords("They have high knockback, fly progressively faster and deal 20% on hit, they are your go-to kill confirm around 100%.");
initWords("They too cannot be replenished without leveling up and each tank will add 3 to your total, the maximum amount is 30 super missiles");
initImage_ext(sprite_get("physical_attacks_super_missile_+"), 0, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Ammo 3: power bombs");
initWords("When power bombs are selectd the icon will turn green.");
initWords("They work the same way as bombs (they can be used only in morph ball form) and have a wide range explosion and high knockback at the cost of dealing 0 damage.");
initWords("Like missiles and super missiles, they can only be replenished by leveling up, each tank adds 3 to the total, the maximum amount is 30, you better save 11 for the crystal flash tho.");
initImage_ext(sprite_get("physical_attacks_power_bomb"), -2, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("power-up 1: Morph ball");
initWords("Enables the morph ball.");
initWords("press down while crouched to morph into a ball.");
initImage_ext(sprite_get("item_1"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("samus_morph_ball_cycle_right"), 0, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("power-up 2: Bombs");
initWords("Enables bombs.");
initWords("When the attack button is pressed and you are in morph ball you will spawn a bomb, it detonates after a while and it will give you some vertical momentum if you are in the area of the explosion");
initWords("They deal only 3% and have no knockback, they can be useful for racking up damage and levelng up quickly.");
initImage_ext(sprite_get("item_2"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("physical_attacks_morph_bomb"), -2, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("power-up 3: Charge beam");
initWords("Enables Charge beam");
initWords("When the attack button is held down you will charge a strong beam attack, release it once it's charged to fire");
initImage_ext(sprite_get("item_3"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("power-up 4: Spazer");
initWords("Enables Spazer on the beam.");
initWords("You'll fire 3 shots at once increasing the size of the hitbox, increases beam damage");
initImage_ext(sprite_get("item_4"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("beam_attacks_2_shot_+"), 0, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("beam_attacks_2_charge_shot_+"), 0, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("power-up 5: Hi-Jump boots");
initWords("Increases samus first jump height.");
initImage_ext(sprite_get("item_5"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("samus_jump_rise_right"), 0, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("power-up 6: Varia suit");
initWords("Enables the varia suit.");
initWords("Apart from protecting from hot temperatures, this suit will decrease the damage taken by 50 perc- ehm, 4 units of energy.");
initImage_ext(sprite_get("item_6"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("varia_palette_reference"), 0, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("power-up 7: Speed booster");
initWords("Enables the speed booster.");
initWords("After running for a while you'll gain a blue aura and start running faster, this can also be used to shinespark (check the advanced attacks section for info).");
initImage_ext(sprite_get("item_7"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("shinespark_right"), 0, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("power-up 8: Ice beam");
initWords("Enables ice beam.");
initWords("when hitting with the charge shot it will freeze the opponent, increases beam damage.");
initImage_ext(sprite_get("item_8"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("beam_attacks_3_shot_+"), 0, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("beam_attacks_3_charge_shot_+"), 0, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("power-up 9: Grapple beam");
initWords("Enables grapple beam");
initWords("it doesn nothing for now so eh");
initImage_ext(sprite_get("item_9"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("power-up 10: Wave beam");
initWords("Enables wave beam.");
initWords("The beam now goes trough walls and solid objects but not enemies, increases beam damage.");
initImage_ext(sprite_get("item_10"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("beam_attacks_4_shot_+"), -2, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("beam_attacks_4_charge_shot_+"), -1, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("power-up 11: Xray scope");
initWords("Enables Xray scope.");
initWords("this one too does nothing lmao.");
initImage_ext(sprite_get("item_11"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("power-up 12: Gravity suit");
initWords("Enables the gravity suit.");
initWords("Samus now takes an extra 50 percent less damag- err I mean, 4 more units of energy less for a total of 8 less damage taken (basically 4%)");
initImage_ext(sprite_get("item_12"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("gravity_palette_reference"), 0, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("power-up 13: Space jump");
initWords("Enables space jump.");
initWords("Gives you unlimited extra jumps but with a cooldown.");
initImage_ext(sprite_get("item_13"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("samus_somersault_space_jump_right"), -2, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("power-up 14: Plasma beam");
initWords("Enables plasma beam.");
initWords("Beam now can pierce trough enemies, increases beam damage.");
initImage_ext(sprite_get("item_14"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("beam_attacks_5_shot_+"), -2, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("beam_attacks_5_charge_shot_+"), -1, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("power-up 15: Spring ball");
initWords("Enables spring ball.");
initWords("Now you can jump whle in morph ball form.");
initImage_ext(sprite_get("item_15"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("power-up 16: Screw attack");
initWords("Enables the screw attack.");
initWords("When you are somersaulting you deal damage.");
initImage_ext(sprite_get("item_16"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("samus_somersault_screw_attack_right"), -2, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("power-up 17: Hyper beam");
initWords("Trough the help and the sacrifice of the baby metroid you now can use the hyper beam.");
initWords("Unleash it in charge form only, it's extremely powerful, increases attack and knockback significantly.");
initImage_ext(sprite_get("item_17"), -2, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("beam_attacks_6_charge_shot_+"), -2, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("advanced tech 1: Bomb jumping");
initWords("You can chain bombs together to raise in height, you just need to find the right timing (or spam bombs mindlessly)");
initImage_ext(sprite_get("samus_morph_ball_cycle_right"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("advanced tech 2: Bomb spread");
initWords("When you have a charge shot ready, you can morph into a ball and drop 5 bombs in random directions.");
initWords("(It's just like the game!!!)");
initImage_ext(sprite_get("samus_morph_ball_cycle_right"), -4, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);

initTip("advanced tech 3: Pseudo screw attack");
initWords("When you have a charge shot ready and you somersault you'll become a hitbox that expires upon hit, it deals quite the damage and knockback.");
initWords("(Only works if screw attack has not been unlocked yet)");
initImage_ext(sprite_get("samus_somersault_normal_right"), -2, fa_left, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("samus_somersault_space_jump_right"), -4, fa_right, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("advanced tech 4: Shinespark");
initWords("(Only available when you have the speed booster unlocked)");
initWords("When speed booster triggers you can crouch to store the speed booster charge, then if you jump you'll initiate a shinespark.");
initWords("Before the actual shinespark starts you can hold the stick in any upwards direction and you'll fly in one of 5 directions (left, diagonal up left, up, diagonal up right, right).");
initWords("When you start flying you'll become temporairly invincible and you'll even send opponets flying");
initImage_ext(sprite_get("shinespark_right"), 0, fa_left, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("shinespark_up_right"), 0, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("shinespark_left"), 0, fa_right, -2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("advanced tech 5: Crystal flash");
initWords("When all your energy tanks are depleted, but you still have some ammo left, you can initiate a crystal flash to heal yourself.");
initWords("In order to perform it you need to have power bombs selected, at least 10 missiles left, 10 super missiles left and 11 power bombs, you need to morph into a ball and then hold down the shield button, the down button (↓) and the attack button (this will place a power bomb down but it's intended).");
initWords("This action will replenish all your energy tanks (at the cost of the before-mentioned 10 of each ammo).");
initWords("Once the sequence has started you'll get temporary super armor and you will be able to stop holding down the respective buttons, now enjoy the show.");
initImage_ext(sprite_get("samus_crystalflash"), -2, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);



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

initPatch("1.4", "25 September 2021");
initWords_ext("Improvements and changes", fa_center, c_white, 0, false);
initHeader("Bugfixes");
initSection("-Fixed a bug that set your power bombs to 5 once a bomb spread was performed.
-Fixed a bug that would make the shinespark sprites appear in the opposite direction.
-Fixed a bug that would prevent you from bomb jumping
-Fixed a bug that would prevent Adam from telling you the real ITEM COLLECTING RATE");
initHeader("Stat changes")
initSection("Increased the cooldown for power bombs
50 ---> 80 frames")
initHeader("Performance");
initSection("Say goodbye to performance issues, now projectiles will stop existing after certain x and y values.");
initHeader("Added new sfx");
initSection("I finally managed to get those last pesky sfxes, have fun listening to the retro sounds directly from Super metroid.");

initPatch("1.3", "24 September, 2021");
initWords_ext("Changes and new stuff", fa_center, c_white, 0, false);
initHeader("Stats");
initSection("When in morph ball form
gravuty speed 0.1 ---> 0.4");
initSection("Lowered beam attack cooldown 40 ---> 20 frames")
initSection("Bombs now have a soft cap of 4 (they blow up fast so it's not that relevant")
initHeader("Jump - Rework");
initSection("Now you can cancel the jump when you stop holding the jump button
(which means that to jump higher you need to hold down jump)");

initHeader("New Stuff")
initSection("Added Muno phone as a guide for the character (I think you can clearly see that)")
initSection("Added 3 advanced attacks (bomb spread, crystal flash, pseudo screw attack")
initSection("Added new randomizer mode
(enable it using the baby metroid randomizer buddy)")

// Recommended template for non-Sandbert characters (delete the other patches):



// other patches go here...

initPatch("About Samus", "");
initHeader("Character by");
initSection("DarkDakurai");
initHeader("SFX from");
initSection("Super Metroid");
initHeader("Compatible with");
initSection("Baby Randomizer Metroid buddy (enables randomizer)");





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

CHEAT_LEVEL = initCheat("Level up", [0, 1], ["level up"], "Go straight to the level you choose and gain all the upgrades")

CHEAT_INVIN = initCheat("Invincibility", [0, 1], ["Off", "On"], "become invincible, so much fun")

CHEAT_UNLEVEL = initCheat("Level down", [0,1], ["level down"], "Go back if you feel guilty")

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
];

// Whether or not to include the "Stats" page.
phone.include_stats = true;

// Notes for the "Stats" page - put "-" for no notes.
phone.stats_notes = "there's no prat landing or shield, deal with it";

// Whether or not to include a custom data page, which can hold any values you
// want - useful for data that's specific to your character's mechanics.
phone.include_custom = false;

// The name of the custom page.
phone.custom_name = "Beam attack"

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
/*
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
steve_death_message = "Steve got canceled on Twitter";

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
initCodecPagePit(SPK_PIT,	3,	9,	"Hey Look, it's samus");
initCodecPagePit(SPK_PIT,	0,	0,	"Her 16 bit sprites are still on point");
initCodecPagePit(SPK_PALU,	2,	5,	"Super Metroid shurely aged well didn't it");
initCodecPagePit(SPK_PALU,	0,	3,	"Pit, do you remember when the Metroid team worked on our game?");
initCodecPagePit(SPK_PIT,	6,	6,	"Isn't that also the reason Komaytos resemble the Metr-");
initCodecPagePit(SPK_VIR,	4,	3,	"EHM EHM");
initCodecPagePit(SPK_PIT,	4,	6,	"Oh ehm, can I get some guidance now?");
initCodecPagePit(SPK_PALU,	4,	0,	"Right, avoid her hyper beam at all cost and try to combo her as much as you can.");
initCodecPagePit(SPK_PALU,	0,	0,	"She starts really weak but once she gets going she becomes unstoppable.");
initCodecPagePit(SPK_VIR,	1,	7,	"Oh yeah, she halso has power bombs right?");
initCodecPagePit(SPK_PALU,	1,	3,	"Yes, they are extremely dangerous and can push you offstage fairly easily.");
initCodecPagePit(SPK_PIT,   3,	0,	"Got it, avoid her as much as possible and combo when you can.");



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