//

/*
card_nice_throw = { //Don't put this in the item set
    name : "Nice Throw!",
    //raw : "card_nice_throw",
    desc : "Locked out of items this round. Reset Positive Luck to 0.",
    small_desc : "Reset Positive Luck to 0.",
    max : 999,
    rarity : "X",
	sprite : sprite_get("icons"),
    icon : 112
}
*/

//Commons
card_common_luck = {
	name : "Crazy Luck",
	//raw : "card_common_luck",
	desc : "+Gacha Luck " + "(" + string(ror_luck_c * luck_point_scaling) + ")",
	flavor : "Prioritized when Printing at the Brook Bazaar",
	max : 999,
	rarity : "C",
	can_scrap : false,
	sprite : sprite_get("icons"),
	icon : 38
}

card_run_up = {
	name : "Fast Movement",
	desc : "+Ground Speed",
	//flavor : "I'm Ready. I'm Ready",
	max : 3,
	rarity : "C",
	sprite : sprite_get("icons"),
	icon : 5
}

card_friction_down = {
	name : "Lower Friction",
	desc : "-Ground Friction",
	max : 3,
	rarity : "C",
	sprite : sprite_get("icons"),
	icon : 92
}

card_fallspeed_down = {
	name : "Floaty Faller",
	desc : "Less Max Fall Speed",
	max : 5,
	rarity : "C",
	sprite : sprite_get("icons"),
	icon : 80
}

card_better_rolls = {
    name : "Better Rolls",
    desc : "+Roll and ++Tech Roll Distance",
    max : 5,
    rarity : "C",
	sprite : sprite_get("icons"),
    icon : 9
}

card_pity = {
    name : "Lottery Loser",
    desc : "Guarantee a Legendary Next Round. Lose Luck " + "(" + string(-10 * luck_point_scaling) + ") on pick up",
    small_desc : "Rig Next Gacha, -Luck on pick up",
	flavor : "Loss of Luck stays on Scrapping",
    max : 999,
    rarity : "C",
	sprite : sprite_get("icons"),
    icon : 57
}

card_jump = {
    name : "Jump Man",
    desc : "+Jump Height",
	//flavor : "Yahoo. Yahoo, Yahoo Yayayayayayayahoo",
    max : 3,
    rarity : "C",
	sprite : sprite_get("icons"),
    icon : 65
}

card_air_control = {
    name : "Air Control",
    desc : "+Air Acceleration",
    max : 3,
    rarity : "C",
	sprite : sprite_get("icons"),
    icon : 60
}

card_further_airdodge = {
    name : "Aerial Evasion",
    desc : "+Airdodge Distance",
	flavor : "Also effects Air Dash",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 117
}

card_crowbar = {
    name : "Crowbar",
    desc : "Opponents at or under 15% Health take 1.75x damage",
    small_desc : "Opponents <=15, Take 75%+ DMG",
    max : 10,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 114
}


card_quick_repair = {
    name : "Quick Repair",
    desc : "Heal 10% Upon Reaching 100% for the first time",
    small_desc : "Heal 10% Once at 100%",
    max : 10,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 142,
}

card_spam_mail  = {
    name : "Spam Mail",
    desc : "++Luck. Always have Spam Mail in the 5th slot" + " (" + string(5 * luck_point_scaling) + ")",
    small_desc : "++Luck. Get more Spam Mail" + " (" + string(5 * luck_point_scaling) + ")",
	flavor : "Always means Always. Cannot be Rerolled (If Chosen)",
    max : 999,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 166,
}

card_new_adventure = {
    name : "New Adventure",
    desc : "+1 Gacha Reroll. +1 Max Reroll",
    max : 999,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 180,
}

card_funky_tea = {
    name : "Funky Tea",
    desc : "+++Luck, but there's a weird after taste. Best not to think about it. " + "(" + string(ror_luck_funky_tea * luck_point_scaling) + ")",
    small_desc : "+++Luck, but feel a bit off balance. " + "(" + string(ror_luck_funky_tea * luck_point_scaling) + ")",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 143,
}

/*
card_infection = {
    name : "Infection",
	//desc : "Start with 1 Poison that transfers on hit",
    desc : "+1 Base DMG when Poisoned. Start Poisoned",
    //desc : "Start with 1 Poison that transfers on hit. +1 DMG per Poison on Opponents",
    //small_desc : "Start with Transfer Poison. +1 DMG per",
    small_desc : "+1 DMG when Poisoned. Poisoned",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 15,
}
*/


card_active_proj = {
    name : "Made of Honor",
    desc : "+20% Projectile Active Time",
    max : 10,
    rarity : "C",
	sprite : sprite_get("icons"),
    icon : 183
}

card_higher_wall_jump = {
    name : "Wall Jump Gaming",
    desc : "+Wall Jump Height",
    max : 3,
    rarity : "C",
	sprite : sprite_get("icons"),
    icon : 83
}

card_mystery_egg = {
    name : "Mystery Egg",
    desc : "Next Round: Drop an Epic Mystery Egg after 10 Seconds",
    small_desc : "Next Round: Drop Epic Mystery Egg",
	flavor : "If unclaimed: Winner of Round gets Item",
    max : 999,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 71
}

card_consume = {
    name : "Consume Nutrients",
    //desc : "Taunt during game to heal 100% by consuming a random Buddy",
    desc : "Taunt during game to heal flat 25%. Turns into Crazy Luck after use.",
	//small_desc : "Taunt heals and destroys an item",
	small_desc : "Taunt heals and Replace with 1 Luck",
    max : 10,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 155
}

card_parry_iframes = {
    name : "Feeling Ghoulish",
    desc : "20% More Invincibility from Parry and Items",
    //desc : "+12 Frames of invincibility after landing a parry",
    small_desc : "20% More Item / Parry Invincibility",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 226
}

card_lower_pratland = {
    name : "Lower Pratland",
    desc : "-Pratland Time",
	flavor : "Cannot go below 3",
    max : 3,
    rarity : "C",
	sprite : sprite_get("icons"),
    icon : 40
}


card_quick_drop = {
    name : "Quick Drop",
    desc : "+Fastfall Speed",
    max : 3,
    rarity : "C",
	sprite : sprite_get("icons"),
    icon : 75
}

card_discord_ping = {
    name : "Discord Ping",
    desc : "5x Damage on Taunt or +50% DMG Multiplier on Next Attack after Taunting",
    small_desc : "5x Taunt DMG or +50% Next Attack",
	
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 139
}

card_shifting_strongs = {
    name : "Shifting Strongs",
    desc : "Allow horizontal movement while charging strongs",
	flavor : "Stacks with Ground Speed items",
    small_desc : "Allow Movement for Strongs",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 145,
}

card_invisible_dodges = {
    name : "Night Seclusion",
    desc : "+Invisible Dodges",
	flavor : "Includes Rolls, Teches, Airdodge. Doesn't include Air Dash",
    max : 1,
    rarity : "C",
	sprite : sprite_get("icons"),
    icon : 17
}

card_more_walljumps = {
    name : "Platforming Pro",
    desc : "+Max Walljump Count",
    max : 3,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 21
}

card_fast_waveland = {
    name : "Fast Wavedash",
    desc : "+Waveland Speed",
    max : 5,
    rarity : "C",
	sprite : sprite_get("icons"),
    icon : 129
}

card_single_reroll = {
    name : "Micro Manage",
    desc : "Rerolls only Reroll the selected Item. +1 Reroll Each Round",
    small_desc : "Reroll only Selected. +1 Reroll Each Round",
    flavor : "Capped at Max Rerolls",
    max : 5,
    rarity : "C",
	sprite : sprite_get("icons"),
    icon : 171
}

card_pawn = {
    name : "Pawn",
    desc : "Promotes to a Random Legendary after 5 Rounds Wins",
    small_desc : "Promotes after 5 Rounds Wins",
    //small_desc : "Reroll only Selected. +1 Reroll Each Round",
    flavor : "Cannot En Passant",
	ror_pawn_rank : 5, //5 by Default
    max : 8,
    rarity : "C",
	sprite : sprite_get("icons"),
    icon : 244
}

card_grass_knot = {
    name : "Grass Knot",
    desc : "Damage Multiplier Increases / Decreases by Opponent's Weight",
    small_desc : "Damage +/- by Opponent's Weight",
	flavor : "Pick this if you see a number below 1. 10% Per .1 knockback_adj.",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 191
}

card_square = {
    name : "Squared",
    desc : "Gain Damage Multipler equal to the Number of 'Squared' Squared",
    small_desc : "Square +1% DMG Multi per Stack",
	flavor : "1*1 = +1% | 5*5 = +25% | 10*10 = +100%",
    max : 10,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 13
}

card_floatation_device = {
    name : "Floatation Device",
    desc : "While 'Seafloor' is Active: Wear a Temporary Floatation Device",
    small_desc : "Floats in Seafloor's Water",
	flavor : "Waves appear if anyone has this item. Without one you'll drown",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 285
}

card_floor_lava = {
    name : "The Floor is Lava",
    desc : "+++Luck, Damage over Time on Ground " + "(" + string(ror_luck_funky_tea * luck_point_scaling) + ")",
    small_desc : "+++Luck, DoT on Ground " + "(" + string(ror_luck_funky_tea * luck_point_scaling) + ")",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 254,
}

card_reckless_greed = {
    name : "Reckless Greed",
    desc : "+++Luck, Take 25% More Damage " + "(" + string(ror_luck_funky_tea * luck_point_scaling) + ")",
    small_desc : "+++Luck, Take 25% More DMG " + "(" + string(ror_luck_funky_tea * luck_point_scaling) + ")",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 249,
}

card_glasses = {
    name : "Lens-Maker's", //Lens-Maker's Glasses
    desc : "10% Chance to Double Damage after Multipliers",
    small_desc : "10% Chance to Crit",
	flavor : "The full name 'Lens-Maker's Glasses' wouldn't fit",
    max : 10,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 299,
}


card_vert_weight = {
    name : "Vertical Weight",
    desc : "+Hitstun Gravity (Increases Survivability off the Top)",
    small_desc : "+Hitstun Gravity",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 87
}

card_hori_weight = {
    name : "Horizontal Weight",
    desc : "+Air Friction (Increases Survivability off the Side)",
    small_desc : "+Air Friction",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 98
}

card_cling = {
    name : "Wall Cling",
    desc : "Gain the ability to Wall Cling (+30 Frames per Stack)",
    small_desc : "Gain the ability to Wall Cling",
	flavor : "Characters with Wall Cling already gain +30f instead",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 96
}

card_crouch_jump = {
    name : "Leap of Faith",
    desc : "Gain the ability to Crouch Jump",
    small_desc : "Gain a Crouch Jump",
	flavor : "Extra Height per Card",
    max : 3,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 202
}

card_parry_heal = {
    name : "Green Thumb",
	//desc : "Heal 0.5x of the damage you would have taken on a successful parry (+0.25x per stack)",
    desc : "Heal 5% on a Succesful Parry",
	flavor : "Parrying a Jab does not Apply Effects",
    //small_desc : "Heal % on parry",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 45
}

card_nice_throw = { //Don't put this in the item set
    name : "Nice Throw!",
    desc : "Dying at 0% respawns you at 999%",
    small_desc : "Dying at 0% Respawns at 999%",
    max : 1,
    rarity : "C",
	sprite : sprite_get("icons"),
    icon : 112
}

//Install Items
card_install_speed = {
    name : "Burst of Speed",
    desc : "+Movement Speed after activating Rogue Install",
    small_desc : "+Movement Speed with install",
    flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 3,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 25
}

card_install_dmg = {
    name : "Reaper's Impulse",
    desc : "25% Damage Multiplier after activating Rogue Install",
    small_desc : "25% DMG Multi with install",
    flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 181
}

card_install_weight = {
    name : "Sturdy Buildup",
    desc : "++Weight after activating Rogue Install (+Weight with stacks)",
    small_desc : "++Weight with install (+ on Stacks)",
    flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 3,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 53
}

card_install_fast_food = {
    name : "Fast Food",
    desc : "Start of Round: Gain 20 Rogue Meter. Install Time -1 Second",
    small_desc : "Start: +20 Meter. -1 Second Install",
	//small_desc : "+20 Rogue Meter, -60f Duration",
    flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 35
}

card_install_charge_champ = {
    name : "Charge Champ",
    desc : "Increase Rogue Meter gain by +1",
    flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 3,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 148
}

card_install_abyss_boost = {
    name : "Boost of the Abyss",
    desc : "Increase Rogue Meter gain by 1.2x",
    flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 113
}

card_install_infection = {
    name : "Infection",
    desc : "Gain 3 Rogue Meter on Consuming 4 Poison",
    small_desc : "Gain 3 Meter on Consuming Poison",
	flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 15,
}

card_install_light_training = {
    name : "Light Training",
    desc : "+1 Base Damage after activating Rogue Install",
    small_desc : "+1 Base DMG with install",
    flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 3,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 19
}


card_install_static = {
    name : "Static Buildup",
    desc : "Gain a little Rogue Install Meter when Dash Dancing or Wavedashing",
    small_desc : "Rogue Install Meter on Dash Dance",
	flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 28
}

/*
card_cubed = {
    name : "Cubed",
    desc : "Gain Damage Multipler equal to 'Cubed' Cubed",
    small_desc : "Cube +1% DMG Multi per Stack",
	flavor : "1^3 = +1% | 3^3 = +27% | 5^3 = +125%",
    max : 5,
    rarity : "C",
    sprite : sprite_get("icons"),
    icon : 13
}
*/


/*
card_jevil_deal = {
    name : "Deal with The Jevil",
    desc : "Gain 50 Luck. -10 Luck Every Round you Win",
    small_desc : "Gain 50 Luck. -10 Luck Every Round you Win",
    flavor : "Cannot be Scrapped",
    max : 1,
    can_scrap : false,
    printer_safe : false,
    rarity : "C",
	sprite : sprite_get("icons"),
    icon : 70
}
*/

//Bad Items
array_push(items_bad_pool, card_funky_tea); //Funky Tea
array_push(items_bad_pool, card_spam_mail); //Funky Tea
array_push(items_bad_pool, card_floor_lava); //Funky Tea
array_push(items_bad_pool, card_reckless_greed); //Funky Tea
//

//Mandatory otherwise the game WILL CRASH
create_item(card_common_luck);
switch(item_pool_set) {
	default: //All items
		create_item(card_run_up);
		create_item(card_friction_down);
		create_item(card_fallspeed_down);
		create_item(card_better_rolls)
		create_item(card_pity)
		create_item(card_jump)
		create_item(card_air_control)
		create_item(card_further_airdodge)
		create_item(card_crowbar)
		create_item(card_quick_repair)
		//create_item(card_reconstruct)
		create_item(card_spam_mail)
		create_item(card_new_adventure)
		create_item(card_funky_tea)
		//create_item(card_infection)
		//create_item(card_bottled_up);
		create_item(card_active_proj);
		create_item(card_higher_wall_jump);
		create_item(card_mystery_egg);
		//create_item(card_clean_sweep);
		create_item(card_grass_knot);
		create_item(card_consume);
		create_item(card_parry_iframes);
		//create_item(card_tidal_flow);
		create_item(card_lower_pratland);
		create_item(card_quick_drop);
		create_item(card_discord_ping);
		create_item(card_shifting_strongs);
		create_item(card_invisible_dodges);
		create_item(card_more_walljumps);
		create_item(card_fast_waveland);
		create_item(card_single_reroll);
		create_item(card_pawn);
		create_item(card_square);
		create_item(card_floor_lava);
		create_item(card_reckless_greed);
		create_item(card_glasses);
		create_item(card_vert_weight);
		create_item(card_hori_weight);
		create_item(card_cling);
		create_item(card_crouch_jump);
		create_item(card_parry_heal);
		create_item(card_nice_throw);
		//create_item(card_jevil_deal);
		
		//Biome Specific Items
		//create_item(card_floatation_device);
		//
		
		//Install Based Items
		create_item(card_install_speed);
		create_item(card_install_dmg);
		create_item(card_install_weight);
		create_item(card_install_light_training);
		create_item(card_install_fast_food);
		create_item(card_install_charge_champ);
		create_item(card_install_abyss_boost);
		create_item(card_install_infection)
		create_item(card_install_static);
		//FFA items
		if (array_length(main_players) > 2 || practice_mode) {
			print("FFA Commons")
			//create_item(card_daora);
		}
	break;
	
	case "dino": //Items that DinoBros Made for the gamemode
		create_item(card_run_up);
		create_item(card_pity)
		create_item(card_jump)
		create_item(card_crowbar)
		create_item(card_quick_repair)
		//create_item(card_reconstruct)
		create_item(card_spam_mail)
		create_item(card_new_adventure)
		create_item(card_funky_tea)
		create_item(card_active_proj);
		create_item(card_higher_wall_jump);
		create_item(card_mystery_egg);
		//create_item(card_clean_sweep);
		create_item(card_consume);
		create_item(card_grass_knot);
		create_item(card_discord_ping);
		create_item(card_single_reroll);
		create_item(card_pawn);
		create_item(card_square);
		create_item(card_reckless_greed);
		create_item(card_glasses);
		create_item(card_vert_weight);
		create_item(card_hori_weight);
		create_item(card_cling);
		create_item(card_nice_throw);
		//Install Items
		create_item(card_install_fast_food);
		create_item(card_install_infection)
		create_item(card_install_static);
		//Biome Specific Items
		//create_item(card_floatation_device);
		//
		
		//FFA items
		if (array_length(main_players) > 2 || practice_mode) {
			print("FFA Commons")
			//create_item(card_daora);
		}
	break;
	case "tdude": //Items that tdude Made for the gamemode
		create_item(card_friction_down);
		create_item(card_fallspeed_down);
		create_item(card_better_rolls);
		create_item(card_air_control);
		create_item(card_further_airdodge);
		//create_item(card_bottled_up);
		create_item(card_parry_iframes);
		//create_item(card_tidal_flow);
		create_item(card_lower_pratland);
		create_item(card_quick_drop);
		create_item(card_shifting_strongs);
		create_item(card_invisible_dodges);
		create_item(card_more_walljumps);
		create_item(card_fast_waveland);
		create_item(card_floor_lava);
		create_item(card_crouch_jump);
		create_item(card_parry_heal);
		
		//Install Based Items
		create_item(card_install_speed);
		create_item(card_install_dmg);
		create_item(card_install_weight);
		create_item(card_install_light_training);
		create_item(card_install_charge_champ);
		create_item(card_install_abyss_boost);
	break;
	case "empty":	
	break;
	case "bad items":
		create_item(card_funky_tea); //Funky Tea
		create_item(card_spam_mail); //Funky Tea
		create_item(card_floor_lava); //Funky Tea
		create_item(card_reckless_greed); //Funky Tea
	break;
	case "custom": //Adds nothing	
		for (var i = 0; i < array_length(items_custom_commons); i++) {
			if (items_custom_commons[i, 1] == true) {
				create_item(items_custom_commons[i, 0]);
			}
		}
	break;
}


//Dead Code later
#define create_item(_item) {
	//
	if (get_gameplay_time() <= 3) {
		array_push(items_all, _item);
		//array_push(items_lang_all, object_get_name(_item));
		//print(_item);
		_item.real = true;
	}
	//
	switch(_item.rarity) {
		case "c":
		case "C":
		case "common":
		case "Common":
			array_push(items_commons, _item);
			if (get_gameplay_time() <= 3) {
				array_push(items_custom_commons, [_item, true]);
			}
		break;
		case "r":
		case "R":
		case "rare":
		case "Rare":
			array_push(items_rares, _item)
			if (get_gameplay_time() <= 3) {
				array_push(items_custom_rares, [_item, true]);
			}
		break;
		case "e":
		case "E":
		case "epic":
		case "Epic":
			array_push(items_epics, _item)
			if (get_gameplay_time() <= 3) {
				array_push(items_custom_epics, [_item, true]);
			}
		break;
		case "l":
		case "L":
		case "legendary":
		case "Legendary":
			array_push(items_legends, _item)
			if (get_gameplay_time() <= 3) {
				array_push(items_custom_legends, [_item, true]);
			}
		break;
	}
}