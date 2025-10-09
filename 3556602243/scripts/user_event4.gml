//Legendary
card_legend_luck = {
	name : "Crazy Luck+++",
	desc : "++++Gacha Luck " + "(" + string(ror_luck_l * luck_point_scaling) + ")",
	flavor : "Prioritized when Printing at the Brook Bazaar",
	max : 999,
	rarity : "L",
	can_scrap : false,
	sprite : sprite_get("icons"),
	icon : 38
}

card_tough_guy = {
    name : "Tough Guy",
    //desc : "+Reductive Soft Armor when Attacking (7 per stack)",
    desc : "+Reductive Soft Armor (5 per stack)",
	small_desc : "+Reductive Soft Armor",
	flavor : "Armor protects from some effects",
    max : 3,
    rarity : "L",
	sprite : sprite_get("icons"),
    icon : 55
}
toughguy_value = 6;//

card_fuel = {
    name : "Fuel Leak",
    desc : "+4 Base Damage, but you're on fire",
    max : 1,
    rarity : "L",
	sprite : sprite_get("icons"),
    icon : 24
}

card_mordecai = {
    name : "OOOHHHHHH",
    desc : "Remove Down Strong Hitpause",
	flavor : "0 hitpause moves have set knockback direction",
    max : 1,
    rarity : "L",
	sprite : sprite_get("icons"),
    icon : 36
}

card_etalus_jc = {
    name : "Neutral",
    desc : "+Jump Cancel Dash Attack",
    //desc : "+Jump Cancel Dash Attack + USTRONG out of DATTACK",
    //small_desc: "Etalus Dash Attack (JC/DACUS)",
    max : 1,
    rarity : "L",
	sprite : sprite_get("icons"),
    icon : 91
}

card_extra_choice = {
    name : "Extra Selection",
    desc : "Choose an extra item each Round",
    max : 1,
    rarity : "L",
	sprite : sprite_get("icons"),
    icon : 106
}

card_misstery = {
	name : "Miss-tery Bag", 
	//desc : "Gain 1 Random Item of each Rarity, but lose 1 Card Choice Permanently", //Luck is not factored in
	desc : "Gain 1 Random Item of each Rarity.", //Luck is not factored in
	can_scrap : false,
	printer_safe : false,
	picky_eater_safe : false,
	flavor : "Cannot be Scrapped",
	//small_desc : "+1 of Each Rarity",
	max : 1,
	rarity : "L",
	sprite : sprite_get("icons"),
	icon : 59
}

card_dony = {
    name : "Fool's Gold", 
    desc : "All Physical Hitboxes are 1.35x larger, but self damage on use",
	small_desc : "1.35x Size of Physicals, Self DMG",
	flavor : "Shows Hitboxes",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 122
}

card_luck_boost = {
    name : "Midas Punch", 
    desc : "+1% Damage Multiplier per Luck Stat",
	small_desc : "+1% DMG Multi Per Luck",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 103
}

card_clone_delivery = {
    name : "Clone Buddy Delivery", 
    desc : "-1 Item Choice, Duplicate items you take",
	small_desc : "Dupe New Items, -1 Card Choice",
	flavor : "Card Choice Minimum is 1",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 2
}

card_bamboo = {
    name : "Bamboo It",
    desc : "Healing is increased by 100% per stack",
    max : 5,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 85
}

card_relocate = {
    name : "Roundabout Relocation",
    desc : "Once Per Round Screenwrap when you would lose",
    small_desc : "Once Per Round Screenwrap",
    max : 3,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 165
}

card_inf_charge = {
    name : "Infinite Wind Up",
    desc : "Infinite Strong Charge",
    //desc : "Infinite Strong Charge. Increase DMG Multi instead of KB",
    small_desc : "Infinite Strong Charge",
	flavor : "Might break some Strongs.",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 186
}

card_black_jack = {
    name : "Blackjack Install",
    //desc : "When Luck is Divisible by 21 gain Massive Boosts",
    desc : "In Install: If Luck is positive and Modulo 21 gain Massive Boosts",
    small_desc : "In Install: Luck %= 21, Gain Buffs",
	flavor : "+Speed, +Air Speed, +2 Jumps, +2 Damage, +50% DMG Multi",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 178
}

card_bullet_hell = {
    name : "Bullet Hell Buddy",
    desc : "Spawn an additional copy of Projectiles per stack",
	flavor : "Some Characters might spawn invisible Projectiles",
    small_desc : "+1 Projectiles",
    max : 5,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 133
}

card_championship_belt = {
	name : "Championship Belt",
    desc : "Winning gives a 20% (+20% Per) Chance at a random item per KO",
    small_desc : "Winning gives a Chance at Items",
    max : 5,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 136
}


card_clockwork = {
	name : "Mechanical Shotgun",
    desc : "+100% More Damage on Projectiles, but they have damage fall-off.",
    small_desc : "+100% DMG Proj. Damage fall-off",
    max : 5,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 162
}

card_gura = {
	name : "A",
    desc : "Throw a Fish during Up Strong",
	flavor : "Hold for more Launch Speed",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 192
}

card_daora = {
	name : "Toke", 
	desc : "Remove Cooldowns on Attack on Hit",
	max : 1,
	rarity : "L",
	sprite : sprite_get("icons"),
	icon : 160
}

case_master_of_one = {
	name : "Master of One", 
	desc : "Use only 1st Attack per Round. (+50% DMG, +20% BKB, +.25 KBS, No Cooldown, Air OK)",
	small_desc : "Use only 1st Attack per Round. Buff it.",
	max : 1,
	rarity : "L",
	sprite : sprite_get("icons"),
	icon : 167
}
	
card_invis = {
    name : "Invisible Strongs",
    //desc : "Strongs are invisible during start up. Double the End Lag of Strongs",
    desc : "Strongs are invisible during start up.",
    //small_desc : "Invisible Strongs. 2x Strongs Endlag",
    small_desc : "Invisible Strongs",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 159
}

card_transcend = {
	name : "Transcendence",
    desc : "Make all projectiles unbreakable",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 140
}

//Roman Cancels are too hard
card_roman = {
	name : "Roman Cancel",
    desc : "Press Shield on Cancel Attacks with 1/2 Meter (+Meter Per Stack)",
    small_desc : "Press Shield to Roman Cancel",
    max : 3,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 177
}

card_techxecute = {
	name : "Techxecution",
    desc : "Opponents get executed for Missing a Hard Tech at 300% (-50% per Stack)",
    small_desc : "Missed Techs at High% Execute",
    max : 5,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 130
}

card_techsplosion = {
    name : "Techsplosion",
    desc : "Create a Hitbox on Tech (+Size/Damage on Stack)",
    small_desc : "Create a Hitbox on Tech",
    max : 3,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 88
}

card_jolly = {
    name : "Jolly Festivities",
    desc : "Gain 3 random items and give random 1 item to every other player",
    small_desc : "+3 items, +1 item to other players",
    max : 1,
    rarity : "L",
    can_scrap : false,
    printer_safe : false,
	picky_eater_safe : false,
    flavor : "Cannot be Scrapped",
    sprite : sprite_get("icons"),
    icon : 218
}


card_data = {
    name : "404 Error",
    desc : "Missing Stage Collision",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 240
}

card_nuhuh = {
    name : "Nuh Uh",
    desc : "Freeze Opponents doing the Same Attack as You.",
    flavor : "Cannot be Frozen by players with equal or less Nuh Uh's than you",
    max : 999,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 240
}

card_seconds = {
    name : "Going for Seconds",
    desc : "Fully Charged Strongs set on Fire. Consumes Fire to Spike",
	small_desc : "Full Strongs apply Burn. Burn Spikes",
	flavor : "Apply all Burn Damage on Consume",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 258
}


card_fallspeed_buff = {
    name : "URGH",
    //desc : "20% of Downwards Speed is converted into Bonus Damage",
	//small_desc : "20% of Down Speed is Damage",
	desc : "3x Fast Fall Speed, Falling Hitbox",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 190
}

card_dark = {
    name : "Dark Reflection",
	desc : "Replace Neutral Airdodge with an Air Parry. Pratfall on Whiff",
	small_desc : "Neutral Dodge is Air Parry",
	flavor : "Airdodge gains Parry Armor with Defensive Shield",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 246
}

card_color_wheel = {
    name : "Color Wheel",
    desc : "Effect Changes on Stage Variant",
    small_desc : "Effect Changes on Stage Variant",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 154
	/*
		Effects
		Forest 		-	Extend that stage to be a walk off
		Ocean 		-	Heal 2% per Hit
		Volcano		-	All attacks set on Fire
		Mountain	-	20 Soft Armor Strongs during charge
		City		-	Gain a Rare Crazy Luck on Win
		Finale		-	Remove Everyone's Items
	*/
}

card_asset = {
    name : "Great Asset",
	desc : "Guarantee Scrappers at Bazaars. Scrapping gives 2x Luck, but no Item",
	small_desc : "Scrap = Only Luck. Always a Scrapper",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 225
}

card_gravity = {
	name : "Possession",
	desc : "Forward Strong pulls in players in front",
	small_desc : "FSTRONG pulls in players in front",
	max : 1,
	rarity : "L",
	sprite : sprite_get("icons"),
	icon : 322
}

card_rapid_fire = {
    name : "Rapid Fire",
    desc : "Hold Attack/Special or Strong to Rapid Fire Projectiles",
    small_desc : "Hold  to Rapid Fire Projectiles",
	flavor : "A hitbox must be out to rapid fire. Any button can be held.",
    max : 5,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 241
}

card_picky_eater = {
    name : "Picky Eater",
    desc : "Item Pool can only be items you have",
    flavor : "Can also include Crazy Luck Items",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 224
}

card_dragoon = {
    name : "Dragoon",
    desc : "Dragoon Pieces can Spawn and be used Once Per Round",
    small_desc : "Dragoon Pieces can Spawn",
    flavor : "Appears more often if pieces are collected",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 44
}

card_trash_collector = {
    name : "Trash Collector",
    desc : "Every Common Gives +5% DMG Multi",
    //small_desc : "",
	//flavor : "Once per Attack not including Multihits",
    max : 5,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 243
}

card_suichopath = {
    name : "Suicopath",
    desc : "Spawn a Spinning Projectile Destroying Axe per Stack",
    small_desc : "Spawn a Projectile Destroying Axe",
    //small_desc : "",
	flavor : "Doesn't destroy transcendent projectiles",
    max : 5,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 158
}

card_shortcut = {
    name : "Abyssal Shortcut",
    desc : "Projectiles teleport YOU to the Opponent",
    //small_desc : "Spawn a Projectile Destroying Axe",
    //small_desc : "",
	//flavor : "More Stacks means Faster Rotating",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 279
}


card_fair_play = {
    name : "Fair Play",
    desc : "Allow Movement during Countdown. 100% More Damage while Invincible",
    small_desc : "Cheat. 100% DMG While Invincible",
    max : 3,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 210
}

card_persistent_pest = {
    name : "Persistent Pest",
    desc : "Apply Poison on Hit. Poison Items consume 1 Less Poison Stack.",
    small_desc : "Applies Poisons. Consume -1 on Max",
    max : 3,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 294
}

card_platina = { //Planula
    name : "Queen's Decree",
    desc : "Heal 1 Health after Getting Hit",
    //small_desc : "Apply Poison on Hit. Consume 1 Less on Max",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 228
}

card_multi_purpose = {
	name : "Multi-Purpose",
	desc : "+1 Base Damage. +1.1x Damage Multiplier. +Gacha Luck " + "(" + string(ror_luck_r * luck_point_scaling) + ")",
	small_desc : "+1 Damage. +10% DMG Multi. +Gacha Luck",
	//flavor : "",
	max : 3,
	rarity : "L",
	sprite : sprite_get("icons"),
	icon : 137
}

card_star = {
    name : "Wish Upon a Star",
    desc : "Item RNG is rolled an additional time for a more Favorable Outcome",
    small_desc : "Item RNG is more Favorable",
	flavor : "Doesn't work with Block/Reflect RNG Items. Effects Opponent Too",
    max : 5,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 68
	
}

card_mega_mushroom = {
    name : "Mega Mushroom",
    desc : "Grow 50% Larger. +Weight. 1.2x Knockback on All Attacks",
    small_desc : "Grow 50% Larger. +Weight. +KB",
    //small_desc : "Item RNG is more Favorable",
	flavor : "Doesn't effect Projectile Size.",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 287
}

card_parry_armor = {
    name : "Defensive Shield",
    desc : "Gain parry armor instead of invincibility when rolling",
    small_desc : "Roll is now a Rolling Parry instead",
    flavor : "Airdodge gains Parry Armor with Dark Reflection",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 296
}

card_impact_run = {
    name : "Sonic Boom",
    desc : "Have a constant Hitbox while Dashing that is stronger with Speed",
	small_desc : "Have a constant Hitbox while Dashing",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 67
}

card_lazy_bones = {
    name : "Lazy Bones",
    desc : "Doubles the Speed of Idle Items",
	small_desc : "2x Speed for Idle Items",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 300
}

card_monkey_mode = {
    name : "Monkey Mode",
    desc : "Down Strong has parry armor after the charge window",
    small_desc : "Down Strong has parry armor",
    flavor : "Parry armor defaults to window 2 if the move cannot be charged",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 89
}

card_back = {
    name : "Got your Back",
    desc : "Forward Strong is duplicated on Both Sides",
    small_desc : "FSTRONG is duplicated",
    flavor : "Duplicated Attack has no Hurtbox",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 95
}

card_teto = {
    name : "BIRDBRAIN",
    desc : "Taunts can be Cancelled Early. Taunt counts as Idle for Items",
    small_desc : "Taunt ends Early. Taunt = Idle",
	flavor : "This bird, expert in the absurd",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 295
}

card_reversi = {
    name : "Reversi",
    desc : "Up Strong has reversed Knockback",
	flavor : "This Effects 'A' Fish",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 305
}

card_random_func = {
    name : "random_func()",
    desc : string(ror_random_chosen_buffs[0]) + ", " + string(ror_random_chosen_buffs[1]) + ", " + string(ror_random_chosen_buffs[2]) + ", but " + string(ror_random_chosen_nerfs[0]),
    //desc : "",
    small_desc : "",
    flavor : "Each session has a different results",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 311
}

card_blizzard = {
    name : "Blizzard", 
    desc : "Taunting shoots a projectile that applies 1 Frost Stack at all other Players",
	small_desc : "Taunt: Fire a Frost Proj at others",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 120
}

card_decay = {
    name : "Decay", 
    desc : "10% of Damage Dealt cannot be Healed",
	small_desc : "10% of DMG cannot be Healed",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 213
}

card_shock_dart = {
    name : "Shock Dart", 
    desc : "Projectiles shock when they expire",
	//small_desc : "10% of DMG cannot be Healed",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 251
}

#region //Creative Mode
card_creative = {
    name : "Creative Mode",
    desc : "After Choosing, Give yourself any Item",
	small_desc : "Give yourself any Item",
	flavor : "Cannot be Scrapped. /give @p minercraft:nether_star",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
	can_scrap : false,
    printer_safe : false,
	picky_eater_safe : false,
    icon : 321
}
card_creative_c = {
    name : "Creative Common",
    desc : "After Choosing, Give yourself any Common",
	small_desc : "Give yourself any Common",
	flavor : "Cannot be Scrapped. /give @p minercraft:nether_star",
    max : 999,
    rarity : "C",
    sprite : sprite_get("icons"),
	can_scrap : false,
    printer_safe : false,
	picky_eater_safe : false,
    icon : 321
}
card_creative_r = {
    name : "Creative Rare",
    desc : "After Choosing, Give yourself any Rare",
	small_desc : "Give yourself any Rare",
	flavor : "Cannot be Scrapped. /give @p minercraft:nether_star",
    max : 999,
    rarity : "R",
    sprite : sprite_get("icons"),
	can_scrap : false,
    printer_safe : false,
	picky_eater_safe : false,
    icon : 321
}
card_creative_e = {
    name : "Creative Epic",
    desc : "After Choosing, Give yourself any Epic",
	small_desc : "Give yourself any Epic",
	flavor : "Cannot be Scrapped. /give @p minercraft:nether_star",
    max : 999,
    rarity : "E",
    sprite : sprite_get("icons"),
	can_scrap : false,
    printer_safe : false,
	picky_eater_safe : false,
    icon : 321
}
card_creative_l = {
    name : "Creative Legendary",
    desc : "After Choosing, Give yourself any Legendary",
	small_desc : "Give yourself any Legendary",
	flavor : "Cannot be Scrapped. /give @p minercraft:nether_star",
    max : 999,
    rarity : "L",
    sprite : sprite_get("icons"),
	can_scrap : false,
    printer_safe : false,
	picky_eater_safe : false,
    icon : 321
}
#endregion

#region //Dragon Balls
//
card_goku = {
    name : "Hey It's Me",
    desc : "Allows Dragon Balls to sometimes Replace Items",
	small_desc : "Allows Dragon Balls to Appear",
	flavor : "You may only get once Wish per Game",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 309
}
//Dragon Balls
card_dragon_ball_1 = {
    name : "1 Star Dragon Ball",
    desc : practice_mode ? "(Practice Mode) Collect all 7 to Grant a Wish" : "Collect all 7 to Grant a Wish",
	small_desc : "Collect all 7 to Grant a Wish",
	flavor : "Cannot be Scrapped",
    max : 1,
    rarity : "C",
    sprite : sprite_get("icons"),
	can_scrap : false,
    printer_safe : false,
	picky_eater_safe : false,
    icon : 313
}
card_dragon_ball_2 = {
    name : "2 Star Dragon Ball",
    desc : practice_mode ? "(Practice Mode) Collect all 7 to Grant a Wish" : "Collect all 7 to Grant a Wish",
	small_desc : "Collect all 7 to Grant a Wish",
	flavor : "Cannot be Scrapped",
    max : 1,
    rarity : "C",
    sprite : sprite_get("icons"),
	can_scrap : false,
	printer_safe : false,
	picky_eater_safe : false,
    icon : 314
}
card_dragon_ball_3 = {
    name : "3 Star Dragon Ball",
    desc : practice_mode ? "(Practice Mode) Collect all 7 to Grant a Wish" : "Collect all 7 to Grant a Wish",
	small_desc : "Collect all 7 to Grant a Wish",
	flavor : "Cannot be Scrapped",
    max : 1,
    rarity : "R",
    sprite : sprite_get("icons"),
	can_scrap : false,
	printer_safe : false,
	picky_eater_safe : false,
    icon : 315
}
card_dragon_ball_4 = {
    name : "4 Star Dragon Ball",
    desc : practice_mode ? "(Practice Mode) Collect all 7 to Grant a Wish" : "Collect all 7 to Grant a Wish",
	small_desc : "Collect all 7 to Grant a Wish",
	flavor : "Cannot be Scrapped",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
	can_scrap : false,
	printer_safe : false,
	picky_eater_safe : false,
    icon : 316
}
card_dragon_ball_5 = {
    name : "5 Star Dragon Ball",
    desc : practice_mode ? "(Practice Mode) Collect all 7 to Grant a Wish" : "Collect all 7 to Grant a Wish",
	small_desc : "Collect all 7 to Grant a Wish",
	flavor : "Cannot be Scrapped",
    max : 1,
    rarity : "R",
    sprite : sprite_get("icons"),
	can_scrap : false,
	printer_safe : false,
	picky_eater_safe : false,
    icon : 317
	
}
card_dragon_ball_6 = {
    name : "6 Star Dragon Ball",
    desc : practice_mode ? "(Practice Mode) Collect all 7 to Grant a Wish" : "Collect all 7 to Grant a Wish",
	small_desc : "Collect all 7 to Grant a Wish",
	flavor : "Cannot be Scrapped",
    max : 1,
    rarity : "E",
    sprite : sprite_get("icons"),
	can_scrap : false,
	printer_safe : false,
	picky_eater_safe : false,
    icon : 318
}
card_dragon_ball_7 = {
    name : "7 Star Dragon Ball",
    desc : practice_mode ? "(Practice Mode) Collect all 7 to Grant a Wish" : "Collect all 7 to Grant a Wish",
	small_desc : "Collect all 7 to Grant a Wish",
	flavor : "Cannot be Scrapped",
    max : 1,
    rarity : "E",
    sprite : sprite_get("icons"),
	can_scrap : false,
	printer_safe : false,
	picky_eater_safe : false,
    icon : 319
}
//
#endregion Dragon Balls

//Install Items

card_install_magic_missile = {
    name : "Magic Missile",
    desc : "Upon Activating Rogue Install: Spawn a Missile",
    small_desc : "Spawn a Missile on Install Activation",
    flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 261
}


card_install_slow_start = {
    name : "Slow Start",
    desc : "Double the requirements, length, and effects of Rogue Install",
    small_desc : "x2 Install length/ requirements/effects",
	//flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 176
}

card_install_ash = {
    name : "Rise from Ash",
	desc : "When in Install Heal from 2x Burn Damage",
	small_desc : "Burn Heals you Install 2x DMG",
	flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 188
}

card_install_peach = {
    name : "Peach Install",
	desc : "Gain Jump Cancels in Rogue Install",
	flavor : "Rogue Meter gives +1 Base Damage by Default",
    max : 1,
    rarity : "L",
    sprite : sprite_get("icons"),
    icon : 281
}

//Bad Items
array_push(items_bad_pool, card_picky_eater);
array_push(items_bad_pool, card_reversi);
array_push(items_bad_pool, card_install_slow_start);
//

//Mandatory otherwise the game WILL CRASH
create_item(card_legend_luck)
switch(item_pool_set) {
	default: //All items
		//create_item(card_strong_charge)
		create_item(card_fuel)
		create_item(card_tough_guy)
		create_item(card_etalus_jc)
		create_item(card_mordecai)
		create_item(card_extra_choice)
		create_item(card_misstery)
		create_item(card_dony)
		create_item(card_luck_boost)
		create_item(card_clone_delivery)
		//create_item(card_inward)
		//create_item(card_shield)
		create_item(card_bamboo)
		create_item(card_relocate)
		create_item(card_inf_charge)
		create_item(card_black_jack)
		//create_item(card_consume)
		create_item(card_bullet_hell)	
		create_item(card_championship_belt);		
		//create_item(card_control_projectiles);
		create_item(card_clockwork);
		create_item(card_gura);
		create_item(card_daora);
		create_item(case_master_of_one);
		//create_item(card_streamer_luck);
		create_item(card_invis);
		create_item(card_transcend);
		create_item(card_roman);
		//create_item(card_techxecute);
		//create_item(card_based);
		create_item(card_techsplosion)
		//create_item(card_r00_nspec)
		create_item(card_jolly)
		//create_item(card_trash)
		//create_item(card_data)
		create_item(card_seconds)
		//create_item(card_transform)
		//create_item(card_xanne);
		create_item(card_fallspeed_buff);
		create_item(card_dark);
		create_item(card_asset);
		//create_item(card_missile_defense);
		create_item(card_rapid_fire);
		create_item(card_picky_eater);
		create_item(card_dragoon);
		//create_item(card_dogfight);
		create_item(card_trash_collector);
		create_item(card_suichopath);
		create_item(card_shortcut);
		create_item(card_fair_play);
		create_item(card_persistent_pest);
		create_item(card_platina);
		create_item(card_star);
		create_item(card_mega_mushroom);
		create_item(card_parry_armor);
		create_item(card_impact_run);
		create_item(card_lazy_bones);
		create_item(card_monkey_mode);				
		create_item(card_back);				
		//create_item(card_multi_purpose);
		//create_item(card_nuhuh)
		create_item(card_gravity);
		create_item(card_teto);
		create_item(card_reversi);
		//create_item(card_random_func);
		create_item(card_blizzard);
		create_item(card_decay);
		create_item(card_shock_dart);


		create_item(card_creative);
		//Install Items
		create_item(card_install_slow_start);
		create_item(card_install_ash);
		create_item(card_install_peach);		
		create_item(card_install_magic_missile);
		//FFA items
		if (array_length(main_players) > 2 || practice_mode) {
			print("FFA Legends")
			//create_item(card_daora);
		}

		//Dragon Balls
		create_item(card_goku);
		if practice_mode {
			create_item(card_dragon_ball_1);
			create_item(card_dragon_ball_2);
			create_item(card_dragon_ball_3);
			create_item(card_dragon_ball_4);
			create_item(card_dragon_ball_5);
			create_item(card_dragon_ball_6);
			create_item(card_dragon_ball_7);
			//Creative mode
			create_item(card_creative_c);
			create_item(card_creative_r);
			create_item(card_creative_e);
			create_item(card_creative_l);
		}
	break;
	
	case "dino": //Items that DinoBros Made for the gamemode
		create_item(card_fuel)
		create_item(card_tough_guy)
		create_item(card_mordecai)
		create_item(card_extra_choice)
		create_item(card_misstery)
		create_item(card_luck_boost)
		create_item(card_clone_delivery)
		//create_item(card_shield)
		create_item(card_bamboo)
		create_item(card_relocate)
		create_item(card_inf_charge)
		create_item(card_black_jack)
		//create_item(card_consume)
		create_item(card_bullet_hell)
		create_item(card_championship_belt);
		//create_item(card_control_projectiles);
		create_item(card_clockwork);
		create_item(card_gura);
		create_item(card_daora);
		create_item(case_master_of_one);
		//create_item(card_streamer_luck);
		create_item(card_invis);
		create_item(card_transcend);
		create_item(card_roman);
		//create_item(card_techxecute);
		//create_item(card_based);
		create_item(card_techsplosion)
		//create_item(card_trash)
		//create_item(card_data)
		create_item(card_seconds)
		//create_item(card_transform)
		//create_item(card_xanne);
		create_item(card_fallspeed_buff);
		create_item(card_dark);
		create_item(card_asset);
		//create_item(card_missile_defense);
		create_item(card_rapid_fire);
		create_item(card_picky_eater);
		create_item(card_dragoon);
		//create_item(card_dogfight);
		create_item(card_trash_collector);
		create_item(card_suichopath);
		create_item(card_shortcut);
		create_item(card_fair_play);
		create_item(card_persistent_pest);
		create_item(card_platina);
		create_item(card_star);
		create_item(card_mega_mushroom);
		create_item(card_impact_run);
		create_item(card_lazy_bones);
		//create_item(card_multi_purpose);
		//create_item(card_nuhuh)
		create_item(card_gravity);
		create_item(card_back);	
		create_item(card_teto);
		create_item(card_reversi);
		//create_item(card_random_func);
		create_item(card_blizzard);
		create_item(card_decay);
		create_item(card_shock_dart);
		
		create_item(card_creative);
		//Install Items
		create_item(card_install_ash);
		create_item(card_install_peach);
		create_item(card_install_magic_missile);
		//FFA items
		if (array_length(main_players) > 2 || practice_mode) {
			print("FFA Legends")
			//create_item(card_daora);
		}
		
		//Dragon Balls
		create_item(card_goku);
		if practice_mode {
			create_item(card_dragon_ball_1);
			create_item(card_dragon_ball_2);
			create_item(card_dragon_ball_3);
			create_item(card_dragon_ball_4);
			create_item(card_dragon_ball_5);
			create_item(card_dragon_ball_6);
			create_item(card_dragon_ball_7);
			//Creative mode
			create_item(card_creative_c);
			create_item(card_creative_r);
			create_item(card_creative_e);
			create_item(card_creative_l);
		}
	break;
	case "tdude": //Items that tdude Made for the gamemode
		//create_item(card_strong_charge)
		create_item(card_etalus_jc)
		create_item(card_dony)
		//create_item(card_inward)
		//create_item(card_r00_nspec)
		create_item(card_jolly)
		create_item(card_monkey_mode);
		//Install Items
		create_item(card_install_slow_start);
		create_item(card_parry_armor);
	break;
	case "empty":	
	break;
	case "bad items":
		create_item(card_picky_eater);
		create_item(card_reversi);
		create_item(card_install_slow_start);
	break;
	case "custom": //Adds nothing	
		for (var i = 0; i < array_length(items_custom_legends); i++) {
			if (items_custom_legends[i, 1] == true) {
				create_item(items_custom_legends[i, 0]);
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