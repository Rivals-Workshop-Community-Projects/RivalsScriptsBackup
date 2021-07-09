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
║ Update Code			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

sprite_change_offset("_pho_idle", 0, 24);

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
			
			var copy_spr = sprite_get("kirb");
			var copy_hrt = sprite_get("kirb_hurt");
			var copy_icn = sprite_get("bon_kirbyicon");
			var dspecialswish = sound_get("dspecialstart");
			var dspecialboing = sound_get("dspecialbounce");
			var dspecialfalling = sound_get("dspecialfall");
			var dspeciallanding = sound_get("dspecialland");
			// add more to transfer other sprites, or sfx
			
			with enemykirby{
				newicon = copy_icn;
				can_wall_jump = false;
				fall_through = false;
				kirby_dspecialhit = 0;
				muno_last_swallowed = other.id;
				
				set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
				set_attack_value(AT_EXTRA_3, AG_SPRITE, copy_spr);
				set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, copy_spr);
				set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 6);
				set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, copy_hrt);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, copy_hrt);
				
				// edit the below (and, indeed, the above!) just like a regular attack script
				
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, dspecialswish);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, dspecialboing);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, -16);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 3);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, -3);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, dspecialfalling);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 8);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_VSPEED, 10);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 10);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_VSPEED, 25);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 26);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_SFX, dspeciallanding);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_SFX_FRAME, 1);


set_num_hitboxes(AT_EXTRA_3, 2);

set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 37);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 47);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 75);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 5);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 37);
set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 47);
set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 75);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
			}
		}
		
		
		
		// Update code
		
		with oPlayer if "muno_last_swallowed" in self && muno_last_swallowed == other {
		
if (free = 0){
	kirby_dspecialhit = 0;
    move_cooldown[AT_EXTRA_3] = 0;
}

	
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3{

if (down_down){
    fall_through = true;

}

if (window < 4){
    can_wall_jump = true;
}
	


if (has_hit_player = true){
    window = 1;
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, -23);
    window_timer = 9;
    kirby_dspecialhit = 1;
    has_hit_player = false;

}



if (window = 2 && window_timer = 11 && kirby_dspecialhit = 1){
    move_cooldown[AT_EXTRA_3] = 9999;
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, -16);
set_state( PS_IDLE_AIR );
}




    
}

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
pho_has_otto_bhead = 1;	// Bobblehead for Otto's bike
pho_has_steve_dmsg = 1;	// Death message for Steve
pho_has_feri_taunt = 1;	// Costume for Feri's taunt
pho_has_hikaru_fak = 1;	// Title for Hikaru's fakie
pho_has_rat_allout = 1;	// Quip for Rat's all-out attack
pho_has_tco_sketch = 1;	// Drawing for The Chosen One's down taunt
pho_has_ahime_dead = 0;	// Sprite for Abyss Hime's slicing effect
pho_has_tink_picto = 0;	// Photograph for Toon Link's picto box
pho_has_fire_taunt = 0; // Fire's Taunt
pho_has_wall_e_ost = 0; // Wall-E's music
pho_has_amber_love = 0; // Amber's plush and/or hug
pho_has_moon_music = 0; // Moonchild's taunt music
pho_has_agentn_cdc = 1; // Agent N's codec

// Stage cosmetics
pho_has_drac_codec = 1;	// Dialogue for the Dracula boss fight
pho_has_miivs_post = 1;	// Posts for the Miiverse stage
pho_has_dede_title = 1;	// Title for the Mt Dedede Stadium stage
pho_has_soul_title = 0; // Text for the Soulbound Conflict stage
pho_has_been_found = 0; // Death sprite for the Trial Grounds stage
pho_has_resort_pic = 1; // Portrait for the Last Resort stage
pho_has_pkmn_image = 1; // Battle sprite for Pokémon Stadium
pho_has_daro_codec = 1; // Dialogue for the Daroach boss fight



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
muno_char_name = "Bonby";							// Here I replace the name, because "Sandbert with a Phone" is awkwardly long

muno_char_icon = get_char_info(player, INFO_ICON);		// CSS icon of the character. You can replace this with an arbitrary sprite, using sprite_get(), and it'll be used in the upper left of the phone's big screen. (Make it the same size pls, thank u)

phone.taunt_hint_x = 0;									// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.
phone.shader = 1;	

phone.dont_fast = 0;									// Set this to 1, and Fast Graphics will not automatically be set when the FPS dips below 60.



// Sprites (you could also include things like these in init.gml if you like)

spr_nspecialproj = sprite_get("nspecialspikeball");
spr_frog = sprite_get("_pho_frog");
spr_frogthrow = sprite_get("_pho_frogthrow");
spr_frogoutline = sprite_get("_pho_frogoutline");
spr_frogmoving = sprite_get("_pho_frogmoving");
spr_frogparry = sprite_get("_pho_frogparry");
spr_frognspecial = sprite_get("_pho_nspecial_example");
spr_frogspit = sprite_get("_pho_frogspit");
spr_phoneopen = sprite_get("phone_open");
spr_walk2 = sprite_get("walk_alt15");
spr_walk3 = sprite_get("walk_alt16");
spr_frogge = sprite_get("frogge");
spr_waveland = sprite_get("waveland");

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
	 * - 4: Ignore vertical scroll (always placed at top of screen)
	 * 
	 * Negative gimmick numbers are saved for whatever YOU might need them for!
	 * Like idk, if you're a coding wizard and figure out something cool to do
	 * by interacting with the tip data.
	 * 
	 */
	 
	initTip("Explaining Frog (1)");
	initTipWords("The most important tool in Bonby's moveset is the frog. There are many different ways to go about using the frog.");
	initTipImage(player_id.spr_frog, -5, fa_center, 1, c_white, 0);	
	initTipWords("Using NSpecial normally will allow you to use your frog to grab opponents in front of you. You can cancel into another move as soon as whoever you grabbed gets close enough.");
	initTipImage(player_id.spr_frognspecial, -5, fa_center, 1, c_white, 0);	

	initTip("Explaining Frog (2)");
	initTipWords("If you use DSpecial, you'll place your frog down onto the stage.");
	initTipImage(player_id.spr_frogthrow, -5, fa_center, 1, c_white, 0);
	initTipWords("Using NSpecial while your frog is out will make it try to grab opponents in a diagonal direction. Whichever direction you're facing when you use the move is the direction your frog will try to grab in.");	
	initTipImage(player_id.spr_frogspit, -5, fa_center, 1, c_white, 0);
	initTipWords("Opponents that get caught will be launched towards you, allowing you to follow up with another attack.");	

	
	initTip("Explaining Frog (3)");
	initTipWords("If you want to move your frog around, use DSpecial while it's out to bring it closer to you, or use FSpecial to knock it away.");
	initTipImage(player_id.spr_frogmoving, -5, fa_center, 1, c_white, 0);		
	initTipWords("If you're close enough to your frog, there'll be a white outline around it, indicating you can pick it back up by using DSpecial.");
	initTipImage(player_id.spr_frogoutline, -5, fa_center, 1, c_white, 0);		

	initTip("Explaining Frog (4)");
	initTipWords("Lastly, remember that your frog can be attacked by opponents. If it gets parried or knocked offstage, you'll be unable to use NSpecial or Dspecial for a short time.");
	initTipImage(player_id.spr_frogparry, -5, fa_center, 1, c_white, 0);		

	initTip("F-Special Charge");
	initTipWords("F-Special can be charged by holding the Special button down. In addition to increased damage, you'll fly back further, allowing you to use the move for horizontal recovery.");
	initTipImage(player_id.spr_fspecial, 8, fa_center, 1, c_white, 1);	

	initTip("D-Air");
	initTipWords("There's two opportunities to cancel out of DAir. You can jump cancel out of the startup window, and upon hitting an opponent, you can immediately cancel into either a jump or an airdodge.");
	initTipImage(player_id.spr_dair, -4, fa_center, 1, c_white, 0);	
	
	initTip("N-Air");
	initTipWords("N-Air can be charged by holding the Attack button down. When fully charged, it becomes a strong spiking attack.");
	initTipImage(player_id.spr_nair, -3, fa_center, 1, c_white, 0);	
	
	initTip("D-Strong");
	initTipWords("DStrong is a command grab, where you lift the opponent and slam them down to the ground in an explosive manner. You can move during this attack when you grab onto someone, and can even jump offstage. Keep in mind that you'll die before the opponent does if you pull this off.");
	initTipImage(player_id.spr_dstrong, 11, fa_center, 1, c_white, 1);
	
	
	
	initTip("Frogge");
	initTipWords_ext("A frogge biþ a smal beaste wiþ foure leggys, whyche liueþ booþ in watyre and on londe. It is broune or grene or yelowe, or be it tropyckal, he may haue dyuers coloures. It haþ longys and guilles booþe. It haccheþ from an ey and it þan ys a tadpolle. It groweþ to ben a frogge, if it þan ne be noght eten.", fa_left, c_white, 0, 0);
	initTipImage(player_id.spr_frogge, -1, fa_right, 1, c_white, 0);
	initTipWords_ext("A frogge.", fa_right, c_gray, 0, 0);
	
	initTip("Phone Controls");
	initTipWords("To perform the regular taunt instead of opening the phone, hold a direction on the control stick.");
	
	
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
	initPatch("2.1.2", "July 8th, 2021");
	initPatchWords("-Final Smash/Super now deals increased damage on Rivals of Fighter stage (30 -> 75)
	-Fixed a bug that caused Final Smash hitbox to hit twice when facing left");	 
	 
	initPatch("2.1.1", "June 25th, 2021");
	initPatchWords("-Forward-Special can no longer be jump-canceled during the charge window
	-Increased Forward-Special base hitpause (8.5 -> 10)
	-Increased Forward-Special hitpause scaling (0.8 -> 1.1)
	-Decreased Foward-Special base damage (9 -> 8)
	-Decreased Up-Special final hit base knockback (7 -> 6)
	-Decreased Up-Special final hit knockback scaling (0.75 -> 0.7)	
	-Decreased Up-Special vertical speed (-7.75 -> -7, -10 -> -9)
	-Increased Down-Strong throw window speed
	-Decreased movement speed during Down-Strong throw window
	-Decreased vertical speed of Down-Air (18 -> 13, 14 -> 11)");

	initPatch("2.1", "June 13th, 2021");
	initPatchWords("-Frog can now be attacked by opponents");

	initPatch("2.0.3", "June 8th, 2021");
	initPatchWords("-Decreased max air speed (6.25 -> 5.75)
	-Decreased max jump horizontal speed (7.25 -> 6.5)
	-Decreased Forward-Air damage (8 -> 7)
	-Decreased Forward-Air base knockback (7 -> 6)
	-Fixed a bug that prevented DSpecial from being usable even after cooldown was over");


	initPatch("2.0.2", "May 19th, 2021");
	initPatchWords("-Increased attached Neutral-Special endlag (11 -> 15)
	-Added 5 frames of lag to on-grab window of attached Neutral-Special
	-Added cooldown to attached and detached Neutral-Special
	-Decreased Down-Strong grab box lifetime (12 -> 6)
	-Down-Strong grab box now comes out 1 frame later
	-Decreased Up-Air first hitbox damage (9 -> 8)");

	initPatch("2.0.1", "May 8th, 2021");
	initPatchWords("-Fixed compatibility with Final Smash Buddy");

	initPatch("2.0", "May 5th, 2021");
	initPatchWords("-All special moves have been completely reworked
	-Jab, Neutral-Air, Forward-Air, Up-Air, and Down-Air have been reworked
	-Neutral-Air can now be charged
	-Added new alternate Neutral-Air attack when the move is fully charged	
	-Down-Air can now be canceled during start-up window and on hit
	-Redrew idle, dashing, dash turning, jumping, double jumping, wall-jumping, wavelanding, rolling, and parrying sprites
	-Increased max air speed (5.5 -> 6.25)
	-Increased max jump horizontal speed (5.5 -> 7.25)
	-Increased jump height (10 -> 11)
	-Increased double jump height (10 -> 11.5)
	-Decreased max fall speed (11 -> 10)
	-Decreased pratfall horizontal acceleration (.85 -> .55)
	-Increased prat land time (5 -> 20)
	-Added 8 new alt colors");
	 
	initPatch("1.6.5", "March 16th, 2021");
	initPatchWords("-Up-Special vertical speed decreased
	-Up-Special knockback decreased
	-Increased Neutral-Special startup time
	-Forward-Special can only be used once in air before landing, walljumping or getting hit
	-Forward-Special recoil speed decreased");
	initPatchImage(other.spr_dattack, 7, fa_center, 1, c_white, 0);	
	 
	 
	initPatch("1.6.4", "March 13th, 2021");
	initPatchWords("-Decreased Back-Air hitbox size
	-Decreased Forward-Air hitbox size
	-Adjusted Down-Air hitbox to match sprite better
	-Adjusted Up-Air hitbox to match sprite better
	-Adjusted Up-Tilt hitbox to match sprite better
	-Recoded Down-Tilt and adjusted hitbox
	-Slightly increased Forward-Tilt hitbox size
	-Removed stray pixels on Down-Air hurtbox
	-Fixed an oversight where Forward-Special effects were part of the move's hurtbox");
	initPatchImage(other.spr_landinglag, 0, fa_right, -3, c_white, 0);	
	 

	 
	initPatch("1.6.3", "March 7th, 2021");
	initPatchWords("-Increased Neutral-Special base hitpause (4.25 -> 6.5)
	-Increased Neutral-Special hitpause scaling (0.75 -> 0.85)
	-Increased Forward-Special base hitpause (8 -> 10)
	-Increased Forward-Special hitpause scaling (0.8 -> 1.1)
	-Removed stray pixels on Back-Air hurtbox
	-Fixed a bug where Neutral-Special's spawn point changed on death
	-Updated stats of Kirby copy ability to match current stats of Down-Special");
	initPatchImage(other.spr_landinglag, 0, fa_left, 1, c_white, 0);	


	initPatch("1.6.2", "February 28th, 2021");
	initPatchWords("-Redrew landing, landing lag, and pratfall sprites
	-Added uphurt sprite
	-Reworked visuals and sounds for Neutral-Special
	-Adjusted positioning and speed of Neutral-Special projectile
	-Neutral-Special startup and endlag significantly reduced
	-Neutral-Special can now be acted out of during the last 2 windows
	-Added compatibility with Final Smash Buddy");
	initPatchImage(other.spr_landinglag, 0, fa_right, -1, c_white, 0);	
	
	initPatch("1.6.1", "February 22nd, 2021");
	initPatchWords("-Added proper landing lag to Forward-Special when used in air
	-Forward-Special now transitions into idle state properly when used on ground
	-Fixed a bug where Forward-Special had no parry stun
	-Fixed sprite offsets being 1px off vertically");
	initPatchImage(player_id.spr_bighurt, -1, fa_left, 3, c_white, 1);	
	

	initPatch("1.6", "February 4th, 2021");
	initPatchWords("-Redrew portrait
	-Forward-Special reworked
	-Forward-Tilt reworked
	-Wavedash sound effect volume slightly lowered
	-Fastfall speed lowered (17 -> 14)
	-Down-Special sped up significantly
	-Down-Special knockback angle changed (60 -> 90)
	-Down-Special knockback increased (8 -> 10)
	-Down-Special knockback scaling decreased (1.05 -> 0.65)
	-Lowered trigger radius for Down-Special interacting with Frog
	-Adjusted Neutral-Air animation to have a clearer startup and end
	-Neutral-Air now has 3 windows instead of 2
	-Forward-Air knockback scaling decreased (1.15 -> 1)
	-Forward-Air sourspot knockback scaling decreased (0.9 -> 0.7)
	-Decreased size of Forward-Strong hitbox
	-Changed abyss runes H and M");
	initPatchImage(other.spr_fspecial, 6, fa_left, 1, c_white, 3);	 
	

	
	initPatch("1.5", "January 26th, 2021");
	initPatchWords("-Updated css_draw script with new template (credit to Hyuponia)
	-Up-Strong reworked
	-Neutral-Special knockback angle changed (48 -> 50)
	-Forward-Special base hitpause decreased on all charge tiers
	-Forward-Special base knockback and knockback scaling adjusted on all charge tiers
	-Can now wall jump out of rising windows of Down-Special
	-Down-Special knockback angle changed (58 -> 60)
	-Down-Special base knockback decreased (9 -> 8)
	-Down-Special knockback scaling increased (0.9 -> 1.05)
	-Forward-Air animation adjusted
	-Forward-Air base knockback increased (6 -> 6.5)
	-Forward-Air knockback scaling decreased (1.4 -> 1.15)
	-Foward-Air sourspot damage decreased (9 -> 4)
	-Jab knockback angles changed (87 -> 85, 91 -> 90)
	-Dash-Attack base hitpause decreased (12 -> 8)
	-Dash-Attack grounded hitbox base knockback decreased (10.5 -> 7)
	-Dash-Attack grounded hitbox knockback angle changed (72 -> 75)
	-Up-Tilt knockback angle changed (101 -> 100)
	-Down-Tilt base knockback decreased (11.5 -> 9)
	-Down-Tilt knockback scaling increased (0.15 -> 0.25)
	-Down-Tilt knockback angle changed (77 -> 75)
	-Forward-Strong knockback angle changed (50 -> 361)
	-Down-Strong base knockback decreased (12 -> 6.5)
	-Down-Strong knockback scaling increased (0.675 -> 1.2)
	-Down-Strong knockback angle changed (49 -> 50)
	-Down-Strong base hitpause decreased (16 -> 8)
	-Kirby copy ability reworked");
	initPatchImage(player_id.spr_ustrong, -1, fa_right, 1, c_white, 0);	
	
	
	initPatch("1.4.2", "January 13th, 2021");
	initPatchWords("-FStrong startup anim frames decreased
	-UStrong startup anim frames decreased
	-FStrong knockback scaling decreased (1.4 -> 1.2)
	-FStrong knockback angle changed (39 -> 50)
	-UStrong knockback scaling decreased (1.2 -> 1.1)");
	initPatchWords_ext("because nobody told me 1.4 scaling was wack until now", fa_right, c_gray, 0, 1);
	initPatchImage(player_id.spr_fstrong, -1, fa_left, 1, c_white, 0);	 

	initPatch("1.4.1", "January 11th, 2021");
	initPatchWords("-Fixed a bug that broke hurtboxes after hitting with Down-Special
	-Adjusted Down-Special hitbox size and position
	-Lowered hitpause and hitpause scaling of Down-Special");
	initPatchImage(player_id.spr_dspecial, -5, fa_center, 1, c_white, 0);
	 
	 
	initPatch("1.4", "January 10th, 2021");
	initPatchWords("-New Down Special:")
	initPatchWords_ext("When you use DSpecial, you'll briefly bounce upward before plummeting down. When going downward, you can hit an opponent and bounce back up. You won't be able to use the move again until you land, but you can follow it up into another attack. If you land on your frog when using DSpecial, you can gain more height.", fa_left, c_gray, 0, 0);	
	initPatchWords("
	-Abyss Rune I changed (DSPECIAL can chain into itself up to 3 times.)
	-Increased range of Back-Air and adjusted animation
	-Reworked Forward-Air with new animation
	-Back-Air damage increased (8 -> 9, 4 -> 6)
	-Back-Air 2nd window length decreased (18 -> 15)
	-Back-Air sourspot hitbox lifetime decreased (11 -> 7)
	-Back-Air sweetspot hitbox base hitpause increased (8 -> 9)
	-Back-Air sweetspot hitbox hitpause scaling increased (.75 -> .85)
	-Added new hit sound for Neutral-Special spike balls
	-Neutral-Special spike ball size decreased
	-Neutral-Special damage decreased (8 -> 6)
	-Neutral-Special spike balls disappear much faster if horizontal speed is 0
	-Forward-Special knockback decreased (8 -> 7, 9 -> 8, 11 -> 10, 15 -> 14)
	-Up-Special Frog now disappears when parried
	-Up-Special Frog lifetime decreased (720 frames -> 400)
	-Up-Special Frog no longer bounces spike balls when they have been parried");
	initPatchImage(player_id.spr_dspecial, -5, fa_center, 1, c_white, 0);
	 

	initPatch("1.3", "January 1st, 2021");
	initPatchWords("-Added new walk animation
	-Added new Forward-Special charging animation
	-Foward-Special knockback and scaling increased
	-Slightly decreased Forward-Special hitstun
	-Boosting window of Forward-Special can now be jump cancelled
	-Forward-Special effects now properly disappear after getting hit
	-Reworked Up-Special aerial cooldown and indicator
	-Lowered fallspeed and airspeed during aerial Neutral-Special
	-Neutral-Air vertical speed now only applies during last window
	-Forward-Strong knockback angle changed (39 -> 361)");
	initPatchImage(other.spr_walk, -6, fa_left, 1, c_white, 3);	 	
	 
	 
	initPatch("1.2", "December 19th, 2020");
	initPatchWords("-Added bighurt and hurtground sprites
	-Adjusted Forward-Air hitbox size and position
	-Decreased Up-Tilt hitbox size");
	initPatchWords_ext("Neutral-Special Changes", fa_left, c_gray, 0, 0);
	initPatchWords("-Cannon can now be aimed upward, up-right or behind
	-Changed trajectory for shooting straight forward
	-Spike ball can now be hit by players to launch it around
	-Spike balls now bounce off of opponents after hitting them
	-Unique spike ball colors for each alt have been added
	-Only one spike ball per player can be out at once
	-Lowered spike ball damage (10 -> 8)
	-Lowered spike ball base knockback (13 -> 7.5)
	-Lowered spike ball base hitpause (9 - > 4.25)
	-Increased spike ball hitpause scaling (0.6 -> 0.75)
	-Abyss rune N changed (NSPECIAL spike balls explode on enemy contact.)");
	initPatchImage(other.spr_nspecialproj, -3, fa_left, 1, c_white, 2);	 	 
	 
	initPatch("1.1.1", "November 27th, 2020");
	initPatchWords("-Lowered waveland distance
	-Added new waveland sound
	-Lowered dash stop time (12 -> 6)
	-Lowered walljump vertical speed (11 -> 9)");
	initPatchImage(other.spr_waveland, -5, fa_left, 1, c_white, 3);	 
	 
	initPatch("1.1", "November 18th, 2020");
	initPatchWords("-Neutral-Air vertical boost now only applies when the attack button is held
	-Neutral-Air windows adjusted
	-Added animation for when something bounces on Up-Special frog
	-Added 4 new Down-Special projectile variants for diagonal inputs
	-Increased prat land frames (3 -> 5)
	-Neutral-Special damage increased (9 -> 10)
	-Added MunoPhone support
-Additional character/stage compatibility added (Kirby, Otto, Agent N, Feri)");
	initPatchImage(other.spr_phoneopen, 5, fa_left, 1, c_white, 0);	 
	 
	initPatch("1.0.5", "October 19th, 2020");
	initPatchWords("-HUD elements now change color depending on alternate color chosen
-Adjusted hurtboxes for Up-Strong, Down-Strong, Jab and Forward Special
-Overhauled Jab windows
-Increased size of Up-Air hitbox
-Decreased Forward-Air startup frames (20 -> 16)
-Changed angle of Dash Attack grounded hitbox (58 -> 72)
-Decreased lifetime frames of Dash Attack aerial hitbox to match grounded hitbox (7 -> 5)
-Decreased Dash Attack endlag frames (26 -> 20)
-Neutral Special cooldown frames reduced (130 -> 100)
-Down Special notes now deal 2 damage instead of 1
-Fixed a bug where getting hit by a flinchless hitbox during Forward Special charge window would reset charge");
	initPatchImage(other.spr_dattack, -5, fa_right, 1, c_white, 0);	 
	 

	initPatch("1.0.4", "October 16th, 2020");
	initPatchWords("-Added 2 additional color palettes
-Up-Special frog lifetime increased (480 frames -> 720 frames)
-Angle flipper 9 removed from Jab first hitbox, now sends at 87 angle
-Dash Attack startup frames decreased (18 -> 15)
-Dash Attack hitbox size increased
-Dash Attack hitbox lifetime decreased (7 -> 5)
-Up-Air base knockback increased (7 -> 8)
-Up-Air knockback scaling decreased (0.75 - 0.6)
-Down-Air startup frames decreased (16 -> 12)
-Down-Air angles changed (295 -> 280, 77 -> 361)
-Down-Air base knockback changed (4 -> 7, 9.75 -> 6.5)
-Down-Air knockback scaling changed (0.9 -> 0.6, 0.3 -> 0.5)
-Down-Air hitstun multiplier increased (0.75 -> 0.85)
-Up-Tilt hitbox size increased
-Up-Tilt base knockback increased (7.75 -> 9)
-Up-Tilt knockback scaling decreased(0.7 -> 0.55)
-Down-Tilt length decreased (22 -> 17)
-Down-Tilt hitbox comes out 2 frames earlier
-Down-Tilt now has whiff lag
-Down-Tilt angle changed (83 -> 77)
-Down-Tilt base knockback increased (10 - > 11.5)
-Down-Tilt knockback scaling decreased (0.3 - > 0.15)
-Forward-Strong base knockback decreased (8.5 -> 7)
-Forward-Strong knockback scaling increased (1 -> 1.4)
-Forward-Strong angle changed (361 -> 39)
-Up-Strong base knockback increased (8.5 -> 9)
-Up-Strong knockback scaling increased (1 -> 1.2)");
	initPatchImage(other.spr_walk2, -3, fa_left, 1, c_white, 3);	 	 
	initPatchImage(other.spr_walk3, -4, fa_right, 1, c_white, 3)
	 
	 
	initPatch("1.0.3", "October 12th, 2020");
	initPatchWords("-You now stay in Down Strong after bouncing off of your own frog
-Added proper landing lag to all aerials
-Added proper hitpause scaling to moves
-Added new sound effects to Forward Strong, Down Strong, and Down Special
-Added effects for when frog despawns");
	initPatchWords_ext(">forgetting to put hitpause and landing lag on your character", fa_right, c_green, 0, 1);
	initPatchImage(other.spr_hurt, -1, fa_left, 1, c_white, 1);	 	 
	 
	initPatch("1.0.2", "October 11th, 2020");
	initPatchWords("-Base knockback and scaling for Up Air changed (3 base, 1.25 scaling -> 7 base, 0.75 scaling)
-Forward Strong startup frames reduced (30 frames --> 22 frames)
-Forward Strong endlag frames reduced (32 frames - 28 frames)
-Forward Strong hitbox size increased
-Up Strong startup frames reduced (23 frames --> 16 frames)
-Up Strong endlag frames reduced (23 frames --> 21 frames)
-Up Strong hitbox size increased
-Down Strong grab box size increased
-Forward Special no longer puts you into pratfall.
-Increased the gravity of Forward Special's charging window
-Changed Rune D to increase Up Tilt speed.
-Down Special left and right notes now alternate depending on player direction.
-Fixed a bug where the boost window of FSPECIAL would end prematurely if an opponent was hit by one of your projectiles.
-Fixed a bug where FSPECIAL charge effects disappeared when bouncing on your own frog.");
	initPatchImage(other.spr_utilt, -1, fa_center, 1, c_white, 0);	 
	 
	
	initPatch("1.0.1", "October 11th, 2020");
	initPatchWords("-Down-tilt hitbox comes out one frame earlier and lasts 4 frames shorter
-You can now spawn another frog with Up Special after wall-jumping");
	initPatchImage(other.spr_dtilt, -5, fa_center, 1, c_white, 0);
	
	initPatch("1.0", "October 11th, 2020");
	initPatchWords_ext("hmm today i will release character", fa_center, c_white, 0, 0);
	initPatchImage(other.spr_taunt, -5, fa_center, 1, c_white, 0);
	
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
	// they're referenced elsewhere in code. The comment above each code tells
	// you which files reference it.
	
	
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
		47,
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
		48,
		49,
		50
	];
	
	
	
	// Include a "Stats" page in the frame data guide?
	include_stats = true;
	
	// If so, put any specific notes here:
	stats_notes = "-"; // set to   "-"   if you don't need to put any notes
	
	
	
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
	 * if you want
	 */
		initAbout("Special Thanks", "Moveset Design Help:
-Robot
-XtheGAMEmaster

Playtesting:
-Gnome

Alt color #21 'Brigade Leader' designed by:
-Zerks

Article hit detection code:
Supersonic");

	
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
	 * GIM_TEXTBOX			use a sprite stored in your char under the var spr_custom_trummel_textbox instead of the default textbox
	 * GIM_COLOR			use a color stored in your char under the var spr_custom_trummel_color instead of white (for the codec text)
	 * 
	 * To use multiple gimmicks on a single page, MULTIPLY them together. See
	 * _readme.gml for examples
	 */
	
	// Custom speaker setup - use 1, 2, 3, 4, ... for the index
	
	SPK_FROG = initSpeaker(1, "Frog", sprite_get("_pho_example_speaker"));
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_FROG, 0, GIM_SHADER, "ribbit");
	initCodecPage(SPK_TRUM, 0, 0, "froag");
	
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
feri_costume = sprite_get("feri_costume_bon");
	
}



// Hikaru fakie title

if pho_has_hikaru_fak{
	
	Hikaru_Title = "Frog's Prey";
	
}



// Rat all-out quote

if pho_has_rat_allout{
	
	personaQuips[10] = "Frogs are inferior to rats!";
	
}



// The Chosen One sketch

if pho_has_tco_sketch{
	
	tcoart = sprite_get("tcoportrait");
	
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
	
ncode1 = "Will probably try to get along with anyone,"
ncode2 = "as long as they don't threaten her or her"
ncode3 = 'frog friend. Emphasis on "probably."'
	
}



// Dracula dialogue

if pho_has_drac_codec{
	

dracula_portrait = sprite_get("draculaportrait");
dracula_portrait2 = sprite_get("draculaportrait2")
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Is this some sort of joke? What brings an unheeding fool
such as you into my domain?";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "Are you going to answer the question or am I going to have 
to take matters into my own hands?";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "[shake]Your vow of silence exasperates me! [glass]I shall 
not stand for this any longer!";
page++;

//Page 5
dracula_speaker[page] = 2;
dracula_text[page] = "...!";
page++;
	
}



// Miiverse post

if pho_has_miivs_post{
	
	miiverse_post = sprite_get("miiverse_post");
	sprite_change_offset("miiverse_post", 60, 30);
	
}



// Mt Dedede title

if pho_has_dede_title{
	
arena_title = 'Frog-Funky Misfit';
	
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
	
	resort_portrait = sprite_get("resortportrait")
	sprite_change_offset("resortportrait", 27, 39);
	
}



// PKMN Stadium battle portraits

if pho_has_pkmn_image{
	
pkmn_stadium_front_img = sprite_get("pokestadiumfront");
pkmn_stadium_back_img = sprite_get("pokestadiumback");
	
}



// Daroach dialogue

if pho_has_daro_codec{
	
daroach_portrait = sprite_get("draculaportrait");
daroach_portrait2 = sprite_get("draculaportraitfrog");
var page = 0;

//Page 0
daroach_speaker[page] = 0;
daroach_text[page] = "Well, aren't you daring making your way in here!";
page++;

//Page 1
daroach_speaker[page] = 1;
daroach_text[page] = "...";
page++;

//Page 2
daroach_speaker[page] = 0;
daroach_text[page] = "I already know your reason for tracking me down. You want
your precious little frog friend back!";
page++;

//Page 3
daroach_speaker[page] = 0;
daroach_text[page] = "Rather cunning, aren't I? I make no exceptions for thievery, be it a 
living thing or not, and I highly doubt you'll even stand even a chance trying to-";
page++;

//Page 4
daroach_speaker[page] = 2;
daroach_text[page] = "*ribbit*";
page++;

//Page 5
daroach_speaker[page] = 0;
daroach_text[page] = "Wha... How did you...?
What is the meaning of this?!";
page++;

//Page 6
daroach_speaker[page] = 0;
daroach_text[page] = "[shake]Bah, that does it! You may have one trick up YOUR sleeve,
but I've got a hundred more up mine! Have at you!";
page++;
	
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