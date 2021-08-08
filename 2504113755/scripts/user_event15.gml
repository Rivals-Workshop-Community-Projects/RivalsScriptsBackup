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
	num_alts = 6; // Number of alt costumes; controls how many appear on the CSS
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

phone.taunt_hint_x = 0;	// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.
phone.taunt_hint_y = 0;	// Vertical offset
phone.shader = 0;		// Whether or not to apply the character's palette to the phone and non-TrainingTown sidebar (change color with alt costumes)

phone.dont_fast = 0;	// Set to 1, and Fast Graphics will NOT automatically be set when the FPS dips below 60.
phone_lightweight = 0;	// Set to 1 to disable certain features, possibly improving performance a little bit. See _readme.gml.
phone.frame_data_loaded = 0;			// Set to 1 to disable the frame data guide, which MIGHT improve performance on bad computers? (This is just a guess. It has no impact on code run during gameplay, but gets rid of a TON of data stored in memory in Practice Mode...)



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Tips	                                                       ║
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
	 * To fix the second bullet point, use , with the four
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
	
	initTip("Nspecial: Blink");
	initTipWords("After 5 frames, this move 'teleports' you a distance based on your current speed and direction. 
	
	Lacks invulnerability. 
	Can be used after landing any normal (minus strongs).");
//	if ("spr_nspecial_proj" in player_id) initTipImage_ext(player_id.spr_nspecial_proj, -5, fa_right, 1, c_white, 3, 40, 30, 60, 0);
//	initTipImage_ext(player_id.spr_nspecial, 2, fa_left, 1, c_white, 0, 24, 40, 64, 0);

    initTip("Nspecial: Vulnerability");
	initTipWords("Nspecial leaves behind a time wraith; if hit, you will teleport to its location and take damage yourself. 
	
	Disappears after 6 seconds");
	
	
	
	initTip("Dspecial and Nspecial");
	initTipWords("Time wraiths copy Dspecial explosion!");
	
	initTip("Nspecial: Hit it!");
	initTipWords("You can hit the time wraiths, making them explode! 
	
	They can hit each other!
	
	You canNOT blink off of them! Try a rune.");
	
	initTip("Fspecial");
	initTipWords("FSpecial is a quick dash.
	
	If it hits a player it transitions into a flashy cutscene (without pratfall).
	If it hits a wraith, it has no pratfall.
	");
	

	
	
	
	initTip("Dspecial Movement");
	initTipWords("Dspecial makes you floatier! It keeps your momentum too.
	
	You can reverse the horizontal momentum in the beginning!");
//	initTipImage(player_id.spr_uspecial, 3, fa_left, 1, c_white, 0);
//	initTipImage(player_id.spr_uspecial, 9, fa_right, 1, c_white, 0);

	
	initTip("Nair Spike");
	initTipWords("Pressing attack again or holding attack during nair has you slam towards the ground! 
	
	Can be activated after the first spin!");
	//initTipImage(player_id.spr_nair, -5, fa_center, 2, c_white, 3);
//	initTipImage_ext(player_id.spr_nair, -5, fa_center, 1, c_white, 0, 50, 50, 50, 50)
	
	

	initTip("Did you know?");
	initTipWords("The 1.0 version of this character was made in a single month for Zetta's Another Workshop Jam. And I submitted super duper late!");
	
	initTip("Did you know? (2)");
	initTipWords("They are a small bear
	
	beawr
	
	
	they use any pronouns, i refer to them with they/them pronouns
	
	
	
	
	
	
	
	
	
	
	
	hi
	
	thank you for reading these
	");
	
	initTip("Lore???");
	initTipWords("Nova originally only had one sword
	they just went back in time and stole their own sword from themselves
	
	
	
	
	");
	
	initTip("Lore??????");
	initTipWords("
	
	it took a long time for nova to properly control their time travel
	
	for years, they bounced around the centuries
	
	their own origin has been lost even to themselves, as each time jump required a new identity
	
	was it an experiment? a surprise at birth? 
	
	
	
	time won't tell
	
	
	
	");
	

	
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
	
/*	initPatch("1.1", "32 Mebruary, 20XX");
	initPatchWords("Buffs
	- a");
	initPatchWords_ext("This buff will help Sandbert a.", fa_left, c_gray, 1, 0);
	initPatchWords("Nerfs
	- a
	- b
	- a
	- uhhhh");
	initPatchWords_ext("Wait why did i nerf thsio ahgain", fa_left, c_gray, 1, 0);
	initPatchWords("Fnuuy joke
	- waog");
	initPatchWords_ext("Wow that is very funny", fa_left, c_gray, 1, 0); */
	
		initPatch("1.16", "3 August, 2021");
		
			initPatchWords_ext("lol. lmao.", fa_center, c_white, 0, 0);
initPatchWords_ext("wraith actually deletes itself when hit now", fa_left, c_white, 0, 0);
	
	
		initPatch("1.15", "3 August, 2021");
		
			initPatchWords_ext("Small Changes.", fa_center, c_white, 0, 0);
initPatchWords_ext("-Blink walljump height lowered
-dspecial momentum reversing now multiplies hsp by 3/4
-dspecial max hsp in air reduced to 4 (from 5)
-dair stalling ability lowered", fa_left, c_white, 0, 0);
	
	
	
	initPatch("1.14", "2 August, 2021");
		
			initPatchWords_ext("Riptide!", fa_center, c_white, 0, 0);
initPatchWords_ext("2 new alts... and a lot of edited ones
messed with existing alts again. now much more contrast
default color has more shading contrast
afterimage colors are flipped
afterimage is much more opaque

-kb_adj 1-1.05

-ftilt bkb 8-7
-ftilt hsp 4-3.5
~ftilt hitbox taller but not as wide

-utilt first hit damage 4-3
-dtilt damage 7-6

~dattack 6-5 hits (active frames 18-15)
~dattack final hit damage 3-4

-dstrong endlag 18-19 frames


~dair, fair, bair now give vertical boost on use (only nair does not now)

-nair endlag 7-8 frames
+nair has a spike aerial-only hitbox on land now. experimental?
+nair landing hitboxe size/shape adjusted
+activating nair spike before the 2nd spin should be easier
-nair spike is now cancellable 6 frames later if not hit (18-24)
-removed nair spike fastfall
~nair falling spike now lasts 60 frames instead of 30

~the entirety of uair now does 7 damage (small hitbox used to do 6)
-uair endlag 13-14 frames
-uair landing lag 7-8 frames

-bair damage 7-6
-bair hitpause scaling 0.4-0.5
-bair landing lag 5-6 frames

~dair angle 40-65
~dair base hitpause 5-4
~dair kbs 0.5-0.7
-dair endlag 11-12 frames
-dair landing lag 7-8
+dair can now be held to lower gravity, like shovel knight uair
+dair now sends backwards if nova is moving backwards
+dair lerping is more effective

+fspecial ledge snap now works when hugging the wall

-vsp is now clamped between 10 and -10 for blink

~wraith has lower hit lockout on dair, connects more smoothly
~wraith now activates later when using dspecial
~wraith can now be hit by dspecial (see above)
-wraith damage 6-4
~wraiths have been recoded. Multiple can now be hit at once and they now properly register hitbox groups
~ustrong no longer sends wraith astronomically high", fa_left, c_white, 0, 0);
	
	
	initPatch("1.13", "16 July, 2021");
		
			initPatchWords_ext("Feedback", fa_center, c_white, 0, 0);
initPatchWords_ext("3 new alts! 2 for Inner and one for Civic for winning RWL with Nova.
added proper outlines for 2 alts on the css

~dash and dashstart anims are 1 pixel longer

+ftilt endlag 13-12
+ftilt hsp 3-4
+ftilt bkb 7-8
+ftilt kbs 0.55-0.6
+ftilt hitbox is more generous
~ftilt angle 361-40

+jab2 damage 4-5
+jab1 hitbox bigger
+jab2 hitbox bigger
+jabs no longer have angle flipper 6
~jab2 angle 105-100

jab iasa script is 1 frame earlier

+ustrong hitboxes more generous
+ustrong foot launcher hitbox now slightly bigger
~ustrong foot hitbox now centered on the spinning hitboxes rather than the player

~nair late spike bkb 5-4
~nair late spike kbs 0.5-0.7

-fair endlag 13-14 frames
-fair landing lag 6-7 frames

-bair landing lag 4-5 frames
+bair damage 6-7

-uair endlag 12-13 frames
+uair damage 6-7

+dair on hit lerping is stronger
-dair hitboxes made smaller to better match anim

-fspecial startup 12-15 frames
-fspecial initial hitbox made smaller
~fspecial cutscene is much faster
+fspecial endlag 34-25 frames
-fspecial damage 14-12
-hitting a wraith with fspecial no longer does the cutscene (still removes pratfall)
~fspecial now tries to keep the opponent in the blastzone before the final hit

~fspecial multihits kbs 0.2-0
~fspecial multihits hitpause scaling 0.15-0.1
~fspecial multihits bkb 4-5
+fspecial hit 1 bkb 5-7 (for the wraith)

-uspecial startup 7-8 frames
~uspecial sfx/hitfx edited
~uspecial first outward hitbox has a new animation for that specific hitbox
~uspecial first outward hitbox has new sfx to differentiate from the upward hit
+uspecial first hit kbs 0.8-0.85

+dspecial uses stronger hfx on land

~wraith checks if youve already been hit by a hitbox? maybe works in some situations?
~platform being moved to random places SHOULD be fixed, lmk if not", fa_left, c_white, 0, 0);
	
	
		initPatch("1.11-1.12", "9+11 July, 2021");
		
			initPatchWords_ext("Whoops", fa_center, c_white, 0, 0);
initPatchWords_ext("Removed the debug HSP value that draws below Nova
Removed the debug sprites from the portrait", fa_left, c_white, 0, 0);
	
		initPatch("1.10", "9 July, 2021");
		
			initPatchWords_ext("Color Revamp", fa_center, c_white, 0, 0);
initPatchWords_ext("Alt colors have been revamped! Most have either been replaced or changed significantly.

~Hitpause values have been adjusted across the board.

~Dair no longer does 13 damage occasionally 

~Fixed a lack of detail on the first frame of airdodge", fa_left, c_white, 0, 0);
	
	
	
		initPatch("1.9", "8 July, 2021");
		
			initPatchWords_ext("AUGHHHH", fa_center, c_white, 0, 0);
initPatchWords_ext("-fspecial initial hitbox smaller
~fspecial initial dash goes further
~fspecial cutscene goes much less far
+fspecial final hit bkb 5-6
+fspecial final hit kbs 0.85-1
+fspecial startup 14-12
-fspecial endlag 30-34
+fspecial cutscene now activates on hitting a wraith
~fspecial no longer checks for blastzones
-cutscene endlag has more aerial friction
~fspecial gravity now scales from 0.1 to 0.6 throughout the dash endlag
~fspecial aerial friction scales from 0.25 to 0 throughout the dash endlag

+pratfall accel 0.85-1



", fa_left, c_white, 0, 0);
	
	
	
		initPatch("1.8", "7 July, 2021");
		
			initPatchWords_ext("Weeklies pls...?", fa_center, c_white, 0, 0);
initPatchWords_ext("Alt names! Guess 'em all! They are cryptic!
some alt adjustments as well
new alt for JPEG Warrior
funny walkturn is now intentional and in both directions

+ftilt adds a small amount of hsp on use

+dattack endlag 14-12
-dattack now has whifflag (whoops!)
~dattack multihits bkb 6-5
~dattack multihits kbs 0.3-0.5
+dattack lerping is much more powerful
+dattack multihit hitboxes made taller

+ustrong grounded connecter hit now has a drift multiplier of 0.

~nair first hit has less hitpause, 6-5
~nair first hit hitpause scaling 0.2-0.1
~nair final hit base hitpause 6-7
-nair initial spike kbs 0.8-0.7
-nair falling spike kbs 0.6-0.5
-nair landing now has 4 more frames on lag on hit, 6 more on whiff
-nair spike can now be cancelled on frame 18 (from 12)
~fixed a nair glitch where the landing hitbox wouldnt come out

+fair sweetspot damage 7-8

+dair has bigger hitboxes
+dair hitboxes now change when rising to connect better

~fspecial rework! Now a quick dash forward. If the dash hits a player, the cutscene occurs
~more animation frames for fspecial lag
+fspecial ledge snap is now 40 frames below ledge (from 35)
+fspecial lag 33-30
+fspecial cutscene travels slightly further
+fspecial falls slower in the endlag
+fspecial can be controlled more freely in endlag
+fspecial cutscene will stop moving forward at side blastzones

+wraiths hitboxes are now transcendent
~teleporting to a wraith now sets your hsp and vsp to 0 if not dodging

-prat land time 10-14

+new rune! allows you to turnaround fspecial after it first lands.
+updated tips to reflect changes



+(very important) taunt now uses diff sfx", fa_left, c_white, 0, 0);
	
	
	
		initPatch("1.7", "24 June, 2021");
		
			initPatchWords_ext("Balance?", fa_center, c_white, 0, 0);
initPatchWords_ext("Dattack anim adjusted. Hitbox moved in and made much smaller.
jab2 angle 80-105
if not landing jab1, jab2 can be cancelled into a frame sooner (12-11)

", fa_left, c_white, 0, 0);
	
		initPatch("1.6", "24 June, 2021");
		
			initPatchWords_ext("Balance?", fa_center, c_white, 0, 0);
initPatchWords_ext("last patch I accidentally reused a version number, causing desyncs. My apologies!

BIG CHANGES:
jab TWO!
fspecial is faster and stronger, but now has pratfall
wraiths cannot be blink cancelled off of
dattack nerfs
afterimage visuals polish
and more!

jab damage 6-4
jab has an additional frame of lag on whiff
jab2! Its just like jab1, but bigger!
jab1 is unchanged, but now uses an iasa script in place of less animation frames.
if attack is pressed in the endlag of jab1, jab2 comes out!
jab2 has the same stats as jab1, and a much bigger hitbox

utilt has lower hitpause scaling
dattack final hit damage 4-3
dattack startup 9-10
dattack endlag 12-14 frames
dattack bkb 6-5
dattack kbs 0.6-0.7

fstrong early hit damage 11-12
ustrong startup 7-9 frames
ustrong total damage 12-11
ustrong connecting hits have less hitpause
dstrong base hitpause increased to 8 and 9 for the front and back hit, respectively

fair sweetspot moved in a tiiny bit
fair sourspot hitfx changed
bair base hitpause 6-7
uair has a small amount of vertical speed gain at the start

nspecial can no longer occasionally spawn 2 wraiths
wraiths now ignore priority 0 hitboxes
wraiths can no longer be blink cancelled off of. This is now a rune!
if the wraith lands during dattack (or dair), opponents no longer lerp (teleport towards) Nova
wraiths explode sooner after dattack
wraiths lerp during multihits, so they should always get hit by the full dattack/ustrong/dair/fspec

wraith damage 10-6
wraith kbs 0.8-0.5
wraith hitpause lowered
(dspecial values unchanged)

fspecial is much faster and has less hitpause, but covers about the same distance.
fspecial startup 12-14 frames
fspecial kbs 0.7-0.85
fspecial now has pratfall on whiff
fspecial can be used multiple times midair (if it lands)
fspecial ledge snaps

uspecial late hit angle 90-85


filled in an empty pixel on fspec and airdodge
dstrong startup is 200% clearer
fixed the ustrong sound glitch
afterimages have been adjusted visually. For nspec, they use logic to not go through floors, walls, or plats
sfx additions on uspec and dspec

updated tips!", fa_left, c_white, 0, 0);
	
	
		initPatch("1.5", "19 June, 2021");
		
			initPatchWords_ext("Hotfixes", fa_center, c_white, 0, 0);
initPatchWords_ext("Wraith now has extended parry stun

wraith can be hit by fspecial
dspecial and wraiths have more hitpause
fair has a diff sfx/hfx for the heavy hit




", fa_left, c_white, 0, 0);
	
	
	
		initPatch("1.4", "14 June, 2021");
		
			initPatchWords_ext("Gimmick PLUS", fa_center, c_white, 0, 0);
initPatchWords_ext("Hitfx are now drawn in front of the player! (Includes some changes to hit particles too)
Uspecial now properly applies the unmerged sword skin on use
When a time wraith is hit you now teleport to the time wraith, not the hitbox's center
Fspecial/Uspecial afterimages fade more nicely during hitpause

Dtilt bkb 7-8,
Dattack bkb 5-6
Dattack hsp now added in attack update (tldr blinking in dattack distance is more consistent)

Dstrong hitbox frames now match the move... (one less active frame, one more frame total in the move)

Fair hitbox sizes adjusted, sweetspot is bigger
Changed nair's second hit sfx
Uair uses proper hitfx now
Dair has lower hitpause scaling 0.2-0.15
Dair multihits are now techable
Dair has a different hitbox for grounded opponents with a different angle flipper
Dair now uses *some* on hit lerping

hit the wraith! it explodes

Fspecial startup 14-12 frames
Dspecial damage 8-10
Dspecial kbs 0.5-0.7
Dspecial endlag 20-16 frames
Dspecial rises slightly lower when used on the ground
More vsp/hsp is conserved during dspecial
Dspecial angle 45-40
Uspecial kbs (both hits) .7-.8
Uspecial final hit angle 80-90



i might have forgotten something
", fa_left, c_white, 0, 0);

	
	
	
	initPatch("1.3", "2 June, 2021");
		
			initPatchWords_ext("The 'Day 1 Nova Montage' Patch", fa_center, c_white, 0, 0);

		
	initPatchWords_ext("Nspecial cooldown now applies to on hit cancels.
	Nspecial wraith dies on death.
	Fspecial multihits have less hitpause.
	Uspecial late hit bkb 6-7 .6-.7.", fa_left, c_white, 0, 0);
	
	initPatchWords_ext("Ftilt kbs 0.5-0.55.
	Dattack multihits are no longer untechable.
	Dattack multihits bkb 8-6.
	Dattack multihits hitpause scaling .3-.15.
	Dattack multihits no longer have an angle flipper. Now uses lerping to connect.", fa_left, c_white, 0, 0);
	
	
	initPatchWords_ext("Fair strong hit bkb 6-7, kbs 0.75-0.85.
	Nair landing hit has different sfx.
	Nair initial spike kbs .7-.8.
	Nair falling spike bkb 4-5.", fa_left, c_white, 0, 0);

	
	initPatchWords_ext("Ustrong final hit kbs 0.9-1.0
	Fstrong bkb 7-8, kbs 0.9-1.0.
	Dstrong startup 13-10 frames.
	Dstrong front hit angle 55-45.", fa_left, c_white, 0, 0);
	

 			initPatchWords_ext("Walljump has different hsp/vsp values. Goes higher and not as far out now.
 			
 			*In the future ill add more interactions with nspecial, thank you all for playing Nova!", fa_left, c_white, 0, 0);





	
		initPatch("1.2", "31 May, 2021");
	initPatchWords_ext("Fspecial hits now ignore projectiles.", fa_center, c_white, 0, 0);
	initPatchWords_ext("Fspecial endlag 25-33.", fa_center, c_white, 0, 0);
	initPatchWords_ext("Fspecial endlag no longer has custom gravity.", fa_center, c_white, 0, 0);
	initPatchWords_ext("Uspecial startup 5-7 frames", fa_center, c_white, 0, 0);
	initPatchWords_ext("Uspecial goes slightly lower now (barely).", fa_center, c_white, 0, 0);
	initPatchWords_ext("Edited munophone sprite slightly.", fa_center, c_white, 0, 0);
	initPatchWords_ext("Added the finished tag.", fa_center, c_white, 0, 0);

	
		initPatch("1.1", "31 May, 2021");
	initPatchWords_ext("Uspecial damage initial hit 2-7", fa_center, c_white, 0, 0);
	initPatchWords_ext("Uspecial damage late hit 2-6", fa_center, c_white, 0, 0);
	initPatchWords_ext("Fair sweetspot 9-7 damage", fa_center, c_white, 0, 0);

//	initPatchImage(other.spr_doublejump, 0, fa_center, 1, c_white, 1);
	
	
	
	initPatch("1.0", "31 May, 2021");
	initPatchWords_ext("BARELY MAKING THE JAM", fa_center, c_white, 0, 1);
//	initPatchImage(other.spr_doublejump, 0, fa_center, 1, c_white, 1);
	
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
	
/*	// post_draw.gml
	initCheat("Say woag", "cheat_funny_snail", [0, 1], ["no", "yes"], "Say woag? Yes. No. AAAAAA");
	
	// update.gml
	initCheat("Max DJumps", "cheat_more_djumps", [1, 2, 3, 4, 5, 0], ["1", "2", "3", "4", "5", "0"], "Change Sandbert's maximum number of double jumps.");
	
	// attack_update.gml
	initCheat("USpecial Flight Speed", "cheat_flight_speed", [1, 1.25, 1.5, 2, 3, 5, 10], ["1", "1.25", "1.5", "2", "3", "5", "10"], "Change the speed of USpecial's flight.");
	
	// attack_update.gml
	initCheat("FSpecial Cancel", "cheat_fspecial_cancel", [0, 1], ["Off", "On"], "Cancel FSpecial into any action.");
	
	// update.gml
	initCheat("wide?", "cheat_widebert", [1, 1.25, 1.5, 2, 3, 5, 10, 20, 0.5, 0.25, 0.1, 0], ["Normal", "wide", "w i d e", "w  i  d  e", "w   i   d   e", "w    i    d    e", "w     i     d     e", "w      h      a      t", "narrow", "narrower", "narrowerer", "."], "how");
	
	// init_shader.gml
	initCheat("Disco", "cheat_skittles", [0, 1], ["Off", "On"], "skittles");
	
	// update.gml
	initCheat("stop hitting yourself", "cheat_recoil", [0, 1], ["Off", "On"], "ouf"); */
	
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
║ About	                                                       ║
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
	
/*	initAbout("About Sandbert", "character made by daniel fornaniel and his team, follow them on facebook
	
	
	
	
	please im begging you can we get to 50 followers"); */
	
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
	 * GIM_HOWLmake the enemy dspecial
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
	
	steve_death_message = "Steve experienced time dilation"
	
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
║ The End                                                       ║
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