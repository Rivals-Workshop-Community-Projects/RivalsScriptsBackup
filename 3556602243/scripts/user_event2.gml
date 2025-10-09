//Rares
card_rare_luck = {
	name : "Crazy Luck+",
	desc : "++Gacha Luck " + "(" + string(ror_luck_r * luck_point_scaling) + ")",
	flavor : "Prioritized when Printing at the Brook Bazaar",
	max : 999,
	rarity : "R",
	can_scrap : false,
	sprite : sprite_get("icons"),
	icon : 38
}

card_weight_up = {
	name : "Weight Up",
	desc : "++Weight",
	flavor : "Cannot go lower than .05",
	max : 3,
	rarity : "R",
	sprite : sprite_get("icons"),
	icon : 4
}

card_spike_buff = {
    name : "Meteor Master",
    desc : "+Spike Knockback",
    max : 3,
    rarity : "R",
	sprite : sprite_get("icons"),
    icon : 22
}


card_doc_orders = {
    name : "Doctor's Orders",
    desc : "+Knockback on strong upwards attacks",
	small_desc : "+KB on Strong Up ATKs",
    max : 3,
    rarity : "R",
	sprite : sprite_get("icons"),
    icon : 107
}

card_less_landing_lag = {
    name : "Light Landing",
    desc : "-Landing Lag for All Attacks",
	flavor : "Attacks cannot go below 1",
    max : 3,
    rarity : "R",
	sprite : sprite_get("icons"),
    icon : 111
}

card_joycon_drift = {
    name : "Joycon Drift",
    desc : "Automatically drift forwards",
    max : 3,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 131
}
	
card_lower_gravity = {
    name : "Lower Gravity",
    desc : "-Gravity",
    max : 3,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 20
}
	
card_jailfree = {
    name : "Get out of Jail Free",
	// desc : "Once per Round take no parrystun from getting parried. Jail Nearby Attackers.",
    desc : "Once per Round take no parrystun from getting parried.",
	//small_desc : "+1 No Parrystun. Put Nearby Opp in Jail.",
	small_desc : "+1 No Parrystun",
    max : 5,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 62
}	

card_risk_band = {
    name : "Torus' Ring",
    desc : "Damage over 400% Base Damage gains an extra 50% Multi Per Stack",
	small_desc : "DMG Over 4x Base, +50% DMG Multi",
	flavor : "Example: Jab dealing 3 Damage deals Extra if you deal 12+ Damage",
    max : 5,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 79
}

card_horizontal_kb = {
    name : "Rough Guy",
    desc : "+Knockback on strong horizontal attacks",
	small_desc : "+KB  on Horizontal ATKs",
    max : 3,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 124
}

card_batter_up = {
    name : "Batter Up!",
    desc : "+Projectile Base Damage",
    max : 3,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 29
}

card_physical_hit_damage = {
    name : "Heavy Hitter",
    desc : "+Physical Hit Base Damage",
    max : 3,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 72
}


card_start_up = {
    name : "Affordable Start Up",
    desc : "Permanently Lower Start Up of Next Attack by 3",
    small_desc : "Perma Lower Start Up of an Attack by 3",
	flavor : "Scrapping removes buffs in order of Usage",
    max : 999,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 49,
    buff_start_amount : 0,
    buff_start_attack : -4
}

card_whiff_removal = {
    name : "W Cancel",
    desc : "Permanently Removes Whifflag of Next Attack",
    small_desc : "Remove Whifflag of Next Attack",
	flavor : "Scrapping removes buffs in order of Usage",
    max : 999,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 39,
    buff_whiff_attack : -4
}

card_damage_plus = {
    name : "Damage Buff",
    desc : "Permanently increase Damage of Next Attack",
    small_desc : "Perma Damage Buff Next Attack",
	flavor : "Scrapping removes buffs in order of Usage",
    max : 999,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 6,
    buff_dmg_amount : 0,
    buff_dmg_attack : -4
}


card_growth = {
    name : "Sugar Rush",
    desc : "Better Moonwalk Speed and Dash Start Time",
    small_desc : "+Moonwalk",
    max : 5,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 141
}

card_nap_time = {
	name : "Nap Time",
	desc : "Heal 1 every .5 seconds after 1 second of being Idle",
	small_desc : "Heal 1 after Idling for 1s Every .5s",
	max : 5,
	rarity : "R",
	sprite : sprite_get("icons"),
	icon : 61
}


card_bio = {
    name : "Biological Weapon",
    desc : "Fully Charged Strongs apply 4 Stacks of Poison. Poison Deals 200% More Damage.",
    small_desc : "Full Strongs apply Poison. Poison +200%",
    max : 5,
    rarity : "R",
	sprite : sprite_get("icons"),
    icon : 58
}

card_proj_bounce = {
    name : "Ricochet",
    desc : "Projectiles Bounce off of Walls and Ground",
	flavor : "May break some Projectiles",
    small_desc : "Projectiles Bounce",
    max : 1,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 126
}

/*
card_cold_embrace = {
    name : "Cold Embrace",
    desc : "Hitting Opponents during a Missed Parry Stuns Them",
    small_desc : "Stun Opponents on Missed Parry",
	flavor : "Doesn't apply on Whiteline/Galaxy",
    max : 5,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 152
}
*/


card_parry_cooldown = {
    name : "Regenerative Shell",
    desc : "-Parry Cooldown (-4 Frames per Stack)",
    small_desc : "-Parry Cooldown",
    max : 5,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 217
}

card_spicy = {
    name : "Spicy",
    desc: "Your Burns deals 200% More Damage",
	flavor : "Effects Self Burn too",
    max : 5,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 197
}

card_skedaddle = {
    name : "Skedaddle",
    //desc : "1.25x dash speed, but only start moving until after your initial dash",
    desc : "1.25x dash speed, but Dash is delayed. Dash also has Coyote Time",
    small_desc : "1.25x Run. Delayed Dash. Coyote Time",
    flavor : "Stacks increase initial dash time",
    max : 3,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 275
}

card_lifesteal = {
    name : "End of a Life", 
    desc : "10% Chance to Lifesteal the Amount of Damage Dealt On Hit",
    small_desc : "10% Chance to Lifesteal",
    max : 10,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 229
}

card_hold_it = {
	name : "Hold It!",
	desc : "Increases your Damage dealt to attacking players by 0.25x",
	small_desc : "+25% DMG on Counter Hits",
	max : 10,
	rarity : "R",
	sprite : sprite_get("icons"),
	icon : 119
}

card_pearl = {
    name : "Sweet Pearlfection",
    desc : "Tiny Hitboxes get Stronger",
	flavor : "Hold Taunt to check Validity. Shows Hitboxes",
    max : 3,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 0
}

card_strong_charge = {
    name : "Quicker Charging",
    desc : "+Strong Charge Speed",
    max : 5,
    rarity : "R",
	sprite : sprite_get("icons"),
    icon : 51
}


card_rocky_exo = {
    name : "Rocky Exoskeleton",
    desc : "Reduce Damage Taken by 1 from all sources (Min 1 Damage)",
    small_desc : "Reduce Damage Taken by 1",
    max : 10,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 94
}

card_express = {
    name : "Express Shipping",
    desc : "Attacks with Movement have 20% More Speed",
    small_desc : "Movement Attacks have 20% More Speed",
	flavor : "Hold Taunt to check Validity.",
    max : 10,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 172
}

card_explode_jump = {
    name : "TNT Double Jump",
    desc : "Double Jumps cause an Explosion and Self Damage (+Both Damage on Stack)",
    small_desc : "Djumps Explode",
    max : 5,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 284
}

card_frostbite = {
    name : "Frostbite",
    desc : "Fully Charged Strongs apply 6 Stacks of Frost. 50% More DMG to Frozen Opps.",
    small_desc : "Full Strongs apply 6 Frost. Frozen +50%",
    max : 5,
    rarity : "R",
	sprite : sprite_get("icons"),
    icon : 184
}

card_bahbah = {
    name : "Bah Bah",
    desc : "Taunt for 60f of Invincibility once Per Round per Stack.",
    small_desc : "Taunt for Invince per Round.",
    max : 5,
    rarity : "R",
	sprite : sprite_get("icons"),
    icon : 293
}

card_bounce_bud = {
    name : "Bounce Bud",
    desc : "+1 Base Damage per Double Jump per Air Time",
    small_desc : "+1 Damage per Double Jump",
    max : 1,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 298
}

card_rerolling_stone = {
    name : "Rerolling Stones",
    desc : "+5% Damage per Stored Reroll. +1 Max Reroll and +1 Reroll",
    small_desc : "+5% DMG per Held Reroll. +1 Reroll",
    max : 1,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 278
}

card_todays_look = {
    name : "Today's Look", 
    desc : "Randomly do between -2(1) and +2(1) Base Damage on top of every hit",
	small_desc : "Random +/- Base DMG",
    max : 3,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 120
}

card_dodge_plus = {
	name : "Air Dodge Plus",
	desc : "+Max Airdodge Count",
	max : 3,
	rarity : "R",
	sprite : sprite_get("icons"),
	icon : 54
}

card_flame_body = {
    name : "Flame Body",
    desc : "Physical Attacks from the Opponent can set them on Fire (20% Chance)",
    small_desc : "20% PHY ATKs from OPP set on Fire",
	flavor : "Eggs Also Spawn Faster",
    max : 5,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 233
}

card_absa_djump = {
    name : "Floaty Double Jump",
    desc : "+Absa Double Jump",
	flavor : "If you already have a Floaty Double Jump: remove it.",
    max : 1,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 97
}

card_r00_nspec = {
    name : "Reverse Reverse",
    desc : "Reverse your speed by inputting Taunt button",
    small_desc : "Reverse speed by inputting Taunt",
    max : 3,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 238
}

card_bottled_up = {
    name : "Bottled Up",
    //desc : "+1 Base Damage for every 120% damage (-10% per Stack)",
    desc : "+1% Damage Multipler every 1% Over 100%",
    small_desc : "+1% DMG Multi per 1% Over 100%",
	//small_desc : "+1 DMG Every 120% (-10% Per Stack)",
    max : 5,
    rarity : "R",
	sprite : sprite_get("icons"),
    icon : 66
}

card_tidal_flow = {
    name : "Tidal Flow",
    //desc : "+Ground Speed and Airspeed for every 120% damage (-10% per Stack)",
    //small_desc : "+Speed Every 120% (-10% Per Stack)",
    desc : "+5% Speed Multipler every 10% Over 100%",
    small_desc : "+5% Speed Multi per 10% Over 100%",
	flavor : "Capped at 100% Speed Multipler",
    max : 5,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 74
}

card_clean_sweep = {
    name : "Clean Slate",
    desc : "+25% Damage Multipler below 15%. 30f Invincible on Round Start",
    small_desc : "+25% DMG Multi <= 15%. 30f Invince",
    max : 10,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 32
}

card_clairen = {
    name : "Plasmic Precision",
    desc : "Tiny Hitboxes inflict Plasma Stun",
    flavor : "Hold Taunt to check Validity. Shows Hitboxes",
    max : 1,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 101
}


card_missile_defense = {
	name : "Missile Defense",
	desc : practice_mode ? "(Practice Mode) Spawn a Homing Missile" : "20% Chance On Parry to spawn a Homing Missile (+20% Chance Per)",
	small_desc : "20% On Parry Missiles (+20% Per)",
	flavor : "Doesn't activate on Parrying Jab",
	max : 5,
	rarity : "R",
	sprite : sprite_get("icons"),
	icon : 242
}

card_free_download = {
	name : "Free Download",
	desc : "1 in 4 Chance at Legendary. 3 in 4 Chance at a 'Bad' Item",
	small_desc : "25% Legendary. 75% 'Bad' Item",
	flavor : "Hot singles in your area. Cannot be Scrapped",
	max : 999,
	rarity : "R",
	can_scrap : false,
	printer_safe : false,
	picky_eater_safe : false,
	sprite : sprite_get("icons"),
	icon : 297
}


//Install

card_install_length = {
    name : "Stopwatch",
    desc : "+Rogue Install length (60f)",
    small_desc : "+Install length (60f)",
	flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 5,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 282
}

card_install_no_friction = {
    name : "Slip N' Slide",
    desc : "Lose all Ground Friction while Rogue Install is active",
    small_desc : "No friction in Rogue Install",
	flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 1,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 156
}

card_install_counter_hit = {
    name : "Objection!",
    desc : "Build extra Rogue Install meter on Counter Hits",
    small_desc : "Counter Hits build extra Install",
	flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 3,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 194
}

card_nothing = {
    name : "Nothing Happened",
    desc : "Gain Meter when Idle. Quickly Lose Meter otherwise",
    small_desc : "Idle: Gain Meter, else Lose Meter.",
	flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 5,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 209
}

card_install_turnabout = {
    name : "Turnabout",
    desc : "Taking damage builds meter for Rogue Install",
    small_desc : "Taking damage builds Install meter",
	flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 3,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 193
}

/*
card_artist = {
    name : "Artist Alley",
    desc : "One Time Use: Spawn a 3D-Printer that Copies using Items",
	small_desc : "One Time Use: Spawn a 3D Printer",
	flavor : "Prioritise Crazy Lucks",
    max : 1,
    rarity : "R",
    sprite : sprite_get("icons"),
    icon : 154
}
*/

//Bad Items
array_push(items_bad_pool, card_joycon_drift); //Funky Tea
array_push(items_bad_pool, card_skedaddle); //Funky Tea
array_push(items_bad_pool, card_absa_djump); //Funky Tea
array_push(items_bad_pool, card_nothing); //Funky Tea
//

//Mandatory otherwise the game WILL CRASH
create_item(card_rare_luck);
switch(item_pool_set) {
	default: //All items
		create_item(card_weight_up);
		//create_item(card_lower_pratland);
		//create_item(card_quick_drop);
		create_item(card_spike_buff);
		create_item(card_doc_orders);
		create_item(card_less_landing_lag);
		create_item(card_joycon_drift);
		create_item(card_lower_gravity);
		create_item(card_jailfree);
		create_item(card_risk_band);
		create_item(card_horizontal_kb);
		create_item(card_batter_up);
		create_item(card_physical_hit_damage);
		//create_item(card_vert_weight);
		//create_item(card_hori_weight);
		create_item(card_start_up);
		create_item(card_whiff_removal);
		//create_item(card_discord_ping);
		//create_item(card_shifting_strongs);		
		create_item(card_damage_plus);
		//create_item(card_growth);
		//create_item(card_invisible_dodges);
		create_item(card_nap_time);
		//create_item(card_more_walljumps);
		//create_item(card_fast_waveland);
		create_item(card_bio);
		create_item(card_proj_bounce);

		//create_item(card_cling);
		create_item(card_parry_cooldown);
		//create_item(card_crouch_jump);
		create_item(card_spicy);
		create_item(card_skedaddle);
		create_item(card_lifesteal);
		create_item(card_hold_it);
		create_item(card_pearl);
		create_item(card_strong_charge);
		//create_item(card_parry_heal);
		create_item(card_rocky_exo);
		create_item(card_express);
		create_item(card_explode_jump);
		create_item(card_frostbite);
		create_item(card_bahbah);
		create_item(card_bounce_bud);
		create_item(card_rerolling_stone);
		create_item(card_dodge_plus)

		//create_item(card_todays_look);
		create_item(card_flame_body);
		create_item(card_absa_djump);
		create_item(card_r00_nspec);
		create_item(card_clean_sweep);
		create_item(card_tidal_flow);
		create_item(card_bottled_up);
		create_item(card_clairen);
		create_item(card_missile_defense);
		create_item(card_free_download);
		
		//Install Based Items
		create_item(card_install_length);
		create_item(card_install_no_friction);
		create_item(card_install_counter_hit);
		//create_item(card_install_static);
		create_item(card_nothing);
		create_item(card_install_turnabout);
		//create_item(card_artist);
		//FFA items
		if (array_length(main_players) > 2 || practice_mode) {
			print("FFA Rares");
			//create_item(card_daora);
		}
	break;
	
	case "dino": //Items that DinoBros Made for the gamemode
		create_item(card_weight_up);
		create_item(card_jailfree);
		create_item(card_risk_band);
		//create_item(card_vert_weight);
		//create_item(card_hori_weight);
		create_item(card_start_up);
		create_item(card_whiff_removal);
		//create_item(card_discord_ping);
		create_item(card_damage_plus);
		//create_item(card_growth);
		create_item(card_bio);
		create_item(card_proj_bounce);
		//create_item(card_cling);
		create_item(card_spicy);
		create_item(card_pearl);
		create_item(card_rocky_exo);
		create_item(card_express);
		create_item(card_explode_jump);
		create_item(card_frostbite);
		create_item(card_bahbah);
		create_item(card_rerolling_stone);
		//create_item(card_artist);
		create_item(card_dodge_plus)
		create_item(card_flame_body)
		create_item(card_clean_sweep);
		create_item(card_missile_defense);
		create_item(card_free_download);
		
		//Install Items
		create_item(card_nothing);
		//create_item(card_install_static);
		//FFA items
		if (array_length(main_players) > 2 || practice_mode) {
			print("FFA Rares");
			//create_item(card_daora);
		}
	break;
	case "tdude": //Items that tdude Made for the gamemode
		//create_item(card_lower_pratland);
		//create_item(card_quick_drop);
		create_item(card_spike_buff);
		create_item(card_doc_orders);
		create_item(card_less_landing_lag);
		create_item(card_joycon_drift);
		create_item(card_lower_gravity);
		create_item(card_horizontal_kb);
		create_item(card_batter_up);
		create_item(card_physical_hit_damage);
		//create_item(card_shifting_strongs);
		//create_item(card_invisible_dodges);
		create_item(card_nap_time);
		//create_item(card_more_walljumps);
		//create_item(card_fast_waveland);
		create_item(card_parry_cooldown);
		//create_item(card_crouch_jump);
		create_item(card_skedaddle);
		create_item(card_lifesteal);
		create_item(card_hold_it);
		create_item(card_strong_charge);	
		//create_item(card_parry_heal);
		create_item(card_bounce_bud);
		//create_item(card_todays_look);
		create_item(card_absa_djump)
		create_item(card_r00_nspec)
		create_item(card_tidal_flow);
		create_item(card_bottled_up);
		create_item(card_clairen);
			
		//Install Items
		create_item(card_install_length);
		create_item(card_install_no_friction);
		create_item(card_install_counter_hit);
		create_item(card_install_turnabout);
	break;
	case "empty":	
	break;
	case "bad items":
		create_item(card_joycon_drift); //Funky Tea
		create_item(card_skedaddle); //Funky Tea
		create_item(card_absa_djump); //Funky Tea
		create_item(card_nothing); //Funky Tea
	break;
	case "custom": //Adds nothing	
		for (var i = 0; i < array_length(items_custom_rares); i++) {
			if (items_custom_rares[i, 1] == true) {
				create_item(items_custom_rares[i, 0]);
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