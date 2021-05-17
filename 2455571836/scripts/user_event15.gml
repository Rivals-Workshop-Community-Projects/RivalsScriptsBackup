// Muno template - [CORE] user-defined content



/*
 * THIS IS THE ONLY FILE YOU NEED TO EDIT! The other user_events, as well as
 * css_draw, are not to be edited by the end user.
 */



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Update Code			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

if ("phone_inited" in self && phone_inited && !phone_lightweight){

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
	swallowed = 0
		var ability_spr = sprite_get("glace_kirby")
		var ability_hurt = sprite_get("glace_kirby_hurt")
		var ability_icon = sprite_get("glace_kirby_icon")
		var ability_sb1 = sprite_get("nspecial_proj")
		var ability_sb1_hurt = sprite_get("nspecial_proj_hurt")
		var ability_sbsfx1 = sound_get("glace_snowball_throw")
		var ability_sbsfx2 = sound_get("glace_snowball_land")
		
	with enemykirby  {
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sbsfx1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_EXTRA_3, 1);

set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 50);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, 35);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 16);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 30);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 29);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, -33);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -36);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, ability_sbsfx2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_sb1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ability_sb1_hurt);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 22);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0.25);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);

	newicon = ability_icon
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
pho_has_copy_power = 1;	// Kirby Copy Ability
pho_has_btt_layout = 0;	// Break the Targets stage

// Character cosmetics
pho_has_otto_bhead = 1;	// Bobblehead for Otto's bike
pho_has_steve_dmsg = 1;	// Death message for Steve
pho_has_feri_taunt = 1;	// Costume for Feri's taunt
pho_has_hikaru_fak = 1;	// Title for Hikaru's fakie
pho_has_rat_allout = 1;	// Quip for Rat's all-out attack
pho_has_tco_sketch = 1;	// Drawing for The Chosen One's down taunt
pho_has_ahime_dead = 1;	// Sprite for Abyss Hime's slicing effect
pho_has_tink_picto = 1;	// Photograph for Toon Link's picto box
pho_has_fire_taunt = 0; // Fire's Taunt
pho_has_wall_e_ost = 1; // Wall-E's music
pho_has_amber_love = 1; // Amber's plush and/or hug
pho_has_moon_music = 0; // Moonchild's taunt music
pho_has_agentn_cdc = 1; // Agent N's codec

// Stage cosmetics
pho_has_drac_codec = 1;	// Dialogue for the Dracula boss fight
pho_has_miivs_post = 1;	// Posts for the Miiverse stage
pho_has_dede_title = 1;	// Title for the Mt Dedede Stadium stage
pho_has_soul_title = 1; // Text for the Soulbound Conflict stage
pho_has_been_found = 1; // Death sprite for the Trial Grounds stage
pho_has_resort_pic = 1; // Portrait for the Last Resort stage
pho_has_pkmn_image = 1; // Battle sprite for Pokémon Stadium
pho_has_daro_codec = 1; // Dialogue for the Daroach boss fight



if (object_index == asset_get("cs_playerbg_obj")){
	num_alts = 32; // Number of alt costumes; controls how many appear on the CSS
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

muno_char_icon = get_char_info(player, INFO_ICON);		// CSS icon of the character. You can replace this with an arbitrary sprite, using sprite_get(), and it'll be used in the upper left of the phone's big screen. (Make it the same size pls, thank u)

phone.taunt_hint_x = 0;									// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.
phone.taunt_hint_y = 0;									// Vertical offset
phone.shader = 0;										// Whether or not to apply the character's palette to the phone and non-TrainingTown sidebar (change color with alt costumes)

phone.dont_fast = 0;									// Set to 1, and Fast Graphics will NOT automatically be set when the FPS dips below 60.
phone_lightweight = 0;									// Set to 1 to disable certain features, possibly improving performance a little bit. See _readme.gml.
phone.frame_data_loaded = 0;							// Set to 1 to disable the frame data guide, which MIGHT improve performance on bad computers? (This is just a guess. It has no impact on code run during gameplay, but gets rid of a TON of data stored in memory in Practice Mode...)

/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Tips					                                                       ║
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
	
	// NOTE: Using sprite_get() does not work here, so sprites must be saved as
	// variables. See init.gml for an example of this with spr_nspecial_proj.
	
	initTip("NSpecial: Snowball");
	initTipWords("Low damage, low knockback, but all the annoying. Will you stop throwing snowballs? Up to you.");
	initTipImage(player_id.spr_nspecial, -5, fa_left, 1, c_white, 0);
	
	initTip("FSpecial: Kitty Pounce -> Roll");
	initTipWords("Using the FSpecial once will put you in a state where you must commit, hit an opponent, or land onto the ground. Press the special button again after performing FSpecial to start rolling.");
	initTipImage(player_id.spr_roll_forward, -5, fa_center, 1, c_white, 3);

	initTip("DSpecial: Ice Statue Cancel");
	initTipWords("Pressing the Special button during DSpecial will cancel the move if you are still within the air.");
	initTipImage(player_id.spr_dspecial, 9, fa_center, 1, c_white, 0);
	
	initTip("DAttack: Jump Cancel");
	initTipWords("If you land a hit with this attack, you can press jump to cancel immediately out of it.");
	initTipImage(player_id.spr_dattack, -5, fa_center, 1, c_white, 0);
	
	initTip("BAir & DAir: Sweetspots");
	initTipWords("If you land the Back or Down Air at the starting tip of the tail, you will land the sweetspot. In the case of the Down Air, you can even gain a slight lift upwards!");
	initTipImage(player_id.spr_bair, -5, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_dair, -5, fa_right, 1, c_white, 0);
	
	initTip("Air Dodge Cancelling");
	initTipWords("If you press the air dodge button during, USpecial, the first part of FSpecial, or the first part of DSpecial you will cancel out of the move..");
	initTipImage(player_id.spr_airdodge, -5, fa_center, 1, c_white, 0);

	initTip("Design Evolution");
		initTipWords_ext("Design #1 - Sonic OC", fa_center, c_gray, 0, 0);
	initTipImage(player_id.spr_design1, 0, fa_center, 1, c_white, 0);
	initTipWords("While never officially being named Glace (nor an ice-type at the time), a design adjacent to her was once created as a Sonic OC in the early 2010s.");
		initTipWords_ext("Design #2 - Too Derivative", fa_center, c_gray, 0, 0);
	initTipImage(player_id.spr_design2, 0, fa_center, 1, c_white, 0);
	initTipWords("Still evolving into the Glace we know, a very derivative OC was created in I wanna say 2013-2014 during my time in the Exploding Rabbit community. We'll be getting to more original territory soon enough!");
		initTipWords_ext("Design #3 - Ice Furry", fa_center, c_gray, 0, 0);
	initTipImage(player_id.spr_design3, 0, fa_center, 1, c_white, 0);
	initTipWords("This is where Glace truly gets her start. Beginning with the codename 'IceFurry,'	I created her around 2016-2017 for a Mega Man 8-Bit Deathmatch mod called 'TheMod.pk3' as we lacked an ice-type character in the cast.");
	initTipWords("as well this was during an era where we added an elemental weakness system and thus elements that didn't exist as playable characters needed to be created. Glace was also created as a parallel character to another playable in the roster, 'Sal,' an anthro Espeon.");
	initTipWords("Although, Glace was never created to be based on a Pokemon, let alone Glaceon despite a close enough name. She first started development taking more inspiration from Kirby's Ice Form and as such featured SFX from Kirby Super Star in her first appearance.");
		initTipWords_ext("Design #4 - Near Perfection", fa_center, c_gray, 0, 0);
	initTipImage(player_id.spr_design4, 0, fa_center, 1, c_white, 0);
	initTipWords("By this point in 2018, TheMod.pk3 had received a new name in the form of 'MagiCode,' and among many of it's updates I decided to update Glace's design for the first time to streamline details and simplify her appearance to be easier to work with.");
	initTipWords("This was also when I begun to think more about her as an original character in an original world. Gave her the last name 'Diamond,' and created a new world of characters featured in this furry world. Including my own take on the character 'Sal.'");
		initTipWords_ext("Design #5 - Today", fa_center, c_gray, 0, 0);
	initTipImage(player_id.spr_design5, 0, fa_center, 1, c_white, 0);
	initTipWords("As of 2020, I've officially landed on a design that has remained mostly consistent and how you see her today. A smug and cutesy ice kitty who apparently becomes the subject to why she lacks clothing. Though that may be lore that will be dived into another day.");
	initTipWords("For more info, you can check out her ToyHouse page at: https://toyhou.se/9323316.glace-diamond");
initTipWords_ext("Appearance in Rivals of Aether", fa_center, c_gray, 0, 0);
	initTipImage(player_id.spr_designR, 0, fa_center, 1, c_white, 0);
	initTipWords("Starting in 2019, I begun thinking of creating Glace as a modded character for Rivals of Aether ever since the Workshop was first revealed. Overtime, the look of her main sprite changed to what you see now in 2021, which is funnily enough the result of only a month's worth of work to create the full product.");
}

/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Patch Notes			                                                       ║
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
	 
	initPatch("1.4.2", "May 16th, 2021");
	initPatchWords("Misc. Updates
	~ Fixed the changelog for 1.4
	~ FSpecial and DSpecial's cooldowns now reset by being hit or on death");
	
	initPatch("1.4", "May 10th, 2021");
	initPatchWords("Attack Nerfs
	- Set the DSpecial to only go upwards if activated on the ground
	- Lowered the knockback and knockback scaling on UStrong
	- Lowered the speed and knockback on the NSpecial snowballs
	");
	initPatchWords_ext("Who knows why these weren't done sooner...", fa_left, c_gray, 1, 0);
	
	initPatchWords("Misc. Updates
	~ Added a new cheat code");
	
	initPatchWords("Visual Updates
	* Color separation added to allow for cleaner alternate colors
	* Changed some of the alternate colors to benefit from the color separation update
	* Removed the Invert color palette
	* Added the Lovely color palette
	* Feri's costume updated, using a sprite created by That Azazel Fire himself");
	 
	initPatch("1.3.2", "May 6th, 2021");
	initPatchWords("Misc. Updates
	~ Added a design biography in the Tips section");
	
	initPatchWords("Visual Updates
	* Fixed more color issues");
	 
	initPatch("1.3", "May 2nd, 2021");
	initPatchWords("Misc. Updates
	~ AI code added
	~ Abyss Runes added
	~ New cheat code added
	~ Added an excerpt about the DimpsBuild of MunoPhone");
	
	initPatchWords("Visual Updates
	* Up Taunt now added
	* Neutral Taunt replaced with a new non-loopable taunt
	* New sprites for NSpecial
	* New sprites for FSpecial
	* Workshop: Amber hug compatibility added
	* Workshop: Assist buddy compatibility added
	* Workshop: Final Smash compatibility added
	");
	initPatchWords_ext("You thought we were done here?", fa_left, c_gray, 1, 0);
	
	initPatch("1.2", "April 20th, 2021");
	
	initPatchWords("Attack Buffs
	+ Made the FStrong hitbox a little bit taller
	+ Buffed DTilt slightly
	+ Made it a little more possible to dash dance with her
	");
	initPatchWords_ext("She really didn't need a lot of these.", fa_left, c_gray, 1, 0);
	
	initPatchWords("Attack Nerfs
	- Slowed down jab a bit
	- Nerfed the sweetspots as well as nerfed the damage on BAir & DAir
	- Landing lag added to several moves
	- Hitfall removed from NSpecial and FSpecial
	- Added more startup and ending lag on NAir
	- Upped the ending lag on the NAir and BAir
	- Removed the super armor of some windows during DSpecial
	- Made it so if NAir doesn't land any hits, it will automatically cancel
	- Cut down a bit of knockback on the DStrong
	- Cut down a bit of knockback and damage on part 1 of FSpecial
	- Made it a little harder to land both attacks on the DSpecial
	- Reduced the hitpause on Jabs 1 and 2
	- Nerfed the damage on FStrong
	- Added a little bit of starting lag on FStrong
	- Nerfed Jab 3 slightly
	");
	initPatchWords_ext("We gotta make her tournament viable, somehow!", fa_left, c_gray, 1, 0);
	
	initPatchWords("Visual Updates
	* New sprites for DAir
	* New sprites for FStrong
	* New sprites for FTilt
	* Added more frames to Dash Attack
	* Fixed a color error on DStrong
	* Workshop: Kirby copy ability added
	* Workshop: Amber doll added
	* Workshop: Sandstar hurt sprite added for Savannah Area
	* Workshop: MunoPhone support added
	* Workshop: Trummel codec added
	* Workshop: Otto bobblehead added
	* Workshop: Rat All Out Attack Quote added
	* Workshop: Abyss Hime sliced sprite added
	* Workshop: Dracula dialogue added
	* Workshop: Daroach dialogue added
	");
	initPatchWords_ext("Wow! So much better looking!", fa_left, c_gray, 1, 0);
	
	initPatch("1.0", "April 12th, 2021");
	initPatchWords_ext("THE INITIAL RELEASE!!", fa_center, c_white, 0, 1);
	initPatchImage(other.spr_sleep, -25, fa_center, 1, c_white, 0);
	
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Cheat Codes			                                                       ║
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
	// they're referenced elsewhere in code. The comment above each cheat tells
	// you which files reference it.
	
	//We'll add cheat codes later...//
	
	// update.gml
	initCheat("Max Jumps", "cheat_more_djumps", [1, 2, 3, 4, 5, 6, 7, 8, 9, 0], ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"], "Change Glace's maximum number of jumps.");
	
	// update.gml
	initCheat("wide?", "cheat_widebert", [1, 1.25, 1.5, 2, 3, 5, 10, 20, 0.5, 0.25, 0.1, 0], ["Normal", "wide", "w i d e", "w  i  d  e", "w   i   d   e", "w    i    d    e", "w     i     d     e", "w      h      a      t", "narrow", "narrower", "narrowerer", "."], "how");
	
	// set_attack.gml
	initCheat("Final Smash Toggle", "cheat_final_smash", [0, 1], ["Off", "On"], "Change the NSPECIAL to the Final Smash.");
	
	// update.gml
	initCheat("Enable All Runes", "cheat_all_runes", [0, 1], ["Off", "On"], "Equips all the Abyss Runes, besides Rune A (go to Max Jumps for that).");
	
	//Unused Cheat Codes//
	// post_draw.gml
	//initCheat("Say woag", "cheat_funny_snail", [0, 1], ["no", "yes"], "Say woag? Yes. No. AAAAAA");
	
	// attack_update.gml
	//initCheat("USpecial Flight Speed", "cheat_flight_speed", [1, 1.25, 1.5, 2, 3, 5, 10], ["1", "1.25", "1.5", "2", "3", "5", "10"], "Change the speed of USpecial's flight.");
	
	// attack_update.gml
	//initCheat("FSpecial Cancel", "cheat_fspecial_cancel", [0, 1], ["Off", "On"], "Cancel FSpecial into any action.");
	
	// init_shader.gml
	//initCheat("Disco", "cheat_skittles", [0, 1], ["Off", "On"], "skittles");
	
	// update.gml
	//initCheat("stop hitting yourself", "cheat_recoil", [0, 1], ["Off", "On"], "ouf");
	
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
	
	
	
	// Include a "Stats" page in the frame data guide?
	include_stats = true;
	
	// If so, put any specific notes here:
	stats_notes = "-"; // "-" means no notes
	
	
	
	// Include a custom page in the frame data guide? (Useful for documenting miscellaneous numbers, e.g. stats of a passive mechanic)
	include_custom = false;
	
	// If so, what's its name?
	custom_name = "Monado Art Data"
	
	i = 0;
	
	// If so, use these functions to populate it:
	// initCFDHeader(text)
	// initCFDBody(text)
	
	initCFDHeader("Monado Jump");
	initCFDBody("Cooldown: 100000 seconds
	Duration: 5
	Effects: you jump higher???? by like 2x");
	
	initCFDHeader("Monando Shield");
	initCFDBody("Cooldown: 4
	Duration: 2
	Effects: Wait why is this listed second");
	initCFDBody("woag this is a enw apragraph");
	
	initCFDHeader("Some crazy third thing");
	initCFDBody("Damage: 7
	sw: i
	m");
	
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ About					                                                       ║
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
	 * if you want. AND you can have multiple of these
	 */
	
	initAbout("About The DimpBuild", "The customized MunoPhone created by Dimpsuu.
	
	This is a version of MunoPhone created by Dimpsuu, the contents created can be reused but recommend credit.
	
	Twitter: @Dimpsy_Boots
	Discord: Dimpsuu#1376");
	
	initAbout("About Glace", "Original character created by Dimpsuu.
	
	SFX:
	- Kirby Super Star
	- Super Smash Bros. Melee
	- Sonic Advance
	- Mega Man Zero
	- Minecraft
	- Skullgirls
	- Mario & Luigi: Superstar Saga
	- Mega Man 8");
	
}







/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Compatibility			                                                       ║
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
	 * GIM_HOWL				make the enemy dspecial
	 * GIM_SHADER			use your char's shaders (palette swaps) for the speaker portrait
	 * GIM_TEXTBOX			text color             is set to the value of the   spr_custom_trummel_textbox   variable in the player object
	 * GIM_COLOR			textbox sprite index   is set to the value of the   spr_custom_trummel_color     variable in the player object
	 * 
	 * To use multiple gimmicks on a single page, MULTIPLY them together. See
	 * _readme.gml for examples
	 */
	
	// Custom speaker setup - use 1, 2, 3, 4, ... for the index
	
	SPK_GLAC = initSpeaker(1, "Glace", sprite_get("_pho_glace_speaker"));
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_TRUM, 0, 0, "That's a weird looking cat.");
	initCodecPage(SPK_GLAC, 0, 0, "Nya~");
	initCodecPage(SPK_ALTO, 0, 0, "She seems harmless, can we keep her?");
	initCodecPage(SPK_TRUM, 2, 0, "No.");
	
	initCodec(0);
	initCodecPage(SPK_ALTO, 0, 0, "You ever wonder why Glace doesn't wear clothes?");
	initCodecPage(SPK_GLAC, 1, 0, "...");
	var h = GIM_SHUT_UP;
	initCodecPage(SPK_TRUM, 2, 0, "Dude... look what game we're in.");
	initCodecPage(SPK_ALTO, 0, 0, "Wrastor, Etalus, Absa, Kragg, Orcane...");
	initCodecPage(SPK_ALTO, 2, 0, "Oh.");
	
	spr_custom_trummel_color = c_red;
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	
	otto_bobblehead_sprite = sprite_get("_pho_glace_bobble_head");
	//otto_bobblebody_sprite = sprite_get("_pho_glace_bobble_body"); // you only need to change this one if you REALLY want to. most chars just use the head sprite
	
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve was scratched by Glace.";
	
}



if !phone_lightweight{



	// Feri taunt costume
	
	if pho_has_feri_taunt{
		
		sprite_change_offset("feri_costume_glace", 84, 114);
		feri_costume = sprite_get("feri_costume_glace");
		
	}
	
	
	
	// Hikaru fakie title
	
	if pho_has_hikaru_fak{
		
		Hikaru_Title = "Hikaru, the clothed furry!";
		
	}
	
	
	
	// Rat all-out quote
	
	if pho_has_rat_allout{
		
		personaQuips[10] = "PUT SOME CLOTHES ON!";
		
	}
	
	
	
	// The Chosen One sketch
	
	if pho_has_tco_sketch{
		
		tcoart = sprite_get("glacetcoart");
		
	}
	
	
	
	// Abyss Hime death sprite
	
	if pho_has_ahime_dead{
		
		sprite_change_offset("glace_sliced", 48, 73);
		abyssHime_deathspr = sprite_get("glace_sliced");
		
	}
	
	
	
	// Fire's taunt
	
	/*if pho_has_fire_taunt{
		
		sprite_change_offset("fire_taunt", 0, 0);
		fire_taunt = sprite_get("fire_taunt");
		fire_taunt_duration = 420;
		fire_taunt_frames = 69;
		fire_taunt_sound = sound_get("glace_kirby_taunt");
		fire_taunt_sound_frame = 3;
		
	}
	
	
	
	// Wall-E's radio
	
	if pho_has_wall_e_ost{
		
		walle_taunt_sound = sound_get("wall_e_sound");
		walle_taunt_type = 1;
		
	}*/
	
	
	
	// Amber's plushie and hug
	
	if pho_has_amber_love{
		
		plushForAmber = sprite_get("glace_amber_doll");
		/*
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
		*/
	}
	
	
	
	// Moonchild music
	
	if pho_has_moon_music{
		
		childsupport = true; // this is so sad
		
	}
	
	
	
	// Agent N codec
	
	if pho_has_agentn_cdc{
		
	ncode1 = "An ice-type cat who likes to adventure."
	ncode2 = "Capable of using ice powers and her scarf for attacks."
	ncode3 = "Doesn't like wearing clothing...?"
		
	}
	
	
	
	// Dracula dialogue
	
	if pho_has_drac_codec{
		
		dracula_portrait = sprite_get("glace_dracula_portrait");
		dracula_portrait2 = sprite_get("glace_dracula_portrait");
		dracula_portrait3 = sprite_get("glace_dracula_portrait");
		var page = 0;
		
		dracula_speaker[page] = 0;
		dracula_text[page] = "Who dares let a cat into my lair?";
		page++;
		
		dracula_speaker[page] = 1;
		dracula_text[page] = "Nya~!";
		page++;
		
		dracula_speaker[page] = 0;
		dracula_text[page] = "[shake] ...That power! You are not a normal feline afterall!";
		page++;
		
		dracula_speaker[page] = 1;
		dracula_text[page] = "Can we get onto the fight already? I'm starved.";
		page++;
		
		dracula_speaker[page] = 0;
		dracula_text[page] = "Whatever you are [glass], I shall end your life!";
		page++;
		
	}
	
	
	
	// Miiverse post
	
	if pho_has_miivs_post{
		
		sprite_change_offset("glacemv", 60, 30);
		miiverse_post = sprite_get("glacemv");
		
	}
	
	
	
	// Mt Dedede title
	
	if pho_has_dede_title{
		
		arena_title = "The Cold Adventurer";
		
	}
	
	
	
	// Soulbound Conflict
	
	if pho_has_soul_title{
		
		battle_text = "* Nya.";
		
	}
	
	
	
	// Trial Grounds
	
	if pho_has_been_found{
	
		sprite_change_offset("glacedr", 31, 0);
		guiltySprite = sprite_get("glacedr");
		
	}
	
	
	
	// Last Resort painting
	
	if pho_has_resort_pic{
		
		sprite_change_offset("sal_portrait", 27, 39);
		resort_portrait = sprite_get("sal_portrait");
		
	}
	
	
	
	// PKMN Stadium battle portraits
	
	if pho_has_pkmn_image{
		
	pkmn_stadium_front_img = sprite_get("glace_stadiumfront");
	pkmn_stadium_back_img = sprite_get("glace_stadiumback");
	pkmn_stadium_name_override = "Glace";
		
	}
	
	
	
	// Daroach dialogue
	
	if pho_has_daro_codec{
		
		daroach_portrait = sprite_get("glace_dracula_portrait");
		daroach_portrait2 = asset_get("glace_dracula_portrait");
		daroach_portrait3 = asset_get("glace_dracula_portrait");
		var page = 0;
		
		daroach_speaker[page] = 0;
		daroach_text[page] = "Squeak.";
		page++;
		
		daroach_speaker[page] = 1;
		daroach_text[page] = "Nya.";
		page++;
		
		daroach_speaker[page] = 0;
		daroach_text[page] = "...So you got any treasure?";
		page++;
		
		daroach_speaker[page] = 1;
		daroach_text[page] = "No, do I look like I could be carrying anything?";
		page++;
		
		daroach_speaker[page] = 0;
		daroach_text[page] = "...Good point, but I still wanna fight you anyways.";
		page++;
		
		daroach_speaker[page] = 1;
		daroach_text[page] = "Okay, but make it quick!";
		page++;
		
	}
	
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