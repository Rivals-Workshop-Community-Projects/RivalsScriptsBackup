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
muno_char_name = "Exetior";							// Here I replace the name, because "Sandbert with a Phone" is awkwardly long

muno_char_icon = get_char_info(player, INFO_ICON);		// CSS icon of the character. You can replace this with an arbitrary sprite, using sprite_get(), and it'll be used in the upper left of the phone's big screen. (Make it the same size pls, thank u)

phone.taunt_hint_x = 0;									// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.

phone.dont_fast = 0;									// Set this to 1, and Fast Graphics will not automatically be set when the FPS dips below 60.



// Sprites (you could also include things like these in init.gml if you like)

spr_nspecial_proj = sprite_get("nspecial_proj");
spr_dspecial_proj = sprite_get("dspecial_proj");
spr_puddle = sprite_get("lava_idle");
spr_exeticide = sprite_get("fspecial_air");



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
	 * gimmick 4 is broken right now, idk why
	 * 
	 * Negative gimmick numbers are saved for whatever YOU might need them for!
	 * Like idk, if you're a coding wizard and figure out something cool to do
	 * by interacting with the tip data.
	 * 
	 */
	
	initTip("NSpecial: Flame Dweller");
	initTipWords("Nspecial is a chargeable move which, upon use, sends out a grounded projectile which has power that scales with the amount of charge used. You can also store the charge by pressing parry. Flame Dweller will not go offstage like Mycolich's vines. Flame Dweller charge isn't only used for neutral special however, it can also be used in other moves like dash attack and forward special. Flame Dweller charge is an important resource for Exetior's kit, so use it wisely.");
	initTipImage(player_id.spr_nspecial_proj, 2, fa_right, 1, c_white, 10);
	initTipImage(player_id.spr_nspecial, 5, fa_left, 1, c_white, 0);
	
	initTip("FSpecial: Inferno Grip");
	initTipWords("FSpecial is a command grab that has four different throws depending on if you hold left, right, up, or down. FSpecial can be used for chain grabs if your opponent keeps DIing in, and it can also be used for other combo extenders.");
	initTipImage(player_id.spr_fspecial, -4, fa_center, 1, c_white, 0);
	initTipWords("Aerial FSpecial on the other hand, is used for killing. You can use it to ganoncide opponents offstage, this form of ganoncide is known as Exeticide. Exeticide fucntions differently from ganoncide, as, if the opponent isn't at a high enough percent, the move won't kill at all. Think of it as a more balanced version of ganoncide.");
	initTipImage(player_id.spr_exeticide, -4, fa_center, 1, c_white, 0);
	
	initTip("USpecial: Magma Cannon");
	initTipWords("Exetior's up special on its own is really not all that good, making it easily the most punishable move out of them all. However, there are a couple of tricks up Exetior's lava sleeves that he can pull if the opponent isn't quick on the draw. He can fast fall while in magma cannon to fall down faster and explode, and he can also use Flame Dweller charge to explode in midair to catch opponents offguard.");
	initTipImage(player_id.spr_uspecial, 13, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_uspecial, 23, fa_right, 1, c_white, 0);
	
	initTip("DSpecial: Scorching Stain");
	initTipWords("Exetior's DSpecial makes him vomit out a blob of magma that will slowly fall to the ground, which will make that blob turn into a puddle once it lands. The projectile itself isn't much to write home about, but the puddle is where interesting things happen.");
	initTipImage(player_id.spr_dspecial, -5, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_dspecial_proj, -4, fa_right, 1, c_white, 0);
	initTipWords("With the puddle active on stage, it can act as a stage hazard for opponents, dealing damage to them and knocking them upwards whenever they step on it. Exetior can do a couple of other things with it as well, such as super jump on it with down air and even throw out a more powerful version of Flame Dweller. This is of course Exetior's secondary gimmick.");
	initTipImage(player_id.spr_puddle, -6, fa_center, 1, c_white, 0);
	
	initTip("Dash Attack: Shoulder Bash");
	initTipWords("Dash Attack is one of Exetior's most reliable combo starters, being able to jump cancel out of it on hit. Exetior can easily follow up with aerials after landing his Dash Attack, however, if the player presses the special button during the startup of the move, Exetior's Dash Attack will become even more powerful.");
	initTipImage(player_id.spr_dattack, -5, fa_center, 1, c_white, 0);
	initTipWords("Exetior's Charged Dash Attack allows him to continue charging forward until he either falls off a ledge, jump cancels the move, or if the player presses parry or taunt. On top of being much faster than normal Dash Attack, Charged Dash Attack can be jump canceled at any time.");
	
	initTip("Dair");
	initTipWords_ext("S T O M P S", fa_center, c_red, 0, 1);
	initTipImage(player_id.spr_dair, -5, fa_center, 1, c_white, 1);
	
	initTip("Strong Attacks");
	initTipWords("Exetior's strongs aren't exactly the most reliable to throw out willy nilly. They are more so used as parry punishes, since they all are hella slow and do lots of damage and knockback.");
	initTipImage(player_id.spr_fstrong, -5, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_ustrong, -5, fa_right, 1, c_white, 0);
	initTipWords("Down Strong could be used as a tech chase tool though, since it's Exetior's strongest disjoint.");
	initTipImage(player_id.spr_dstrong, -5, fa_center, 1, c_white, 0);
	
	initTip("Additional Tips");
	initTipWords("- If you jump cancel the first window of forward special, you will send yourself flying forward. This is known as Inferno Boost. Inferno Boosting can also be done offstage for recovering.");
	initTipWords("- Exetior's nair and uair can both be reliable approach tools in case you're ever in a pickle.");
	initTipWords("- Exetior's wavedash is his most reliable movement option, use it for whenever you need to close the gap or get out of harm's way faster.");
	initTipWords("- Exetior's aerial Neutral Special, Rising Phoenix, can be used as both a recovery option and a kill confirm for midair comboes. Just be wary, Rising Phoenix's power is dependent on how much Flame Dweller charge you currently have stored.");
	initTipWords("- Landing on the Scorching Stain puddle during Up Special will give you max Flame Dweller charge in an instant.");
	initTipImage(player_id.spr_taunt, -5, fa_center, 1, c_white, 0);
	
	initTip("Exetior's Lore");
	initTipWords_ext("Lonliness", fa_center, c_gray, 0, 0);
	initTipWords("Exetior was once a soldier that served for the Fire Capitol guard, having been a part of their army for as long as he could remember. However, there was one thing that set him apart from all of the other Fire Capitol citizens; his lack of motivation.");
	initTipWords("Because Exetior wasn't born with a heart of fire, he couldn't live up to the standards of the other citizens of Fire Capitol. Because of this, not only was he unable to cast fire magic, but he was also exiled from Fire Capitol because of how different he was from everyone else. This greatly wounded Exetior's heart and soul.");
	initTipWords("Not knowing where else to go, he ran out into the wilderness.");
	initTipWords_ext("A New Beginning", fa_center, c_gray, 0, 0);
	initTipWords("After a while, Exetior reached the massive volcano known as Mt. Yaroast, and since he had no other home, he decided to stay at the volcano.");
	initTipWords("One day, out of nowhere, an individual known as Dai Kenja encountered Exetior and offered to help him in his time of need. While as reluctant as he was, Exetior accepted his offer, and spent the next several years training rigorously, becoming incredibly strong and even learning to control and cast lava magic.");
	initTipWords("After he was taught everything he needed to know, Kenja disappeared without a trace, leaving Exetior to be alone once more.");
	initTipWords("Now Exetior dedicates his life to protecting Mt. Yaroast no matter the cost. It is his duty- or at least that's what he thought given how vague Kenja was before leaving him behind -as its guardian to keep it safe from harm's way.");
	
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
	 
	initPatch("4.4", "13 Feb, 2021");
	initPatchWords("~ Replaced the Ruby alt with a Rykenburn alt");
	initPatchWords("~ Replaced the Mollo alt with an Atticus alt");
	initPatchWords("~ Added more character tips to the MunoPhone");
	initPatchWords("+ Replaced Exetior's tornado spin with a stronger shoulder bash for charged dash attack");
	initPatchWords("- Made it so Exetior cannot cancel out of the aerial Up Special explosion");
	initPatchWords("- Now when Exetior runs into a wall during either Dash Attack state, he will bonk on said wall and have all of his momentum stopped.");
	
	initPatch("4.35", "14 Jan, 2021");
	initPatchWords("~ Reanimated Exticide");
	initPatchWords("~ Revised Kirby's copy ability animation");
	initPatchWords("+ Buffed Kirby's copy ability framedata");
	initPatchWords("- Made the Up Special landing hitbox have more hitpause");
	initPatchWords("- Changed Up Special's landing hitbox angle (40 > 45)"); 
	
	initPatch("4.3", "16 Nov, 2020");
	initPatchWords("~ Updated Exetior's MunoPhone");
	initPatchWords("~ Fixed a bug where Exetior could super jump on other articles that don't belong to him");
	initPatchWords("~ Fixed an animation bug for when Exetior hits other articles that don't belong to him");
	initPatchWords("+ Made Up Strong start up a bit faster (25 > 22)");
	initPatchWords("+ Gave a select few attacks a reasonably small range buff"); 
	
	initPatch("4.2", "12 Nov, 2020");
	initPatchWords("~ Gave Exetior MunoPhone compatibility");
	
	initPatch("4.1", "8 Nov - 10 Nov, 2020");
	initPatchWords("~ Fixed the parrystun on dash attack");
	initPatchWords("~ Balanced the damage output for side special");
	initPatchWords("~ Fixed a bug with up special where you can't use it again after dying or getting hit");
	initPatchWords("+ Made the aerial Up Special explosion go by faster (26 > 21)");
	initPatchWords("~ Fixed a bug with the hitboxes of the aerial Up Special explosion"); 
	initPatchWords("~ Fixed a bug where if you parry the grounded Up Special explosion, it wouldn't set Exetior into parry stun"); 
	
	initPatch("4.0", "2 Nov, 2020");
	initPatchWords("~ Added character compatibility for Amber");
	initPatchWords("~ Added stage compatibility for The Last Resort");
	initPatchWords("~ Updated the Trummel & Alto (OLD) codec");
	initPatchWords("+ Exetior can now do a midair explosion during Up Special if the player presses the special button again");
	
	initPatch("3.95", "30 Oct, 2020");
	initPatchWords("~ Added character compatibility for Toon Link");
	initPatchWords("~ Added Stage compatibility for The Trial Grounds");
	initPatchWords("+ Exetior can now preform a spin attack when the player presses the special button during dash attack's startup. This attack requires one bar of Flame Dweller charge.");
	
	initPatch("3.9", "29 Oct, 2020");
	initPatchWords("~ Added character compatibility for Hikaru and Agent N");
	initPatchWords("+ Exetior can now preform a super jump by using down air on his puddle"); 
	
	initPatch("3.8", "23 Oct, 2020");
	initPatchWords("~ Added new HUD icons for Exetior's down special projectile as well as down special's puddle");
	initPatchWords("~ Exetior's HUD elements now change color depending on his alt");

	initPatch("3.75", "17 Oct, 2020");
	initPatchWords("~ Gave Exetior's character page a new preview image, made by Spam/Spamite");

	initPatch("3.7", "7 Oct, 2020");
	initPatchWords("~ Exetior now has Abyss runes!");

	initPatch("3.65", "3 Oct, 2020");
	initPatchWords("~ Slightly altered Exetior's portrait");
	initPatchWords("~ Up air now has a reverse hitbox");
	
	initPatch("3.6", "20 Sep, 2020");
	initPatchWords("~ Reanimated up air");
	
	initPatch("3.58", "16 Sep, 2020");
	initPatchWords("the update where I listen to people that actually know what they're doing");
	initPatchWords("- Increased hitpause on ftilt to make DI'ing it easier");
	initPatchWords("- Decreased kbs on fstrong (1.02 > 1)");
	initPatchWords("+ Increased bkb and kbs on up strong (now galaxies Zetterburn at 95 instead)");
	
	initPatch("3.55", "15 Sep, 2020");
	initPatchWords("~ Tweaked jab 2's animation to make it look different from forward tilt");
	initPatchWords("~ Some of Exetior's other attack animations have better readability as well");
	initPatchWords("+ Increased fully charged aerial nspecial's kbs (.8 > .95)");

	initPatch("3.5 (part 2)", "11 Sep, 2020");
	initPatchWords("the one where I die inside less");
	initPatchWords("~ Reworked the startup on all three of Exetior's strongs");
	initPatchWords("~ Slightly tweaked and added two frames to upstrong's animation");
	initPatchWords("- Upstrong start up increased (21 > 25)");
	initPatchWords("+ Upstrong kbs increased (1.1 > 1.18)");

	initPatch("3.5", "11 Sep, 2020");
	initPatchWords("The Update Where I Die Inside");
	initPatchWords("~ Fixed Up Strong to make it now look like Exetior is actually uppercutting the opponent");
	initPatchWords("+ Increased the bkb and kbs of Forward Strong");
	initPatchWords("- Decreased the bkb and kbs of Up Strong");
	
	initPatch("3.4", "10 Sep, 2020");
	initPatchWords("~ Removed the dash start and dash turn sfx");
	initPatchWords("- Replaced Exetior's super armor on up special with soft armor");
	
	initPatch("3.3", "5 Sep, 2020");
	initPatchWords("~ Fixed a bug where Exetior would get permanently stuck in the charging state during up special");
	initPatchWords("~ Fixed a bit of dialogue for the Trummel & Alto codec");
	
	initPatch("3.2", "17 Aug, 2020");
	initPatchWords("Additions (Part 1)");
	initPatchWords("~ Replaced Exetior's Olympia alt with a Champion skin");
	initPatchWords("~ Replaced Exetior's Kirby alt with an Iroh alt");
	initPatchWords("~ Exetior now has Daroach Boss Fight support");

	
	initPatch("3.1", "14 Aug, 2020");
	initPatchWords("Changes (Epilogue)");
	initPatchWords("~ Reworked Nspecial charging so that the charge continues if you press the special button while having a charge stored");
	initPatchWords("~ Reworked Fspecial grab timer to scale with opponent's damage percent");
	initPatchWords("~ Changed forward strong angle to 40 (originally 35)");
	initPatchWords("+ Decreased Nspecial cooldown by 30 ticks (originally 60)");
	initPatchWords("+ Gave Scorching Stain puddle more range");
	initPatchWords("- Nerfed max charge Flame Dweller and Puddle Dweller kbs");
	initPatchWords("- The Scorching Stain projectile is no longer transcendent");
	initPatchWords("- Decreased knockback scaling on forward strong");
	initPatchWords("- Nerfed knockback on max charge Rising Phoenix");
	initPatchWords("- Nerfed knockback on uncharged aerial neutral special");
	initPatchWords("- Nerfed knockback on down air nipple spike");
	
	initPatch("3.0", "13 Aug, 2020");
	initPatchWords("Changes (Finale)");
	initPatchWords("~ Gave Exetior a new back air");
	initPatchWords("~ Lava puddle now has hitpause");
	initPatchWords("~ Added one frame of jump squat to match Rivals standard");
	initPatchWords("~ Fixed a ditto bug where one Exetior could gain max Flame Dweller charge from another Exetior's puddle when landing on it during Up Special");
	
	initPatch("2.99", "7 Aug, 2020");
	initPatchWords("Changes (part 5)");
	initPatchWords("~ Big Flame Dweller now sends straight up");
	initPatchWords("~ Polished the down special animation to make it look like Exetior is actually spitting out lava from his mouth instead of just spinning around awkwardly");
	initPatchWords("+ Made a unique attack for uncharged aerial neutral special");
	initPatchWords("~ Remade up tilt to give it a new animation!");
	
	initPatch("2.98", "4 Aug, 2020");
	initPatchWords("Changes (part 4)");
	initPatchWords("~ Gave all of Exetior's neutral attacks (excluding the strongs, up tilt, and bair) improved animations and better smears");
	initPatchWords("~ Improved start up animation for grounded nspecial");
	initPatchWords("+ Thanks to some code from Lukaru, Flame Dweller now becomes bigger and stronger if Exetior's lava puddle is active on stage");
	
	initPatch("2.97", "3 Aug, 2020");
	initPatchWords("Changes (part 3)");
	initPatchWords("- Flame Dweller now destroys lava puddle when both touch (this is a WIP for another synergy I plan on doing for both specials)");
	initPatchWords("+ Exetior now gains max Flame Dweller charge when he lands on the puddle during up special");
	initPatchWords("+ increased dtilt's horizontal range");
	initPatchWords("+ dtilt now sends slightly in for follow ups");
	initPatchWords("~ Changed the vfx for dtilt");
	initPatchWords("- increased dash attack startup");
	initPatchWords("- increased upstrong startup");
	initPatchWords("- lowered fair killpower (and the angle)");
	initPatchWords("- nerfed backthrow killpower");
	initPatchWords("- made side special jump cancel require one bar of flame dweller charge");
	initPatchWords("- fspecial jump cancel now can only be done on the first window");
	
	initPatch("2.9", "31 July, 2020");
	initPatchWords("Changes (part 2)");
	initPatchWords("- Decreased kill power of forward strong");
	initPatchWords("+ Decreased start up of forward strong");
	initPatchWords("+ Increased hitbox sizes for up strong");
	initPatchWords("+ Decreased start up of up strong");
	initPatchWords("+ neutral special now sends in instead of straight up");
	initPatchWords("~ aerial neutral special now boosts Exetior upwards instead of just stiffly moving him upward");
	initPatchWords("+ aerial neutral special now sends Exetior higher");
	
	initPatch("2.85", "28 July, 2020");
	initPatchWords("Changes (part 1)");
	initPatchWords("- Fspecial boost can now only be done once, and you can no longer airdodge after doing fspecial boost on the ground.");
	
	initPatch("2.8", "26 July, 2020");
	initPatchWords_ext("- THE CHARACTER IS ACTUALLY GOOD NOW", fa_center, c_white, 0, 1);
	initPatchWords("- I actually noted down my patch notes this time");
	initPatchWords_ext("bruhg", fa_left, c_gray, 1, 0);
	initPatchWords("+ You can now jump cancel side special in both the air and on the ground for a speed boost");
	initPatchWords("- Exeticide no longer kills below 40 percent");
	
	initPatch("1.5", "1 June, 2020");
	initPatchWords("- Fuck this I'm time skipping");
	
	initPatch("1.4", "1 June, 2020");
	initPatchWords("- Hi how are ya");
	
	initPatch("1.3", "31 May, 2020");
	initPatchWords("- Sack of fuckin bricks he was");
	
	initPatch("1.2", "30 May, 2020");
	initPatchWords("- Exetior was so bad back then");
	initPatchWords_ext("What was I thinking", fa_left, c_gray, 1, 0);
	
	initPatch("1.1", "30 May, 2020");
	initPatchWords("Day One Patches
	- I forgot what I did with this one");
	initPatchWords_ext("I'm a daft cunt", fa_left, c_gray, 1, 0);
	
	initPatch("1.0", "30 May, 2020");
	initPatchWords_ext("MEDIOCRITY!", fa_center, c_white, 0, 1);
	initPatchImage(other.spr_bighurt, 0, fa_center, 1, c_white, 1);
	
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
	
	// post_draw.gml
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
	initCheat("stop hitting yourself", "cheat_recoil", [0, 1], ["Off", "On"], "ouf");
	
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
	stats_notes = "Why tf is this a template character"; // set to   "-"   if you don't need to put any notes
	
	
	
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
	
	initAbout("About Exetior", "Character made by Lord Exetior and Sir Will, follow them both on YouTube
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	forever trapped in obscurity");
	
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
	
	SPK_TYRN = initSpeaker(1, "Exetior", sprite_get("_pho_exetior"));
	SPK_TWIN = initSpeaker(2, "Sandbert's evil twin", sprite_get("_pho_example_speaker"));
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_ALTO, 1, GIM_SKIP, "Well well well, if it isn't our good old pal-");
	initCodecPage(SPK_TYRN, 4, GIM_SKIP, "LISTEN HERE, WANKERS, I'M GETTING SICK AND TIRED OF HAVING TO DEAL WITH YOUR BULLSHIT-");
	initCodecPage(SPK_TYRN, 2, 0, "Hold on since when did you two become magicians?");
	initCodecPage(SPK_TRUM, 0, 0, "long story");
	initCodecPage(SPK_ALTO, 2, 0, "I dunno if we can win this one, Trum. Our nerfed tools probably won't do much good against him.");
	initCodecPage(SPK_TRUM, 3, 0, "f");
	initCodecPage(SPK_TYRN, 4, 0, "Well regardless I'm not gonna take this harrassment anymore! This shit ends here!");
	initCodecPage(SPK_ALTO, 2, 0, "Trum, I think it's best if we run.");
	initCodecPage(SPK_TRUM, 7, 0, "yep");
	
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