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
			
			swallowed = 0; // don't touch this line please im begging you
			
			var ability_spr = sprite_get("hadoukirb");
			var ability_hurt = sprite_get("hadoukirb_hurt");
			var ability_proj = sprite_get("nspecial_projair");
			var ability_sound = sound_get("crescentlight");
			var ability_icon = sprite_get("kirboicon");
			// add more to transfer other sprites, or sfx
			
			with enemykirby{
				muno_last_swallowed = other.id;
				
				newicon = ability_icon;
			
				set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
				set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
				set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
				
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 6);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sound);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 5);
	
				
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 3);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
				
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 10);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 3);
				
				set_num_hitboxes(AT_EXTRA_3, 1);
				
				set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
				set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
				set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 90);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 32);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -42);
				set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
				set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 50);
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 3);
				set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .3);
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 3);
				set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 1);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ability_proj);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, -0.05);
			    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 0.3);
			    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, -0.05);
			    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_FRICTION, -0.125);
			}
		}
		
		
		
		// Update code
		
		with oPlayer if "muno_last_swallowed" in self && muno_last_swallowed == other && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3{
			// you can treat this like an attack_update.gml for when kirby is using your character's ability
				    can_fast_fall = false;
				    {
				        move_cooldown[AT_EXTRA_3] = 100;
				    }
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
pho_has_trum_codec = 0;	// Trummel & Alto codec
pho_has_copy_power = 1;	// Kirby Copy Ability
pho_has_btt_layout = 0;	// Break the Targets stage

// Character cosmetics
pho_has_otto_bhead = 1;	// Bobblehead for Otto's bike
pho_has_steve_dmsg = 1;	// Death message for Steve
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

muno_char_icon = get_char_info(player, INFO_ICON);		// CSS icon of the character. You can replace this with an arbitrary sprite, using sprite_get(), and it'll be used in the upper left of the phone's big screen. (Make it the same size pls, thank u)

phone.taunt_hint_x = 46;									// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.
phone.taunt_hint_y = -26;									// Vertical offset
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
	
	initTip("Command Input Notations");
	initTipWords("Annie has the option to use fighting game inputs to access stronger versions of specials.
	This guide will be using Numpad Notations. Each number will correspond to a direction based on where they are placed on a numpad.
	
	A = Attack, B = Special, P = Attack or Special, S = Strong
	5 = neutral, 6 = right, 4 = left, 8 = up, 2 = down
	
	                                        7 8 9
	                                        4 5 6
	                                        1 2 3
	
	If you're confused, just look at your physical numpad! most numpads have arrows on them and you can use it as a guide.
	");
	
	initTip("NEUTRAL Special: Crescent Cut");
	initTipWords("Special button: 
	Annie slashes and sends out a fast small projectile");
	if ("spr_nspecial_proj_light" in player_id) initTipImage_ext(player_id.spr_nspecial_proj_light, -3, fa_right, 1, c_white, 3, 100, 100, 36, 100);
	initTipImage(player_id.spr_nspecial, -5, fa_left, 1, c_white, 0);
	initTipWords("True Input - 236P:
	Annie slashes and sends out a large trancendent projectile that starts slow and gains speed.");
	if ("spr_nspecial_proj" in player_id) initTipImage_ext(player_id.spr_nspecial_proj, -5, fa_right, 1, c_white, 3, 100, 100, 36, 100);
	initTipImage(player_id.spr_nspecial, -7, fa_left, 1, c_white, 0);
	
	initTip("UP Special: Destruction Pillar");
	initTipWords("Special button: 
	Annie attacks upwards with her sword
	
	True Input - 623P:
	Goes upwards further and has more damage and knockback");
	initTipImage(player_id.spr_uspecial, -5, fa_left, 1, c_white, 0);
	
	initTip("SIDE Special: North Knuckle");
	initTipWords("Special button: 
	Annie lunges forward with a punch. Press Special/Attack again on hit to follow up with a massive blow.
	
	True Input - 214P:
	Goes forward further and has more damage and knockback");
	initTipImage(player_id.spr_fspecial, -5, fa_left, 1, c_white, 4);
	if ("spr_fspecial_fx" in player_id) initTipImage(player_id.spr_fspecial_fx, -5, fa_left, 1, c_white, 0);
	
	initTip("DOWN Special: Reentry (AIR ONLY)");
	initTipWords("Special button: 
	Annie dives with a kick up to three times. Press Special/Attack on hit to kick again.
	
	True Input - 41236P:
	Wider angle of kick and has more damage and knockback");
	initTipImage_ext(player_id.spr_dspecial, -5, fa_center, 1, c_white, 0, 100, 100, 70, 100);
	
	initTip("Install Move: Star Power!");
	initTipWords("22AB: 
	Annie spends her Star Meter to power up, making her attacks shoot out star projectiles and deal more knockback.
	While in Star Power, Photo Bop can be used.
	");
	if ("spr_starpowerfx" in player_id) initTipImage_ext(player_id.spr_starpowerfx, -5, fa_center, 1, c_white, 4, 100, 100, 88, 50);
	if ("spr_starpower" in player_id) initTipImage_ext(player_id.spr_starpower, -5, fa_center, 1, c_white, 0, 100, 100, 88, 50);
	initTipWords("While in Star Power, Photo Bop can be used.
	Attack + Special: Annie signs a picture and Sagan slams it onto the opponent dealing massive knockback. Uses up remaining meter.
	");
	if ("spr_starpowersuper" in player_id) initTipImage_ext(player_id.spr_starpowersuper, 9, fa_left, 1, c_white, 4, 100, 80, 80, 100);
	if ("spr_photo" in player_id) initTipImage_ext(player_id.spr_photo, 0, fa_center, 1, c_white, 0, 50, 100, 50, 100);
	
	initTip("Tips: Normal Attacks");
		initTipWords("Cassiopeian Gambit (FTilt) [6A~A] - Knee into a kick, moves slightly forward.");
		initTipImage(player_id.spr_ftilt, -6, fa_center, 1, c_white, 0);
		initTipWords("Binary System (FStrong) [6S~A] - A heavy slice into a jumping slash. Jumps high enough to go over the edge, be careful!");
		initTipImage(player_id.spr_fstrong, -6, fa_center, 1, c_white, 0);
		initTipWords("Andromeda (DStrong) [2S] - A strong downwards stab. Hitstop is extended if it is the first hit.");
		initTipImage(player_id.spr_dstrong, -6, fa_center, 1, c_white, 0);
		initTipWords("Lift Off! (UTilt) [8A] - can be interrupted by a Jump as soon as it hits. Use this to extend Ground combos to Air Combos.");
		initTipImage(player_id.spr_utilt, -6, fa_center, 1, c_white, 0);
		initTipWords("Canopus Kick (FAir) [j6A] - Can be held to hover for a short time.");
		initTipImage(player_id.spr_fair, -6, fa_center, 1, c_white, 0);
		initTipWords("Big Dipper (Dash Attack) [(running) A] - Sliding Kick into a Slash. Will only continue on hit.");
		initTipImage(player_id.spr_dattack, -6, fa_center, 1, c_white, 0);
	
	initTip("Airdashing and Airdash Cancelling (ADC)");
	initTipWords("Double tap forward or backwards in the air to perform an Airdash.
	
	Most moves can be cancelled into an airdash (Airdash Cancelling/ADC). Use this and get creative with combos!
	
	Shield button can also be used for cancelling attacks into airdashes.
	");
	if ("spr_airdash" in player_id) initTipImage_ext(player_id.spr_airdash, -5, fa_center, 1, c_white, 0, 100, 100, 70, 100);
	
	initTip("Gatling Combos");
	initTipWords("Attacks can chain into other attacks that has higher heirarchy
	
	Grounded Attacks: Jab > DTilt > FTilt > UTilt > [Strongs]
	
	Aerials: NAir > UAir > FAir/BAir > DAir
	
	Strongs: Cannot cancel into any other attack.
	");
	
	initTip("Special Cancelling and Kara Cancelling");
	initTipWords("Most attacks can be cancelled into a Special. 
	Cancelling is possible even when attacks are whiffed. This is called Kara Cancelling.");
	
	initTip("Final Smash: Sagan Beam!");
	initTipWords("(Requires using ikersfletch's Final Smash buddy*)
	When Final Smash is ready, Neutral Special is replaced by Sagan Beam.
	Annie holds Sagan in front of her and fires a beam of cosmic energy.
	
	As it is a super, specials can be cancelled into Sagan Beam for a flashy finisher!
	");
	if ("spr_fs" in player_id) initTipImage_ext(player_id.spr_fs, 5, fa_left, 1, c_white, 4, 50, 100, 70, 100);
	if ("spr_fs_beam" in player_id) initTipImage_ext(player_id.spr_fs_beam, -5, fa_left, 1, c_white, 0, 50, 1000, 70, 100);
	
	initTip("Combo Guide");
	initTipWords("low% Combo 1: 5A 2A 6A 6Sx2 623P");
	if ("spr_combo2" in player_id) initTipImage(player_id.spr_combo2, -2, fa_center, 1, c_white, 0);
	
	initTipWords("low% Combo 2: 5A 2A 6A 6Sx2 kara j41236P~P ADC 4A 4B~B");
	if ("spr_combo1" in player_id) initTipImage(player_id.spr_combo1, -2, fa_center, 1, c_white, 0);
	
	initTipWords("mid% Combo 1: 6A 6Sx2 kara j41236P~P ADC j5A 6A~A 214P~P ");
	if ("spr_combo4" in player_id) initTipImage(player_id.spr_combo4, -2, fa_center, 1, c_white, 0);
	
	initTipWords("high% Combo 1: 5A 6Ax2 214P~P");
	if ("spr_combo3" in player_id) initTipImage(player_id.spr_combo3, -2, fa_center, 1, c_white, 0);
	
	initTip("Annie's Lore");
	initTipWords("Her mother was a previous Skullgirl who wished Annie to be a child forever. Annie now stars in the Anti-Skullgirls children's show and is much older than she appears.
	She hides her obvious immortality by changing her hairstyle, so nobody seems to notice and simply regard her as being an actress. Her show, Annie of the Stars, is based on the life of Annie herself many generations ago. ");
	initTipWords("
	
	
	
	
	- text taken from Skullgirls fandom wiki");
	
	initTip("Phone Controls");
	initTipWords("On the Character Select Screen, hold the 0 (zero) key on your keyboard to view the expanded list of Compatibility Icons.");
	initTipWords("To perform the regular taunt instead of opening the phone, hold a direction on the control stick.");
	
	initTip("Did You Know?");
	initTipWords("- Peacock and Parasoul are fans of Annie's show: Annie of the Stars.");
	initTipWords("- Annie's mother not only wished for her to be immortal, but also for her to be unable to curse.");
	initTipWords("- Sagan took Annie's right eye in exchange for cosmic powers");
	
	
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
	
	initPatch("1.0", "8 April, 2021");
	initPatchWords_ext("Annie of the Stars! Now Playable!", fa_center, c_white, 0, 1);
	if ("spr_starpowersuper" in other) initPatchImage(other.spr_starpowersuper, 9, fa_center, 1, c_white, 1);
	
	initPatch("1.3", "9 April, 2021");
	initPatchWords_ext("Moves and Input Adjustments, and More Alts
	
	FSpecial: BKB 8 > 7, KBG .4 > .5
	True FSpecial: KBG .5 > .6
	
	USpecial: Angle 75 > 81, KBG .4 > .5
	True USpecial: Angle 75 > 81, KBG .5 > .6
	
	UStrong Top Hitbox: Angle 90 > 80
	
	Dair: Angle 350 > 315
	
	Adjusted Airdash Input (double tap) to be less strict
	Added more alts :)
	", fa_center, c_white, 0, 0);
	
	initPatch("1.4", "9 April, 2021");
	initPatchWords_ext("Adjustments and System Fixes (same day I know)
	
	Fixed some sprites not having proper colors on some shades
	
	Kara Cancelling now works with the Attack Button
	
	Removed AutoTurn on first part of DATTACK (2nd Hitbox still tracks hit Opponent)
	
	Prevented Fastfall while Airdashing
	
	Added VFX to FAIR
	
	Fixed VFX of Airdashing
	
	Adjusted FAIR Animation, FAIR Hitbox First Active Frame 22 > 23 (MAX HOLD)
	
	Adjusted USTRONG Animation
	
	Adjusted NSPECIAL Projectiles opacity
	
	Adjusted various Hurtboxes
	
	Adjusted various SFX
	
	", fa_center, c_white, 0, 0);
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
	
	// update.gml
	initCheat("Max Star Meter", "cheat_meter", [0, 1], ["Off", "On"], "Always have full Star Meter");
	initCheat("Max Final Smash", "cheat_fs", [0, 1], ["Off", "On"], "For Final Smash Buddy, Always have Final Smash ready");
	initCheat("Enable Voice Lines", "cheat_voice", [0, 1], ["Off", "On"], "Toggle Annie's Voicelines");
	initCheat("ROLLING", "cheat_rolling", [0, 1], ["Off", "On"], "ROLLING ROLLING ROLLING ROLLING ROLLING ROLLING ROLLING ROLLING ROLLING ROLLING ROLLING ROLLING ROLLING ROLLING ROLLING ROLLING ROLLING ROLLING");
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
		AT_EXTRA_1,
		AT_NSPECIAL,
		AT_NSPECIAL_2,
		AT_NSPECIAL_AIR,
		AT_EXTRA_3,
		AT_FSPECIAL,
		AT_FSPECIAL_AIR,
		AT_FSPECIAL_2,
		AT_USPECIAL,
		AT_USPECIAL_GROUND,
		AT_USPECIAL_2,
		AT_DSPECIAL,
		AT_DSPECIAL_AIR,
		AT_DSPECIAL_2,
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
		AT_NTHROW,
		AT_FTHROW,
		AT_UTHROW,
		AT_DTHROW,
		AT_EXTRA_1,
		AT_EXTRA_2,
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
	
	initAbout("About Annie", "Mod made by Turpix. Character is from Skullgirls which I obviously do not own.
	Follow me on Twitter for art and weebshit :) @Turpix_00.");
	
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
	
	SPK_SAND = initSpeaker(1, "Sandbert", sprite_get("_pho_example_speaker"));
	SPK_TWIN = initSpeaker(2, "Sandbert's evil twin", sprite_get("_pho_example_speaker"));
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_TRUM, 0, 0, "wow is that sandbert with a phone");
	initCodecPage(SPK_ALTO, 4, 0, "UNBLOCK ME ON FACEBOOK, COWARD");
	initCodecPage(SPK_SAND, 0, GIM_COLOR, "no");
	
	spr_custom_trummel_color = c_red;
	
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



if !phone_lightweight{



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