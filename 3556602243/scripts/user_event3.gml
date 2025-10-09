//Epics
card_epic_luck = {
	name : "Crazy Luck++",
	desc : "+++Gacha Luck " + "(" + string(ror_luck_e * luck_point_scaling) + ")",
	flavor : "Prioritized when Printing at the Brook Bazaar",
	max : 999,
	rarity : "E",
	can_scrap : false,
	sprite : sprite_get("icons"),
	icon : 38
}

card_extra_jump = {
    name : "Extra Jumps",
    desc : "+Midair Jump",
    max : 3,
    rarity : "E",
	sprite : sprite_get("icons"),
    icon : 8
}

card_parry_mash = {
    name : "Parry Masher",
    desc : "+Active Parry Time",
    max : 3,
    rarity : "E",
	sprite : sprite_get("icons"),
    icon : 30
}

card_higher_airspeed = {
    name : "Higher Airspeed",
    desc : "+Airspeed",
    max : 3,
    rarity : "E",
	sprite : sprite_get("icons"),
    icon : 81
}

card_projectile_stun = {
	name : "Stunning Projectiles",
	desc : "+Extra Hitpause on Projectiles",
	max : 3,
	rarity : "E",
	sprite : sprite_get("icons"),
	icon : 84
}

card_more_hitstun = {
	name : "More Hitstun",
	desc : "+Attack Hitstun",
	flavor : "1.1x Hitstun",
	max : 3,
	rarity : "E",
	sprite : sprite_get("icons"),
	icon : 41
}

card_atg = {
	name : "FLM Launcher", //Funny Looking Missile Launcher
	//desc : "10% Chance On Hit to spawn a Homing Missile",
	desc : practice_mode ? "(Practice Mode) Spawn a Homing Missile for 100% (50% Per Stack) of Hitbox Damage" : "10% Chance On Hit to spawn a Homing Missile for 100% (50% Per Stack) of Hitbox Damage",
	small_desc : "10% On Hit Missiles (+50% DMG Per)",
	max : 10,
	rarity : "E",
	sprite : sprite_get("icons"),
	icon : 63
}


card_bubble = {
	name : "Protective Bubble", 
	desc : "3% Chance not to take Damage and Knockback",
	small_desc : "3% Chance to avoid DMG and KB",
	flavor : "Unaffected by Wish Upon a Star",
	////desc : "8% Chance (Diminishing Returns) not to take Damage or Knockback",
	max : 5,
	rarity : "E",
	sprite : sprite_get("icons"),
	icon : 37
}


card_air_dash = {
	name : "Air Dash", 
	desc : "Changes Air Dodge into an Air Dash (++Airdodge Speed on Additional Stacks)",
	small_desc : "Changes Air Dodge into an Air Dash",
	max : 3,
	rarity : "E",
	sprite : sprite_get("icons"),
	icon : 108
}


card_sweetspot_size = {
    name : "Blob Expansion",
    desc : "Doubles the Size of Tiny Hitboxes",
	flavor : "Hold Taunt to check Validity. Shows Hitboxes",
    max : 3,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 18
}

card_paint = {
    name : "Painted Projectiles",
    desc : "+20% Damage Multiplier on Projectiles",
	small_desc : "+20% DMG Multi on Projectiles",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 42
}

card_body_build = {
    name : "Body Build",
    desc : "+20% Damage Multiplier on Physical Hitboxes",
    small_desc : "+20% DMG Multi on Physical Hitboxes",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 11
}


card_sonic_boom = {
    name : "Sonic Boom",
    desc : "20% of Horizontal Speed is converted into Bonus Damage",
	small_desc : "20% of Horizontal Speed is Damage",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 67
}

card_projectile_speed_up = {
    name : "Speedy Projectiles",
    desc : "+Projectile movement speed",
    max : 3,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 182
}

card_grapple_pie = {
    name : "Grapple Pie",
    desc : "Damage over Time during Grab-like Attacks",
    small_desc : "DMG during Grab-like Attacks",
	flavor : "Grabs and Stuns Count. Projectile Grabs don't activate",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 175
}

card_grapple_fritter = {
    name : "Grapple Fritter",
    desc : "Slowly Heal over Time during Grab-like Attacks",
    small_desc : "Slowly Heal over Time from Grabs",
	flavor : "Grabs and Stuns Count. Projectile Grabs don't activate",
    max : 3,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 219
}

card_candy_grapple = {
    name : "Candy Grapple",
    desc : "Apply Frost over Time during Grab-like Attacks",
    small_desc : "Frost during Grab-like Attacks",
	flavor : "Grabs and Stuns Count. Projectile Grabs don't activate",
    max : 3,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 267
}

card_floot = {
    name : "Why Dose She Floot",
    desc : "Gain a Horizontal Float (Stacks increase Duration)",
    small_desc : "Gain a Horizontal Float",
    max : 3,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 86
}


card_coughing_bomb = {
    name : "Coughing Bomb",
    desc : "Apply Poison on Hit. 100% More Damage by Consuming 4 Poison Stacks.",
    small_desc : "Apply Poison on Hit. +100% DMG on Max",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 150
}

card_witch_brew = {
    name : "Witch Brew!",
    desc : "Apply Poison on Hit. Heal 3% by Consuming 4 Poison Stack.",
    small_desc : "Apply Poison on Hit. Heal 3% on 4 Poison",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 128
}

card_pacify = {
    name : "Pacify",
    desc : "Apply Poison on Hit. At 4 Poison Consume and Stun (10f, +5f Per Stack)",
    small_desc : "Hit Opp at 4 Poison to Stun",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 100
}

card_acidic = {
    name : "Acidic Potion",
    desc : "Apply Poison on Hit. Burn after 4 Poison Stacks.",
    small_desc : "Apply Poison on Hit. Burn on Max",
    max : 1,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 232
}

card_virus = {
    name : "Computer Virus",
    desc : "Apply Poison on Hit. Apply Frost on 4 Poison Stacks.",
    small_desc : "Apply Poison on Hit. Frost on Max",
    max : 3,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 230
}

card_reflect = {
    name : "Reflector",
    desc : "10% Chance to Reflect Projectiles.",
    small_desc : "10% Chance to Reflect Projectiles",
	flavor : "Unaffected by Wish Upon a Star",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 187
}

card_black_hole = {
    name : "Mini Black Hole",
    desc : "Neutral Special shoots a mini projectile",
    small_desc : "NSPECIAL shoots a mini proj",
	flavor : "Shoots at the start of Window 2",
    max : 1,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 157
}

card_boomerang = {
    name : "Boomerang",
    desc : "You know what a Boomerang does.", //Please remember to fix this description later
	flavor : "Projectiles with infinite life time don't work",
    max : 1,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 144
}



card_blazing = {
    name : "Blazing Projectiles",
    desc : "Projectiles now set Opponents on Fire",
    max : 1,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 90
}

card_pocket_sand = {
    name : "Pocket Sand",
    desc : "Winning causes a Sandstorm that gives you a 50% Proj DMG Multi",
    small_desc : "Sandstorm on Win + 50% Proj DMG",
	flavor : "Sandstorm deals 2 dmg every second",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 206
}

card_gold_rush = {
    name : "Gold Rush",
    desc : "Winning causes a Sandstorm that gives you +10% Speed",
    small_desc : "Sandstorm on Win +10% Speed",
	flavor : "Sandstorm deals 2 dmg every second",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 168
}

card_cold_embrace = {
    name : "Cold Embrace",
    desc : "Hitting Opponents during a Missed Parry launches them in Pratfall",
    small_desc : "Hitting a Missed Parry -> Pratfall",
	flavor : "Doesn't apply on Whiteline/Galaxy",
    max : 1,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 152
}

card_inward = {
    name : "Get Over Here", 
    desc : "Projectiles send in your direction",
	flavor : "FLM is also effected",
    max : 1,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 10
}

card_shield = {
    name : "Shield of Shielding",
    desc : "Reduce Damage Taken by 10% from all sources",
    small_desc : "Reduce Damage Taken by 10%",
	flavor : "Damage Cannot go below 1",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 104
}



card_levitate = {
    name : "Levitate",
    desc : "Can Fastfall at any point",
    max : 1,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 283
}

card_house = {
    name : "House Warming",
    desc : "3 Seconds of Idle spawns a Missile (-22f Per Stack)",
    small_desc : "3 Seconds of Idle spawns a Missile",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 216
}

card_selfdestruct = {
    name : "Self-Destruct",
    desc : "Taunting spawns an Explosion that hits everybody (+Damage on Stacks)",
    small_desc : "Taunting causes a Huge Explosion",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 123
}

card_fiery_spirit = {
    name : "Fiery Spirit",
    //desc : "Physical Attacks have a 10% chance to set opponents on fire",
    desc : "PHYS 10% Chance to Burn. Burned Opponents take 20% More DMG",
    //flavor : "20% Damage Multiplier when hitting players on fire",
    //small_desc : "10% PHY ATKs set on Fire",
    small_desc : "PHYS 10% Burn. +20% DMG to Burnt OPPs",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 16
}

card_install_platypus = {
    name : "A Platypus?",
    desc : "Parrying and Crouching counts for Idle Items. Parry fills Meter",
    small_desc : "Parry and Crouch = Idle. Parry +Meter",
    flavor : "He's a Platypus. He doesn't do very much.",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 170
}

card_air_force = {
    name : "Air Force",
    desc : "+20% Damage Multiplier while Airborne",
	small_desc : "+20% DMG Multi while in Air",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 234
}

card_ground_control = {
    name : "Ground Control",
    desc : "+20% Damage Multiplier while Grounded",
	small_desc : "+20% DMG Multi while on Ground",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 264
}

card_hex = {
    name : "Hex",
    desc : "+1 Base Damage per Card Status (Burn / Poison / Frost / Freeze)",
    small_desc : "+1 DMG per Card Status Ailment",
	flavor : "All Basecast Status'",
    max : 3,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 292
}

card_chilled = {
    name : "Chilled Projectiles",
    desc : "Projectiles now apply 1 Stack of Frost. 6 Stacks Freeze Grounded",
    small_desc : "Projectiles Apply a Stack of Frost",
    max : 1,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 201
}

/*
card_wrap_zone = {
    name : "Wrap Zone",
    desc : "Projectiles Wrap Around Blastzones",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 286
}
*/

card_rush_hour = {
    name : "Rush Hour",
    desc : "Permanently Lower Start Up of Next Attack by 20%",
    small_desc : "Perma Lower Start Up of an Attack by 20%",
	flavor : "Scrapping removes buffs in order of Usage",
    max : 999,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 127,
    buff_start_amount : 0,
    buff_start_attack : -4
}

card_creepypasta = {
    name : "Creepypasta",
    desc : "Idling turns you Invisible and teleports",
    small_desc : "Invisible Idle and Teleport",
    max : 1,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 227
}

card_parasite = {
    name : "Parasite",
    desc : "+10% Damage. Infects more items each round. +1 per 10 copies",
    small_desc : "+10% Damage. Infect other Items",
	flavor : "Items that cannot be Scrapped cannot be Parasite",
    max : 999,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 203
}

card_streamer_luck = {
	name : "Streamer Luck",
    desc : "+2 Max Rerolls. Reset Rerolls",
    max : 999,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 173
}

card_based = {
	name : "Based Department",
    desc : "Summon Base Cast Assists with Forward Special",
    small_desc : "Summon Assists with FSPECIAL",
	flavor : "10 Second Cooldown. -1.5s Per Stack",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 73
}

card_control_projectiles = {
	name : "Remote Control",
    desc : "Control Movement of Projectiles (+Better Arc per Stack)",
    small_desc : "Control Movement of Projectiles",
    max : 5,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 99
}


card_transform = {
    name : "Transform",
    desc : "All items in your Item Pool are the same item",
	small_desc : "Item Pool is all One Item",
	flavor : "Items beyond Max become Crazy Luck",
    max : 1,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 146
}

card_trash = {
    name : "Trash Baby",
    desc : "No Pratfall on Hit for Up Special",
    max : 1,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 271
}

card_xanne = {
    name : "Jump Around",
    desc : "2x Double Jumps per stack, but lose 1/4th of your Double Jump Height once",
    small_desc : "2x DJumps at 3/4 Height",
    max : 3,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 274
}

card_dogfight = {
    name : "Dogfight",
    desc : "Hitting the Opponent Restores Double Jump, Float, Airdodge, and Wall Jump)",
    small_desc : "Hit OPP: Restores Resources",
	//flavor : "Once per Attack not including Multihits",
    max : 3,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 93
}

card_reconstruct  = {
    name : "Reconstruct",
    desc : "Choose the stage layout. (Activates again if you skip 1+ item)",
    small_desc : "Choose the stage layout.",
	flavor : "You may change layout and/or location",
    max : 1,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 135,
}

card_newtons_law  = {
    name : "Newton's Law",
    desc : "Tapping Fastfall lets you use Grounded Attacks in the Air.",
    small_desc : "Tap Fastfall for Grav Cancels",
	flavor : "Whiffing a Non-Jab / Non-Projectile puts you in Pratfall",
    max : 1,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 34,
}

//Installs

card_install_requirements = {
    name : "Super Charge",
    desc : "-Lower Damage Requirement for Rogue Install (20)",
    small_desc : "-Lower Install Requirement",
	flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 3,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 138
}

card_install_heal = {
    name : "Rise and Shine",
    desc : "Passively heal while Rogue Install is active",
    small_desc : "Rogue Install passively heals",
    flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 3,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 50
}



card_install_clot = {
    name : "Blood Clotting",
    desc : "Healing builds Rogue Install Meter",
	flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 3,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 105
}

card_install_recharge = {
    name : "Recharge",
    desc : "Gaining Rogue Meter extends Length 3x Amount",
    small_desc : "Gaining Rogue Meter extends Length",
    flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 3,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 222
}

card_install_ant = {
    name : "Tasty Croissant",
	desc : "3x Rogue Install Duration. Die when it Ends",
	small_desc : "3x Install Duration. Die when it Ends",
	flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 1,
    rarity : "E",
    sprite : sprite_get("icons"),
    icon : 198
}


//FFA Item
card_ghost_mode = {
	name : "Vengeful Spirit", 
	desc : "After Death: Gain 3 Seconds of a Ghost State" + string(practice_mode ? " (3+ Player Only)" : ""),
	small_desc : "Gain 3 Seconds of Ghost on Death",
	max : 3,
	rarity : "E",
	sprite : sprite_get("icons"),
	icon : 102
}

card_showstopper = {
	name : "Showstopper", 
	desc : "After Death: Opponents go into Freefall/Parrystun" + string(practice_mode ? " (3+ Player Only)" : ""),
	small_desc : "Stun Opponents on Death",
	max : 1,
	rarity : "E",
	sprite : sprite_get("icons"),
	icon : 214
}

//Bad Items
array_push(items_bad_pool, card_parasite);
array_push(items_bad_pool, card_transform);
array_push(items_bad_pool, card_install_ant);
//

//Mandatory otherwise the game WILL CRASH
create_item(card_epic_luck)
switch(item_pool_set) {
	default: //All items
		create_item(card_extra_jump);
		create_item(card_parry_mash);
		create_item(card_higher_airspeed);
		create_item(card_projectile_stun);
		create_item(card_more_hitstun);
		create_item(card_atg);
		create_item(card_bubble);
		create_item(card_air_dash);
		//create_item(card_lifesteal);
		//create_item(card_todays_look);
		//create_item(card_hold_it)
		//create_item(card_dodge_plus)
		create_item(card_sweetspot_size)
		create_item(card_paint)
		create_item(card_body_build)
		//create_item(card_rocky_exo)
		//create_item(card_sonic_boom)		
		create_item(card_projectile_speed_up);
		create_item(card_grapple_pie);
		create_item(card_floot);
		//create_item(card_pearl);
		create_item(card_coughing_bomb);
		//create_item(card_witch_brew);
		create_item(card_pacify);
		create_item(card_reflect);
		create_item(card_black_hole);
		create_item(card_boomerang);
		//create_item(card_strong_charge);
		//create_item(card_absa_djump);
		//create_item(card_parry_heal);
		//create_item(card_flame_body);
		create_item(card_blazing)
		create_item(card_acidic);
		create_item(card_pocket_sand);
		create_item(card_cold_embrace);
		create_item(card_inward);
		create_item(card_shield);
		//create_item(card_r00_nspec);
		create_item(card_levitate);
		create_item(card_grapple_fritter);
		create_item(card_house);
		create_item(card_selfdestruct);
		create_item(card_fiery_spirit);
		create_item(card_air_force);
		create_item(card_ground_control);
		create_item(card_hex);
		create_item(card_chilled);		
		create_item(card_candy_grapple);
		create_item(card_virus);
		create_item(card_creepypasta);
		create_item(card_gold_rush);
		create_item(card_parasite);
		//create_item(card_missile_defense);
		create_item(card_streamer_luck);
		create_item(card_based);
		create_item(card_control_projectiles);
		create_item(card_trash);
		create_item(card_transform);
		create_item(card_xanne);
		create_item(card_reconstruct);
		create_item(card_dogfight);
		create_item(card_newtons_law);
		//create_item(card_wrap_zone);
		
		//Install Based Items
		create_item(card_install_platypus);
		create_item(card_install_requirements);
		create_item(card_install_heal);
		//create_item(card_install_turnabout);		
		create_item(card_install_clot);		
		create_item(card_install_recharge);	
		create_item(card_install_ant);		
		//FFA items
		if (array_length(main_players) > 2 || practice_mode) {
			print("FFA Epics")
			create_item(card_ghost_mode)
			create_item(card_showstopper)
		}
	break;	
	case "dino": //Items that DinoBros Made for the gamemode
		create_item(card_extra_jump);
		create_item(card_parry_mash);
		create_item(card_atg);
		create_item(card_bubble);
		create_item(card_air_dash);
		//create_item(card_dodge_plus);
		create_item(card_sweetspot_size);
		create_item(card_paint);
		create_item(card_body_build);
		//create_item(card_rocky_exo);
		//create_item(card_sonic_boom);
		create_item(card_grapple_pie);
		//create_item(card_pearl);
		create_item(card_coughing_bomb);
		//create_item(card_witch_brew);
		create_item(card_pacify);
		create_item(card_reflect);
		create_item(card_black_hole);
		create_item(card_boomerang);
		//create_item(card_flame_body);
		create_item(card_blazing);
		create_item(card_acidic);
		create_item(card_pocket_sand);
		create_item(card_cold_embrace);
		create_item(card_shield);
		create_item(card_levitate);
		create_item(card_grapple_fritter);
		create_item(card_house);
		create_item(card_selfdestruct);
		create_item(card_air_force);
		create_item(card_ground_control);
		create_item(card_hex);
		create_item(card_chilled);
		create_item(card_candy_grapple);
		create_item(card_virus);
		create_item(card_creepypasta);
		create_item(card_gold_rush);
		create_item(card_parasite);
		//create_item(card_missile_defense);
		create_item(card_streamer_luck);
		create_item(card_based);
		create_item(card_control_projectiles);
		create_item(card_trash);
		create_item(card_transform);
		create_item(card_xanne);
		create_item(card_reconstruct);
		create_item(card_dogfight);
		create_item(card_newtons_law);
		//create_item(card_wrap_zone);

		//Install Items
		create_item(card_install_platypus);
		create_item(card_install_clot);	
		create_item(card_install_ant);	
		//FFA items
		if (array_length(main_players) > 2 || practice_mode) {
			print("FFA Epics")
			create_item(card_ghost_mode);
			create_item(card_showstopper);
		}
	break;
	case "tdude": //Items that tdude Made for the gamemode
		create_item(card_higher_airspeed);
		create_item(card_projectile_stun);
		create_item(card_more_hitstun);		
		//create_item(card_lifesteal);
		//create_item(card_todays_look);
		//create_item(card_hold_it);
		create_item(card_projectile_speed_up);
		create_item(card_floot);
		//create_item(card_strong_charge);
		//create_item(card_absa_djump);
		create_item(card_inward);
		//create_item(card_r00_nspec);
		create_item(card_fiery_spirit);
		//create_item(card_parry_heal);
		create_item(card_install_requirements);
		create_item(card_install_heal);
		//create_item(card_install_turnabout);
		create_item(card_install_recharge);
	break;
	case "empty":	
	break;
	case "bad items":
		create_item(card_parasite);
		create_item(card_transform);
		create_item(card_install_ant);
	break;
	case "custom": //Adds nothing	
		for (var i = 0; i < array_length(items_custom_epics); i++) {
			if (items_custom_epics[i, 1] == true) {
				create_item(items_custom_epics[i, 0]);
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