// Muno template - user-defined content



/*
 * THIS IS THE ONLY FILE YOU NEED TO EDIT! The other user_events, as well as
 * css_draw, are not to be edited by the end user unless you want to specially
 * modify the template. (It's open source, but I'll be sad if you remove my
 * attempts at standardization)
 */



// Update Code

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
		bike,
		ball,
		"-"
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



// Compatibility setup

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
	num_alts = 16; // Number of alt costumes; controls how many appear on the CSS
	exit;
}



// General Character Info

muno_char_id = 2;										// For any non-Muno characters, this should be set to noone!

muno_char_name = get_char_info(player, INFO_STR_NAME);	// Name of the character, used for the MunoPhone - and also free to be used by other mods

muno_char_icon = get_char_info(player, INFO_ICON);		// CSS icon of the character. You can replace this with an arbitrary sprite. (Make it the same size pls, thank u)

phone.taunt_hint_x = 0;									// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.
phone.shader = 1;

phone.dont_fast = 0;									// Set this to 1, and Fast Graphics will not automatically be set when the FPS dips below 60.



// Sprites (you could also include things like these in init.gml if you like)

var ball_idle_spr = sprite_get("ball_idle");
var ball_idle_spr_s = sprite_get("ball_idle_square");
var ball_idle_spr_t = sprite_get("ball_idle_triangle");
var bike_dash_spr = sprite_get("bike_dash");
var ball_comp_spr = sprite_get("ball_compress");
var dspecial_air_spr = sprite_get("dspecial_air");



// Tips init

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
	
	initTip("NSpecial: Ball Types");
	initTipWords("When shooting a pool ball, you can charge it to change its shape, giving it a different knockback angle.");
	initTipWords("Circle sends at a normal angle, triangle sends in, and square spikes enemies.");
	initTipImage_ext(ball_idle_spr, -5, fa_left, 1, c_white, 4, 100, 100, 20, 20);
	initTipImage_ext(ball_idle_spr_t, -5, fa_center, 1, c_white, 4, 100, 100, 20, 20);
	initTipImage_ext(ball_idle_spr_s, -5, fa_right, 1, c_white, 4, 100, 100, 20, 20);
	
	initTip("NSpecial: Trick Shots");
	initTipWords("While the ball travels through the air, you can tap B to make it hover in midair, or hold B to make it bounce. While hovering or charging the bounce, it cannot hit enemies. You can make it bounce repeatedly in a zig-zag pattern.");
	initTipWords("The ball also bounces in different ways when it hits a wall or an enemy.");
	initTipWords("At any time, you can hit the ball with an attack to send it flying! Each hitbox has its own launch angle, so try them all.");
	initTipImage_ext(ball_idle_spr, -5, fa_center, 1, c_white, 0, 100, 100, 20, 20);
	
	initTip("Motorcycle Stance");
	initTipWords("USpecial, FSpecial, and DSpecial all cause you to board a motorcycle! In this state, you're way faster but can't parry right away.");
	initTipImage(bike_dash_spr, -5, fa_right, 1, c_white, 3);
	
	initTip("Bike-Ball Duality");
	initTipWords("Your ball and bike are actually the exact same thing. So, use a Bike Special while the ball is out, and you'll teleport to the ball! You can do this at any time when the ball projectile is in play, so get creative!");
	initTipImage_ext(ball_comp_spr, -5, fa_center, 1, c_white, 0, 100, 100, 100, 30);
	
	initTip("Repeated Bike Specials");
	initTipWords("USpecial and FSpecial normally cause pratfall when ending in midair, but you can avoid this once per airtime by hitting an enemy.");
	initTipImage(other.spr_uspecial, -5, fa_left, 1, c_white, 0);
	initTipImage(other.spr_fspecial, -5, fa_right, 1, c_white, 0);
	
	initTip("DSpecial's Variants");
	initTipWords("The regular DSpecial is a downward slam with the bike. If performed while grounded, bikeless, and with no ball in play, it's instead a quick bike mount.");
	initTipImage(dspecial_air_spr, -5, fa_left, 1, c_white, 0);
	initTipImage(other.spr_dspecial, -5, fa_right, 1, c_white, 0);
	
	initTip("UStrong Flight Lesson");
	initTipWords("UStrong is a flying command grab with several quirks. You can charge the attack to go higher; you can turn around after grabbing an enemy; and you can fastfall the throw to chase the downward knockback.");
	initTipWords("P.S. Try grabbing a billiard ball!");
	initTipImage(other.spr_ustrong, -5, fa_right, 1, c_white, 0);
	
	initTip("Pogo with DAir");
	initTipWords("DAir bounces upward when it hits an enemy or a ball, but you can choose to hitfall it instead for a quick landing.");
	initTipImage(other.spr_dair, -5, fa_center, 1, c_white, 0);
	
	initTip("Going Over the Edge");
	initTipWords("While performing a DTilt or DAttack, you can go over the edge of the stage or platform - and DTilt even lets you cancel the move early to combo.");
	initTipImage(other.spr_dtilt, -5, fa_left, 1, c_white, 0);
	initTipImage(other.spr_dattack, -5, fa_right, 1, c_white, 0);
	
}



// Patch notes init

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
	
	initPatch("1.22", "16 February, 2021");
	initPatchWords("DSpecial - Nerfs, Adjustments");
	initPatchWords_ext("Active hitbox duration 18f --> 12f.
	Now has landing lag (18f) instead of bouncing.
	When started on the ground, the dive is now preceded by a jump.", fa_left, c_gray, 1, 0);
	initPatchWords("UStrong - Bugfixes");
	initPatchWords_ext("No longer grabs armored players.", fa_left, c_gray, 1, 0);
	
	initPatch("1.21", "07 February, 2021");
	initPatchWords("NSpecial - Buffs");
	initPatchWords_ext("The change made last patch now only applies to melee hitboxes.
	Projectiles simply destroy the ball instead.", fa_left, c_gray, 1, 0);
	
	initPatch("1.20", "07 February, 2021");
	initPatchWords("NSpecial - Nerfs, Buffs");
	initPatchWords_ext("When the enemy hits the ball, it will now fly towards Otto and hit him, just like when it gets parried.
	Damage of the ball in the above scenario 14 --> 10.", fa_left, c_gray, 1, 0);
	initPatchWords("FAir - Nerfs");
	initPatchWords_ext("Hitbox size reduced.", fa_left, c_gray, 1, 0);
	initPatchWords("DAir - Nerfs");
	initPatchWords_ext("Hitbox width reduced.
	There is now a tipper sweetspot, which has the same stats DAir has always had. The rest of the move is weaker and sends upward.", fa_left, c_gray, 1, 0);
	initPatchWords("DSpecial - Bugfixes");
	initPatchWords_ext("Now creates a silhouette on the ball when teleporting to it, like with FSpecial and USpecial.", fa_left, c_gray, 1, 0);
	
	initPatch("1.19", "27 January, 2021");
	initPatchWords("DTilt - Nerfs");
	initPatchWords_ext("Hit 2 lifetime 8 --> 4. (the original duration was an accident, now it properly aligns with the animation!)", fa_left, c_gray, 1, 0);
	initPatchWords("DAttack - Nerfs");
	initPatchWords_ext("Both hitboxes moved a bit further back.", fa_left, c_gray, 1, 0);
	
	initPatch("1.18", "21 January, 2021");
	initPatchWords("NSpecial - Adjustments");
	initPatchWords_ext("The first bounce takes only 20f to charge, instead of 30f.
	Each consecutive bounce adds 10f to the charge time, to a maximum of 60f.", fa_left, c_gray, 1, 0);
	
	initPatch("1.17", "19 January, 2021");
	initPatchWords("NSpecial - Bugfixes");
	initPatchWords_ext("Ball should no longer have weird changes in behavior between the first time you hit it VS subsequent times.", fa_left, c_gray, 1, 0);
	
	initPatch("1.16", "18 January, 2021");
	initPatchWords("NSpecial - Bugfixes");
	initPatchWords_ext("Ball can now be manipulated properly after Otto launches it with a move.", fa_left, c_gray, 1, 0);
	initPatchWords("DSpecial - Bugfixes");
	initPatchWords_ext("Otto will no longer bounce off the ground after being parried.", fa_left, c_gray, 1, 0);
	
	initPatch("1.15", "17 January, 2021");
	initPatchWords("NSpecial - Reworks");
	initPatchWords_ext("Bounce system changed - instead of consecutive taps, it's now tap vs. hold.
	Tap to make the ball hover.
	Hold for 30f to make the ball bounce in a wide arc.
	This applies for any of the ball's non-hovering states, and can even be done repeatedly.", fa_left, c_gray, 1, 0);
	initPatchWords("USpecial, DSpecial - Nerfs");
	initPatchWords_ext("Damage 13 --> 11.", fa_left, c_gray, 1, 0);
	initPatchWords("FAir - Buffs");
	initPatchWords_ext("Angle 45 --> 40.
	Knockback scaling 0.6 --> 0.65.
	Hit sfx adjusted.", fa_left, c_gray, 1, 0);
	initPatchWords("BAir - Buffs");
	initPatchWords_ext("Startup 7 --> 6.
	Angle flipper 5 --> 3.
	Angle 75 --> 80.
	Knockback scaling 0.7 --> 0.6.
	Hitbox extends further into Otto's body.", fa_left, c_gray, 1, 0);
	initPatchWords("DStrong - Buffs");
	initPatchWords_ext("Startup 16 --> 12.", fa_left, c_gray, 1, 0);
	initPatchWords("UStrong - Nerfs");
	initPatchWords_ext("You can no longer slide off an edge to charge in midair.", fa_left, c_gray, 1, 0);
	
	initPatch("1.14", "14 January, 2021");
	initPatchWords("Tiny patch to try and fix a couple of visual (and VERY minor gameplay) bugs with the ball article / projectile.");
	
	initPatch("1.13", "04 January, 2021");
	initPatchWords("NSpecial - Buffs");
	initPatchWords_ext("Parried ball damage 18 --> 14.", fa_left, c_gray, 1, 0);
	
	initPatch("1.12", "04 January, 2021");
	initPatchWords("NSpecial - Nerfs, Clarity");
	initPatchWords_ext("Bouncing the ball grants it less speed and duration.
	A parried ball now does 18 damage.
	The blinking effect (when about to disappear) begins later.", fa_left, c_gray, 1, 0);
	
	initPatch("1.11", "02 January, 2021");
	initPatchWords("NSpecial - Nerfs");
	initPatchWords_ext("Bouncing the billiard ball now takes 5 frames longer.", fa_left, c_gray, 1, 0);
	initPatchWords("UStrong - Buffs");
	initPatchWords_ext("Grab hitbox lifetime 3 --> 6.", fa_left, c_gray, 1, 0);
	
	initPatch("1.10", "28 December, 2020");
	initPatchWords("DSpecial - Nerfs");
	initPatchWords_ext("The base knockback now decays from 6 to 3 across the hitbox's duration.", fa_left, c_gray, 1, 0);
	initPatchWords("Bobbleheads - Bugfixes");
	initPatchWords_ext("There should no longer be an error message at the start of a match.
	Otto's bobblehead in the ditto matchup is no longer Sandbert.", fa_left, c_gray, 1, 0);
	
	initPatch("1.9", "24 December, 2020");
	initPatchWords("FSpecial, USpecial, DSpecial - Bugfixes");
	initPatchWords_ext("The special-button input buffer is now cleared at the start of the move.
	(This prevents weird action sequences when wavelanding out of the special.)", fa_left, c_gray, 1, 0);
	
	initPatch("1.8", "21 December, 2020");
	initPatchWords("FSpecial, USpecial, DSpecial - Buffs");
	initPatchWords_ext("The startup of these moves can now be airdodge-canceled, leaving you on the bike.", fa_left, c_gray, 1, 0);
	initPatchWords("FSpecial - Buffs");
	initPatchWords_ext("Hitbox size increased.
	Angle 55 --> 45.", fa_left, c_gray, 1, 0);
	initPatchWords("USpecial - Nerfs");
	initPatchWords_ext("Knockback scaling 0.85 --> 0.8.", fa_left, c_gray, 1, 0);
	
	initPatch("1.7", "02 December, 2020");
	initPatchWords("FSpecial, DSpecial - Aesthetics");
	initPatchWords_ext("Adjusted head size during startup.", fa_left, c_gray, 1, 0);
	
	initPatch("1.6", "01 December, 2020");
	initPatchWords("NSpecial - Buffs");
	initPatchWords_ext("Charge time for each ball 20 --> 15.", fa_left, c_gray, 1, 0);
	initPatchWords("DStrong - Bugfixes");
	initPatchWords_ext("Hit 2 size is doubled after hitting an enemy if that enemy ends up grounded.", fa_left, c_gray, 1, 0);
	initPatchWords("MunoPhone - Aesthetics");
	initPatchWords_ext("Phone now gets recolored to the alt.", fa_left, c_gray, 1, 0);
	
	initPatch("1.5", "18 November, 2020");
	initPatchWords("NSpecial - Nerfs");
	initPatchWords_ext("Instead of holding up/down, you need to charge NSpecial to get the different ball shapes.
	Triangle: 20f / Square: 40f
	Initial ball travel speed is a bit slower.", fa_left, c_gray, 1, 0);
	
	initPatch("1.4", "18 November, 2020");
	initPatchWords("NSpecial - Nerfs");
	initPatchWords_ext("Startup 10 --> 15.
	During teleport startup, hitting the ball will cause a premature teleport (so Otto gets hit by the hitbox).", fa_left, c_gray, 1, 0);
	initPatchWords("FSpecial, USpecial, DSpecial - Nerfs");
	initPatchWords_ext("Startup 15 --> 20.", fa_left, c_gray, 1, 0);
	initPatchWords("DAttack - Nerfs, Adjustments");
	initPatchWords_ext("Early hit base knockback 9 --> 8.
	Late hit angle 40 --> 45.", fa_left, c_gray, 1, 0);
	
	initPatch("1.3", "14 November, 2020");
	initPatchWords("NSpecial - Nerfs, Clarity");
	initPatchWords_ext("NSpecial now has a cooldown of 60 frames minimum between firing the ball.
	When parried, the ball now flies straight toward Otto. It cannot be manipulated with NSpecial or hit with melee moves, and using a Bike Special will result in getting hit by the ball.
	NSpecial availability is now shown by the player arrow.
	The ball now has an offscreen indicator.", fa_left, c_gray, 1, 0);
	initPatchWords("FSpecial, USpecial, DSpecial - Clarity");
	initPatchWords_ext("Bike Specials now have an added visual tell during startup.", fa_left, c_gray, 1, 0);
	
	initPatch("1.2", "11 November, 2020");
	initPatchWords("NSpecial - Clarity, Bugfixes");
	initPatchWords_ext("Holding up/down now visually changes the ball's shape.
	Holding up/down no longer changes the firing height.
	Kragg rock shards no longer use billiard ball code.", fa_left, c_gray, 1, 0);
	initPatchWords("FSpecial, USpecial - Bugfixes");
	initPatchWords_ext("Parry stun now works properly.", fa_left, c_gray, 1, 0);
	initPatchWords("Palettes - Aesthetics");
	initPatchWords_ext("Adjusted alt #5.", fa_left, c_gray, 1, 0);
	
	initPatch("1.1", "10 November, 2020");
	initPatchWords("NSpecial - Bugfixes");
	initPatchWords_ext("It's no longer possible to charge the move by holding the strong button. (oops)", fa_left, c_gray, 1, 0);
	
	initPatch("1.0", "10 November, 2020");
	initPatchWords_ext("The character was released.", fa_center, c_white, 0, 1);
	initPatchImage(other.spr_taunt, 7, fa_center, 1, c_white, 1);
	
}



// Cheat codes init

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
	 * has_rune(X) is true or false, you check for the entry in the
	 * phone_cheats array.
	 * 
	 * Each cheat defaults to the first option in its option list (e.g.
	 * cheat_funny_snail defaults to 0). This happens even when the MunoPhone
	 * itself is not available.
	 * 
	 * Cheat descriptions should be short and sweet, as they can't be scrolled.
	 */
	
	initCheat("Trailer Mode", "cheat_hide_hud", [0, 1], ["Off", "On"], "Hides or moves certain HUD elements for trailer recording; meant to be used in conjunction with hiding the overhead name and damage indicators.");
	
}



// Frame Data Guide setup

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
		AT_DSPECIAL_AIR,
		AT_DSPECIAL,
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
	stats_notes = "-"; // set to   "-"   if you don't need to put any notes
	
	
	
	// Include a custom page in the frame data guide? (Useful for documenting miscellaneous numbers, e.g. stats of a passive mechanic)
	include_custom = false;
	
}



// About init

with phone{
	
	/*
	 * Info found in the "About" app.
	 * 
	 * initAbout(entry name, entry text)
	 * 
	 * Useful for credits or etc. The page can also scroll, so they can be long
	 * if you want
	 */
	
	initAbout("About Otto", "Character made by Muno!
	
	SFX: Sims Pool for iPod");
	
}







// Trummel & Alto codec

if pho_has_trum_codec{
	
	/*
	 * initCodec(gimmick)
	 * initCodecPage(speaker, expression, gimmick, text)
	 */
	
	/*
	 * Codec speaker handles:
	 * SPK_TRUM: Trum
	 * SPK_ALTO: Alto
	 * SPK_OTTO: Otto
	 * SPK_CODA: Coda
	 * SPK_ECHO: Tempo
	 * SPK_MINE: Steve (i dont normally use this one... like, what is he supposed to say?? the funny oof noise? you can if you want)
	 */
	
	/* 
	 * Page gimmick handles:
	 * GIM_CHOMP			make the enemy ftilt
	 * GIM_CLONE 			display 2 speakers
	 * GIM_LAUGH_TRACK		play the funny haha sound
	 * GIM_SKIP   			advance the page immediately when the text finishes
	 * GIM_DIE    			die
	 */
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_ALTO, 3, 0, "Where's your 8 Ball now, huh, Otto?");
	var h = GIM_SHADER;
	initCodecPage(SPK_OTTO, 3, h, "Not like I ever needed it to mop the floor with you guys! Let's put a wager on it.");
	initCodecPage(SPK_ALTO, 4, 0, "Those sound like betting odds to me!");
	initCodecPage(SPK_TRUM, 0, 0, "anything is betting odds when ur drunk");
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	
	// otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");
	// otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body"); // you only need to change this if you REALLY want to. most chars just use the head sprite
	
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve lost a bet";
	
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





// THIS MARKS THE END OF THE SECTION YOU HAVE TO EDIT!
// BELOW THIS IS JUST BEHIND-THE-SCENES CODE,
// FEEL FREE TO EDIT IF YOU KNOW WHAT YOU'RE DOING





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