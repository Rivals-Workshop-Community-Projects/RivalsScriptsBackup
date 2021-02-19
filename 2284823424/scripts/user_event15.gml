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
		next_container,
		on_block,
		has_properly_landed
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

muno_char_id = 5;										// For any non-Muno characters, this should be set to noone!

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
	
	initTip("USpecial: Block Limit");
	initTipWords("Your USpecial can only place so many blocks. To refill your stock, pick up the dropped item - or wait for it to come to you. Blocks that fall offstage take ten seconds to appear back in your inventory.");
	initTipImage_ext(other.spr_uspecial, -5, fa_center, 1, c_white, 0, 100, 100, 100, 2);
	initTipImage_ext(other.spr_blocks, other.player - 1, fa_center, 1, c_white, 0, 100, 100, 2, 50);
	
	initTip("Block Parkour");
	initTipWords("Placing a block has a hitbox, and you can wavedash instantly after placing. Separately, note that blocks aren't fully solid; they act like platforms.");
	initTipImage(other.spr_airdodge_waveland, -3, fa_center, 1, c_white, 3);
	
	// initTip("Block Parkour");
	// initTipWords("While standing on a block, your movement speed is increased. Use this to leap off a block at high speed!");
	// initTipImage(other.spr_dash, -3, fa_center, 1, c_white, 3);
	
	initTip("Playing with Fire");
	initTipWords("The fire created from the Flint and Steel can light MANY things on fire - you, the enemy, arrows... Good thing you can attack it to get rid of it.");
	initTipImage(other.spr_fire, -5, fa_center, 1, c_white, 0);
	
	initTip("Water Boosting");
	initTipWords("Water pushes EVERYTHING up - players, projectiles, and even dropped items. After using it, you'll need to wait to use it again (with the exception of teching).");
	initTipImage(other.spr_flowing_water, -10, fa_center, 1, c_white, 0);
	
	initTip("NSpecial: Item Pull");
	initTipWords("NSpecial lets you pick an item to hold in your off hand; use it by pressing NSpecial again. Some have durability, others have quantities... but once an item is used up, it's gone! (Your items get restocked when you use them ALL up.)");
	initTipImage(other.spr_nspecial_cont_craft, -7, fa_center, 1, c_white, 0);
	
	initTip("NSpecial: Experience Bar");
	initTipWords("In order to pull another item, you first need to hit the foe with a melee attack to gain an Experience Bar. So no, you can't just camp using projectile items...");
	initTipImage(other.spr_hud_experience, 0, fa_left, 1, c_white, 0);
	initTipImage(other.spr_hud_experience, 2, fa_right, 1, c_white, 0);
	initTipWords("You can also get EXP by parrying an attack, dying, killing another player (or being a passive witness to a player's death), or placing a Slime Block.");
	
	initTip("Item Containers");
	initTipWords("There are 7 NSpecial ''containers'', each with 3 items. You get containers in a set order, not RNG. If you pick the 1st item, you advance 1 space in the list; 2nd item = advance 2 spaces; 3rd item = advance 3 spaces.");
	initTipWords("The order is:
	- Crafting Table
	- Furnace
	- Chest
	- Ender Chest
	- Brewing Stand
	- Enchanting Table
	- Villager (poor guy...)");
	initTipImage_ext(other.spr_nspecial_guis, -30, fa_right, 1, c_white, 0, 50, 50, 100, 10);
	
	var item_descs = [
		"A block that bounces players and some projectiles,
		as well as giving you back your EXP points on use.",
		"A long-range attack that pulls foes towards you. You
		can also grapple to walls or platforms!",
		"A block that fires arrows every time it cracks. The
		arrows are identical to an uncharged FStrong.",
		
		"A quick pick-me-up that heals a bit of damage. Ah,
		the days before the hunger bar was added...",
		"A devastating falling projectile that ignores
		platforms and turns into a block upon landing.",
		"A slower variant of water that sets players and
		arrows ablaze... be careful around this one.",
		
		"A long-distance ramming attack that can be jump-
		canceled to combo on hit.",
		"A set of three long-range projectiles that burn
		enemies and deal inward knockback.",
		"An explosive that skips its fuse if you launch it at an
		enemy or light it on fire. It can hit you too, careful!",
		
		"A set of three mystical pearls that teleport you to
		whatever they hit, while also dealing damage and combo KB.",
		"A set of three mystical eyes that drag foes with multi-
		hits. I wonder if there's a Stronghold nearby...",
		"A pair of wings that let you float leisurely through the
		air after an initial wing-spreading attack.",
		
		"A potion that powers up your attacks for a few seconds.
		Could this secretly be a fire resistance potion...?",
		"A set of three throwable potions which have poor range,
		compensating with downward reach and a splash hitbox.",
		"A single throwable potion which covers a huge area with a
		multi-hitting poison cloud.",
		
		"A pair of boots that makes a sheet of ice, which acts
		like a wide block and can also freeze grounded foes.",
		"A trident that sends you soaring into the air, going
		even higher if you're touching water.",
		"A chestplate that allows you to tank an attack without
		flinching, then retaliate with a powerful blow.",
		
		"A pre-charged bow that lets you instantly fire off one
		fully-charged FStrong shot.",
		"A bell that stuns enemies and can travel upward through
		solid terrain. This feels familiar...",
		"A mysterious artifact that allows the user to cheat death
		while in hand. Hold NSpecial to discard."
		];
	
	for (var index = 1; index < 22; index++){
		if (index % 3 == 1) initTip(other.containers[floor(index / 3)].name + " Items");
		initTipWords("-- " + other.items[index].name + " --
		" + item_descs[index-1]);
		initTipImage(other.items[index].inv_sprite, 0, fa_right, 1, c_white, 0);
	}
	
	/*
	
	initTip("NSpecial: Item Durability");
	initTipWords("Some items, like the Sticky Piston and Riptide, are ''one-time-use'' BUT have a ''mercy use'' - if you miss an opponent with your first attempt, you get one more try before the item breaks.");
	initTipImage(other.spr_nspecial_item_sticky_piston, -5, fa_left, 1, c_white, 0);
	initTipImage(other.spr_nspecial_item_trident, -5, fa_right, 1, c_white, 0);
	
	*/
	
	initTip("Bow Cooldown");
	initTipWords("FStrong and DAir have a shared cooldown. You can end it early either by hitting with the melee hitbox, OR by picking up the arrow embedded in the ground (if the arrow misses the opponent).");
	initTipImage(other.spr_fstrong, -5, fa_left, 1, c_white, 0);
	initTipImage(other.spr_dair, -5, fa_right, 1, c_white, 0);
	
	initTip("NAir: Raise a Shield");
	initTipWords("Hold the button when using NAir to block attacks, with the same resistance as Etalus FAir but slight pushback like Kragg FSpecial. Blocking a move makes you invulnerable while attacking. Your own Lava and TNT, despite their strength, can be blocked as a special case.");
	initTipImage_ext(other.spr_nair, 1, fa_left, 1, c_white, 0, 100, 100, 100, 10);
	initTipImage(other.spr_tnt_blast, -5, fa_right, 1, c_white, 0);
	
	initTip("Taunts");
	initTipWords("Steve's two taunts are Tributes to Minecraft in their own right... but I'll let you discover their secrets on your own. (Hold a direction to taunt without pulling out the phone)");
	initTipImage(other.spr_taunt, -5, fa_left, 1, c_black, 0);
	initTipImage(other.spr_taunt_2, -5, fa_right, 1, c_black, 0);
	
	initTip("Steve's Lore?");
	initTipWords("I see the player you mean. Steve? Yes. Take care. It has reached a higher level now. It can read our thoughts. That doesn't matter. It thinks we are part of the game. I like this player. It played well. It did not give up. It is reading our thoughts as though they were words on a screen. That is how it chooses to imagine many things, when it is deep in the dream of a game. Words make a wonderful interface. Very flexible. And less terrifying than staring at the reality behind the screen. They used to hear voices. Before players could read. Back in the days when those who did not play called the players witches, and warlocks. And players dreamed they flew through the air, on sticks powered by demons. What did this player dream? This player dreamed of sunlight and trees. Of fire and water. It dreamed it created. And it dreamed it destroyed. It dreamed it hunted, and was hunted. It dreamed of shelter. Hah, the original interface. A million years old, and it still works. But what true structure did this player create, in the reality behind the screen? It worked, with a million others, to sculpt a true world in a fold of the SDHJGF JSHLKGF, and created a SDHJGF JSHLKGF for SDHJGF JSHLKGF, in the SDHJGF JSHLKGF. It cannot read that thought. No. It has not yet achieved the highest level. That, it must achieve in the long dream of life, not the short dream of a game. Does it know that we love it? That the universe is kind? Sometimes, through the noise of its thoughts, it hears the universe, yes. But there are times it is sad, in the long dream. It creates worlds that have no summer, and it shivers under a black sun, and it takes its sad creation for reality. To cure it of sorrow would destroy it. The sorrow is part of its own private task. We cannot interfere. Sometimes when they are deep in dreams, I want to tell them, they are building true worlds in reality. Sometimes I want to tell them of their importance to the universe. Sometimes, when they have not made a true connection in a while, I want to help them to speak the word they fear. It reads our thoughts. Sometimes I do not care. Sometimes I wish to tell them, this world you take for truth is merely SDHJGF JSHLKGF and SDHJGF JSHLKGF, I wish to tell them that they are SDHJGF JSHLKGF in the SDHJGF JSHLKGF. They see so little of reality, in their long dream. And yet they play the game. But it would be so easy to tell them... Too strong for this dream. To tell them how to live is to prevent them living. I will not tell the player how to live. The player is growing restless. I will tell the player a story. But not the truth. No. A story that contains the truth safely, in a cage of words. Not the naked truth that can burn over any distance. Give it a body, again. Yes. Player... Use its name. Steve. Player of games. Good. Take a breath, now. Take another. Feel air in your lungs. Let your limbs return. Yes, move your fingers. Have a body again, under gravity, in air. Respawn in the long dream. There you are. Your body touching the universe again at every point, as though you were separate things. As though we were separate things. Who are we? Once we were called the spirit of the mountain. Father sun, mother moon. Ancestral spirits, animal spirits. Jinn. Ghosts. The green man. Then gods, demons. Angels. Poltergeists. Aliens, extraterrestrials. Leptons, quarks. The words change. We do not change. We are the universe. We are everything you think isn't you. You are looking at us now, through your skin and your eyes. And why does the universe touch your skin, and throw light on you? To see you, player. To know you. And to be known. I shall tell you a story. Once upon a time, there was a player. The player was you, Steve. Sometimes it thought itself human, on the thin crust of a spinning globe of molten rock. The ball of molten rock circled a ball of blazing gas that was three hundred and thirty thousand times more massive than it. They were so far apart that light took eight minutes to cross the gap. The light was information from a star, and it could burn your skin from a hundred and fifty million kilometres away. Sometimes the player dreamed it was a miner, on the surface of a world that was flat, and infinite. The sun was a square of white. The days were short; there was much to do; and death was a temporary inconvenience. Sometimes the player dreamed it was lost in a story. Sometimes the player dreamed it was other things, in other places. Sometimes these dreams were disturbing. Sometimes very beautiful indeed. Sometimes the player woke from one dream into another, then woke from that into a third. Sometimes the player dreamed it watched words on a screen. Let's go back. The atoms of the player were scattered in the grass, in the rivers, in the air, in the ground. A woman gathered the atoms; she drank and ate and inhaled; and the woman assembled the player, in her body. And the player awoke, from the warm, dark world of its mother's body, into the long dream. And the player was a new story, never told before, written in letters of DNA. And the player was a new program, never run before, generated by a sourcecode a billion years old. And the player was a new human, never alive before, made from nothing but milk and love. You are the player. The story. The program. The human. Made from nothing but milk and love. Let's go further back. The seven billion billion billion atoms of the player's body were created, long before this game, in the heart of a star. So the player, too, is information from a star. And the player moves through a story, which is a forest of information planted by a man called Julian, on a flat, infinite world created by a man called Markus, that exists inside a small, private world created by the player, who inhabits a universe created by... Shush. Sometimes the player created a small, private world that was soft and warm and simple. Sometimes hard, and cold, and complicated. Sometimes it built a model of the universe in its head; flecks of energy, moving through vast empty spaces. Sometimes it called those flecks ''electrons'' and ''protons''. Sometimes it called them ''planets'' and ''stars''. Sometimes it believed it was in a universe that was made of energy that was made of offs and ons; zeros and ones; lines of code. Sometimes it believed it was playing a game. Sometimes it believed it was reading words on a screen. You are the player, reading words... Shush... Sometimes the player read lines of code on a screen. Decoded them into words; decoded words into meaning; decoded meaning into feelings, emotions, theories, ideas, and the player started to breathe faster and deeper and realised it was alive, it was alive, those thousand deaths had not been real, the player was alive You. You. You are alive. and sometimes the player believed the universe had spoken to it through the sunlight that came through the shuffling leaves of the summer trees and sometimes the player believed the universe had spoken to it through the light that fell from the crisp night sky of winter, where a fleck of light in the corner of the player's eye might be a star a million times as massive as the sun, boiling its planets to plasma in order to be visible for a moment to the player, walking home at the far side of the universe, suddenly smelling food, almost at the familiar door, about to dream again and sometimes the player believed the universe had spoken to it through the zeros and ones, through the electricity of the world, through the scrolling words on a screen at the end of a dream and the universe said I love you and the universe said you have played the game well and the universe said everything you need is within you and the universe said you are stronger than you know and the universe said you are the daylight and the universe said you are the night and the universe said the darkness you fight is within you and the universe said the light you seek is within you and the universe said you are not alone and the universe said you are not separate from every other thing and the universe said you are the universe tasting itself, talking to itself, reading its own code and the universe said I love you because you are love. And the game was over and the player woke up from the dream. And the player began a new dream. And the player dreamed again, dreamed better. And the player was the universe. And the player was love. You are the player. Wake up.");
	initTipWords_ext("...", fa_right, c_olive, 0, 0);
	initTipWords_ext("Sir this is a Wendy's", fa_right, c_olive, 0, 0);
	
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
	
	initPatch("1.16", "07 February, 2021");
	initPatchWords("Added an Advancement");
	initPatchWords("Removed Herobrine");
	
	initPatch("1.15", "19 January, 2021");
	initPatchWords("Only 5 Dispensers can exist at once now. (to prevent memory leaks???)");
	initPatchWords("Removed Herobrine");
	
	initPatch("1.14", "19 January, 2021");
	initPatchWords("Added Abyss Runes");
	initPatchWords("Removed Herobrine");
	
	initPatch("1.13", "18 January, 2021");
	initPatchWords("NSpecial Items - Buffs");
	initPatchWords_ext("Steve is now actionable 10 frames earlier when consuming a Porkchop or Potion of Strength. (Duration 28f --> 18f)", fa_left, c_gray, 1, 0);
	initPatchWords("DSpecial - Adjustments");
	initPatchWords_ext("Steve can no longer fast fall while using the move, and prior fast falls are negated.
	(This also applies to the Lava Bucket.)", fa_left, c_gray, 1, 0);
	initPatchWords("Removed Herobrine");
	
	initPatch("1.12", "15 January, 2021");
	initPatchWords("NSpecial Items - Nerfs, Bugfixes");
	initPatchWords_ext("TNT now has extended parry stun.
	Lava Bucket hitbox size increased (NOT the initial hit detection, but rather the hitbox that spawns when you touch the lava).", fa_left, c_gray, 1, 0);
	initPatchWords("DSpecial - Adjustments");
	initPatchWords_ext("Water now uses collision box, not hurtbox, for pushing players. (makes certain interactions, like DSpecial --> immediate FStrong, better)", fa_left, c_gray, 1, 0);
	initPatchWords("UAir - Nerfs, Adjustments");
	initPatchWords_ext("Startup 6f --> 9f.
	Landing lag 6f --> 7f.
	Early hit damage 5 --> 7.
	Early hit knockback 6/0.75 --> 8/0.75.
	Late hit knockback 6/0.75 --> 7.5/0.7.
	Late hit sfx adjusted.", fa_left, c_gray, 1, 0);
	initPatchWords("BAir - Adjustments");
	initPatchWords_ext("Angle 135 --> 115.", fa_left, c_gray, 1, 0);
	initPatchWords("DTilt - Bugfixes");
	initPatchWords_ext("Can no longer slide off an edge when parried.", fa_left, c_gray, 1, 0);
	initPatchWords("Taunt - Buffs");
	initPatchWords_ext("Punch knockback growth and hitpause growth 0 --> 0.4.", fa_left, c_gray, 1, 0);
	initPatchWords("Misc. - Aesthetics");
	initPatchWords_ext("Added an effect when an enemy first parries a projectile.", fa_left, c_gray, 1, 0);
	initPatchWords("Removed Herobrine");
	
	initPatch("1.11", "28 December, 2020");
	initPatchWords("USpecial - Nerfs, Bugfixes");
	initPatchWords_ext("Break speed multiplier when standing on a block 3x --> 5x.
	Fixed bug where you could pick up dropped blocks before landing on non-block ground.", fa_left, c_gray, 1, 0);
	initPatchWords("FSpecial - Bugfixes");
	initPatchWords_ext("Fire on the ground should no longer burn players in i-frames.", fa_left, c_gray, 1, 0);
	initPatchWords("Removed Herobrine");
	
	initPatch("1.10", "21 December, 2020");
	initPatchWords("NSpecial - Buffs, Clarity");
	initPatchWords_ext("The following actions now cause an exp orb to spawn:
	- Parrying an enemy attack
	- Killing an enemy (or witnessing an enemy's death at the hands of someone else)
	- Placing a Slime Block
	Item loss from parry / death now plays the item break sound.", fa_left, c_gray, 1, 0);
	initPatchWords("NSpecial Items - Buffs, Bugfixes");
	initPatchWords_ext("Thorns now has invincibility after blocking an enemy attack.
	Totem of Undying no longer inflicts parry stun, only ordinary pratfall.
	Crossbow projectile now pierces enemies. (Is there a hidden meaning behind this...?)
	Anvil no longer crashes the game when Ori bashes it.
	Elytra SFX now stops when you die.", fa_left, c_gray, 1, 0);
	initPatchWords("USpecial - Nerfs, Bugfixes");
	initPatchWords_ext("Blocks no longer grant a speed boost; this is now exclusive to the ice from Frost Walker.
	Added extra checks to prevent blocks from permanently disappearing from your inventory.", fa_left, c_gray, 1, 0);
	initPatchWords("UAir - Adjustments");
	initPatchWords_ext("Base knockback 9.5 --> 6.
	Knockback scaling 0.6 --> 0.75.", fa_left, c_gray, 1, 0);
	initPatchWords("FSpecial - Bugfixes");
	initPatchWords_ext("Projectile no longer crashes the game when Ori bashes it.", fa_left, c_gray, 1, 0);
	initPatchWords("MunoPhone - QoL");
	initPatchWords_ext("Too Many Items cheat disables exp requirement and item loss on parry / death.", fa_left, c_gray, 1, 0);
	initPatchWords("Removed Herobrine");
	
	initPatch("1.9", "08 December, 2020");
	initPatchWords("NSpecial - Nerfs");
	initPatchWords_ext("You now lose any held items on death or (experimentally) when your move gets parried.
	Mercy use mechanic removed (Sticky Piston, Riptide, and Minecart).
	Sticky Piston can no longer be delayed by holding the button.
	Totem of Undying drops you in pratfall + parry stun if you died while in hitstun.", fa_left, c_gray, 1, 0);
	initPatchWords("USpecial - Nerfs");
	initPatchWords_ext("Getting spiked now destroys any blocks below you.", fa_left, c_gray, 1, 0);
	initPatchWords("UAir - Adjustments");
	initPatchWords_ext("Base knockback 8.5 --> 9.5.
	Knockback growth 0.7 --> 0.6.", fa_left, c_gray, 1, 0);
	initPatchWords("Removed Herobrine");
	
	initPatch("1.8", "06 December, 2020");
	initPatchWords("Thorns - Adjustments");
	initPatchWords_ext("Angle flipper 0 --> 6.", fa_left, c_gray, 1, 0);
	initPatchWords("FStrong, DAir, Crossbow - Bugfixes");
	initPatchWords_ext("Fixed arrow behavior on weird platform layouts.", fa_left, c_gray, 1, 0);
	initPatchWords("USpecial - Clarity");
	initPatchWords_ext("Increased color contrast between filled and empty slots on the block meter.", fa_left, c_gray, 1, 0);
	initPatchWords("Removed Herobrine");
	
	initPatch("1.7", "01 December, 2020");
	initPatchWords("NSpecial - Buffs, Bugfixes");
	initPatchWords_ext("You now get free a exp orb on death if you have no item.
	Riptide no longer desyncs on Mollusk Dock.", fa_left, c_gray, 1, 0);
	initPatchWords("FStrong, DAir, Crossbow - Buffs");
	initPatchWords_ext("A flaming arrow will create actual fire where it lands.", fa_left, c_gray, 1, 0);
	initPatchWords("Taunt - Buffs, Clarity");
	initPatchWords_ext("You can now place blocks by pressing B.
	Taunt sprite is now shown in hitstun.
	There is no longer lag after exiting hitstun.", fa_left, c_gray, 1, 0);
	initPatchWords("Palettes - Aesthetics");
	initPatchWords_ext("Adjusted alt #10.", fa_left, c_gray, 1, 0);
	initPatchWords("MunoPhone - Aesthetics");
	initPatchWords_ext("Phone now gets recolored to the alt.", fa_left, c_gray, 1, 0);
	initPatchWords("Removed Herobrine");
	
	initPatch("1.6", "23 November, 2020");
	initPatchWords("FAir - Nerfs");
	initPatchWords_ext("Startup 12 --> 16.", fa_left, c_gray, 1, 0);
	initPatchWords("NAir - Buffs, Nerfs, Visuals");
	initPatchWords_ext("Hit 1 range increased.
	Startup 13 --> 11.
	Landing lag 5 --> 6.
	Move now uses the sword.", fa_left, c_gray, 1, 0);
	initPatchWords("BAir - Buffs");
	initPatchWords_ext("Startup 8 --> 6.", fa_left, c_gray, 1, 0);
	initPatchWords("FStrong, DAir, Crossbow - Buffs");
	initPatchWords_ext("If you're on fire, so are your arrows.", fa_left, c_gray, 1, 0);
	initPatchWords("Removed Herobrine");
	
	initPatch("1.5", "19 November, 2020");
	initPatchWords("NSpecial - Clarity");
	initPatchWords_ext("EXP Orbs now spawn a new visual effect when spawned or collected.
	Hitting an enemy after spawning an orb won't spawn another one.", fa_left, c_gray, 1, 0);
	initPatchWords("Removed Herobrine");
	
	initPatch("1.4", "18 November, 2020");
	initPatchWords("NSpecial - Nerfs");
	initPatchWords_ext("EXPERIENCE SYSTEM: You must hit an enemy with a melee attack before pulling another item.
	Item pull menu no longer slows your max fall speed.", fa_left, c_gray, 1, 0);
	initPatchWords("Items - Buffs, Nerfs, Clarity, Bugfixes");
	initPatchWords_ext("Porkchop heal amount 12 --> 20.
	Frost Walker is now one-time-use.
	Elytra is now one-time-use.
	Elytra flight time 180f --> 300f.
	Items with a mercy use (e.g. Sticky Piston) now have a durability display.
	Eye of Ender lifetime resets on parry.
	Anvil hit lockout 0 --> 10.
	TNT no longer freaks out if you press F5 in Practice Mode against another Workshop character.", fa_left, c_gray, 1, 0);
	initPatchWords("USpecial - Nerfs");
	initPatchWords_ext("If a block item falls offstage, it won't respawn for 300 frames.", fa_left, c_gray, 1, 0);
	initPatchWords("FAir - Adjustments");
	initPatchWords_ext("Base knockback 7 --> 8.
	Knockback scaling 0.75 --> 0.65.", fa_left, c_gray, 1, 0);
	initPatchWords("UAir - Nerfs");
	initPatchWords_ext("Damage 7 --> 5.", fa_left, c_gray, 1, 0);
	initPatchWords("Enemy Death Messages - Flexibility");
	initPatchWords_ext("The steve_death_message var is now checked on hit, not on death.
	Hitboxes can now have the steve_death_message var to override the one in the player object.", fa_left, c_gray, 1, 0);
	initPatchWords("Removed Herobrine");
	
	/*
	
	shulker box
	- end crystal
	- lightning rod
	- chorus fruit?
	- shulker projectile?
	
	cheat code to bypass exp (tmi?)
	
	*/
	
	initPatch("1.3", "14 November, 2020");
	initPatchWords("Taunt - Buffs");
	initPatchWords_ext("Punch angle 60 --> 50.
	Punch base knockback 4 --> 6.", fa_left, c_gray, 1, 0);
	initPatchWords("USpecial - Performance, Clarity");
	initPatchWords_ext("Effects when standing on a block are less laggy.
	Blocks now have an onscreen indicator.", fa_left, c_gray, 1, 0);
	initPatchWords("NSpecial - Nerfs, Bugfixes");
	initPatchWords_ext("Dispenser no longer shoots two arrows at once when dying.
	Anvil no longer reflects when parried (to prevent a crash).
	TNT now has extended parry stun.
	Elytra flight now ends when you get parried.
	Lingering Potion multi-hits now change player when parried.
	Various items no longer place blocks in the CSS playtest (to prevent a crash).", fa_left, c_gray, 1, 0);
	initPatchWords("Removed Herobrine");
	
	initPatch("1.2", "12 November, 2020");
	initPatchWords("FSpecial - Bugfixes");
	initPatchWords_ext("No longer reflects when parried (to prevent a crash).", fa_left, c_gray, 1, 0);
	initPatchWords("Removed Herobrine");
	
	initPatch("1.1", "12 November, 2020");
	initPatchWords("Phone - Accessibility, Bugfixes");
	initPatchWords_ext("Added ability to discard items while using the Too Many Items cheat.
	Fixed an error in the About app.", fa_left, c_gray, 1, 0);
	initPatchWords("Riptide - Continuity");
	initPatchWords_ext("Water boost now works with the water on Mollusk Dock.", fa_left, c_gray, 1, 0);
	initPatchWords("Minecart - Bugfixes");
	initPatchWords_ext("You can no longer jump out after getting parried.", fa_left, c_gray, 1, 0);
	initPatchWords("Thorns - Bugfixes");
	initPatchWords_ext("Thorns actually works now.", fa_left, c_gray, 1, 0);
	initPatchWords("Taunt - ...Buffs?");
	initPatchWords_ext("Getting hit will now only end the taunt if you press taunt while in knockback.
	Punch is now untechable.", fa_left, c_gray, 1, 0);
	initPatchWords("FStrong, DAir, Crossbow - Bugfixes");
	initPatchWords_ext("The bow charge sound no longer continues after getting hit.", fa_left, c_gray, 1, 0);
	initPatchWords("Intro - Aesthetics");
	initPatchWords_ext("The intro animation now has some SFX play during it.", fa_left, c_gray, 1, 0);
	initPatchWords("AI - Bugfixes");
	initPatchWords_ext("The AI no longer tries to use NSpecial.", fa_left, c_gray, 1, 0);
	initPatchWords("Removed Herobrine");
	
	initPatch("1.0", "12 November, 2020");
	initPatchWords_ext("The character was released.", fa_center, c_white, 0, 1);
	initPatchImage(other.spr_taunt, 0, fa_center, 1, c_white, 1);
	initPatchWords("Removed Herobrine");
	
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
	initCheat("Too Many Items", "cheat_tmi", [0, 1], ["Off", "On"], "Items never run out, and the inventory is restocked whenever you select an item.
	
	Hold Special while parrying to discard an item.");
	initCheat("Container Select", "cheat_cont_select", [0, 1], ["Off", "On"], "Press up and down to scroll through NSpecial containers.");
	initCheat("Container View", "cheat_see_conts", [0, 1], ["Off", "On"], "View the queue of item containers (helpful for learning the pattern in which they appear; see Tips).");
	
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
		AT_USTRONG_2,
		AT_DSTRONG_2,
		AT_NAIR,
		AT_FAIR,
		AT_BAIR,
		AT_UAIR,
		AT_DAIR,
		AT_FSPECIAL,
		AT_FSPECIAL_AIR,
		AT_FSPECIAL_2,
		AT_USPECIAL,
		AT_USPECIAL_GROUND,
		AT_USPECIAL_2,
		AT_DSPECIAL_AIR,
		AT_DSPECIAL,
		AT_DSPECIAL_2,
		AT_NSPECIAL,
		AT_FSTRONG_2,
		AT_NSPECIAL_AIR,
		AT_NSPECIAL_2,
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
	custom_name = "Misc. Data"
	
	i = 0;
	
	// If so, use these functions to populate it:
	// initCFDHeader(text)
	// initCFDBody(text)
	
	initCFDHeader("Strength Potion");
	initCFDBody("Duration: " + string(other.strength_pot_max) + "f
	DMG / KBG Multiplier: " + string(other.strength_pot_mult) + "x");
	initCFDBody("NOTE: To see an attack's stats with the Strength Potion active, use that move with the potion active and then refresh the frame data guide (press JUMP).");
	
	initCFDHeader("Porkchop");
	initCFDBody("Heal: " + string(other.porkchop_heal_amt) + " damage");
	
	initCFDHeader("Totem of Undying");
	initCFDBody("Discard Time: " + string(other.discard_timer_max) + "f");
	
	initCFDHeader("Elytra");
	initCFDBody("Flight Time: " + string(other.elytra_max) + "f");
	
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
	
	initAbout("About Steve", "Character made by Muno!
	
	SFX:
	- Minecraft
	- Smash Ultimate");
	
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
	initCodecPage(SPK_TRUM, 0, 0, "hey alto
	
	
	wanna see me speed bridge");
	initCodecPage(SPK_ALTO, 0, 0, "Uh... sure?");
	initCodecPage(SPK_TRUM, 0, 0, "ok");
	var h = GIM_SKIP;
	initCodecPage(SPK_TRUM, 4, h, "HDGFHJSGFHJGSDF SDGFJHGF JKHS FJHGSD JHFGKSJHG FJHSDGFJKHGDSJHFG JHDSFG JKHSDG FJHKSGFJHSGFJKHGSJHFGJDHS GFJHDG JHKFSG FKJH F JDFHSKAJL FHOKF GSKHFL GSJHFGBSJH FGBSLJHF GDSLJHHF GSLJHFGKSLJHFGKDS F");
	initCodecPage(SPK_ALTO, 0, 0, "Cool");
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	
	otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");
	otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body"); // you only need to change this if you REALLY want to. most chars just use the head sprite
	
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve's worst enemy was himself";
	
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