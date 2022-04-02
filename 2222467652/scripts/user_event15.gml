// Muno template - [CORE] user-defined content



/*
 * THIS IS THE ONLY FILE YOU NEED TO EDIT! The other user_events, as well as
 * css_draw, are not to be edited by the end user unless you want to specially
 * modify the template. (It's open source, but I'll be sad if you remove my
 * attempts at standardization)
 */



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Update Code			                                               ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

if ("phone_inited" in self && phone_inited){

	/*
	 * update.gml Code - this runs every frame, edit the below sections as you
	 * see fit.
	 */
	
	
	
	/*
	 * Below are 3 custom entries for the Print Debug setting in the Settings
	 * app. You can replace the "url"s with any constant, variable, or function
	 * to monitor it when that setting is enabled.
	 */
	
	phone_custom_debug = [
		"woag",
		"woag",
		"woag"
		];
	
	
	
	/*
	 * Char compatibility code below; find EVEN MORE lower down in the file
	 */
	 
	 
	
	// Copy Ability
	
	if pho_has_copy_power{
		
		// Initial swallow
		
		if swallowed {
			
			swallowed = 0; // don't touch this line please im begging you
			
			var copy_spr = sprite_get("copy_sprite");
			var copy_hrt = sprite_get("copy_hurt");
			var copy_icn = sprite_get("copy_icon");
			// add more to transfer other sprites, or sfx
			
			with enemykirby{
				newicon = copy_icn;
				muno_last_swallowed = other.id;
				
				set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
				set_attack_value(AT_EXTRA_3, AG_SPRITE, copy_spr);
				set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, copy_spr);
				set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 1);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, copy_hrt);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, copy_hrt);
				
				// edit the below (and, indeed, the above!) just like a regular attack script
				
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 10);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
				
				set_num_hitboxes(AT_EXTRA_3, 1);
				
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
				set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
				set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 8);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 50);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -10);
				set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 66);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 75);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 14);
				set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 10);
				set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.8);
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 12);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 1.0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 1.15);
				set_hitbox_value(AT_EXTRA_3, 1, HG_DRIFT_MULTIPLIER, 0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
			}
		}
		
		
		
		// Update code
		
		with oPlayer if "muno_last_swallowed" in self && muno_last_swallowed == other && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3{
			// you can treat this like an attack_update.gml for when kirby is using your character's ability
			
			// this system avoids conflicts between 2 swallowed chars IF they both use the munophone system for copy abilities.
		}
	}
	
	
	
	// Break the Targets data
	
	if pho_has_btt_layout{
		if get_btt_data { // Get data for Break The Targets
			course_name = "R-00 Course";
			// Set the spawn properties
			respawn_point = [[29,50],[0,0],1];
			// Set the collision of the solid sprites to precise
			sprite_change_collision_mask("btt_solid",true, 1, 0, 0, 0, 0, 0 );  
			room_add(1,[
			    [ // Each Cell
			        [0,0], // Cell Coordinates
			        [
			        	// Targets
				        [10, 4, 55, 0, -5, [0, 0, 32, [[0,0],[0,-3]], 0, 0, 0, 0], [0]],
				        [10, 40, 30.5, 0, -5, [1, 0, 60, [[-10,0],[5,0]], 0, 0, 0, 0], [0]],
				        [10, 87, 46, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]],
				        [10, 52, 44, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
				        [10, 55, 75, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
				        [10, 125, 55, 0, -5, [4, 0, 32, [[0,0],[0,-1]], 0, 0, 0, 0], [0]],
				        // Solid Ground
				    	[1, 2, 2, 2, 0, [sprite_get("btt_solid"), 0, 0, 0, 0, 0, 0, 0], [0]],
				    	// Plats
				    	[1, 46, 49, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
				    	[1, 64, 71, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]]
			            ]
			        ],
			    // Blastzones
			    [ // Each Cell
			        [0,1], // Cell Coordinates
			        [
			            [4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 2608, 20, 0], [0,0]]
			            ]
			        ],
			    [
			        [1,1],
			        [
			        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 2608, 20, 0], [0,0]]
			            ]
			        ],
			    [ // Each Cell
			        [-1,1], // Cell Coordinates
			        [
			        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 2608, 20, 0], [0,0]]
			            ]
			        ]
			    ]);
		}
	}
	
	
	
	// Amber
	
	if pho_has_amber_love{
		if amber_startHug{ // Amber will set this bool to true when this player accepts the hug
		    with amber_herObj{ // Access Amber's player object and set the values
		        // Set the window values for Amber's hugging. DO NOT change Amber's sprites
		        // in the attack_values
		        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		        // etc....
		
		        // Important. Puts Amber in startup hug state (2).
		        // Editing this variable not recommended
		        amberHugState = 2; 
		    }
		    // Important. Puts this character in startup hug state (2).
		    // Editing this variable not recommended
		    oPlayerHugAmberState = 2;
		    
		    // Set this bool back to false so that this doesn't loop
		    amber_startHug = false;
		}
	}
	
	exit;
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Compatibility Setup	                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

/*
 * This code runs from the CSS, as well as from the character itself.
 * 
 * The pho_has_something variables are for compatibility badges, which display
 * if your character has certain compatibilities.
 * 
 * By default, only the "gameplay-relevant" badges appear. The rest appear
 * only when the 0 key is held on the keyboard. So, don't worry about
 * cluttering the screen; include ALL compatibilites your character has,
 * for user convenience!
 * 
 * Enabling these flags ALSO enables the template code for each compatibility
 * (found within this very file).
 */

// Gameplay-relevant, and codecs because im biased :>
pho_has_muno_phone = 1;	// MunoPhone support		(should always be 1, obviously...)
pho_has_trum_codec = 1;	// Trummel & Alto codec
pho_has_copy_power = 0;	// Kirby Copy Ability
pho_has_btt_layout = 0;	// Break the Targets stage

// Character cosmetics
pho_has_otto_bhead = 0;	// Bobblehead for Otto's bike
pho_has_steve_dmsg = 0;	// Death message for Steve
pho_has_feri_taunt = 0;	// Costume for Feri's taunt
pho_has_hikaru_fak = 0;	// Title for Hikaru's fakie
pho_has_rat_allout = 0;	// Quip for Rat's all-out attack
pho_has_tco_sketch = 0;	// Drawing for The Chosen One's down taunt
pho_has_ahime_dead = 0;	// Sprite for Abyss Hime's slicing effect
pho_has_tink_picto = 0;	// Photograph for Toon Link's picto box
pho_has_fire_taunt = 0; // Fire's Taunt
pho_has_wall_e_ost = 0; // Wall-E's music
pho_has_amber_love = 0; // Amber's plush and/or hug
pho_has_moon_music = 0; // Moonchild's taunt music
pho_has_agentn_cdc = 0; // Agent N's codec

// Stage cosmetics
pho_has_drac_codec = 0;	// Dialogue for the Dracula boss fight
pho_has_miivs_post = 0;	// Posts for the Miiverse stage
pho_has_dede_title = 0;	// Title for the Mt Dedede Stadium stage
pho_has_soul_title = 0; // Text for the Soulbound Conflict stage
pho_has_been_found = 0; // Death sprite for the Trial Grounds stage
pho_has_resort_pic = 0; // Portrait for the Last Resort stage
pho_has_pkmn_image = 0; // Battle sprite for Pokémon Stadium
pho_has_daro_codec = 0; // Dialogue for the Daroach boss fight



if (object_index == asset_get("cs_playerbg_obj")){
	num_alts = 16; // Number of alt costumes; controls how many appear on the CSS
	exit;
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ General Character Info                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

muno_char_name = get_char_info(player, INFO_STR_NAME);	// Name of the character, used for the MunoPhone - and also free to be used by other mods
muno_char_name = "Bird Luigi";							// Here I replace the name, because "Sandbert with a Phone" is awkwardly long

muno_char_icon = get_char_info(player, INFO_ICON);		// CSS icon of the character. You can replace this with an arbitrary sprite, using sprite_get(), and it'll be used in the upper left of the phone's big screen. (Make it the same size pls, thank u)

phone.taunt_hint_x = 0;									// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.
phone.taunt_hint_y = 0;									// Vertical offset
phone.shader = 0;										// Whether or not to apply the character's palette to the phone and non-TrainingTown sidebar (change color with alt costumes)

phone.dont_fast = 0;									// Set this to 1, and Fast Graphics will not automatically be set when the FPS dips below 60.



// Sprites (you could also include things like these in init.gml if you like)

spr_egg = sprite_get("boulder");
spr_hud_badges = sprite_get("_pho_hud_badges");
spr_custom_icon = sprite_get("customicon");
spr_custom_menu_preview = sprite_get("_pho_custom_menu_preview");
spr_custom_code_menu_preview = sprite_get("_pho_custom_code_menu_preview");



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Tips					                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with phone{
	
	i = 0;
	j = 0;
	
	/*
	 * Tips are hints or instructions on how to play the character. They range
	 * from one-sentence descriptions to pages-long tutorials. You can also
	 * embed images and formatted text.
	 * 
	 * initTip(name)
	 * initTipWords(text)
	 * initTipImage(sprite, frame, align, xscale, color, gimmick)
	 * initTipWords_ext(text, align, color, indent, gimmick)
	 * initTipImage_ext(sprite, frame, align, xscale, color, gimmick, border_l, border_r, border_u, border_d)
	 * 
	 * NOTE: indent = a number of "tabs", not a number of pixels
	 * 
	 * To place two consecutive elements side-by-side, they must meet the
	 * following conditions:
	 * - The second element must not be text
	 * - The width of the two elements must not exceed the page width
	 * - One element must be left-aligned, and the other right-aligned
	 * 
	 * NOTE: For images, set frame to a negative number and it will animate the
	 * sprite at that rate. E.g. set to -3, each anim frame will last 3 frames.
	 * 
	 * Another image-related note: the placement for images is calculated based
	 * on the BORDERS of the sprite. Two consequences:
	 * - The offset of the sprite (load.gml) has NO effect.
	 * - If your sprites are made with a lot of transparent empty space around
	 *   the actual content (like mine are), it'll have that much extra space
	 *   around it in the tip.
	 * 
	 * To fix the second bullet point, use initTipImage_ext(), with the four
	 * extra "border_" arguments representing the distance FROM THE SPRITE'S
	 * OFFSET (as defined in load.gml) to "cut off" the sprite in each of the
	 * four directions. E.g. if your sprite's actual content is all contained
	 * within these distances from the sprite offset:
	 * - 100 to the left
	 * - 20 to the right
	 * - 50 up
	 * - 0 down
	 * 
	 * ...then the last 4 arguments should be 100, 20, 50, 0. It basically crops
	 * the sprite
	 * 
	 * Lastly, the "gimmick" is a special effect that you can apply to an
	 * element. Here's the list of implemented gimmicks:
	 * - 0: Nothing
	 * - 1: Shaking
	 * - 2: Scrolling left
	 * - 3: Scrolling right
	 * - 4: Cause this element to not push the subsequent elements downward
	 * - 5: Cause the character's palette to apply to this element
	 * 
	 * Negative gimmick numbers are saved for whatever YOU might need them for!
	 * Like idk, if you're a coding wizard and figure out something cool to do
	 * by interacting with the tip data.
	 * 
	 */
	
	initTip("NSpecial: Float Toggle");
	initTipWords("If your Fireball Egg is currently in play, using Nspecial will instead toggle its 'floating state', where it is unaffected by gravity.");
	initTipWords_ext("Example:", fa_center, c_aqua, 0, 0);
	initTipWords_ext("Not Floating:                                                        Floating:", fa_center, c_silver, 0, 0);
	initTipImage(player_id.spr_egg, 0, fa_left, 1, c_white, 1);
	initTipImage(player_id.spr_egg, 0, fa_right, 1, c_white, 0);
	initTipImage(player_id.spr_uspecial, 9, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_nspecial, 7, fa_right, -1, c_white, 0);
	
	initTip("FSpecial: Charge Shot");
	initTipWords("Hold the special button at the start of the move to charge up the attack, making it go further and faster, as well as increasing the damage it deals. If you press the shield button while charging it, you can store the charge for later and cancel into parry/dodge.");
	initTipImage(player_id.spr_fspecial, 4, fa_center, 1, c_white, 3);
	
	initTip("Dair: Egg Bounce");
	initTipWords("Hitting an opponent with Dair will bounce both them and you upwards, but did you know you can do the same with your Fireball Egg? Landing a Dair on the egg allows you to bounce up, but the egg is sent straight downwards.
	Alternatively, when hitting an opponent, you can hitfall to only pop them into the air.");
	initTipImage(player_id.spr_dair, 4, fa_center, 1, c_white, 0);
	initTipImage(player_id.spr_egg, 0, fa_center, 1, c_white, 1);

	initTip("USpecial: Egg Catch");
	initTipWords("If your Fireball Egg is currently in play, using Uspecial while it's nearby can catch and reposition the egg, keeping all the egg's current conditions (fire, durability, etc.). Keep in mind that this has a 60 frame cooldown.");
	initTipImage(player_id.spr_egg, 0, fa_center, 1, c_white, 1);
	initTipImage(player_id.spr_uspecial, -4, fa_center, 1, c_white, 0);
	
	initTip("Torch Passing");
	initTipWords("Landing a 'Green Fire' inflicting move on an opponent with the status effect already applied will instead refresh the timer on the move if it has less remaining time than the attack would've applied. 
	For example, if they have 2 more seconds of Green Fire, and you hit them with a move that has 4 seconds of Green Fire, the damage they've taken from the previous Green Fire will stay, but the timer on the fire will increase to 4 seconds.
	Keep this in mind to get some kills earlier than you would've gotten them, and check the Frame Data app to see which moves inflict the status effect.");
	initTipImage(player_id.spr_ftilt, 3, fa_center, 1, c_white, 0);

	initTip("Hud Badges");
	initTipWords("Have you ever noticed that badge on your hud?");
	initTipImage(player_id.spr_hud_badges, -30, fa_center, 1, c_white, 0);
	initTipWords("It represents whether or not you have a misfire/cyclone charged.");
	initTipWords("If you're on the ground, it'll be orange, and if it's glowing then that means you have a 'misfire' charged up.
	A misfire is a single-use charge that turns your Fstrong into a powerful killmove with super armor, so use it wisely.");
	initTipWords("If you're in the air, it'll be blue, and if it's glowing then that means you have a 'cyclone' charged up.
	A cyclone is a single-use charge that lets you mash the attack button during your Nair to rise very quickly.");
	initTipWords("The methods you use to get a misfire and cyclone charge are different, with one being much easier than the other.");
	initTipWords("The cyclone charge is ready every time you leave the ground. It's really that simple, meaning the first nair you use each airtime is always a cyclone, and any following nairs before you touch the ground again will be normal.");
	initTipWords("The misfire charge will randomly appear at any point in the match that you don't have it charged already. Make sure to listen for the audio cue!");
	
	initTip("Alternate Jab3?");
	initTipWords("All of Bird Luigi's tilts are usable after Jab2, and some can combo out of it in certain circumstances!
	Jab3 is usually the most reliable, and also has the highest killpower.
	Ftilt works about as consistantly as Jab3, and inflicts 4% worth of Green Fire on hit. If you don't take the opportunity to use the additional damage from the Green Fire before it runs out, however, the opponent ends up having taken less damage than they would've if you'd used Jab3.
	Utilt can be used easily if someone is a bit close to Bird Luigi during the combo, and can easily break off into another full combo.
	Dtilt is the least reliable, but it can catch most fast-fallers, heavyweights, and other large characters to start a combo if you time it properly, usually leading into an Fstrong.");
	initTipImage(player_id.spr_jab, -3, fa_center, 1, c_white, 0);
	
	initTip("Info on custom alt color");
	initTipImage(player_id.spr_custom_icon, 1, fa_left, 1, c_white, 4);
	initTipWords_ext("The Custom Alt", fa_center, make_colour_rgb(220, 90, 255), 0, 4);
	initTipImage(player_id.spr_custom_icon, 1, fa_right, 1, c_white, 0);
	initTipImage(player_id.spr_idle, -5, fa_center, 1, c_white, 5);
	initTipWords("Similarly to base-cast characters, Bird Luigi has access to a customizable alt color!
	However, due to limitations, this custom alt is customized differently from the base-cast ones.
	This in-depth guide explains how you can make and share your own alt for Bird Luigi");
	initTipWords_ext("Disclaimer: This alt has not been tested in Online Mode and may cause crashes among other bugs, so please contact the creator of the mod if you find any issues involving this alt.", fa_left, make_colour_rgb(255, 215, 215), 0, 0);
	initTipWords_ext("
	How to access", fa_center, make_colour_rgb(235, 235, 255), 0, 0);
	initTipWords("The custom alt is located in alt slot #7, directly after the Seasonal Alt. It can be identified by the 'C' icon in the bottom-right corner of the character's portrait.
	By default, it is completely bright green. This can be changed, and here's how:");
	initTipWords_ext("
	How to customize", fa_center, make_colour_rgb(235, 235, 255), 0, 0);
	initTipWords("To make your own custom alt for Bird Luigi, you need to enter playtesting mode. By default, this is accessed with the 'C' key, but that may change between each person.
	After you've entered playtesting mode, you should see text on the top of the mini-screen that opens up that says 'Taunt to open custom color menu!'
	To customize the alt, use Bird Luigi's taunt. This should open up a menu that looks like this:");
	initTipImage(player_id.spr_custom_menu_preview, 1, fa_center, 1, c_white, 0);
	initTipWords_ext("
	Controls", fa_center, make_colour_rgb(235, 235, 255), 0, 0);
	initTipWords("Once you see the above menu, here are the controls you can use to navigate through it and customize your own alt!

	Up/Down: Switch between currently selected color channel
	Left/Right: Switch between currently selected color slot
	Jump: Increase value of currently selected color channel
	Attack: Decrease value of currently selected color channel
	Shield/Parry: Open code screen (See below)
	Special: Close custom color menu and return to playtesting");
	initTipWords_ext("
	The code screen + How to save and use your own alt", fa_center, make_colour_rgb(245, 245, 255), 0, 0);
	initTipWords("When you've finished creating your own alt, press the parry while still in the menu button to bring up the code screen, which should look like this:");
	initTipImage(player_id.spr_custom_code_menu_preview, 1, fa_center, 1, c_white, 0);
	initTipWords("From here, you can copy+paste / type the code that you want to enter, or copy the code that is in the box for later use. If you've accidentally deleted the color code you created, press [Cancel] to restore it (might be a bit buggy), and press [OK] to confirm that you're finished with the code window and return to the game, with the custom color linked to the ID now selected.");
	initTipWords_ext("
	And now you're finished!
	If you ever want to make a new skin, you may return to this guide to check back on how to do it, or if you already remember you could try doing it yourself.", fa_center, make_colour_rgb(235, 235, 255), 0, 0);
	
	initTip("Fun Facts about alt costumes!");
	initTipWords_ext("The origins of Bird Luigi's alts!", fa_center, c_aqua, 0, 0);
	initTipWords("Fun fact: Every one of Bird Luigi's alternate colors so far has an inspiration or reference involved!
	They go as follows:
	  0. Default: Based on Luigi's color scheme from the Super Mario series.
	  1. bird up: Based on Bird Guy's color scheme, made by Gourami
	  2. Another Castle: Based on Princess Guy's color scheme, made by Why
	  3. Funniest: Based on Pickle Guy's color scheme, made by Smiley
	  4. 'Ori be like': Based on Fox Guy's color scheme, made by BernardO
	  5. slipstream: Based on Wrastor's color scheme, from Rivals of Aether
	  6. Seasonal: Based on the current ingame season, as well as the seasonal alts from Rivals of Aether
	  7. Custom: Based on whatever you want
	  8. It's-a me!: Based on Mario's color scheme from the Super Mario series
	  9. Greatest Achievement: Based on Wario's color scheme from the Super Mario series
	  10. Too Bad!: Based on Waluigi's color scheme from the Super Mario series
	  11. Ghost Vacuum: Based on Gooigi's color scheme from the Luigi's Mansion series
	  12. Call him!: Based on Builder Luigi's color scheme from Super Mario Maker 2
	  13. Abyss: Based on the abyss alts from Rivals of Aether
	  14. Early Access: Based on the Early Access-exclusive gameboy alts from Rivals of Aether
	  15. NES: Based on the Nintendo Entertainment System's color palette
	  16. Infamous: Based on the Infamous alts from Rivals of Aether
	  17. Untitled: Based on the Goose from the Untitled Goose Game
	  18. Golden: Based on the gold alts from Rivals of Aether
	  19. The Fossil Pokémon: Based on Archen's color scheme, from the Pokémon series
	  20. Obligatory Trans Alt: Based on the color scheme of the trans flag
	  21. Silence Enemy: Based on Loud Bird's color scheme from Dicey Dungeons
	  22. '...there is only me.' / Fate Chosen: Bird Luigi's default color scheme, inverted!
	  23. Calmed Nerves: Based on Garcello's color palette, from Friday Night Funkin: Smoke 'Em Out Struggle.
	  24. Air Preference: Based on Falco's color palette, from Super Smash Bros. Melee.");
	
	initTip("bird");
	initTipWords_ext("bird", fa_center, c_dkgray, 0, 0);
	initTipImage(player_id.spr_taunt, 1, fa_center, 1, c_white, 0);
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Patch Notes			                                               ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with phone{
	
	i = 0;
	
	/*
	 * Patch notes are patch notes. Inform players on what's changed since they
	 * last played the character. If you want, you can just paste the changelogs
	 * from your Steam page or etc.
	 * 
	 * initPatch(name)
	 * initPatchWords(text)
	 * initPatchImage(sprite, frame, align, xscale, color, gimmick)
	 * initPatchWords_ext(text, align, color, indent, gimmick)
	 * initPatchImage_ext(sprite, frame, align, xscale, color, gimmick, border_l, border_r, border_u, border_d)
	 * 
	 * The formatting is exactly the same as with tips. Just replace "Tip" with
	 * "Patch" in the function calls, and instead of a name for the patch,
	 * put the version number and full date.
	 */

	initPatch("1.8", "1 April, 2022");
	initPatchWords_ext("The ", fa_left, make_colour_rgb(207, 46, 46), 1, 0);
	initPatchWords("Major Changes
	- Replaced Fair.
	- Relocated spaghetti.png");
	initPatchWords("Buffs
	- Slightly increased dtilt hitbox size.");
	initPatchWords("Nerfs
	- ");
	initPatchWords("Misc. Changes
	- Removed claws from jab animation.
	- Fixed date of previous update release.
	- Added Parkan victory screen support.
	- Renamed Garcello alt.
	- CPU Bird Luigis will now try to glide more often when recovering
	- CPU Bird Luigis will now use their djump to exit tumbling states instead of letting themselves fall to their death.
	- Garcello alt now has some sprites adjusted to work properly with its unique properties.
	- die (loud bird taunt)
	- Added original   starwalker alt.
	- Added sfx upon selection.
	- Made slight adjustments to icon.
	- Trollface Egg now applies for one additional day.
	- Added Falco alt.");
	initPatchWords("Egg Changes
	- ");

	initPatch("1.7", "14  May, 2021");
	initPatchWords_ext("The (thanks gnome)", fa_left, make_colour_rgb(207, 46, 46), 1, 0);
	initPatchWords_ext("thanks gnome", fa_left, make_colour_rgb(127, 184, 215), 1, 0); //gnome sent me most of these patch notes lmao
	initPatchWords("Buffs
	- Fair startup 12 -> 8 (thanks gnome)
	- Dspecial startup 16 -> 7 (thanks gnome)
	- Dattack startup 12 -> 9 (thanks gnome)
	- Bair startup 14 -> 10 (thanks gnome)
	- Bird Luigi can now glide during aerials. (thanks gnome)
	- Dspecial can now be angled. (thanks gnome)
	- Dattack can now be cancelled into ustrong until frame 12.
	- Landing at any point during Dspecial now switches to the grounded version.
	- Bair hitboxes reach a bit further horizontally.
	- Fspecial can now be angled 3 frames earlier while traveling.
	- Dtilt can now be cancelled into jab/tilts/jump on-hit starting on frame 16.
	- You can hold down during the time between the grab and throw of dspecial in the air to fall faster, allowing you to transition to the grounded throw more easily.
	- While dead in a free-for-all, Bird Luigi has slight influence on the angle that the egg travels when float is toggled off.
	- While dead in a free-for-all, Bird Luigi can spawn an egg at the top-center of the screen with the special button.
	- Fspecial's ending anim (for wall-hitting/at the end of the boost) now carries over a bit of vertical speed from before it begins, and bouncing off of walls provides a boost upwards once per airtime.
	- You can now glide out of a tumbling state.
	- You can now hold the special button to resume charging Fspecial if you store a charge that isn't completely full.
	Another small damage/kb buff (thanks gnome) + other misc. attack changes:
	- Fstrong damage 7/5 -> 8/6
	- Ustrong damage 6 -> 8
	- Nair damage 2+2+2+2 -> 2+2+2+4
	- Dair damage 6/5 -> 7/6
	- All Fair hitboxes +1 damage
	- Dspecial damage 1+4/3 -> 1+6/5
	- Bair damage 3+4 -> 4+5
	- Bair 1 Angle Flipper 6 -> 4
	- Bair 2 Angle Flipper 0 -> 6
	- Dstrong 2 kb scaling 1 -> 1.1
	- Fstrong 2 (sweetspot) base kb 9 -> 10
	- Fstrong 2 (sourspot) base kb 6 -> 8
	- Egg Hitbox base kb 7 -> 8
	- Egg hitbox kb scaling 0.5 -> 0.4
	- Dtilt angle 70 -> 60
	- Fspecial (sourspot) kb scaling 0.4 -> 1.2
	- Fspecial (sourspot) base kb 7 -> 8
	- Fspecial (sourspot) lifetime 1 -> 4
	- Fspecial (sourspot) hitpause scaling 0 -> 1
	- Jab3 base kb 6 -> 7
	- Jab3 kb scaling 0.8 -> 0.9");
	initPatchWords_ext("EXPERIMENTAL:
	  - Dair (sweetpot) spikes at or above 100%", fa_left, make_colour_rgb(210, 80, 255), 1, 0);
	initPatchWords("Nerfs
	- Fspecial now goes into wall-hitting recovery when hitting an opponent (thanks gnome)
	- Fspecial now has 15 frames of cooldown after use.
	- Dspecial now has 35 frames of cooldown after use.
	- Misfire Fstrong kb multiplier 1.25 -> 1.2
	- Dtilt active frames 16 -> 8
	- Dtilt now has 5 frames of cooldown on-hit.
	- Egg float toggle cooldown 20f -> 25f
	- Dstrong pre-charge startup frames 6 -> 9
	- Dstrong post-charge startup frames 4 -> 8
	- Uspecial (Re-throw) no longer has invisible super armor, but instead automatically throws the egg if you get hit during it. If the attack is cancelled otherwise, the egg is stored and thrown next time uspecial is used.
	- You no longer gain an extra double jump during a tumbling state.
	- Fspecial no longer has reduced startup when charged.
	- Fspecial's charge can no longer be stored even after using it up by storing the charge while out of airdodges.");
	initPatchWords("Misc. Changes / Bugfixes
	- Dtilt hspeed type 1 -> 0 (thanks gnome)
	- Dtilt hspeed 5 -> 3 (thanks gnome)
	- Fspecial no longer freezes time when it lands a strong hit on someone.
	- Fixed whatever spaghetti code was causing grabbing an egg with dspecial to print a bunch of errors to the error log.
	- Added Luigi's dash, grab start, and grab hit sfx to dashstart, dspecial, and dspecial hitting.
	- NES alt now properly displays unique egg type on css.
	- Reduced the volume of the vacuum's horn during the intro anim.
	- Changed waveland sfx.
	- Made the glide meter refilling animations a bit smoother.
	- Made small adjustments to Bird Luigi's Alto & Trummel 2 codec.
	- Fspecial can no longer bounce off of a blast zone they are moving away from.
	- Slightly changed Munophone 'About' section.
	- Added Negative alt which simply reverses colors.
	- Holding down while starting dattack with replace it with dtilt.
	- Utilt's thrown hat now uses bird luigi's outline color.
	- Bird Luigi now plays a short animation when toggling egg float and not in a 'commited' state.
	- Fixed a few stray pixels on dtilt's hurtbox.
	- The 'bird up' Munophone cheat now affects the egg.
	- On non-default alts, the egg's trail now uses Bird Luigi's hat feather 1 color, instead of his shoe color.
	- Added discord server link to steam page and 'About' section.
	- Added Tip on the sources of Bird Luigi's alts to the 'Tips' Munophone section.
	- Added Loud Bird alt based on Dicey Dungeons.
	- Added Garcello alt based on Friday Night Funkin: Smoke 'Em Out Struggle.
	- Untitled Goose alt no longer has the L emblem on its cap on the character select.
	- Moved the 'fireballtogglecooldown' variables from the 'misc.' to the 'Egg' section of init.gml
	- Made adjustments to Bird Luigi's boss dialogue portraits.
	- Made adjustments to Bird Luigi's character select and result screen portraits.
	- Slightly changed Bird Luigi's feri compatiblity-support sprite.
	- Dspecial's plunger projectile is now the same color as Bird Luigi's hat while using an alternate color.
	- Ftilt's fire now uses Bird Luigi's egg color, not his hat color.
	- Made the hat sprite during dstrong's startup frames look a bit more round.
	- Rewrote Bird Luigi's Agent N / Lynk codec.
	- Gooigi alt now has a unique taunt.
	- Builder alt now has a unique taunt.
	- Archen alt now has a unique taunt.
	- Fspecial now has a sound cue for when a charge is stored.
	- NES alt now has a unique taunt.
	- Added victory screen theme.
	- Officially implemented seasonal alt.");
	initPatchWords_ext("Officially implemented custom alt.
	  See 'Tips' section for more info.", fa_left, make_colour_rgb(210, 80, 255), 1, 0);
	initPatchWords("Egg Changes
	- Egg can now be hit by attacks again and if it still desyncs im going to cry
	- Egg no longer gets cracked when hit by a strong attack.
	- Egg is boosted in Bird Luigi's direction a bit when float is toggled off.");

	initPatch("1.6", "28  March, 2021");
	initPatchWords_ext("
	The egg desync has returned so semi-emergency patch (thanks gnome)", fa_left, make_colour_rgb(210, 80, 255), 1, 0);
	initPatchWords("Buffs
	- Replaced Uair with a better one (thanks gnome)
	- Dspecial now gets automatically cancelled 12 frames earlier if the projectile is destroyed early.
	- Nair now accelerates if you simply hold the attack button, but still a bit faster if you mash.");
	initPatchWords("Nerfs
	- ");
	initPatchWords("Misc. Changes / Bugfixes
	- Dspecial's grabbing projectile is now properly destroyed if Bird Luigi stops using dspecial for one reason or another.
	- Slightly updated spaghetti_strip1.png");
	initPatchWords("Egg Changes
	- Egg no longer behaves strangely when grabbed with another Bird Luigi's dspecial");

	initPatch("1.5", "24  March, 2021");
	initPatchWords_ext("The  Bird Luigi viable???", fa_left, make_colour_rgb(245, 5, 25), 1, 0);
	initPatchWords("Buffs
	- Bird Luigi can now hit egg again. (please dont desync please i beg you)
	Major damage increase on the majoriy of attacks:
	   - Bair damage 2+3 -> 3+4
	   - Dair damage 4/3 -> 6/5
	   - Dattack damage 3 -> 5
	   - Dstrong damage 3+4 -> 4+5
	   - Dtilt damage 3 -> 5
	   - Fair damage general increase (there are too many hitboxes but all of them got +1 damage)
	   - Fspecial base damage 3 -> 5
	   - Fstrong damage 1+6/3 - 1+7/5
	   - Ftilt damage 3 -> 5
	   - Jab damage 2+2+3 -> 3+2+4
	   - Nair damage 1+1+1+2 -> 2+2+2+2
	   - Egg damage 2 -> 3
	   - Uair damage 3/2 -> 5/4
	   - Ustrong damage 5 -> 6
	   - Utilt damage 3 -> 5
	- Final Smash damage 3+6 -> 10+10+15.
	- Bair hitbox 2 lifetime 3 -> 4
	- Bair hitbox height 62 -> 64
	- Ustrong base kb 8 -> 9
	- Ustrong kb scaling 0.9 -> 1
	- Dstrong 2nd hit kb 8 -> 10
	- Fstrong 2nd hit (sweet) base kb 7 -> 9
	- Fstrong 2nd hit (sour) kb scaling 0.4 -> 0.5
	- Dattack startup frames 15 -> 12
	- Increased Fspecial's speed & distance, but lowered active time and vertical movement.
	- Jab2 and Jab3 come out 1 frame earlier.
	- Jab1 and Jab2 can cancel into tilts slightly more easily, as well as into jab2/jab3.
	- Ftilt no longer puts itself or jab on cooldown when it hits.
	- Jab's cooldown on-hit has been lowered from 45 to 35.
	- Fair and Bair now recieve a short vertical boost after dattack similar to the ones uair and dair recieve.");
	initPatchWords("Nerfs
	- Short hop height 6 -> 7
	- Ustrong startup frames 6 -> 12");
	initPatchWords("Misc. Changes / Bugfixes.
	- Hopefully removed desyncs during online matches?
	- Buster Wolf (Final smash, RoF ultimate, Abyss Fspecial 2, etc.) no longer freezes Bird Luigi in place if he hits the egg at just the right position.
	- Dr. Melee Mario can now reflect the egg with his cape, granting him 5 invincibility frames and giving the egg the ability to hit its owner for 3 seconds. (contact me on discord or something if you want your character's reflecter to also do this)
	- Bair now slightly decreases vsp when you land the first of the two hits.
	- Removed leftover debug text.
	- Opponents who are ignited with green fire now display their damage without the fire applied above their current damage % on their overhead hud.
	- Re-added and Readjusted NES alt color.
	- Other Bird Luigis & Bird Guys now show up while the screen is darkened by taunt if they are also taunting.
	- Added hat to offscreen indicator and icon.
	- Added Archen and Trans Pride alt colors.
	- Painstakingly adjusted alt order to make room for placeholder Seasonal and Custom alts.
	- Ustrong and Fspecial no longer use dust fx.
	- Jab no longer cancels itself after 1 frame if you tap the input lightly enough.
	- Completely replaced Dspecial and its functionality.
	- Jab can no longer cancel into Power Dunk unless Rune L is equipped.");
	initPatchWords("Egg Changes
	- Egg now uses hitbox groups to check if melee hitboxes can hit, and all hitboxes now have the has_hit_luigi_egg variable after hitting the egg.
	- Projectiles with a HG_PROJECTILE_ENEMY_BEHAVIOR of 0 will be destroyed when hitting the egg.
	- Ori can now Egg Bounce. (Bounce off egg with Dair.)");

	initPatch("1.45", "15  March, 2021");
	initPatchWords_ext("The  d e s y n c", fa_left, make_colour_rgb(15, 130, 225), 1, 0);
	initPatchWords_ext("Temporarily removed ability to hit egg, found multiple desyncs that involved hitting it.
	I'm currently looking into it, sorry.
	Check Munophone cheats if you want to re-enable it for testing.
	(also working on making bird luigi not get stuck if you hit the egg with buster wolf / final smash)", fa_left, make_colour_rgb(210, 80, 255), 1, 0);
	initPatchWords("Nerfs
	- Decreased max_jump_hsp from 9 to 8.");

	initPatch("1.4", "25  Febuary, 2021");
	initPatchWords_ext("The Competition Admission", fa_left, make_colour_rgb(105, 40, 250), 1, 0);
	initPatchWords("Buffs
	- Fspecial now gets a much higher speed boost from charging, and also gains an increase in up/down movement control when charged.
	- Fspecial's charge can now (finally) be cancelled with shield at any point, not just when it's fully charged.
	- Nair's first three hitboxes now have Angle Flipper 10. (Sends along the user's movement direction)
	- Dattack can now be cancelled into aerials on-hit without needing to jump first.
	- Rune E has been replaced, and Bird Luigi now has a higher jump height while crouching by default. (Technically this means that Bird Luigi can now make it to the top training room platform with only jumps)
	- Fspecial now bounces on the side blast zones, meaning it can be used to restore your doublejump without needing a wall. This also makes it so you can go offstage with it's new speed boost without dying instantly.
	- Jab2 and Ftilt both do 1% extra damage.
	- Bird Luigi now has an extra double jump while he's out of glide meter, or in a tumbling state (after hitstun ends).
	- Lowered Egg Catch cooldown by about half.
	- Uspecial's egg throw can now be angled by default, and the amount that its angle is influenced while re-throwing is higher.
	- Nspecial and Uspecial are now much faster overall.
	- Fair's back hitbox now spawns 2 frames earlier, but also has 1 frame shorter active time.
	- Bair now no longer requires you to have all djumps and walljump and airdodge still usable in order to float during it after hitting someone, only a not-empty glide meter.
	- Dair and (New) Uair now recieve a small boost upwards if you cancel dattack into either of them.
	- While in a tumbling state, Bird Luigi will always have a double jump available if he's not on empty glide meter.
	- Glide meter restores twice as fast while grounded.
	- Increased air speed and dash speed.
	- Parrying a melee attack now lights opponents on green fire for 2%.");
	initPatchWords_ext("EXPERIMENTAL: 
	    - Hitting opponents currently on green-fire will now extend the duration of the flame by an amount equivalent in frames to the damage of the attack that hit it, at a rate of 5% for 1% of fire damage.
	    - Bird Luigi now recieves part of his glide meter back when he gets hit.", fa_left, make_colour_rgb(210, 80, 255), 1, 0);
	initPatchWords("Nerfs
	- While holding the attack button on whiff, Jab now cancels back into the first window 15 frames later. (but this is mostly to fix the animation looking weird when looping)
	- Ftilt extra hitpause was lowered from 13 frames to 8 frames.
	- Dattack active frames lowered from 27 to 15.
	- Fair's bottom hitbox (sourspot) lasts 2 frames shorter.
	- Bair now multiplies your hsp and vsp after hitting someone by 0.95 every frame. (You can't really move as fast? It really doesn't have much of an impact)
	- Dattack can no longer be cancelled by tapping 'down'.
	- Float now ascends slower if you use it more often.
	- Increased dashturn and dashstop time.");
	initPatchWords("Misc. Changes
	- Changed color palette for victory background to more closely match the base game's victory backgrounds.
	- Added light blue outer glow to character select and results screen portraits.
	- Fluttering/Gliding anim now uses Bird Luigi's outline color on his wings.
	- Updated gold alt color to be more similar to base-game gold alts.
	- Fspecial, UStrong, Fstrong, and Ftilt now use Supersonic's base game dust particle spawning system.
	- Ending jab on window 1 no longer carries over the vsp from the last time Bird Luigi was in hitpause.
	- Updated Dattack's Munophone notes.
	- Slightly changed the glide meter's appearance.
	- Now uses Archen/Bird Guy's new SFX, which are evenly distributed between headphones.
	- Changed Ustrong framedata a bunch, I can't tell if it's a buff or nerf but now its whifflag doesn't mess with the hitboxes.
	- New Compatibilities
	    - Rat
	    - TCO
	    - Trial Grounds
	    - Last Resort
	    - Toon Link (FelixBlobDev)
	    - GreenFlower Zone
	    - Agent N
	    - Daroach
	    - Dracula
	    - Rivals of Fighter
	    - Final Smash Buddy
	- Jump anim outline was changed a bit.
	- Dair's hitboxes now have a HG_MUNO_OBJECT_LAUNCH_ANGLE of 270.
	- Dair hitbox names are more accurate. (yes i messed up the ordering of the early/late hits)
	- Rune G now properly adds an extra double jump.
	- Assist Buddy's Bird Luigi attack is now Nspecial instead of Uspecial.
	- 'Egg Hitbox' can now be found in the Frame Data section of the Munophone, and will show the stats of the egg's hitbox.
	- 'Fspecial (Abyss)', 'Dspecial (Abyss)', 'Super Fspecial (Abyss)', and 'Super Dspecial (Abyss)', and will show the stats of the new Rune L's command input attacks.
	- Uair has been replaced by Bird Luigi's current fair, but with a hitbox above instead of a sweetspot.
	- 'Uair (Old)' has been added to the framedata guide, which shows that stats that Bird Luigi's Uair had before this patch.
	- The 'bighurt' anim no longer moves while the game is paused.
	- The NES alt has been removed, and an Infamous alt has been added before the Abyss alt, featuring a unique taunt.
	- Added more options to the 'Max Djumps' cheat.
	- Bird Waluigi and Bird Wario now have unique shoe colors.
	- Gold alt, Untitled Goose alt, Bird Mario, Bird Wario, and Bird Waluigi now have special taunts.
	- The hud icon's hat now properly uses Bird Luigi's outline color.
	- The character select now has a unique indicator for which alt is selected.
	- Now plays a unique sound upon death. (May be a bit difficult to hear)
	- Slightly adjusted color of legs on base alt.
	- Updated Munophone to v10.
	- Intro's SFX no longer plays on some boss stages.
	- Added Abyss Rune N.");
	initPatchWords("Egg Changes
	- Added a secret feature in preparation for the upcoming April Fools' Day.
	- Hitting the egg with a melee hitbox now puts the hitbox owner into hitpause.
	- Kirby's Copy Egg now bounces lower with each bounce, has a maximum timer of 200, will be destroyed upon bouncing thrice, has sound and visual effects, and the hud badge is now darker when the move is on cooldown. (overall itmore closely resembling Bird Luigi's.) (Also, does this count as an egg change?)
	- Untitled Goose Alt's egg now has a chance to be yellow.
	- Egg now has an indicator if it's offscreen.
	- Egg now shows its hurtbox if 'Show Hitboxes' is on in training mode.
	- Adjusted egg hurtbox size/shape.");
	initPatchWords("Notes
	- so yeah apparently bird luigi was already in weeklies iirc? idk man
	- I noticed that there were quite a bit of unpolished, inconsistant, or seemingly rushed/unnecessary things about Bird Luigi, and used this update to fix them.
	- Also, this updated started to be worked on during Christmas of 2020, so happy holidays!");
	/* initPatchWords("Editor's Notes (Please remove this)
	Desync in online mode?
	- Stage is Field of hopes and dreams
	- Egg is on 2 health, floating, in Olympia's field
	- Bird Luigi and Olympia are also in field
	- Bird Luigi whiffs fair
	- Olympia field breaks
	- Olympia... airdodges? airdashes? idk what olympia's anims are
	- Bird Luigi whiffs utilt
	- Bird Luigi is hit with olympia dattack, techrolls
	- Olympia whiffs... nspecial or dspecial? i cant tell
	- Bird Luigi drops egg and uses misfire fstrong
	- Egg bounces on ground once and has 1 health left
	- Egg is hit with fstrong sweetspot
	- Olympia is hit with fstrong sourspot
	- Olympia is hit with egg
	- Olympia is hit with jab1
	- Egg is hit with jab1
	- Bird Luigi does not use jab2, and instead goes into walkturn
	- Desync occurs right as olympia would've been hit by egg again"); */

	initPatch("1.3", "8 December, 2020");
	initPatchWords_ext("The Competition Submission", fa_left, c_fuchsia, 1, 0);
	initPatchWords("Nerfs
	- Added 2-second cooldown to Egg Catch.");
	initPatchWords("Misc. Changes
	- Fixed the update release date on the previous update's section (previously it was just a placeholder).
	- Added a Munophone tip about the Egg Catch.
	- Updated Uspecial's frame data guide to account for the Egg Catch.
	- Added Assist Buddy compatibility.
	- Changed Bird Luigi's default Steve death message.
	- Added a unique Steve death message for when he gets killed while on fire.
	- Added a secret Steve death message that has a chance to appear if Otto kills Steve while Bird Luigi is present.
	- Updated Munophone to v7, adding a few features that Bird Luigi doesn't use as of right now but are still convieneient to have.
	- Submitted Bird Luigi to be usable in tournament play.");
	initPatchWords("Egg Changes
	- The egg no longer reports an error upon being destroyed.
	- Shovel Knight and Smartbert can now also Egg Bounce with their Dair.
	- Added a unique Steve death message for when he gets killed by the egg.");

	initPatch("1.2", "16 November, 2020");
	initPatchWords_ext("The Firmware Update", fa_left, c_aqua, 1, 0);
	initPatchWords("Buffs
	- Dair now launches the opponent closer to where Bird Luigi travels after the bounce, allowing it to combo more reliably.");
	initPatchWords("Nerfs
	- Slightly lowered Nair's ability to slow falling.");
	initPatchWords("Misc. Changes
	- Updated MunoPhone to v6, adding the ability to use on all stages.
	- Replaced the 'All attacks inflict Green Fire' cheat with 'Fstrong Misfire' on the Munophone.
	- Changed the hud icon that represents the Munophone to look like the GameBird Horror.
	- Bighurt now properly uses Bird Luigi's outline color.
	- Fixed a few minor typos in the previous update's patch notes.
	- Made a very tiny hidden change in the Munophone's interface.
	- Added the 'finished' tag.
	- Added the 'green' element css background.
	- Made slight changes to the Gold and Abyss alt colors.");
	initPatchWords("Egg Changes
	- More attacks now properly respond to hitting the Fireball Egg.
	- Egg can be caught and re-thrown by using Uspecial while Bird Luigi is close to the egg, granting him super armor and allowing him to influence the egg's throw direction if thrown in this manner.
	- There is now a small Egg Indicator on Bird Luigi's hud showing whether or not his egg-summoning moves are ready.");
	
	initPatch("1.1", "12 November, 2020");
	initPatchWords_ext("The Day One Patch..?", fa_left, c_lime, 1, 0);
	initPatchWords("Buffs
	- Completely replaced Fstrong to resemble the original Luigi's Green Missile, including misfires.
	- Fspecial's damage and knockback now scales with charge.
	- Mashing the attack button during Nair allows you to rise upwards during its first use each airtime.
	- More of Bird Luigi's attacks inflict Green Fire.
	- Dspecial is now faster, but inflicts less Green Fire.
	- Bair will now reduce ability to fall substantially after landing its first hit, to raise the chance of the second hit connecting.
	- Bair's second hit now has increased knockback, but lowered knockback scaling.");
	initPatchWords("Nerfs
	- Jab now has a cooldown after hitting jab2 to prevent infinite comboes.
	- Fair's spike hitbox is now much weaker, harder to hit, and is unable to hit grounded opponents.
	- Nspecial and Uspecial have a longer cooldown after an egg breaks before they can create another.
	- Decreased falling speed.");
	initPatchWords("Misc. Changes
	- Added MunoPhone
	- Added Alto & Trummel compatibility
	- Fixed Nspecial hurtbox
	- Landing a fully charged fspecial on an opponent will now trigger a short slow-motion animation.
	- Increased Idle and Walk anim speed.
	- Replaced planned seasonal alt with an Untitled Goose alt.");
	initPatchWords("Egg Changes
	- All players in the match now have a 'has_hit_luigi_egg' variable that checks if they've hit a fireball egg during their current attack.
	- Opponent Archens can now egg bounce with the Bird Luigi's Fireball Egg.
	- Bird Luigi can now ignite other Bird Luigis' eggs.
	- Egg is now thrown higher by uspecial.");
	
	initPatch("1.0", "7 September, 2020");
	initPatchWords_ext("The character was released.", fa_center, c_white, 0, 1);
	initPatchImage(other.spr_taunt, 1, fa_center, 1, c_white, 1);
	
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Cheat Codes			                                               ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with self{
	
	i = 0;
	
	/*
	 * Cheat codes enable bonus features or overpowered modes. This is a great
	 * place to put utilities that help when practicing the character, such as
	 * an option to instantly fill a resource meter or skip a cooldown.
	 * 
	 * initCheat(display name, backstage name, options, option names, description)
	 * 
	 * Use phone_cheats[] to reference these cheats in code, putting the
	 * backstage name (without quotes) as the array index. The backstage name
	 * becomes the name of a variable storing the cheat's index. E.g.
	 * 
	 * if (phone_cheats[cheat_funny_snail] == 1) {
	 *	   print_debug("woag");
	 * }
	 * 
	 * This is pretty similar to abyss runes - but instead of checking for if
	 * has_rune("X") is true or false, you check for the entry in the
	 * phone_cheats array.
	 * 
	 * Each cheat defaults to the first option in its option list (e.g.
	 * cheat_funny_snail defaults to 0). This happens even when the MunoPhone
	 * itself is not available.
	 * 
	 * Cheat descriptions should be short and sweet, as they can't be scrolled.
	 */
	
	// NOTE: If you remove these cheat codes, you will need to remove where
	// they're referenced elsewhere in code. The comment above each code tells
	// you which files reference it.
	
	// post_draw.gml
	initCheat("bird up", "cheat_funny_bird", [0, 1], ["no", "yes"], "funny");
	// update.gml
	initCheat("Max DJumps", "cheat_more_djumps", [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 20, 30, 45, 60, 80, 100, 690, 0], ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "15", "20", "30", "45", "60", "80", "100", "a lot", "0"], "Change Bird Luigi's maximum number of double jumps.");
	// update.gml
	initCheat("Fstrong Misfire", "cheat_fstrong_misfire", [0, 1, 2], ["Normal", "Always", "Never"], "See the 'Hud Badges' tip for details.");
	// update.gml
	initCheat("Infinite Flutterjump", "cheat_glide_infinite", [0, 1], ["Off", "On"], "");
	// update.gml
	initCheat("wide?", "cheat_widebert", [1, 1.25, 1.5, 2, 3, 5, 10, 20, 0.5, 0.25, 0.1, 0], ["Normal", "wide", "w i d e", "w  i  d  e", "w   i   d   e", "w    i    d    e", "w     i     d     e", "w      h      a      t", "narrow", "narrower", "narrowerer", "."], "how (taken from Sandbert with a Phone)");
	// init_shader.gml
	initCheat("Disco", "cheat_skittles", [0, 1], ["Off", "On"], "(taken from Sandbert with a Phone)");
	// update.gml
	initCheat("stop hitting yourself", "cheat_recoil", [0, 1], ["Off", "On"], "(taken from Sandbert with a Phone)");
	// article1_update.gml
	initCheat("Egg hitting", "cheat_egg_hit", [1, 0, 2], ["On", "Off", "Old System"], "Egg hitting was temporarily disabled due to desyncs in versions 1.45 and 1.6, you so can enable/disable it here if you still feel like messing around with it in training or something.");
	
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Frame Data Guide		                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with phone{

	// Move ordering. Reorder this as you see fit for your character
	
	// note: do NOT remove indexes from this list. empty indexes will be ignored by the frame data guide.
	// to hide an in-use attack index from the guide, use AG_MUNO_ATTACK_EXCLUDE instead!
	
	move_ordering = [
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
		AT_EXTRA_1,
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
	
	
	
	// Include a "Stats" page in the frame data guide?
	include_stats = true;
	
	// If so, put any specific notes here:
	stats_notes = "Has a flutterjump / glide."; // set to   "-"   if you don't need to put any notes
	
	
	
	// Include a custom page in the frame data guide? (Useful for documenting miscellaneous numbers, e.g. stats of a passive mechanic)
	include_custom = true;
	
	// If so, what's its name?
	custom_name = "Fireball Egg Stats"
	
	i = 0;
	
	// If so, use these functions to populate it:
	// initCFDHeader(text)
	// initCFDBody(text)
	
	initCFDHeader("Movement / Durability");
	initCFDBody("Bird Luigi's Fireball Egg is summoned by Nspecial or Uspecial, and has 3 health. It can be knocked around, and loses health if hit by a strong attack. Using Nspecial while the egg is in play will toggle it's floating state, where it is unaffected by gravity. It will bounce off of floors and walls, with each bounce taking 1 health from the egg. Hitting a wall and a floor both at once (like hitting a corner) will play a short jingle and only deal 1 damage to the egg instead of the 2 it would recieve from hitting them individually.");

	initCFDHeader("Purpose / Utility");
	initCFDBody("The Fireball Egg will hit opponents while it's moving, allowing it to make a good trap to drop onto an opponent as they pass under it. It deals 2% on hit, and can be ignited by Bird Luigi to make it deal additional Green Fire Damage. Both its owner and opponents can hit the egg, which is the main way of repositioning it. A floating egg will stop floating if it gets hit, but it can immediately have the float reapplied. If Bird Luigi uses Dair to hit the egg, Bird Luigi will bounce off of it, and send the egg straight downwards, making the 'Egg Bounce' both a recovery option and an edgeguarding tool.");
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ About					                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with phone{
	
	/*
	 * Info found in the "About" app.
	 * 
	 * initAbout(entry name, entry text)
	 * 
	 * Useful for credits or etc. The page can also scroll, so they can be long
	 * if you want
	 */
	
	initAbout("About Bird Luigi", "Bird Luigi was made by Onionring1403 (me) as part of the 'VS Bird Guy' contest. Bird Luigi has since then been considered, at least in my (onionring1403's) opinion, to be the first 'good' mod that I've released. Bird Luigi would've been the fourth mod publicly released on the workshop to have Munophone support, but I accidentally deleted my user_event15 file when installing Firmware Update V4's first Hotfix, delaying the updating adding the support by like a few days.
	Bird Luigi was heavily based on 'Bird Guy', an amazing workshop character mod by Gourami, which you should check out here:
	https://steamcommunity.com/sharedfiles/filedetails/?id=1962084547")
	initAbout("Bird Luigi Discord Link", "https://discord.gg/d6VW9Nv
	lol")
	
}







/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Compatibility			                                               ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

// Trummel & Alto codec

if pho_has_trum_codec{
	
	/*
	 * initCodec(gimmick)
	 * initCodecPage(speaker, expression, gimmick, text)
	 * 
	 * The variable trummel_id is initially set to noone (-4). When Trummel
	 * opens this char's codec, trummel_id is set to Trummel's object ID.
	 */
	
	/*
	 * Codec speaker handles:
	 * SPK_TRUM: Trum
	 * SPK_ALTO: Alto
	 * SPK_OTTO: Otto
	 * SPK_CODA: Coda
	 * SPK_ECHO: Tempo
	 * SPK_MINE: Steve (i dont normally use this one... like, what is he supposed to say?? the funny oof noise? you can if you want)
	 * SPK_SEGA: Sonic (see above)
	 */
	
	/* 
	 * Page gimmick handles:
	 * GIM_CHOMP			make the enemy ftilt
	 * GIM_CLONE 			display 2 speakers
	 * GIM_LAUGH_TRACK		play the funny haha sound
	 * GIM_SKIP   			advance the page immediately when the text finishes
	 * GIM_DIE    			die
	 * GIM_SHUT_UP			no chatter sfx
	 * GIM_HOWL			make the enemy dspecial
	 * GIM_SHADER			use your char's shaders (palette swaps) for the speaker portrait
	 * GIM_TEXTBOX			use a sprite stored in your char under the var spr_custom_trummel_textbox instead of the default textbox
	 * GIM_COLOR			use a color stored in your char under the var spr_custom_trummel_color instead of white (for the codec text)
	 * 
	 * To use multiple gimmicks on a single page, MULTIPLY them together. See
	 * _readme.gml for examples
	 */
	
	// Custom speaker setup - use 1, 2, 3, 4, ... for the index
	
	SPK_BIRD = initSpeaker(1, "Green Bird Guy", sprite_get("_pho_example_speaker"));
	SPK_UP = initSpeaker(2, "Bird Luigi", sprite_get("_pho_example_speaker"));
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_TRUM, 0, 0, "wow is that green bird guy");
	initCodecPage(SPK_BIRD, 0, GIM_SHADER, "...Pardon?");
	initCodecPage(SPK_ALTO, 1, 0, "Ah, that's Bird Luigi! Imagine Bird Guy, but like
	     
	worse in every way.");
	initCodecPage(SPK_ALTO, 1, GIM_SKIP, "Jokes aside, you should keep note of-");
	initCodecPage(SPK_TRUM, 0, 0, "bird up");
	initCodecPage(SPK_ALTO, 9, 0, "...");
	initCodecPage(SPK_TRUM, 0, 0, "...");
	initCodecPage(SPK_ALTO, 9, 0, "...");
	initCodecPage(SPK_ALTO, 0, GIM_SKIP, "...Anyway, please keep track of-");
	initCodecPage(SPK_TRUM, 0, 0, "bird");
	initCodecPage(SPK_ALTO, 9, 0, "...");
	initCodecPage(SPK_UP, 0, 0, "...");
	initCodecPage(SPK_UP, 0, GIM_SKIP * GIM_SHADER, "...If you'd like, perhaps I could just-");
	initCodecPage(SPK_TRUM, 0, 0, "up");
	initCodecPage(SPK_UP, 0, GIM_SHADER, "...");
	initCodecPage(SPK_TRUM, 0, 0, "...");
	initCodecPage(SPK_ALTO, 9, 0, "...");
	initCodecPage(SPK_UP, 0, GIM_SHADER, "...");
	initCodecPage(SPK_UP, 0, GIM_SKIP * GIM_SHADER, "...Pardon my request, but would you please-");
	initCodecPage(SPK_TRUM, 0, 0, "bird");
	initCodecPage(SPK_UP, 0, GIM_SHADER, "...");
	initCodecPage(SPK_TRUM, 0, 0, "...");
	initCodecPage(SPK_ALTO, 9, 0, "...Alright. I think we're done here.");
	initCodecPage(SPK_TRUM, 5, GIM_SKIP, "bird up");
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	
	otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");
	otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body"); // you only need to change this one if you REALLY want to. most chars just use the head sprite
	
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve got canceled on Twitter";
	
}



// Feri taunt costume

if pho_has_feri_taunt{
	
	sprite_change_offset("feri_costume", 84, 114);
	feri_costume = sprite_get("feri_costume");
	
}



// Hikaru fakie title

if pho_has_hikaru_fak{
	
	Hikaru_Title = "woaf";
	
}



// Rat all-out quote

if pho_has_rat_allout{
	
	personaQuips[10] = "woaf";
	
}



// The Chosen One sketch

if pho_has_tco_sketch{
	
	tcoart = sprite_get("tco_sketch");
	
}



// Abyss Hime death sprite

if pho_has_ahime_dead{
	
	sprite_change_offset("ahime_dead", 0, 0);
	abyssHime_deathspr = sprite_get("ahime_dead");
	
}



// Fire's taunt

if pho_has_fire_taunt{
	
	sprite_change_offset("fire_taunt", 0, 0);
	fire_taunt = sprite_get("fire_taunt");
	fire_taunt_duration = 420;
	fire_taunt_frames = 69;
	fire_taunt_sound = sound_get("woagf");
	fire_taunt_sound_frame = 3;
	
}



// Wall-E's radio

if pho_has_wall_e_ost{
	
	walle_taunt_sound = sound_get("wall_e_sound");
	walle_taunt_type = 1;
	
}



// Amber's plushie and hug

if pho_has_amber_love{
	
	plushForAmber = sprite_get("amber_plushie");
	
	// Amber interaction variables
	amber_herObj = noone; // The object ID of Amber when she hugs. Amber's own script will set this when the hug is inititated
	amber_thisHugSprite = sprite_get("sandbert_hug");
	amber_herHugSprite = sprite_get("amber_hug");
	amber_startHug = false; // This variable is set true from Amber's scripts
	amber_thisSpriteInFront = true; // When true, this character's sprite is rendered over Amber's sprite
	amber_autoTurnToHer = true; // This character will automatically face towards Amber upon hug activatation when true
	
	amber_hugStartPos[0] = 42; // The x target offset point (from Amber's pos) where the player should hug Amber at. 
	amber_hugStartPos[1] = 0; // The y target offset point. Recommended to keep this at 0 for grounded interaction
	
	amber_hugExitPos[0] = 42; // The x target offset point (from Amber's pos) where the player stands at when exiting hug state.
	amber_hugExitPos[1] = 0; // The y target offset point.
	
	// The x target offset positions will inherit the character's spr_dir when this is true.
	// Set this to true for character interactions that face toward each other such as hugging
	// Set this to false for centered interaction animations
	amber_useSprDirOffset = true; 
	
	amber_hugExitTimer = 30; // How many frames should pass before either player can exit the hug window loop
	amber_hugExitWindow = 3; // The window to jump to when either player presses a button to exit hug loop
	
	sprite_change_offset("sandbert_hug", 32, 62);
	sprite_change_offset("amber_hug", 32, 62);
	
}



// Moonchild music

if pho_has_moon_music{
	
	childsupport = true; // this is so sad
	
}



// Agent N codec

if pho_has_agentn_cdc{
	
	ncode1 = "line1";
	ncode2 = "line2";
	ncode3 = "line3";
	
}



// Dracula dialogue

if pho_has_drac_codec{
	
	dracula_portrait = sprite_get("drac_portrait");
	dracula_portrait2 = asset_get("empty_sprite");
	dracula_portrait3 = asset_get("empty_sprite");
	var page = 0;
	
	// Page 0
	dracula_speaker[page] = 0;
	dracula_text[page] = "holy frick";
	page++;
	
	// Page 1
	dracula_speaker[page] = 0;
	dracula_text[page] = "im dracula";
	page++;
	
	// repeat...
	
}



// Miiverse post

if pho_has_miivs_post{
	
	sprite_change_offset("miiverse_post", 60, 30);
	miiverse_post = sprite_get("miiverse_post");
	
}



// Mt Dedede title

if pho_has_dede_title{
	
	arena_title = "woag";
	arena_short_name = "woaf";
	
}



// Soulbound Conflict

if pho_has_soul_title{
	
	battle_text = "* woag";
	
}



// Trial Grounds

if pho_has_been_found{

	sprite_change_offset("trial_grounds", 31, 0);
	guiltySprite = sprite_get("trial_grounds");
	
}



// Last Resort painting

if pho_has_resort_pic{
	
	sprite_change_offset("last_resort", 27, 39);
	resort_portrait = sprite_get("last_resort");
	
}



// PKMN Stadium battle portraits

if pho_has_pkmn_image{
	
	pkmn_stadium_front_img = sprite_get("pkmn_front");
	pkmn_stadium_back_img = sprite_get("pkmn_back");
	pkmn_stadium_name_override = "sdkhjfskhgfkslhfglkha";
	
}



// Daroach dialogue

if pho_has_daro_codec{
	
	daroach_portrait = sprite_get("daro_portrait");
	daroach_portrait2 = asset_get("empty_sprite");
	daroach_portrait3 = asset_get("empty_sprite");
	var page = 0;
	
	// Page 0
	daroach_speaker[page] = 0;
	daroach_text[page] = "holy frick";
	page++;
	
	// Page 1
	daroach_speaker[page] = 0;
	daroach_text[page] = "im dracula";
	page++;
	
	// repeat...
	
}





/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ The End				                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

// THIS MARKS THE END OF THE SECTION YOU HAVE TO EDIT!
// BELOW THIS IS JUST BEHIND-THE-SCENES CODE





#define initAbout(obj_name, obj_text)

var para = {
	type: 0,
	text: obj_text,
	align: fa_left,
	color: c_white,
	indent: 0,
	gimmick: 0,
	side_by_side_exempt: false
};

var tip = {
	name: obj_name,
	objs: [para]
};

array_push(abouts, tip);



#define initCFDHeader(text)

custom_fd_content[i] = {
	type: 0, // header
	content: text
};

i++;



#define initCFDBody(text)

custom_fd_content[i] = {
	type: 1, // body
	content: text
};

i++;



#define initCodec(cd_gimmick)

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

trummel_speakers[idx] = {
	name: speak_name,		// Name displayed while talking
	sprite: speak_sprite	// Sprite of face
};

return idx * -1;



#define initTip(tip_name)

tips[i] = {
	name: tip_name,
	objs: [0]
};

i++;

j = 0;



#define initTipWords(obj_text)

i--;

tips[i].objs[j] = initWords(obj_text);

tipObjEnd();



#define initTipWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick)

i--;

tips[i].objs[j] = initWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick);

tipObjEnd();



#define initTipImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick)

i--;

tips[i].objs[j] = initImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick);

tipObjEnd();



#define initTipImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d)

i--;

tips[i].objs[j] = initImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d);

tipObjEnd();



#define initPatch(pat_ver, pat_date)

patches[i] = {
	name: "v" + pat_ver,
	date: pat_date,
	objs: [0]
};

i++;

j = 0;



#define initPatchWords(obj_text)

i--;

patches[i].objs[j] = initWords(obj_text);

tipObjEnd();



#define initPatchWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick)

i--;

patches[i].objs[j] = initWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick);

tipObjEnd();



#define initPatchImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick)

i--;

patches[i].objs[j] = initImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick);

tipObjEnd();



#define initPatchImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d)

i--;

patches[i].objs[j] = initImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d);

tipObjEnd();



#define initWords(obj_text)

return {
	type: 0,
	text: obj_text,
	align: fa_left,
	color: c_white,
	indent: 0,
	gimmick: 0,
	side_by_side_exempt: false
};

tipObjEnd();



#define initWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick)

return {
	type: 0,
	text: obj_text,
	align: obj_align,
	color: obj_color,
	indent: obj_indent,
	gimmick: obj_gimmick,
	side_by_side_exempt: false
};

tipObjEnd();



#define initImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick)

return {
	type: 1,
	sprite: obj_sprite,
	frame: obj_frame,
	align: obj_align,
	xscale: obj_xscale,
	color: obj_color,
	gimmick: obj_gimmick,
	margin_l: "unset",
	margin_r: "unset",
	margin_u: "unset",
	margin_d: "unset",
	needs_auto_margins: true,
	side_by_side_exempt: false
};

tipObjEnd();



#define initImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d)

return {
	type: 1,
	sprite: obj_sprite,
	frame: obj_frame,
	align: obj_align,
	xscale: obj_xscale,
	color: obj_color,
	gimmick: obj_gimmick,
	margin_l: obj_l,
	margin_r: obj_r,
	margin_u: obj_u,
	margin_d: obj_d,
	needs_auto_margins: false,
	side_by_side_exempt: false
};

tipObjEnd();



#define tipObjEnd

i++;

j++;



#define initCheat(ch_name, ch_cmd, ch_opt, ch_opt_name, ch_desc)

phone.cheats[i] = {
	name: ch_name,
	command: ch_cmd,
	options: ch_opt,
	option_names: ch_opt_name,
	description: ch_desc,
	on: 0
};

variable_instance_set(self, ch_cmd, i);
phone_cheats[i] = ch_opt[0];

i++;



#define room_add(_room_id,room_data) // Adds a new room to the scene. for BTT
with obj_stage_article if num == 5 {
	var _room_id_ind = array_find_index(array_room_ID,_room_id);
	if _room_id_ind == - 1 {
	    if debug print_debug("[RM] Adding... "+string(_room_id));
	    array_push(array_room_data,room_data);
	    array_push(array_room_ID,_room_id);
	} else {
	    array_room_data[_room_id_ind] = room_data;
	    array_room_ID[_room_id_ind] = _room_id;
	}
}