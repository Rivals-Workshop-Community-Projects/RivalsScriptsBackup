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
	
	if instance_exists(guitar) phone_custom_debug = [
		guitar.chord_juice,
		guitar.chord,
		chord_active
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

muno_char_id = echo ? 4 : 3;							// For any non-Muno characters, this should be set to noone!

muno_char_name = get_char_info(player, INFO_STR_NAME);	// Name of the character, used for the MunoPhone - and also free to be used by other mods

muno_char_icon = get_char_info(player, INFO_ICON);		// CSS icon of the character. You can replace this with an arbitrary sprite. (Make it the same size pls, thank u)

phone.taunt_hint_x = 150;								// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.
phone.shader = 1;

phone.dont_fast = 0;									// Set this to 1, and Fast Graphics will not automatically be set when the FPS dips below 60.



// Sprites (you could also include things like these in init.gml if you like)



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
	
	if other.echo{
		initTip("Tempo VS Coda");
		initTipWords("Tempo is Coda's Echo Fighter, and both of her gameplay differences are related to her artificial Air Keytar (compared to Coda's mythical Air Guitar).");
		initTipWords("First, Tempo has an entirely different set of Power Chords, which are more situational but allow for creative plays.");
		initTipWords("Also, Tempo's FSpecial instantly reaches full charge (unless the Air Keytar is already floating somewhere away from her).");
	}
	
	initTip("NSpecial: Power Chords");
	initTipWords("Use NSpecial to select 1 of 5 Power Chords - your Air Guitar infuses you with its power. Each one has its own upsides, downsides, and cooldown timer.");
	// if other.echo initTipWords("Tempo's Power Chords are entirely different from Coda's!");
	initTipImage_ext(other.spr_nspecial, -5, fa_left, 1, c_white, 0, 100, 100, 100, 20);
	initTipImage_ext(other.spr_hud_chord_icons, -12, fa_right, 1, c_white, 0, 100, 100, 80, 50);
	
	initTip("Chord Switching");
	initTipWords("You can switch Power Chords at any time - even while attacking or taking damage!");
	initTipWords("If your Air Guitar is deployed using FSpecial or DSpecial, using NSpecial will bring it right back.");
	initTipWords("While selecting a Power Chord, your fall speed is capped.");
	
	var chord_descs = other.echo ? [
		"Float Chord (IV)
		+ Floatiness, Air Movement
		* Absa DJump
		- Weight",
		
		"Slide Chord (V)
		* Near-Zero Friction
		* Accelerating Dash
		+ Moving During Ground Attacks
		+ FAir / BAir Speed Boost
		- Damage Dealt, Knockback Dealt",
		
		"Dodge Chord (II)
		+ Rolls, Airdodge
		- Weight",
		
		"Stun Chord (III)
		+ Clairen Stun, Damage Dealt
		* Less Knockback Dealt
		- Damage Resistance, Weight, Air Movement",
		
		"Reverse Chord (V7)
		* Reversed KB Angles
		* Chord Menu Reverses Momentum"
		]
	:
	[
		"Jump Chord (IV)
		+ Jump Height, Air Movement, Fall Speed
		+ USpecial Distance
		- Weight",
		
		"Speed Chord (V)
		+ Ground Speed, Air Speed
		+ DAttack Distance
		- Jump Height, Damage Dealt, Knockback Dealt",
		
		"Shield Chord (II)
		+ Weight, Damage Resistance
		+ Parry Duration
		- All Movement, Damage Dealt, Knockback Dealt",
		
		"Buster Chord (III)
		+ Damage Dealt
		* Less Knockback Dealt
		- Damage Resistance, Weight",
		
		"Smash Chord (V7)
		+ Knockback Dealt
		- Damage Dealt, Damage Resistance, Weight"
		];
	
	initTip("Each Power Chord's Effect");
	for (var index = 1; index < 6; index++){
		initTipWords_ext(chord_descs[index-1], fa_left, other.chord_color[index], 0, 0);
		initTipImage_ext(other.spr_hud_chord_icons, index, fa_right, 1, other.chord_color[index], 0, 50, 60, 50, 40);
	}
	
	initTip("Guitar Throw");
	initTipWords("Use FSpecial or DSpecial to throw the Air Guitar as a projectile. While it's out, the Power Chord's timer is paused, BUT you don't get its effects.");
	initTipImage_ext(other.spr_fspecial, -5, fa_left, 1, c_white, 0, 100, 100, 100, 20);
	initTipImage_ext(other.spr_guitar_hitbox, -5, fa_right, 1, c_white, 3, 100, 100, 80, 50);
	
	initTip("Guitar Lingering");
	initTipWords("While it's thrown, you can use FSpecial or DSpecial to ''throw'' the Air Guitar again. Charged FSpecial has a longer-lasting initial throw, AND allows you to string together many remote throws. The enemy can hit the guitar, though.");
	initTipWords("Separately, having a Power Chord active will change the properties of the charged FSpecial throw.");
	initTipImage_ext(other.spr_fspecial, -5, fa_left, 1, c_white, 0, 100, 100, 70, 20);
	initTipImage_ext(other.spr_guitar_hitbox_charged, -5, fa_right, 1, c_white, 3, 100, 100, 50, 50);
	
	initTip("USpecial Cancels");
	initTipWords("There are two ways to cancel USpecial. First, if you transition from ground to air during a non-upward USpecial, you can act after the hitbox ends. It's like a very generous edge-cancel.");
	initTipWords("Second, you can USpecial into the thrown Air Guitar to cancel into a grounded jumpsquat - and even USpecial AGAIN!");
	initTipImage_ext(other.spr_uspecial, -5, fa_center, 1, c_white, 0, 100, 100, 100, 20);
	
	initTip("FStrong's Charge Hit");
	initTipWords("During FStrong's charge, there's a hitbox behind you. Release with good timing, and you can combo into the main attack!");
	initTipImage_ext(other.spr_fstrong, -5, fa_center, 1, c_white, 0, 140, 140, 100, 20);
	
	initTip("Jab Jab Jab Jab Jab Jab");
	initTipWords("You can keep using Jab for quite a while, but there is a limit. Try using this time to tactically switch Power Chords!");
	initTipImage_ext(other.spr_jab, -5, fa_center, 1, c_white, 0, 100, 100, 100, 20);
	
	initTip("NAir's Nasty Back Hit");
	initTipWords("The back hit of NAir sends enemies FORWARD.");
	initTipWords("That is all.");
	initTipImage_ext(other.spr_nair, -5, fa_center, 1, c_white, 0, 100, 100, 100, 20);
	
	initTip("Jam Sessions with Taunt");
	initTipWords("You can play songs with your taunt! The key is A Major.");
	initTipWords("Controls:
	- Attack: Play Note
	- Special: Play Note, -1 Octave
	- Jump: Play Note, +1 Octave
	- Shield (Hold): Sharp
	- Taunt: Quit");
	initTipImage_ext(other.spr_taunt, -5, fa_right, 1, c_white, 0, 70, 70, 100, 20);
	initTipWords("Megalovania is IV IV IV+1 I+1, VII VI# V#, IV V# VI#.");
	initTipWords("P.S. Hold a direction to taunt without opening the MunoPhone.");
	
	if other.echo {
	
		initTip("Tempo's Lore");
		initTipWords("Tempo is Coda's sister and partner-in-crime, wielding an artificial Air Keytar instead of Coda's magical artifact.");
	
	}
	
	else {
	
		initTip("Coda's Lore");
		initTipWords("Coda is a media manager from the future, and he owns his own record label that rivals Pomme's work. He found the mystical Air Guitar in the Six-String Sands ruins, and now he's ready to play some really cool music but also beat people up.");
	
	}
	
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
	
	initPatch("1.18", "29 July, 2021");
	if other.echo{
		initPatchWords("Parity update to go along with Coda's.");
	}
	else{
		initPatchWords("Coda is in the upcoming Riptide tournament's Workshop side event! This patch just gets a couple of things ready for that event.")
		initPatchWords("Cosmetics");
		initPatchWords_ext("Seasonal alt replaced with a special Riptide-colored alt.
		To avoid copyright issues, during 10-13 September, 2021, Coda's victory theme will be replaced with Trummel's.", fa_left, c_gray, 1, 0);
	}
	
	initPatch("1.17", "29 June, 2021");
	initPatchWords_ext("- Community Patch: JPEG Warrior -", fa_center, apps[2].color, 1, 0);
	if other.echo{
		initPatchWords("Power Chords - Nerfs");
		initPatchWords_ext("Reverse now changes knockback_adj to 1.2, while also multiplying knockback dealt by 0.6 and damage taken by 1.1.
		Reverse momentum-flip meter consumption 60 --> 80.", fa_left, c_gray, 1, 0);
		initPatchWords("FSpecial - Buffs, Nerfs, Bugfixes");
		initPatchWords_ext("Tempo's FSpecial no longer auto-charges.
		Dodge FSpecial has a larger hitbox, hitpause scaling 0.6 --> 0.8, and shorter travel distance.
		Stun FSpecial extra hitpause 30 --> 50.
		Fixed a bug where FSpecial would still retain Stun's effects even after the Chord ended.
		It is no longer possible to open the Power Chord dial during FSpecial or DSpecial.", fa_left, c_gray, 1, 0);
	}
	else{
		initPatchWords("Power Chords - Nerfs");
		initPatchWords_ext("Jump Chord air speed 8 --> 7, air accel 0.4 --> 0.35, jump/djump heights 17/16 --> 16/15.
		Buster damage multiplier 1.5 --> 1.4.", fa_left, c_gray, 1, 0);
		initPatchWords("FSpecial - Bugfixes");
		initPatchWords_ext("It is no longer possible to open the Power Chord dial during FSpecial or DSpecial.", fa_left, c_gray, 1, 0);
	}
	initPatchWords("DAir - Nerfs");
	initPatchWords_ext("Sweetspot angle 280 --> 270.", fa_left, c_gray, 1, 0);
	initPatchWords("USpecial - Adjustments");
	initPatchWords_ext("Knockback 9/0.5 --> 8/0.55.", fa_left, c_gray, 1, 0);
	
	initPatch("1.16", "31 January, 2021");
	if other.echo{
		initPatchWords("Parity update to go along with Coda's.");
	}
	else{
		initPatchWords("Buster FSpecial - Nerfs, Bugfixes");
		initPatchWords_ext("Damage of each rapid hit 2 --> 1.
		Last hit damage 5 --> 4.
		Puts FSpecial on cooldown during the rapid hits.
		Command grab code now only affects enemies in hitstun.", fa_left, c_gray, 1, 0);
	}
	
	initPatch("1.15", "15 January, 2021");
	initPatchWords("Power Chords - Adjustments");
	initPatchWords_ext("You can now recall the guitar with NSpecial from slightly further away.", fa_left, c_gray, 1, 0);
	initPatchWords("BAir - Nerfs");
	initPatchWords_ext("Startup 6f --> 8f.", fa_left, c_gray, 1, 0);
	
	initPatch("1.14", "14 January, 2021");
	initPatchWords("Power Chords - Nerfs, Adjustments");
	initPatchWords_ext("You can no longer open the Power Chord menu while the guitar is away from you.
	Press NSpecial while touching the guitar to open the menu, or just USpecial into it / wait out its timer / wait for an enemy to hit it.
	NSpecial while away from the guitar does the full animation, including i-frames...", fa_left, c_gray, 1, 0);
	if other.echo{
		initPatchWords("MunoPhone - Corrections");
		initPatchWords_ext("Added Slide Chord's damage and knockback nerfs to its description in the Tips app.", fa_left, c_gray, 1, 0);
	}
	
	initPatch("1.13", "12 December, 2020");
	if other.echo{
		initPatchWords("FSpecial - Buffs");
		initPatchWords_ext("TEMPO-EXCLUSIVE: The initial guitar throw is instantly fully charged.
		(Effectively, it's 16f faster to use)", fa_left, c_gray, 1, 0);
	}
	initPatchWords("Power Chords - Nerfs");
	initPatchWords_ext("You can no longer cancel a Power Chord by double-tapping.", fa_left, c_gray, 1, 0);
	initPatchWords("FSpecial, DSpecial - Nerfs, Bugfixes");
	initPatchWords_ext("Cooldown on guitar returning 30f --> 45f.
	Cooldown on uncharged throws corrected to account for the increase in linger time from 1.12.", fa_left, c_gray, 1, 0);
	
	initPatch("1.12", "08 December, 2020");
	if other.echo{
		initPatchWords("Power Chords - Experiments");
		initPatchWords_ext("Stun Chord now nerfs aerial movement to the same degree as Shield Chord.
		Stun Chord damage multiplier 1.1 --> 1.2, kbg multiplier 0.9 --> 0.6.", fa_left, c_gray, 1, 0);
	}
	else{
		initPatchWords("Power Chords - Nerfs");
		initPatchWords_ext("Jump Chord now nerfs damage taken (1.2x) and damage dealt (0.8x).
		Jump Chord air accel 0.5 --> 0.4, jump heights 19/18/11 --> 17/16/9.", fa_left, c_gray, 1, 0);
	}
	initPatchWords("FSpecial, DSpecial - Buffs");
	initPatchWords_ext("Uncharged throw guitar linger time 60f --> 120f.", fa_left, c_gray, 1, 0);
	initPatchWords("DStrong - Buffs");
	initPatchWords_ext("Endlag 14 --> 12.", fa_left, c_gray, 1, 0);
	
	initPatch("1.11", "30 November, 2020");
	initPatchWords("FAir - Nerfs, Adjustments");
	initPatchWords_ext("Hitboxes consolidated into only one (smaller overall).
	Startup 11 --> 12.
	Hitpause base/scaling 7/0.4 --> 9/0.6.
	Whifflag corrected (increased).", fa_left, c_gray, 1, 0);
	initPatchWords("MunoPhone - Aesthetics");
	initPatchWords_ext("Phone now gets recolored to the alt.", fa_left, c_gray, 1, 0);
	
	initPatch("1.10", "29 November, 2020");
	if !other.echo{
		initPatchWords("Power Chords - Nerfs");
		initPatchWords_ext("Jump Chord USpecial has a little less distance.
		Speed Chord initial dash speed 10 --> 9.", fa_left, c_gray, 1, 0);
	}
	initPatchWords("USpecial - Bugfixes");
	initPatchWords_ext("Guitar cancel no longer happens after getting parried / during hitpause.
	Ledge cancel no longer happens after getting parried.", fa_left, c_gray, 1, 0);
	
	initPatch("1.9", "19 November, 2020");
	if !other.echo{
		initPatchWords("Power Chords - Nerfs");
		initPatchWords_ext("Speed Chord DAttack has a little less distance.", fa_left, c_gray, 1, 0);
	}
	initPatchWords("FAir - Nerfs");
	initPatchWords_ext("Landing lag 6 --> 8.", fa_left, c_gray, 1, 0);
	initPatchWords("UAir - Adjustments");
	initPatchWords_ext("Hit 1 damage 5 --> 3.
	Hit 2 damage 5 --> 7.", fa_left, c_gray, 1, 0);
	
	initPatch("1.8", "18 November, 2020");
	initPatchWords("Power Chords - Nerfs");
	if !other.echo{
		initPatchWords_ext("Smash Chord knockback multiplier 1.5 --> 1.3.
		Buster Chord knockback multiplier 0.5 --> 0.7.
		You can no longer switch chords after getting parried.", fa_left, c_gray, 1, 0);
	}
	else{
		initPatchWords_ext("You can no longer move with Slide Chord after getting parried.
		You can no longer switch chords after getting parried.", fa_left, c_gray, 1, 0);
	}
	initPatchWords("FSpecial, DSpecial - Nerfs");
	initPatchWords_ext("There is now a 30f cooldown on these moves after catching the guitar again.", fa_left, c_gray, 1, 0);
	
	initPatch("1.7", "17 November, 2020");
	initPatchWords("Taunt - Bugfixes");
	initPatchWords_ext("The III#-1 note now plays correctly.
	Removed the cheat code for minor scale because it doesn't work. Might try to get it working again at a later date.", fa_left, c_gray, 1, 0);
	
	initPatch("1.6", "14 November, 2020");
	if other.echo{
		initPatchWords("Power Chords - Buffs");
		initPatchWords_ext("Slide Chord now gives FAir and BAir momentum.", fa_left, c_gray, 1, 0);
	}
	initPatchWords("FStrong - Buffs");
	initPatchWords_ext("Angle 45 --> 40.", fa_left, c_gray, 1, 0);
	
	initPatch("1.5", "13 November, 2020");
	if other.echo{
		initPatchWords("Power Chords - Experiments Reverted");
		initPatchWords_ext("Reverse Chord no longer has the untechable thing.", fa_left, c_gray, 1, 0);
	}
	initPatchWords("FSpecial, DSpecial - Clarity");
	initPatchWords_ext("The guitar now has an indicator for when it's offscreen.", fa_left, c_gray, 1, 0);
	
	initPatch("1.4", "13 November, 2020");
	if other.echo{
		initPatchWords("Power Chords - Experiments");
		initPatchWords_ext("Reverse Chord now makes attacks untechable, with no ground bounce.", fa_left, c_gray, 1, 0);
	}
	initPatchWords("FSpecial - Buffs");
	initPatchWords_ext("Charged FSpecial is now transcendent.", fa_left, c_gray, 1, 0);
	initPatchWords("FSpecial, DSpecial - Nerfs");
	initPatchWords_ext("Projectiles now have extended parry stun.", fa_left, c_gray, 1, 0);
	initPatchWords("DStrong - Buffs");
	initPatchWords_ext("Endlag 18 --> 14.
	Last hit base knockback 0.7 --> 0.6.", fa_left, c_gray, 1, 0);
	initPatchWords("UStrong - Buffs");
	initPatchWords_ext("Knockback base/growth 8.5/1 --> 9.5/1.1.", fa_left, c_gray, 1, 0);
	initPatchWords("FAir - Buffs");
	initPatchWords_ext("Angle 50 --> 40.", fa_left, c_gray, 1, 0);
	initPatchWords("Power Chords - Performance");
	initPatchWords_ext("Chord vfx are less laggy.", fa_left, c_gray, 1, 0);
	initPatchWords("Misc. - oops");
	initPatchWords_ext("The Steve death message is no longer the same as Otto's.", fa_left, c_gray, 1, 0);
	
	initPatch("1.3", "12 November, 2020");
	if other.echo{
		initPatchWords("Power Chords - Buffs, Aesthetics");
		initPatchWords_ext("Slide Chord charged FSpecial now makes the guitar follow the enemy.
		Dodge Chord charged FSpecial now makes a powerful explosion.
		Dodge Chord now buffs tech roll distance.
		Reverse Chord now uses a different on-hit sound effect.", fa_left, c_gray, 1, 0);
	}
	initPatchWords("FSpecial, DSpecial - Bugfixes, Performance");
	initPatchWords_ext("Guitar size gets reset properly after USpecial bounce.
	Fast Graphics now lowers the intensity of thrown guitar's chord VFX.", fa_left, c_gray, 1, 0);
	initPatchWords("DTilt - Buffs");
	initPatchWords_ext("Knockback growth .4 --> .8.
	Angle 361 --> 45.", fa_left, c_gray, 1, 0);
	initPatchWords("DAttack - Buffs");
	initPatchWords_ext("Early/late angle 361/361 --> 70/50.", fa_left, c_gray, 1, 0);
	initPatchWords("Jab - Consistency");
	initPatchWords_ext("Jab 1 base knockback 2 --> 4.", fa_left, c_gray, 1, 0);
	
	initPatch("1.2", "11 November, 2020");
	if other.echo{
		initPatchWords("Power Chords - Nerfs, Bugfixes");
		initPatchWords_ext("Slide Chord now multiplies damage and knockback growth by 0.9x.
		Dodge Chord airdodge no longer causes permanent invincibility.
		Reverse Chord NSpecial now works during hitpause of your attacks.", fa_left, c_gray, 1, 0);
	}
	initPatchWords("FSpecial, DSpecial - Buffs, Bugfixes");
	initPatchWords_ext("Uncharged throw guitar linger time 30f --> 60f.
	Uncharged INITIAL throw no longer prohibits a remote throw.
	Cooldown time 60f --> 90f.", fa_left, c_gray, 1, 0);
	initPatchWords("BAir - Buffs");
	initPatchWords_ext("Startup 9 --> 6.", fa_left, c_gray, 1, 0);
	
	initPatch("1.1", "11 November, 2020");
	if other.echo{
		initPatchWords("Power Chords - Buffs");
		initPatchWords_ext("Float Chord DJump speed/accel -7/-1.3 --> -3/-1.05.
		Slide Chord now allows you to move during ground attacks.
		Reverse Chord now gives you R-00 NSpecial.", fa_left, c_gray, 1, 0);
	}
	initPatchWords("AI - Bugfixes");
	initPatchWords_ext("The AI now works, though it's still the default Sandbert AI.", fa_left, c_gray, 1, 0);
	
	initPatch("1.0", "11 November, 2020");
	initPatchWords_ext("The character was released.", fa_center, c_white, 0, 1);
	initPatchImage(other.spr_nspecial, 4, fa_center, 1, c_white, 1);
	
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
	initCheat("Disable Cooldowns", "cheat_no_cd", [0, 1], ["Off", "On"], "Disables all restrictions on move usage.");
	initCheat("Everlasting Power Chords", "cheat_infinite_chords", [0, 1], ["Off", "On"], "Makes your Power Chords last forever AND have no cooldown. Also allows you to cancel a Chord by double-tapping special.");
	initCheat("Taunt Root", "cheat_root", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], ["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"], "Change the root key used by the taunt's musical notes.");
	// initCheat("Taunt Scale", "cheat_scale", [1, 2], ["Major", "Minor"], "Change the key signature used by the taunt's musical notes.");
	
	// power chord stuff
	
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
	include_custom = true;
	
	// If so, what's its name?
	custom_name = "Power Chord Data"
	
	i = 0;
	
	// If so, use these functions to populate it:
	// initCFDHeader(text)
	// initCFDBody(text)
	
	initCFDBody("NOTE: To view values for basic stats (e.g. Dash Speed), see the Stats entry while a Power Chord is active. You may want to enable the cheat code for infinite Power Chord duration.");
	initCFDBody("Also, ''Knockback Dealt'' refers specifically to knockback growth.");
	
	initCFDHeader("Shared Data");
	initCFDBody("Duration: " + string(other.guitar.chord_juice_max) + "f
	Cooldown: " + string(other.guitar.chord_cooldown_max) + "f");
	
	if other.echo{
		initCFDHeader("Slide Chord");
		initCFDBody("Damage Dealt: " + string(other.chord_objs[2].damage_multiplier) + "x
		Knockback Dealt: " + string(other.chord_objs[2].launch_multiplier) + "x");
		
		initCFDHeader("Stun Chord");
		initCFDBody("Damage Dealt: " + string(other.chord_objs[4].damage_multiplier) + "x
		Knockback Dealt: " + string(other.chord_objs[4].launch_multiplier) + "x
		Damage Taken: " + string(other.chord_objs[4].dtaken_multiplier) + "x");
		
		initCFDHeader("Reverse Chord");
		initCFDBody("Damage Dealt: " + string(other.chord_objs[5].dtaken_multiplier) + "x
		Knockback Taken: " + string(other.chord_objs[5].knockback_adj) + "x
		Knockback Dealt: " + string(other.chord_objs[5].launch_multiplier) + "x");
	}
	
	else{
		initCFDHeader("Jump Chord");
		initCFDBody("Damage Dealt: " + string(other.chord_objs[1].dtaken_multiplier) + "x
		Knockback Taken: " + string(other.chord_objs[1].knockback_adj) + "x");
		
		initCFDHeader("Speed Chord");
		initCFDBody("Damage Dealt: " + string(other.chord_objs[2].damage_multiplier) + "x
		Knockback Dealt: " + string(other.chord_objs[2].launch_multiplier) + "x");
		
		initCFDHeader("Shield Chord");
		initCFDBody("Damage Dealt: " + string(other.chord_objs[3].damage_multiplier) + "x
		Knockback Dealt: " + string(other.chord_objs[3].launch_multiplier) + "x
		Damage Taken: " + string(other.chord_objs[3].dtaken_multiplier) + "x");
		
		initCFDHeader("Buster Chord");
		initCFDBody("Damage Dealt: " + string(other.chord_objs[4].damage_multiplier) + "x
		Knockback Dealt: " + string(other.chord_objs[4].launch_multiplier) + "x
		Damage Taken: " + string(other.chord_objs[4].dtaken_multiplier) + "x");
		
		initCFDHeader("Smash Chord");
		initCFDBody("Damage Dealt: " + string(other.chord_objs[5].damage_multiplier) + "x
		Knockback Dealt: " + string(other.chord_objs[5].launch_multiplier) + "x
		Damage Taken: " + string(other.chord_objs[5].dtaken_multiplier) + "x");
	}
	
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
	
	if other.echo{
		initAbout("About Tempo", "Character made by Muno!");
	}
	else{
		initAbout("About Coda", "Character made by Muno!");
	}
	
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
	initCodecPage(SPK_ALTO, 6, 0, "You think your Power Chords are gonna save you, " + (echo ? "Tempo" : "Coda") + "?");
	if echo{
		initCodecPage(SPK_ECHO, 2, 0, "Says the guy who's holding a Molotov behind his back. ...Unless you wanna man up and fight without it?");
	}
	else{
		initCodecPage(SPK_CODA, 0, 0, "I'm up for an honorable fight if you are... wanna get rid of that pistol and I'll stay vanilla?");
	}
	initCodecPage(SPK_TRUM, 7, 0, "*gulp*");
	initCodecPage(SPK_ALTO, 5, 0, "UHHHHHHH on second thought I'm good!!");
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	
	otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");
	otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body"); // you only need to change this if you REALLY want to. most chars just use the head sprite
	
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve got hit with a guitar and died";
	
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