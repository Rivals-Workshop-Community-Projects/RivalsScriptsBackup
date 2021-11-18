is_endless_abyss_mode = (get_stage_data(SD_ID) == 12 && is_aether_stage());

//#mark Size Profiles Object
SIZE_OBJ = {
	mini: {
		
	},
	small: {
		name: "small",
		mask_prefix: "small_",
		
		height_normal: 32,
		height_duck: 16,
		
		grab_item_height: 8,
		grab_item_height_duck: 0,
		lift_item_height: 36,
		lift_item_height_pickup: 2,
		
		pivot_height: 24,
		pivot_offset: 16,
		somersault_offset: 16,
		
		thrown_hsp: 8.5,
		thrown_vsp: -7.75,
		
		freeze_time: 128,
		ice_w: 20,
		ice_h: 20,
		ice_h_duck: 17,
		
		decal_blur_offset: -22,
		decal_lines_offset: -26,
		twirl_lines_type: "spin",
		
		ranno_bubble_time: 180,
		enemy_weight_mult: 1.1, //used for pushing calculations
		crouch_is_duck: false,
		voice_pitch: 1.075,
		breaks_blocks: false
	},
	super: {
		name: "super",
		mask_prefix: "super_",
		
		height_normal: 46,
		height_duck: 26,
		
		grab_item_height: 14,
		grab_item_height_duck: 4,
		lift_item_height: 48,
		lift_item_height_pickup: 6,
		
		pivot_height: 16,
		pivot_offset: 32,
		somersault_offset: 16,
		
		thrown_hsp: 7.5,
		thrown_vsp: -7,
		
		freeze_time: 80,
		ice_w: 22,
		ice_h: 32,
		ice_h_duck: 20,
		
		ranno_bubble_time: 135,
		decal_blur_offset: -32,
		decal_lines_offset: -30,
		twirl_lines_type: "twirl",
		
		enemy_weight_mult: 1.0, //used for pushing calculations
		crouch_is_duck: true,
		voice_pitch: 1,
		breaks_blocks: true
	},
	weird: {
		
	},
	mega: {
		
	}
};

//#mark Power States Object
POWER_OBJ = {
	depowered: {
		name: "Depowered",
		display_prefix: "",
		prefix: "small_",
		item_name: "depowered.item_name",
		sprite: sprite_get("item_bowser"),
		
		transform_sfx: sound_get("bookworm_buzzer"),
		revert_to: null,
		
		size_profile: SIZE_OBJ.small,
		
		has_alts: false,
		
		tier: 0, value: 0,
		can_save_reserve: false,
		reserve_entry: null,
		
		abilities: [
		]
	},
	super_mushroom: {
		name: "Super Mushroom",
		display_prefix: "Super ",
		prefix: "super_",
		item_name: "Super Mushroom",
		sprite: sprite_get("item_mushroom"),
		
		transform_sfx: sound_get("nsmbwii_mushroom"),
		revert_to: null,
		
		size_profile: SIZE_OBJ.super,
		
		has_alts: false,
		
		tier: 1, value: 1,
		can_save_reserve: false,
		reserve_entry: null,
		
		abilities: [
			"break block",
			"pound-through"
		]
	},
	fire_flower: {
		name: "Fire Flower",
		display_prefix: "Fire ",
		prefix: "fire_",
		mask_prefix: "super_",
		item_name: "Fire Flower",
		sprite: sprite_get("item_fire_flower"),
		
		transform_sfx: sound_get("nsmbwii_mushroom"),
		revert_to: null,
		
		size_profile: SIZE_OBJ.super,
		
		has_alts: false,
		
		tier: 2, value: 2,
		can_save_reserve: true,
		reserve_entry: null,
		
		abilities: [
			"break block",
			"pound-through",
			"throw fireball",
			"fireball stomp"
		]
	},
	ice_flower: {
		name: "Ice Flower",
		display_prefix: "Ice ",
		prefix: "ice_",
		mask_prefix: "super_",
		item_name: "Ice Flower",
		sprite: sprite_get("item_ice_flower"),
		
		transform_sfx: sound_get("nsmbwii_mushroom"),
		revert_to: null,
		
		size_profile: SIZE_OBJ.super,
		
		has_alts: false,
		
		tier: 2, value: 2,
		can_save_reserve: true,
		reserve_entry: null,
		
		abilities: [
			"break block",
			"pound-through",
			"throw iceball"
		]
	},
	tanooki_leaf: {
		name: "Tanooki Leaf",
		display_prefix: "Tanooki ",
		prefix: "leaf_",
		item_name: "Tanooki Leaf",
		sprite: sprite_get("item_tanooki_leaf"),
		
		transform_sfx: sound_get("mk7_tanookileaf"),
		revert_to: null,
		
		size_profile: SIZE_OBJ.super,
		
		has_alts: true,
		alt_display_prefix: "Kitsune ",
		alt_prefix: "leaf2_",
		
		tier: 2, value: 2,
		can_save_reserve: true,
		reserve_entry: null,
		
		abilities: [
			"break block",
			"pound-through",
			"tail flight",
			"tail attack",
			"tail roll",
			"tanooki statue"
		]
	},
	blue_shell: {
		name: "Blue Shell",
		display_prefix: "Shell ",
		prefix: "shell_",
		item_name: "Blue Shell",
		sprite: sprite_get("item_shell_blue"),
		
		transform_sfx: sound_get("nsmb_shell"),
		revert_to: null,
		
		size_profile: SIZE_OBJ.super,
		
		has_alts: false,
		
		tier: 2, value: 2,
		can_save_reserve: true,
		reserve_entry: null,
		
		abilities: [
			"break block",
			"pound-through",
			"shell slide",
			"shell duck",
			"shell swim"
		]
	}
	//Super Acorn
	//Propeller Mushroom
};

//#mark revert_to Corrections
POWER_OBJ.depowered.revert_to = "death";
POWER_OBJ.super_mushroom.revert_to = POWER_OBJ.depowered;
POWER_OBJ.fire_flower.revert_to = POWER_OBJ.super_mushroom;
POWER_OBJ.ice_flower.revert_to = POWER_OBJ.super_mushroom;
POWER_OBJ.tanooki_leaf.revert_to = POWER_OBJ.super_mushroom;
POWER_OBJ.blue_shell.revert_to = POWER_OBJ.super_mushroom;
//Reminder to dev: When you add a new power, don't forget its reserve_entry value lower down!


//#mark Powers Array
POWERS_ARRAY = [];
var attacks_array_names = variable_instance_get_names(POWER_OBJ);
for(var counteroo = 0, total = array_length_1d(attacks_array_names); counteroo < total; counteroo++;) {
	array_push(POWERS_ARRAY, variable_instance_get(POWER_OBJ, attacks_array_names[counteroo]));
}

//#mark Playtest Available Powers Array
PLAYTEST_POWERS_ARRAY = [
	POWER_OBJ.depowered,
	POWER_OBJ.super_mushroom,
	POWER_OBJ.fire_flower,
	POWER_OBJ.tanooki_leaf,
	POWER_OBJ.blue_shell
];

//#mark Reserve Items Object
RESERVE_OBJ = {
	empty: {
		name: "Empty Slot",
		variant: "none",
		sprite: sprite_get("item_bowser"), sprite_scale: 2,
		roulette_reaction: "bowser",
		value: 0
	},
	super_mushroom: {
		name: "Super Mushroom",
		variant: "power-up",
		sprite: sprite_get("item_mushroom"), sprite_scale: 2,
		roulette_reaction: "item",
		value: 1,
		
		power_object: POWER_OBJ.super_mushroom
	},
	fire_flower: {
		name: "Fire Flower",
		variant: "power-up",
		sprite: sprite_get("item_fire_flower"), sprite_scale: 2,
		roulette_reaction: "item",
		value: 2,
		
		power_object: POWER_OBJ.fire_flower
	},
	ice_flower: {
		name: "Ice Flower",
		variant: "power-up",
		sprite: sprite_get("item_ice_flower"), sprite_scale: 2,
		roulette_reaction: "item",
		value: 2,
		
		power_object: POWER_OBJ.ice_flower
	},
	tanooki_leaf: {
		name: "Tanooki Leaf",
		variant: "power-up",
		sprite: sprite_get("item_tanooki_leaf"), sprite_scale: 2,
		roulette_reaction: "item",
		value: 2,
		
		power_object: POWER_OBJ.tanooki_leaf
	},
	blue_shell: {
		name: "Blue Shell",
		variant: "article2",
		sprite: sprite_get("item_shell_blue"), sprite_scale: 1,
		roulette_reaction: "item",
		value: 2,
		
		article_variant: "blue koopa shell",
		power_object: POWER_OBJ.blue_shell
	},
	
	//Bubble Items
	red_koopa_shell: {
		name: "Red Koopa Shell",
		variant: "article2",
		sprite: sprite_get("item_shell_red"), sprite_scale: 1,
		roulette_reaction: "item",
		value: 2,
		
		article_variant: "red koopa shell"
	},
	green_koopa_shell: {
		name: "Green Koopa Shell",
		variant: "article2",
		sprite: sprite_get("item_shell_green"), sprite_scale: 1,
		roulette_reaction: "item",
		value: 2,
		
		article_variant: "green koopa shell"
	},
	key: {
		name: "Key",
		variant: "articleplatform",
		sprite: sprite_get("item_key"), sprite_scale: 1,
		roulette_reaction: "item",
		value: 2,
		
		article_variant: "key"
	},
	cursed_key: {
		name: "Cursed Key",
		variant: "articleplatform",
		sprite: sprite_get("item_cursed_key"), sprite_scale: 1,
		roulette_reaction: "bowser",
		value: 2,
		
		article_variant: "cursed key"
	},
	hop_chops: {
		name: "Hop-Chops",
		variant: "article2",
		sprite: sprite_get("item_hop-chops"), sprite_scale: 1,
		roulette_reaction: "bowser",
		value: 2,
		
		article_variant: "hop-chops"
	},
	heavy_stone: {
		name: "Heavy Stone",
		variant: "articlesolid",
		sprite: sprite_get("item_heavy_stone"), sprite_scale: 1,
		roulette_reaction: "item",
		value: 2,
		
		article_variant: "heavy stone"
	},
	thirty_coin: {
		name: "30 Coin",
		variant: "article2",
		sprite: sprite_get("item_30_coin"), sprite_scale: 2,
		roulette_reaction: "item",
		value: 2,
		
		article_variant: "30 coin"
	},
	// crate: {
	// 	name: "Crate",
	// 	variant: "articlesolid",
	// 	sprite: sprite_get("item_stone_block"), sprite_scale: 2,
	// 	roulette_reaction: "item",
	// 	value: 2,
		
	// 	article_variant: "crate"
	// },
	subcon_potion: {
		name: "Subcon Potion",
		variant: "articleplatform",
		sprite: sprite_get("item_subcon_potion"), sprite_scale: 2,
		roulette_reaction: "item",
		value: 2,
		
		article_variant: "subcon potion"
	},
	
	//Goofy stuff
	starman: {
		name: "Starman",
		variant: "article2",
		sprite: sprite_get("item_starman"), sprite_scale: 2,
		roulette_reaction: "item",
		value: 3,
		
		article_variant: "starman"
	},
	pow_block: {
		name: "POW Block",
		variant: "articlesolid",
		sprite: sprite_get("item_pow_block"), sprite_scale: 2,
		roulette_reaction: "item",
		value: 3,
		
		article_variant: "POW"
	},
	oneup_mushroom: {
		name: "1-UP",
		variant: "article2",
		sprite: sprite_get("item_1up"), sprite_scale: 2,
		roulette_reaction: "item",
		value: 3,
		
		article_variant: "1up"
	}
};

POWER_OBJ.depowered.reserve_entry = RESERVE_OBJ.empty;
POWER_OBJ.super_mushroom.reserve_entry = RESERVE_OBJ.super_mushroom;
POWER_OBJ.fire_flower.reserve_entry = RESERVE_OBJ.fire_flower;
POWER_OBJ.ice_flower.reserve_entry = RESERVE_OBJ.ice_flower;
POWER_OBJ.tanooki_leaf.reserve_entry = RESERVE_OBJ.tanooki_leaf;
POWER_OBJ.blue_shell.reserve_entry = RESERVE_OBJ.blue_shell;

REWARDS_ARRAY = [
	{
		name: "Super Mushroom",
		reserve_entry: RESERVE_OBJ.super_mushroom,
		hud_sprite: sprite_get("reward_super_mushroom"),
		animated: false,
		caption_sprite: sprite_get("rewcap_super_mushroom"),
		game_sprite: sprite_get("rewcap_super_mario_bros"),
		threshold: 0
	},
	{
		name: "Fire Flower",
		reserve_entry: RESERVE_OBJ.fire_flower,
		hud_sprite: sprite_get("reward_fire_flower"),
		animated: true, anim_divisor: 6,
		caption_sprite: sprite_get("rewcap_fire_flower"),
		game_sprite: sprite_get("rewcap_super_mario_bros"),
		threshold: 4000
	},
	{
		name: "Key",
		reserve_entry: RESERVE_OBJ.key,
		hud_sprite: sprite_get("reward_key"),
		animated: false,
		caption_sprite: sprite_get("rewcap_key"),
		game_sprite: sprite_get("rewcap_super_mario_maker"),
		threshold: 8000
	},
	{
		name: "Cursed Key",
		reserve_entry: RESERVE_OBJ.key,
		hud_sprite: sprite_get("reward_cursed_key"),
		animated: true, anim_divisor: 9,
		caption_sprite: sprite_get("rewcap_cursed_key"),
		game_sprite: sprite_get("rewcap_super_mario_bros_2"),
		threshold: 12000
	},
	{
		name: "Green Koopa Troopa Shell",
		reserve_entry: RESERVE_OBJ.green_koopa_shell,
		hud_sprite: sprite_get("reward_green_shell"),
		animated: true, anim_divisor: 3,
		caption_sprite: sprite_get("rewcap_green_shell"),
		game_sprite: sprite_get("rewcap_super_mario_bros"),
		threshold: 16000
	},
	{
		name: "Red Koopa Troopa Shell",
		reserve_entry: RESERVE_OBJ.red_koopa_shell,
		hud_sprite: sprite_get("reward_red_shell"),
		animated: true, anim_divisor: 3,
		caption_sprite: sprite_get("rewcap_red_shell"),
		game_sprite: sprite_get("rewcap_super_mario_bros"),
		threshold: 20000
	},
	{
		name: "Hop-Chops",
		reserve_entry: RESERVE_OBJ.hop_chops,
		hud_sprite: sprite_get("reward_hop-chops"),
		animated: true, anim_divisor: 3,
		caption_sprite: sprite_get("rewcap_hop-chops"),
		game_sprite: sprite_get("rewcap_super_mario_3d_world"),
		threshold: 24000
	},
	{
		name: "30 Coin",
		reserve_entry: RESERVE_OBJ.thirty_coin,
		hud_sprite: sprite_get("reward_30_coin"),
		animated: true, anim_divisor: 5,
		caption_sprite: sprite_get("rewcap_30_coin"),
		game_sprite: sprite_get("rewcap_super_mario_maker_2"),
		threshold: 28000
	},
	{
		name: "Subcon Potion",
		reserve_entry: RESERVE_OBJ.subcon_potion,
		hud_sprite: sprite_get("reward_subcon_potion"),
		animated: true, anim_divisor: 4,
		caption_sprite: sprite_get("rewcap_subcon_potion"),
		game_sprite: sprite_get("rewcap_super_mario_bros_2"),
		threshold: 320000
	},
	{
		name: "Heavy Stone",
		reserve_entry: RESERVE_OBJ.heavy_stone,
		hud_sprite: sprite_get("reward_heavy_stone"),
		animated: true, anim_divisor: 4,
		caption_sprite: sprite_get("rewcap_heavy_stone"),
		game_sprite: sprite_get("rewcap_super_mario_maker_2"),
		threshold: 320000
	}
];

//#mark Roulette Entries Array
ROULETTE_ENTRIES = [
	RESERVE_OBJ.super_mushroom,
	RESERVE_OBJ.fire_flower,
	RESERVE_OBJ.empty,
	RESERVE_OBJ.ice_flower,
	RESERVE_OBJ.tanooki_leaf,
	RESERVE_OBJ.blue_shell
	// RESERVE_OBJ.koopa_shell,
	// RESERVE_OBJ.pow_block,
	// RESERVE_OBJ.stone_block,
	// RESERVE_OBJ.starman
];

//#mark Final Smash Roulette Array
BIG_ROULETTE_ENTRIES = [
	RESERVE_OBJ.pow_block,
	RESERVE_OBJ.starman,
	RESERVE_OBJ.oneup_mushroom
	//Giga Super Bell
	//
];

//#mark Progressive SFX Object
PROG_SFX_OBJ = { //anyways stream Pink Floyd sksksksks
	bookworm: {
		name: "Placeholder",
		index: sound_get("bookworm_gem"),
		pitch_mult: 0.15
	},
	stomp: {
		name: "stomp",
		index: sound_get("stomp"),
		pitch_mult: 0.15
	},
	spin_stomp: {
		name: "spin stomp",
		index: sound_get("stomp_spin"),
		pitch_mult: 0.15
	},
	yoshi_stomp: {
		name: "yoshi stomp",
		index: sound_get("stomp_yoshi"),
		pitch_mult: 0.1
	},
	kick: {
		name: "kick",
		index: sound_get("kick"),
		pitch_mult: 0.125
	},
	heavy_stomp: {
		name: "heavy stomp",
		index: sound_get("stomp_heavy"),
		pitch_mult: 0.15
	}
};

//#mark Unstompable Projectiles Array
UNSTOMPABLE_HITBOXES = [
	{
		name: "Koopa Shell",
		url: url,
		attack: AT_USPECIAL,
		hbox_num: 1
	},
	{
		name: "Kragg DSpecial",
		url: CH_KRAGG,
		attack: AT_DSPECIAL,
		hbox_num: -1
	},
	{
		name: "Active Starman",
		url: url,
		attack: AT_USPECIAL,
		hbox_num: 4
	}
];

//#mark Pronouns Object
PRNNS_OBJ = {
	neutral: {
		they: "they",
		them: "them",
		their: "their",
		theirs: "theirs",
		theyve: "they've",
		theyre: "they're",
		themself: "themself",
		theyll: "they'll",
		They: "They",
		Them: "Them",
		Their: "Their",
		Theirs: "Theirs",
		Theyve: "They've",
		Theyre: "They're",
		Themself: "Themself",
		Theyll: "They'll",
		plurconj: false
	},
	male: {
		they: "he",
		them: "him",
		their: "his",
		theirs: "his",
		theyve: "he's",
		theyre: "he's",
		themself: "himself",
		theyll: "he'll",
		They: "He",
		Them: "Him",
		Their: "His",
		Theirs: "His",
		Theyve: "He's",
		Theyre: "He's",
		Themself: "Himself",
		Theyll: "He'll",
		plurconj: false
	},
	female: {
		they: "she",
		them: "her",
		their: "her",
		theirs: "hers",
		theyve: "she's",
		theyre: "she's",
		themself: "herself",
		theyll: "she'll",
		They: "She",
		Them: "Her",
		Their: "Her",
		Theirs: "Hers",
		Theyve: "She's",
		Theyre: "She's",
		Themself: "Herself",
		Theyll: "She'll",
		plurconj: false
	}
};

//#mark Death Songs Object
DEATH_SONGS_OBJ = {
	nsmbwii: {
		game: "New Super Mario Bros. Wii",
		index: sound_get("death_song_nsmbwii"),
		length: 87
	},
	cttt: {
		game: "Captain Toad: Treasure Tracker",
		index: sound_get("death_song_cttt"),
		length: 93
	},
	smg: {
		game: "Super Mario Galaxy",
		index: sound_get("death_song_smg"),
		length: 124
	}
};

//#mark Characters Object
CHAR_OBJ = {
	mario: {
		name: "Mario",
		full_name: "Mario Mario",
		intro_text: "It's-a me!",
		death_song: DEATH_SONGS_OBJ.nsmbwii,
		
		prefix: "mario_",
		unique_prefix: "mario_",
		start_image: 0,
		munophone_image: 0,
		
		use_alts: false,
		
		taunt_state: "Taunt Hold",
		taunt_substate: "Peace",
		taunt_animstate: "taunt",
		
		prnns: PRNNS_OBJ.male,
		
		ext_char_vars: [
			//From Adventure Mode API
			"pronouns", ["he", "him", "his", "is"],
			"am_is_noob", true, //people seem to love explaining obvious things to Mario - ever met Gil Board and co?
			"am_is_experienced", true, //and yet the guy's clearly competent
			"am_is_verbal", true, //Mario is fully capable of speech, he's just a quiet kinda guy
		]
	},
	luigi: {
		name: "Luigi",
		full_name: "Luigi Mario",
		intro_text: "I'mma Luigi, number one!",
		death_song: DEATH_SONGS_OBJ.nsmbwii,
		
		prefix: "luigi_",
		unique_prefix: "luigi_",
		start_image: 1,
		munophone_image: 1,
		
		use_alts: true,
		
		taunt_state: "Taunt Hold",
		taunt_substate: "Weegee",
		taunt_animstate: "taunt",
		
		prnns: PRNNS_OBJ.male,
		
		ext_char_vars: [
			//From Adventure Mode API
			"pronouns", ["he", "him", "his", "is"],
			"am_is_noob", true, //he often looks quite scared and confused
			"am_is_verbal", true, //Much more talkative than Mario
		]
	},
	blue_toad: {
		name: "Bucken-Berry",
		full_name: "Blue Toad",
		intro_text: "WAHOO!",
		death_song: DEATH_SONGS_OBJ.nsmbwii,
		
		prefix: "toad_",
		unique_prefix: "btoad_",
		start_image: 2,
		munophone_image: 2,
		
		use_alts: false,
		
		taunt_state: "Taunt Hold",
		taunt_substate: "Wahoo!",
		taunt_animstate: "taunt",
		
		prnns: PRNNS_OBJ.male,
		
		ext_char_vars: [
			//From Adventure Mode API
			"pronouns", ["he", "him", "his", "is"],
			"am_is_noob", true, "am_is_small", true, //toads are bapy
			"am_is_earth", true, //Mushrooms are pretty earthy
			"am_is_subterranain", true, //Mushrooms are pretty underground-y
			"am_is_verbal", true, //And quite screechy, as well
		]
	},
	toadette: {
		name: "Toadette",
		full_name: "Toadette",
		intro_text: "Fight time!",
		death_song: DEATH_SONGS_OBJ.cttt,
		
		prefix: "toadette_",
		unique_prefix: "toadette_",
		start_image: 3,
		munophone_image: 3,
		
		use_alts: false,
		
		taunt_state: "Taunt Hold",
		taunt_substate: "Yay!",
		taunt_animstate: "taunt",
		
		prnns: PRNNS_OBJ.female,
		
		ext_char_vars: [
			//From Adventure Mode API
			"pronouns", ["she", "her", "hers", "is"],
			"am_is_noob", true, "am_is_small", true, //toads are bapy
			"am_is_earth", true, //Mushrooms are pretty earthy
			"am_is_subterranain", true, //Mushrooms are pretty underground-y
			"am_is_chaotic", true, //If Bowser complimented her creativity, she'd absolutely build him a new castle
			"am_is_verbal", true,
		]
	},
	wario: {
		name: "Wario",
		full_name: "Wario",
		intro_text: "Ohh yeah!",
		death_song: DEATH_SONGS_OBJ.nsmbwii,
		
		prefix: "wario_",
		unique_prefix: "wario_",
		start_image: 4,
		munophone_image: 4,
		
		use_alts: false,
		
		taunt_state: "Taunt Hold",
		taunt_substate: "Wah!",
		taunt_animstate: "taunt",
		
		prnns: PRNNS_OBJ.male,
		
		ext_char_vars: [
			//From Adventure Mode API
			"pronouns", ["he", "him", "his", "is"],
			"am_is_experienced", true, //the man is a treasure hunter, after all
			"am_is_evil", true,
			"am_is_undead", false, //he sure does smell like he is, though
			"am_is_big", true
		]
	},
	yellow_toad: {
		name: "Ala-Gold",
		full_name: "Yellow Toad",
		intro_text: "Zzzz....",
		death_song: DEATH_SONGS_OBJ.nsmbwii,
		
		prefix: "toad_",
		unique_prefix: "ytoad_",
		start_image: 4,
		munophone_image: 2,
		
		use_alts: true,
		
		taunt_state: "Taunt Balloon",
		taunt_substate: "Snzzz...",
		taunt_animstate: "taunt_pballoon",
		
		prnns: PRNNS_OBJ.neutral,
		
		ext_char_vars: [
			//From Adventure Mode API
			"pronouns", ["they", "them", "their", "are"], //nonbinary icon, change my mind
			"am_is_noob", true, "am_is_small", true, //toads are bapy
			"am_is_earth", true, //Mushrooms are pretty earthy
			"am_is_subterranain", true, //Mushrooms are pretty underground-y
			"am_is_verbal", true, //And quite screechy, as well
		]
	},
	red_toad: {
		name: "Toad",
		full_name: "Red Toad",
		intro_text: "Here I go!",
		death_song: DEATH_SONGS_OBJ.cttt,
		
		prefix: "toad_",
		unique_prefix: "rtoad_",
		start_image: 5,
		munophone_image: 2,
		
		use_alts: false,
		
		taunt_state: "Taunt Hold",
		taunt_substate: "Kablammered",
		taunt_animstate: "taunt_explode",
		
		prnns: PRNNS_OBJ.male,
		
		ext_char_vars: [
			//From Adventure Mode API
			"pronouns", ["he", "him", "his", "is"],
			"am_is_noob", true, "am_is_small", true, //toads are bapy
			"am_is_earth", true, //Mushrooms are pretty earthy
			"am_is_subterranain", true, //Mushrooms are pretty underground-y
			"am_is_verbal", true, //And quite screechy, as well
		]
	},
	green_toad: {
		name: "Banktoad",
		full_name: "Green Toad",
		intro_text: "Thanks for selecting your local banktoad!",
		death_song: DEATH_SONGS_OBJ.smg,
		
		prefix: "toad_",
		unique_prefix: "gtoad_",
		start_image: 6,
		munophone_image: 2,
		
		use_alts: true,
		
		taunt_state: "Taunt Hold",
		taunt_substate: "Banktoad Flex",
		taunt_animstate: "lift_spin",
		
		prnns: PRNNS_OBJ.male,
		
		ext_char_vars: [
			//From Adventure Mode API
			"pronouns", ["he", "him", "his", "is"],
			"am_is_noob", true, "am_is_small", true, //toads are bapy
			"am_is_earth", true, //Mushrooms are pretty earthy
			"am_is_subterranain", true, //Mushrooms are pretty underground-y
			"am_is_verbal", true, //And quite screechy, as well
		]
	},
	purple_toad: {
		name: "Mailtoad",
		full_name: "Purple Toad",
		intro_text: "Here's a letter from Princess Peach!",
		death_song: DEATH_SONGS_OBJ.smg,
		
		prefix: "toad_",
		unique_prefix: "ptoad_",
		start_image: 7,
		munophone_image: 2,
		
		use_alts: false,
		
		taunt_state: "Taunt Pluck Letter",
		taunt_substate: "Pluck",
		taunt_animstate: "taunt_pluck",
		
		prnns: PRNNS_OBJ.male,
		
		ext_char_vars: [
			//From Adventure Mode API
			"pronouns", ["he", "him", "his", "is"],
			"am_is_noob", true, "am_is_small", true, //toads are bapy
			"am_is_earth", true, //Mushrooms are pretty earthy
			"am_is_subterranain", true, //Mushrooms are pretty underground-y
			"am_is_verbal", true, //And quite screechy, as well
		]
	}
};

//#mark Costumes Array
COSTUMES = [
	CHAR_OBJ.mario,
	CHAR_OBJ.luigi,
	CHAR_OBJ.blue_toad,
	CHAR_OBJ.toadette,
	CHAR_OBJ.yellow_toad,
	// CHAR_OBJ.wario,
	CHAR_OBJ.red_toad,
	CHAR_OBJ.green_toad,
	CHAR_OBJ.purple_toad,
	// CHAR_OBJ.mario //Dexter the cat :3
];

//#mark Floortypes Object
FLOORTYPES_OBJ = {
	invalid: {
		name: "INVALID :(", adjective: "broken",
		footstep_sfx: [sound_get("bookworm_buzzer"), sound_get("bookworm_buzzer")],
		land_sfx: sound_get("bookworm_buzzer"),
		skid_sfx: sound_get("bookworm_buzzer"), skid_sfx_freq: 6,
		ground_particle: "dust", ground_particle_sprite: sprite_get("lol_uh_oh_sisters"),
	},
	block: {
		name: "Default Block", adjective: "generic",
		footstep_sfx: [sound_get("footstep_block1"), sound_get("footstep_block2")],
		land_sfx: sound_get("land_block"),
		skid_sfx: sound_get("skid_block"), skid_sfx_freq: 6,
		ground_particle: "dust", ground_particle_sprite: sprite_get("decal_dust"),
	},
	dirt: {
		name: "dirt", adjective: "dirty",
		footstep_sfx: [sound_get("footstep_dirt1"), sound_get("footstep_dirt2")],
		land_sfx: sound_get("land_dirt"),
		skid_sfx: sound_get("skid_block"), skid_sfx_freq: 6,
		ground_particle: "dust", ground_particle_sprite: sprite_get("decal_dust_dirt"),
	},
	rock: {
		name: "rock", adjective: "rocky",
		footstep_sfx: [sound_get("footstep_rock1"), sound_get("footstep_rock2")],
		land_sfx: sound_get("land_rock"),
		skid_sfx: sound_get("skid_block"), skid_sfx_freq: 6,
		ground_particle: "dust", ground_particle_sprite: sprite_get("decal_dust_dark"),
	},
	wood: {
		name: "wood", adjective: "wooden",
		footstep_sfx: [sound_get("footstep_wood1"), sound_get("footstep_wood2")],
		land_sfx: sound_get("land_wood"),
		skid_sfx: sound_get("skid_block"), skid_sfx_freq: 6,
		ground_particle: "dust", ground_particle_sprite: sprite_get("decal_dust"),
	},
	sand: {
		name: "sand", adjective: "sandy",
		footstep_sfx: [sound_get("footstep_sand1"), sound_get("footstep_sand2")],
		land_sfx: sound_get("land_sand"),
		skid_sfx: sound_get("skid_sand"), skid_sfx_freq: 3,
		ground_particle: "droplets", ground_particle_sprite: sprite_get("decal_droplet_sand"),
	},
	snow: {
		name: "snow", adjective: "frosty",
		footstep_sfx: [sound_get("footstep_snow1"), sound_get("footstep_snow2")],
		land_sfx: sound_get("land_snow"),
		skid_sfx: sound_get("skid_snow"), skid_sfx_freq: 9,
		ground_particle: "dust", ground_particle_sprite: sprite_get("decal_dust_snowflakes"),
	},
	tree: {
		name: "treetop", adjective: "leafy",
		footstep_sfx: [sound_get("footstep_tree1"), sound_get("footstep_tree2")],
		land_sfx: sound_get("land_tree"),
		skid_sfx: sound_get("skid_block"), skid_sfx_freq: 6,
		ground_particle: "dust", ground_particle_sprite: sprite_get("decal_dust"),
	},
	cloud: {
		name: "cloud", adjective: "cloudy",
		footstep_sfx: [sound_get("footstep_snow1"), sound_get("footstep_snow2")],
		land_sfx: sound_get("land_snow"),
		skid_sfx: sound_get("skid_block"), skid_sfx_freq: 6,
		ground_particle: "dust", ground_particle_sprite: sprite_get("decal_dust"),
	},
	metal: {
		name: "metal", adjective: "metallic",
		footstep_sfx: [sound_get("footstep_metal1"), sound_get("footstep_metal2")],
		land_sfx: sound_get("land_metal"),
		skid_sfx: sound_get("skid_block"), skid_sfx_freq: 6,
		ground_particle: "dust", ground_particle_sprite: sprite_get("decal_dust"),
	},
	puddle: {
		name: "water", adjective: "wet",
		footstep_sfx: [sound_get("footstep_puddle1"), sound_get("footstep_puddle2")],
		land_sfx: sound_get("land_puddle"),
		skid_sfx: sound_get("skid_puddle"), skid_sfx_freq: 5,
		ground_particle: "droplets", ground_particle_sprite: sprite_get("decal_droplet"),
	},
	ice: {
		name: "ice", adjective: "frozen",
		footstep_sfx: [sound_get("footstep_block1"), sound_get("footstep_block2")],
		land_sfx: sound_get("land_block"),
		skid_sfx: sound_get("skid_ice"), skid_sfx_freq: 8,
		ground_particle: "none", ground_particle_sprite: asset_get("empty_sprite"),
	},
	agent4_ink: {
		name: "Agent 4's ink", adjective: "inked",
		footstep_sfx: [sound_get("footstep_puddle1"), sound_get("footstep_puddle2")],
		land_sfx: sound_get("land_puddle"),
		skid_sfx: sound_get("skid_block"), skid_sfx_freq: 6,
		ground_particle: "dust", ground_particle_sprite: sprite_get("decal_dust"),
	}
}

//#mark Movetypes Object
MOVESTATS_OBJ = {
	normal: {
		name: "Normal",
		floortype: undefined,
		neutral_deaccel: 0.13,
		ducking_deaccel: 0.225,
		
		walk_accel: 0.25,
		walk_speed: 3.4,
		walk_against_momentum_accel: 0.23,
		overwalk_speed_reduction: 0.1,
		
		run_accel: 0.22,
		run_speed: 8.5,
		run_from_standstill_accel: 0.35,
		run_against_momentum_accel: 0.36,
		overrun_speed_reduction: 0.1,
		skid_deaccel: 0.43,
		skid_frames: 6,
		skid_threshold: 3.4,
		
		special_run_animstate: "walk",
		sliding_deaccel: false,
		
		triplejump_threshold: 6.2
	},
	puddle: {
		name: "Puddle",
		floortype: FLOORTYPES_OBJ.puddle,
		neutral_deaccel: 0.13,
		ducking_deaccel: 0.225,
		
		walk_accel: 0.25,
		walk_speed: 3.4,
		walk_against_momentum_accel: 0.23,
		overwalk_speed_reduction: 0.1,
		
		run_accel: 0.22,
		run_speed: 8.5,
		run_from_standstill_accel: 0.35,
		run_against_momentum_accel: 0.36,
		overrun_speed_reduction: 0.1,
		skid_deaccel: 0.2,
		skid_frames: 13,
		skid_threshold: 3.4,
		
		special_run_animstate: "walk",
		sliding_deaccel: false,
		
		triplejump_threshold: 6.2
	},
	ice: {
		name: "Ice",
		floortype: FLOORTYPES_OBJ.ice,
		neutral_deaccel: 0.05,
		ducking_deaccel: 0.05,
		
		walk_accel: 0.05,
		walk_speed: 3.4,
		walk_against_momentum_accel: 0.05,
		overwalk_speed_reduction: 0.05,
		
		run_accel: 0.15,
		run_speed: 8.5,
		run_from_standstill_accel: 0.1,
		run_against_momentum_accel: 0.05,
		overrun_speed_reduction: 0.05,
		skid_deaccel: 0.1,
		skid_frames: 16,
		skid_threshold: 7,
		
		special_run_animstate: "ice_scuttle",
		sliding_deaccel: true,
		
		triplejump_threshold: 6.2
	},
	grass: {
		name: "Grass",
		floortype: FLOORTYPES_OBJ.dirt,
		neutral_deaccel: 0.17,
		ducking_deaccel: 0.4,
		
		walk_accel: 0.36,
		walk_speed: 3.4,
		walk_against_momentum_accel: 0.33,
		overwalk_speed_reduction: 0.25,
		
		run_accel: 0.35,
		run_speed: 8.5,
		run_from_standstill_accel: 0.48,
		run_against_momentum_accel: 0.49,
		overrun_speed_reduction: 0.2,
		skid_deaccel: 0.67,
		skid_frames: 3,
		skid_threshold: 2.0,
		
		special_run_animstate: "walk",
		sliding_deaccel: false,
		
		triplejump_threshold: 6.2
	},
	starman: {
		name: "Starman",
		floortype: undefined,
		neutral_deaccel: 0.13,
		ducking_deaccel: 0.225,
		
		walk_accel: 0.33,
		walk_speed: 4.2,
		walk_against_momentum_accel: 0.42,
		overwalk_speed_reduction: 0.15,
		
		run_accel: 0.4,
		run_speed: 11.0,
		run_from_standstill_accel: 0.42,
		run_against_momentum_accel: 0.6,
		overrun_speed_reduction: 0.15,
		skid_deaccel: 0.6,
		skid_frames: 8,
		skid_threshold: 4.2,
		
		special_run_animstate: "walk",
		sliding_deaccel: false,
		
		triplejump_threshold: 6.2
	},
	superheavy: {
		name: "Superheavy",
		floortype: undefined,
		neutral_deaccel: 0.15,
		ducking_deaccel: 0.3,
		
		walk_accel: 0.2,
		walk_speed: 3.4,
		walk_against_momentum_accel: 0.1,
		overwalk_speed_reduction: 0.1,
		
		run_accel: 0.16,
		run_speed: 8.5,
		run_from_standstill_accel: 0.1,
		run_against_momentum_accel: 0.22,
		overrun_speed_reduction: 0.1,
		skid_deaccel: 0.15,
		skid_frames: 15,
		skid_threshold: 6,
		
		special_run_animstate: "walk",
		sliding_deaccel: false,
		
		triplejump_threshold: 6.2
	},
	agent4_ink: {
		name: "Agent 4's ink",
		floortype: FLOORTYPES_OBJ.agent4_ink,
		neutral_deaccel: 0.4,
		ducking_deaccel: 0.5,
		
		walk_accel: 0.09,
		walk_speed: 2.4,
		walk_against_momentum_accel: 0.8,
		overwalk_speed_reduction: 1.0,
		
		run_accel: 0.08,
		run_speed: 5.6,
		run_from_standstill_accel: 0.11,
		run_against_momentum_accel: 0.8,
		overrun_speed_reduction: 1.0,
		skid_deaccel: 1,
		skid_frames: 0,
		skid_threshold: 2.45,
		
		special_run_animstate: "walk",
		sliding_deaccel: false,
		
		triplejump_threshold: 6.2
	}
};

//#mark Aerial Movetypes Object
MOVESTATS_AIR_OBJ = {
	normal: {
		slow_drift_accel: 0.32,
		slow_drift_speed: 3.4,
		
		fast_drift_accel: 0.32,
		fast_drift_speed: 6.4,
		
		twirl_drift_mult: 2.35,
		twirl_gravity_mult: 0.5,
		
		fall_accel: 0.7,
		rising_fall_accel: 0.5,
		fall_speed: 14,
		pound_fall_speed: 18,
		
		stomp_dmg_mult: 1.0
	},
	starman: {
		slow_drift_accel: 0.51,
		slow_drift_speed: 4.55,
		
		fast_drift_accel: 0.61,
		fast_drift_speed: 9.75,
		
		twirl_drift_mult: 1.6,
		twirl_gravity_mult: 0.25,
		
		fall_accel: 0.7,
		fall_speed: 19,
		pound_fall_speed: 22,
		
		stomp_dmg_mult: 0.0
	},
	superheavy: {
		slow_drift_accel: 0.24,
		slow_drift_speed: 3.4,
		
		fast_drift_accel: 0.24,
		fast_drift_speed: 6.4,
		
		twirl_drift_mult: 1.25,
		twirl_gravity_mult: 0.7,
		
		fall_accel: 1.0,
		fall_speed: 20,
		pound_fall_speed: 26,
		
		stomp_dmg_mult: 3.0
	}
};

//#mark Resist Attacks Array
RESIST_ATTACKS = [
	// {
	// 	name: "Ranno Tongue",
	// 	url: CH_RANNO,
	// 	attack: AT_DSPECIAL,
	// 	hbox_num: -1
	// }
];

//#mark Etalus Grab hitboxes
ETALUS_GRABS = [ //Etalus's grab is badly programmed grrr
	{
		name: "Etalus UAir Grab",
		url: CH_ETALUS,
		attack: AT_UAIR,
		hbox_num: 1,
		hitstop_mod_enemy: -10,
		hitstop_mod_mario: 10
	}
];

//#mark Ice Size Exceptions
// ICE_SIZE_EXCEPTIONS = [
// 	{
// 		name: "Zetterburn Fireball",
// 		url: CH_ZETTERBURN,
// 		attack: AT_FSPECIAL,
// 		hbox_num: -1,
		
// 		extra_width: 38,
// 		extra_height: 0,
// 		block_x_offset: 0,
// 		block_y_offset: 0
// 	},
// 	{
// 		name: "Maypul Nut",
// 		url: CH_MAYPUL,
// 		attack: AT_NSPECIAL,
// 		hbox_num: -1,
		
// 		extra_width: -16,
// 		extra_height: -16,
// 		block_x_offset: 0,
// 		block_y_offset: 0
// 	},
// 	{
// 		name: "Ranno Dart",
// 		url: CH_RANNO,
// 		attack: AT_FSPECIAL,
// 		hbox_num: -1,
		
// 		extra_width: 48,
// 		extra_height: -10,
// 		block_x_offset: 0,
// 		block_y_offset: 2
// 	}
// ];

//#mark Ice Data Registry
// ICE_DATA_REGISTRY_OBJ = {
// 	unidentified: [],
// 	article1: [
// 		"article1",
// 		{
// 			name: "Sans white bones",
// 			url: 1869814191,
// 			identifications: [],
// 			returns: {
// 				can_be_frozen: true,
// 				extra_x_offset: -3
// 			}
// 		},
// 		{
// 			name: "Toon Link remote bombs",
// 			url: 2164231403,
// 			identifications: [],
// 			returns: true
// 		}
// 	],
// 	article2: [
// 		"article2",
// 		{
// 			name: "Qua Mario power-ups",
// 			url: url,
// 			identifications: [
// 				["variant", "power-up"]
// 			],
// 			returns: true
// 		},
// 		{
// 			name: "Sans gaster blaster",
// 			url: 1869814191,
// 			identifications: [],
// 			returns: true
// 		}
// 	],
// 	article3: [
// 		"article3"
		
// 	],
// 	articlesolid: [
// 		"articlesolid"
		
// 	],
// 	articleplatform: [
// 		"articleplatform"
		
// 	],
// 	hitbox: [
// 		"hitbox",
// 		{
// 			name: "Zetterburn fireball",
// 			url: CH_ZETTERBURN,
// 			attack: AT_FSPECIAL,
// 			hbox_num: -1,
// 			returns: {
// 				can_be_frozen: true,
// 				extra_width: 19
// 			}
// 		},
// 		{
// 			name: "Maypul nut",
// 			url: CH_MAYPUL,
// 			attack: AT_NSPECIAL,
// 			hbox_num: -1,
// 			returns: {
// 				can_be_frozen: true,
// 				extra_width: -6,
// 				extra_height: -6
// 			}
// 		},
// 		{
// 			name: "Ranno dart",
// 			url: CH_RANNO,
// 			attack: AT_FSPECIAL,
// 			hbox_num: -1,
// 			returns: {
// 				can_be_frozen: true,
// 				extra_width: 27,
// 				extra_height: -6
// 			}
// 		},
// 		{
// 			name: "Sylvanos razors",
// 			url: CH_SYLVANOS,
// 			attack: AT_JAB,
// 			hbox_num: 6,
// 			returns: {
// 				can_be_frozen: true,
// 				extra_height: -20,
// 				extra_y_offset: 16,
// 				extra_width: -10
// 			}
// 		},
// 		{
// 			name: "Kragg DSpecial",
// 			url: CH_KRAGG,
// 			attack: AT_DSPECIAL,
// 			hbox_num: -1,
// 			returns: true
// 		}
// 	]
// };

//#mark Hit FX Keys Object
HIT_FX_KEYS_OBJ = {};

//#mark Attacks List Object
MAX_PLAYER_NUM = is_endless_abyss_mode?10:4;
ATTACKS_OBJ = {
	//Error handling
	unknown: generate_attack_obj("Unknown", -1, -1),
	
	//NSpecial
	stomp: generate_attack_obj("Stomp", AT_NSPECIAL, 1),
	ground_pound: generate_attack_obj("Ground Pound", AT_NSPECIAL, 2),
	spin_jump: generate_attack_obj("Spin Jump", AT_NSPECIAL, 3),
	throw_enemy: generate_attack_obj("Throw Enemy", AT_NSPECIAL, 4),
	ceiling_bump: generate_attack_obj("Ceiling Bump", AT_NSPECIAL, 5),
	pillar_breaker: generate_attack_obj("Pillar Breaker", AT_NSPECIAL, 6, false, DFXT_NORMAL),
	// thrown_rival: generate_attack_obj("Thrown Rival", AT_NSPECIAL, 7, false, DFXT_NORMAL),
	
	//DSpecial
	fireball: generate_attack_obj("Fireball", AT_DSPECIAL, 1, true, DFXT_NORMAL),
	tail_attack: generate_attack_obj("Tanooki Tail", AT_DSPECIAL, 2),
	iceball: generate_attack_obj("Iceball", AT_DSPECIAL, 3, true, DFXT_NORMAL),
	ice_block: generate_attack_obj("Ice Block", AT_DSPECIAL, 4, true, DFXT_PLAYER_DEPENDENT),
	ice_shatter: generate_attack_obj("Ice Shatter", AT_DSPECIAL, 5, false, DFXT_NORMAL),
	blue_koopa_shell: generate_attack_obj("Blue Koopa Shell", AT_DSPECIAL, 6),
	//tail attack R???
	statue_fall: generate_attack_obj("Falling Tanooki Statue", AT_DSPECIAL, 7),
	
	//USpecial
	koopa_shell: generate_attack_obj("Koopa Troopa Shell", AT_USPECIAL, 1, true, DFXT_NORMAL)
};

//#mark Stomp Types Object
STOMPS_OBJ = {
	normal: {
		name: "Stomp",
		my_name: "attack-1",
		identity: ATTACKS_OBJ.stomp,
		disjoint_level: 1,
		extra_damage_per_stomp: 1.5,
		can_bounce_on_teammates: true,
		only_hit_below: true,
		must_be_falling: true,
		hitbox_interaction: "destroy projectiles",
		
		player_function: "stomp_player",
		clone_function: "stomp_clone",
		hitpause_function: "stomp_hitpause",
		hitbox_function: "stomp_projectile",
		parry_function: "stomp_parried"
	},
	ground_pound: {
		name: "Ground Pound",
		my_name: "attack-2",
		identity: ATTACKS_OBJ.ground_pound,
		disjoint_level: 0,
		extra_damage_per_stomp: 3,
		can_bounce_on_teammates: false,
		only_hit_below: false,
		must_be_falling: false,
		hitbox_interaction: "destroy projectiles",
		
		player_function: "pound",
		clone_function: "pound",
		hitpause_function: "pound",
		hitbox_function: "pound",
		parry_function: "pound_parried"
	},
	spin_jump: {
		name: "Spin Jump",
		my_name: "attack-3",
		identity: ATTACKS_OBJ.spin_jump,
		disjoint_level: 2,
		extra_damage_per_stomp: 0,
		can_bounce_on_teammates: true,
		only_hit_below: true,
		must_be_falling: true,
		hitbox_interaction: "bounce",
		
		player_function: "spin_bounce",
		clone_function: "spin_bounce",
		hitpause_function: "spin_hitpause",
		hitbox_function: "spin_hitbox",
		parry_function: "spin_parried"
	},
	statue_fall: {
		name: "Tanooki Statue Fall",
		my_name: "power-7",
		identity: ATTACKS_OBJ.statue_fall,
		disjoint_level: 0,
		base_damage: get_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE),
		extra_damage_per_stomp: 3,
		can_bounce_on_teammates: false,
		only_hit_below: false,
		must_be_falling: false,
		hitbox_interaction: "destroy projectiles",
		
		player_function: "pound",
		clone_function: "pound",
		hitpause_function: "pound",
		hitbox_function: "pound",
		parry_function: "pound_parried"
	}
};

//#mark Stage Compatibility

//ID-based stuff (like floortypes)
var left_x = get_stage_data(SD_X_POS), mid_x = room_width / 2, right_x = room_width - left_x, floor_y = get_stage_data(SD_Y_POS), width = right_x - left_x;
switch(get_stage_data(SD_ID)) { //block, dirt, rock, wood, sand, snow, tree, puddle, ice, agent4_ink
	case 2: //Fire Capital
		default_floortype = FLOORTYPES_OBJ.rock;
		default_floortype_plats = FLOORTYPES_OBJ.wood;
		symm_floorzone(FLOORTYPES_OBJ.rock, left_x + 60, floor_y - 170, left_x + 200, floor_y - 200, false);
	break;
	case 3: //Aerial Armada
		default_floortype = FLOORTYPES_OBJ.metal;
		default_floortype_plats = FLOORTYPES_OBJ.metal;
	break;
	case 4: //Rock Wall
		default_floortype = FLOORTYPES_OBJ.rock;
		default_floortype_plats = FLOORTYPES_OBJ.rock;
	break;
	case 5: //Merchant Port
		default_floortype = FLOORTYPES_OBJ.wood;
		default_floortype_plats = FLOORTYPES_OBJ.metal;
		symm_floorzone(FLOORTYPES_OBJ.wood, left_x + width * 0.315, floor_y - 160, left_x + width * 0.437, floor_y - 180, false);
	break;
	case 1: //Treetop Lodge
		default_floortype = FLOORTYPES_OBJ.wood;
		default_floortype_plats = FLOORTYPES_OBJ.tree;
		make_floorzone(FLOORTYPES_OBJ.wood, right_x - width * 0.39, floor_y - 140, right_x + 2, floor_y - 170, false);
	break;
	case 7: //Blazing Hideout
		default_floortype = FLOORTYPES_OBJ.wood;
		default_floortype_plats = FLOORTYPES_OBJ.wood;
		symm_floorzone(FLOORTYPES_OBJ.metal, left_x, floor_y + 15, left_x + 125, floor_y - 5, false);
	break;
	case 9: //Tempest Peak
		default_floortype = FLOORTYPES_OBJ.rock;
		default_floortype_plats = FLOORTYPES_OBJ.rock;
	break;
	case 10: //Frozen Fortress
		default_floortype = FLOORTYPES_OBJ.snow;
		default_floortype_plats = FLOORTYPES_OBJ.snow;
		if(is_aether_stage())
			symm_floorzone(FLOORTYPES_OBJ.ice, left_x - 10, floor_y - 4, left_x + 100, -20, false);
	break;
	case 8: //Tower of Heaven
		default_floortype = FLOORTYPES_OBJ.block;
		default_floortype_plats = FLOORTYPES_OBJ.block;
	break;
	case 11: //Aethereal Gates
		default_floortype = FLOORTYPES_OBJ.rock;
		default_floortype_plats = FLOORTYPES_OBJ.cloud;
	break;
	case 12: //The Endless Abyss
		default_floortype = FLOORTYPES_OBJ.rock;
		default_floortype_plats = FLOORTYPES_OBJ.rock;
	break;
	case 15: //The Spirit Tree
		default_floortype = FLOORTYPES_OBJ.dirt;
		default_floortype_plats = FLOORTYPES_OBJ.tree;
		if(is_aether_stage())
			centre_floorzone(FLOORTYPES_OBJ.wood, 116, floor_y - 15, floor_y - 160, false);
	break;
	case 19: //The Forest Floor
		default_floortype = FLOORTYPES_OBJ.dirt;
		default_floortype_plats = FLOORTYPES_OBJ.tree;
	break;
	case 20: //Julesvale
		default_floortype = FLOORTYPES_OBJ.block;
		default_floortype_plats = FLOORTYPES_OBJ.metal;
	break;
	case 21: //Troupple Pond
		default_floortype = FLOORTYPES_OBJ.wood;
		default_floortype_plats = is_aether_stage()?FLOORTYPES_OBJ.tree:FLOORTYPES_OBJ.wood;
		centre_floorzone(FLOORTYPES_OBJ.tree, 116, floor_y - 170, floor_y - 200, false);
	break;
	case 17: //Neo Fire Capital
		default_floortype = FLOORTYPES_OBJ.rock;
		default_floortype_plats = FLOORTYPES_OBJ.metal;
	break;
	case 27: //The ROA Ring
		default_floortype = FLOORTYPES_OBJ.rock;
		default_floortype_plats = FLOORTYPES_OBJ.rock;
	break;
	case 18: //The Swampy Estuary
		default_floortype = FLOORTYPES_OBJ.dirt;
		default_floortype_plats = FLOORTYPES_OBJ.rock;
		centre_floorzone(FLOORTYPES_OBJ.rock, 140, floor_y + 10, floor_y - 5, false);
		symm_floorzone(FLOORTYPES_OBJ.wood, mid_x - 135, floor_y - 160, mid_x - 32, floor_y - 180, false);
	break;
	case 23: //Aether High
		default_floortype = FLOORTYPES_OBJ.rock;
		default_floortype_plats = FLOORTYPES_OBJ.rock;
		centre_floorzone(FLOORTYPES_OBJ.puddle, 50, floor_y - 180, floor_y - 200, false);
	break;
	case 26: //The Tutorial Grid
		default_floortype = FLOORTYPES_OBJ.block;
		default_floortype_plats = FLOORTYPES_OBJ.block;
	break;
	case 24: //Pridemoor Keep
		default_floortype = FLOORTYPES_OBJ.rock;
		default_floortype_plats = FLOORTYPES_OBJ.rock;
	break;
	case 14: //The CEO Ring (Thank you Mr. Nart from the ExWorkshop discord!!! <3)
		default_floortype = FLOORTYPES_OBJ.wood;
		default_floortype_plats = FLOORTYPES_OBJ.metal;
	break;
	case 36: //Diamond Grove
		default_floortype = FLOORTYPES_OBJ.rock;
		default_floortype_plats = FLOORTYPES_OBJ.rock;
	break;
	case 22: //Practice Stage
		default_floortype = FLOORTYPES_OBJ.block;
		default_floortype_plats = FLOORTYPES_OBJ.block;
	break;
	case 25: //Frozen Gates
		default_floortype = FLOORTYPES_OBJ.snow;
		default_floortype_plats = FLOORTYPES_OBJ.rock;
	break;
	case 29: //Tetherball Beach
		default_floortype = FLOORTYPES_OBJ.sand;
		default_floortype_plats = FLOORTYPES_OBJ.block;
		centre_floorzone(FLOORTYPES_OBJ.rock, 430, floor_y + 10, floor_y - 10, false);
		symm_floorzone(FLOORTYPES_OBJ.metal, mid_x - 458, floor_y - 340, mid_x - 308, floor_y - 360, false);
	break;
	default:
		default_floortype = FLOORTYPES_OBJ.block;
		default_floortype_plats = FLOORTYPES_OBJ.block;
	break;
}

stage_id = noone;
with(obj_stage_main) {
	// print("Stage found.");
	other.stage_id = id;
	if("dynamic_lights" not in self) dynamic_lights = undefined;
	if("neo_data_compat" not in self) neo_data_compat = {};
	neo_data_compat.mario_is_present = true;
	neo_data_compat.carryable_objects = [];
	neo_data_compat.freezable_objects = [];
	
	if("default_floortype" in neo_data_compat) {
		if(is_string(neo_data_compat.default_floortype))
			other.default_floortype = variable_instance_get(other.FLOORTYPES_OBJ, neo_data_compat.default_floortype, other.FLOORTYPES_OBJ.invalid);
		else other.default_floortype = neo_data_compat.default_floortype;
	}
	if("default_floortype_plats" in neo_data_compat) {
		if(is_string(neo_data_compat.default_floortype_plats))
			other.default_floortype_plats = variable_instance_get(other.FLOORTYPES_OBJ, neo_data_compat.default_floortype_plats, other.FLOORTYPES_OBJ.invalid);
		else
			other.default_floortype_plats = neo_data_compat.default_floortype_plats;
	}
	
	var debugging_floorzones = variable_instance_get(neo_data_compat, "debug_floorzones", false);
	if("make_floorzones" in neo_data_compat) with(other) {
		for(var incrementeroo = 0, total = array_length(other.neo_data_compat.make_floorzones); incrementeroo < total; incrementeroo++;) {
			var on_floorzone = other.neo_data_compat.make_floorzones[incrementeroo];
			make_floorzone(on_floorzone.type, on_floorzone.x1, on_floorzone.y1, on_floorzone.x2, on_floorzone.y2, debugging_floorzones);
		}
	}
	if("symm_floorzones" in neo_data_compat) with(other) {
		for(var incrementeroo = 0, total = array_length(other.neo_data_compat.symm_floorzones); incrementeroo < total; incrementeroo++;) {
			var on_floorzone = other.neo_data_compat.symm_floorzones[incrementeroo];
			symm_floorzone(on_floorzone.type, on_floorzone.x1, on_floorzone.y1, on_floorzone.x2, on_floorzone.y2, debugging_floorzones);
		}
	}
	if("centre_floorzones" in neo_data_compat) with(other) {
		for(var incrementeroo = 0, total = array_length(other.neo_data_compat.centre_floorzones); incrementeroo < total; incrementeroo++;) {
			var on_floorzone = other.neo_data_compat.centre_floorzones[incrementeroo];
			centre_floorzone(on_floorzone.type, on_floorzone.halfwidth, on_floorzone.y1, on_floorzone.y2, debugging_floorzones);
		}
	}
}

STAGE_COMPAT_OBJ = {
	//got_hit.gml
	damage_on_deathstate: stage_has_variable("death2"), //Shadow City and Fog Island stages
	
	//update.gml
	start_with_tanooki: stage_is_id(2335463767), //Round Sky stage
	
	//article2_update.gml; articlesolid_update.gml
	desynced_camera: stage_has_variable("follow_player")
}

//#mark Runes Object
RUNES_OBJ = {
	a: has_rune("a"),	//Mega Rush: Attack power is doubled when in peril
	b: has_rune("b"),	//Coin Boots: Stomp attacks against players yield 1 coin each
	c: has_rune("c"),	//Reserve Reward: Point rewards are sent to an extra Reserve slot
	d: has_rune("d"),	//Extended Roulette: Shells, keys, and heavy stones are added to the Roulette
	e: has_rune("e"),	//Safe Roulette: Bowsers and Mushrooms are removed from the Roulette
	f: has_rune("f"),	//Safe Reserve: Reserve items can't be stolen by enemies
	
	g: has_rune("g"),	//Walkies: No revert when walk only
	h: has_rune("h"),	//Coin Rush: All coin earnings are multiplied by 1.5x (rounding up)
	i: has_rune("i"),	//Hooray: +1 coin for every two seconds spent crouching
	j: has_rune("j"),	//Mushroom Stone: Obtain Super Mushrooms instead of coins
	k: has_rune("k"),	//Weak opponents are instantly defeated by stomp attacks
	
	l: has_rune("l"),	//Shiny yet Deadly: Don't lose a stock if you die without collecting any coins
	m: has_rune("m"),	//Junior Reserve: Start every stock with one of everything in Reserve
	n: has_rune("n"),	//Stock Reserve: Start the match with a 1Up Mushroom in Reserve
	o: has_rune("o")	//Quartz Charm: Shining source of power
};

//#mark Demo Objects
// DEMO_CHAR_OBJ = {
// 	mario: CHAR_OBJ.mario,
// 	luigi: CHAR_OBJ.luigi,
// 	blue_toad: CHAR_OBJ.blue_toad,
// 	toadette: CHAR_OBJ.toadette,
// 	yellow_toad: CHAR_OBJ.yellow_toad,
// };
// DEMO_POWER_OBJ = {
// 	depowered: POWER_OBJ.depowered,
// 	super_mushroom: POWER_OBJ.super_mushroom,
// 	fire_flower: POWER_OBJ.fire_flower,
// 	ice_flower: POWER_OBJ.ice_flower,
// 	tanooki_leaf: POWER_OBJ.tanooki_leaf
// }
// DEMO_RESERVE_OBJ = {
// 	empty: RESERVE_OBJ.empty,
// 	super_mushroom: RESERVE_OBJ.super_mushroom,
// 	fire_flower: RESERVE_OBJ.fire_flower,
// 	ice_flower: RESERVE_OBJ.ice_flower,
// 	tanooki_leaf: RESERVE_OBJ.tanooki_leaf,
// 	red_koopa_shell: RESERVE_OBJ.red_koopa_shell,
// 	green_koopa_shell: RESERVE_OBJ.green_koopa_shell,
// 	starman: RESERVE_OBJ.starman,
// 	oneup_mushroom: RESERVE_OBJ.oneup_mushroom
// }

#define symm_floorzone(type, x1, y1, x2, y2, debug)
	return([make_floorzone(type, x1, y1, x2, y2, debug), make_floorzone(type, room_width - x1, y1, room_width - x2, y2, debug)]);

#define centre_floorzone(type, halfwidth, y1, y2, debug)
	return(make_floorzone(type, (room_width / 2) - halfwidth, y1, (room_width / 2) + halfwidth, y2, debug));

#define make_floorzone(type, x1, y1, x2, y2, debug)
	if(is_string(type)) type = variable_instance_get(FLOORTYPES_OBJ, type, FLOORTYPES_OBJ.invalid);
	var floor_zone = instance_create(round((x1 + x2) / 2), round((y1 + y2) / 2), "obj_article1");
	floor_zone.variant = "floortype zone"; floor_zone.subvariant = type; floor_zone.visible = false;
	floor_zone.x1 = min(x1, x2); floor_zone.y1 = min(y1, y2); floor_zone.x2 = max(x1, x2); floor_zone.y2 = max(y1, y2);
	
	if(debug) {
		floor_zone.x = x1; floor_zone.y = y1; floor_zone.image_xscale = x2 - x1; floor_zone.image_yscale = y2 - y1;
		floor_zone.visible = true; floor_zone.sprite_index = sprite_get("pmask_pixel"); floor_zone.image_alpha = 0.5; floor_zone.depth = -2000;
	}
	
	return(floor_zone);

#define stage_has_variable(name) return(stage_get_variable(name) != undefined);
#define stage_get_variable(name) return(instance_exists(stage_id)?variable_instance_get(stage_id, name):undefined);
#define stage_is_id(val) return(get_stage_data(SD_ID) == `t\383980\${val}`);

#define generate_attack_obj
/// generate_attack_obj(name, attack, hbox_num, player_dependent_fx = false, destroy_fx_type = DFXT_INDESTRUCTIBLE)
var name = argument[0], attack = argument[1], hbox_num = argument[2];
var player_dependent_fx = argument_count > 3 ? argument[3] : false;
var destroy_fx_type = argument_count > 4 ? argument[4] : DFXT_INDESTRUCTIBLE;
	var new_attack_obj = {
		name: name,
		my_name: "unknown-unknown",
		
		fx: -1,
		fx_array: array_create(5, -1),
		destroy_fx: -1,
		destroy_fx_array: array_create(5, -1),
		
		url: url,
		attack: attack,
		hbox_num: hbox_num
	};
	
	var my_name_prefix = string(attack);
	if(attack == AT_NSPECIAL) my_name_prefix = "attack-";
	if(attack == AT_DSPECIAL) my_name_prefix = "power-";
	if(attack == AT_USPECIAL) my_name_prefix = "item-";
	new_attack_obj.my_name = my_name_prefix + string(hbox_num);
	
	new_attack_obj.player_dependent_fx = player_dependent_fx;
	if(player_dependent_fx) {
		new_attack_obj.fx_array = generate_fx_array(new_attack_obj, false);
		new_attack_obj.fx = new_attack_obj.fx_array[player];
	}
	else {
		new_attack_obj.fx = hit_fx_create(sprite_get("misc_invisiboy"), 1);
		new_attack_obj.fx_array = array_create(5, new_attack_obj.fx);
		variable_instance_set(HIT_FX_KEYS_OBJ, string(new_attack_obj.fx), [new_attack_obj, false, player]);
	}
	
	new_attack_obj.destroy_fx_type = destroy_fx_type;
	if(destroy_fx_type == DFXT_PLAYER_DEPENDENT) {
		new_attack_obj.destroy_fx_array = generate_fx_array(new_attack_obj, true);
		new_attack_obj.destroy_fx = new_attack_obj.destroy_fx_array[player];
	}
	else if(destroy_fx_type == DFXT_NORMAL) {
		new_attack_obj.destroy_fx = hit_fx_create(sprite_get("misc_invisiboy"), 1);
		new_attack_obj.destroy_fx_array = array_create(5, new_attack_obj.destroy_fx);
		variable_instance_set(HIT_FX_KEYS_OBJ, string(new_attack_obj.destroy_fx), [new_attack_obj, true, player]);
	}
	
	return(new_attack_obj);

//DFXT is short for Destroy FX Type :)
#macro DFXT_INDESTRUCTIBLE 0
#macro DFXT_NORMAL 1
#macro DFXT_PLAYER_DEPENDENT 2

#define generate_fx_array(attack_identity, destroyed)
	var hit_fx_array = [
		hit_fx_create(sprite_get("misc_invisiboy"), 1),	//Player 0
		hit_fx_create(sprite_get("misc_invisiboy"), 1),	//Player 1
		hit_fx_create(sprite_get("misc_invisiboy"), 1),	//Player 2
		hit_fx_create(sprite_get("misc_invisiboy"), 1),	//Player 3
		hit_fx_create(sprite_get("misc_invisiboy"), 1)	//Player 4
	];
	variable_instance_set(HIT_FX_KEYS_OBJ, string(hit_fx_array[0]), [attack_identity, destroyed, 0]);
	variable_instance_set(HIT_FX_KEYS_OBJ, string(hit_fx_array[1]), [attack_identity, destroyed, 1]);
	variable_instance_set(HIT_FX_KEYS_OBJ, string(hit_fx_array[2]), [attack_identity, destroyed, 2]);
	variable_instance_set(HIT_FX_KEYS_OBJ, string(hit_fx_array[3]), [attack_identity, destroyed, 3]);
	variable_instance_set(HIT_FX_KEYS_OBJ, string(hit_fx_array[4]), [attack_identity, destroyed, 4]);
	
	//We could make it so that any particular Endless Abyss CPU can receive points, coins, extra lives, etc...
	//But that's completely pointless. Endless Abyss CPUs will never be Qua Mario instances, so they can't get points or coins.
	//Even Shovel Knight, while he can collect coins, doesn't have any use for them since the Abyss CPU doesn't shop.
	//And I'm like 99% sure that giving an extra life to an Abyss CPU won't do anything.
	//It'd be pointless anyways - new ones are constantly spawning, so if one respawns it doesn't really mean anything.
	//But let it be on record that, if there were any reason to, I could ABSOLUTELY make it so that Endless Abyss CPUs
	//can earn coins and such.
	if(false && is_endless_abyss_mode) {
		array_push(hit_fx_array, [
			hit_fx_create(sprite_get("misc_invisiboy"), 1),	//Player 5
			hit_fx_create(sprite_get("misc_invisiboy"), 1),	//Player 6
			hit_fx_create(sprite_get("misc_invisiboy"), 1),	//Player 7
			hit_fx_create(sprite_get("misc_invisiboy"), 1),	//Player 8
			hit_fx_create(sprite_get("misc_invisiboy"), 1),	//Player 9
			hit_fx_create(sprite_get("misc_invisiboy"), 1)	//Player 10
		]);
		variable_instance_set(HIT_FX_KEYS_OBJ, string(hit_fx_array[5]), [attack_identity, destroyed, 5]);
		variable_instance_set(HIT_FX_KEYS_OBJ, string(hit_fx_array[6]), [attack_identity, destroyed, 6]);
		variable_instance_set(HIT_FX_KEYS_OBJ, string(hit_fx_array[7]), [attack_identity, destroyed, 7]);
		variable_instance_set(HIT_FX_KEYS_OBJ, string(hit_fx_array[8]), [attack_identity, destroyed, 8]);
		variable_instance_set(HIT_FX_KEYS_OBJ, string(hit_fx_array[9]), [attack_identity, destroyed, 9]);
		variable_instance_set(HIT_FX_KEYS_OBJ, string(hit_fx_array[10]), [attack_identity, destroyed, 10]);
	}
	
	return(hit_fx_array);

/*
CREDITS
Mario, Luigi, Toad, and Toadette:
	Super Mario World Super Sheet Collab
	- GlacialSiren484
	- MauricioN64
	- SubPixel
	- AwesomeZack
	- Jamestendo
Wario:
	- Remy
Hop-Chop:
	- utytft
*/