//Basically other_init.gml
with oPlayer {
if "ror_items" !in self {
practice_mode = get_match_setting(SET_PRACTICE);
//
var _player = -4;
for (var i = 0; i < array_length(obj_stage_main.main_players); i++) {
	if (_player == -4 && player == obj_stage_main.main_players[i].player) {
		_player = obj_stage_main.main_players[i];
	}
}
//
ror_clone = clone || ("custom_clone" in self && custom_clone) ? _player : false;	
//Game Mechanics
ror_items = [];
ror_followers = [];
ror_items_from_round = [];
ror_points = 0;

ror_stage_hit = -4;
ror_stage_parry_missile = -4;
ror_stage_can_hit_self = false;
//
ror_cancel_max = 60;
ror_cancel = ror_cancel_max;
//
bazaar_skip_hold = 0;
bazaar_skip_hold_max = 180; //180
//Game Stats
ror_stats = {};
ror_modified_stats = {};
ror_display_stats = [

];

ror_sweet_spots = []; //Displays all attacks with sweetspots
ror_info_speed = []; //Displays all attacks with HSPEED or VSPEED



ror_shovel_knight_gems = -4;

//Gamemode Stuff
ror_has_boss_items = false;
//


//Landing Lag
//Start Up
//Damage Buff
//Strong Charge
//Movement Speed
ror_valid_attack_array = [];
ror_attack_info_strong_vert = false;
ror_attack_info_strong_hori = false;
ror_attack_info_has_spike = false;
ror_attack_info_has_projectile = false;
ror_attack_info_has_whifflag = false;
ror_attack_info_has_sweetspot = false;
ror_attack_info_has_movement = false;



//Dragoon
ror_dragoon_parts = [false, false, false];
ror_dragoon_state = -4;
ror_dragoon_timer = 0;
ror_dragoon_max = 300;
//

//Unique Items
ror_item_count_commons = 0;
ror_item_count_rares = 0;
ror_item_count_epics = 0;
ror_item_count_legends = 0;
//

ror_is_grabbed = false;

//Fun End of Game Stats
ror_final = {
	ror_total_damage_taken : 0,
	ror_total_damage_given : 0,
	ror_total_damage_healed : 0,
	ror_total_stocks_lost : 0,
	ror_total_items_taken : 0,
	ror_highest_damage_given : 0,
	ror_biggest_winstreak : 0
}
ror_winstreak = 0;
ror_death_time = -4;
//
ror_prev_hsp = 0;
ror_prev_vsp = 0;
//
ror_previous_damage = 0;
ror_healed_damage = 0;
//
ror_previous_poison = 0;
ror_previous_burned = 0;
ror_previous_burnt_id = -4;
//
ror_freeze_stacks = 0;
ror_decay_health = 0;
//Damage Buffs
ror_damage_buff = 0;
ror_damage_multi = 0;
ror_projectile_bonus_damage = 0;
ror_physical_bonus_damage = 0;
//
ror_addition_type = 1; //1 is Gain / -1 is Lose
ror_item_removed = -1;
//Luck
ror_luck = 0; //0 by Default
//Rerolls
//ror_rerolls = 6 - obj_stage_main.luck_point_scaling;
ror_rerolls = 5;
ror_max_rerolls = ror_rerolls;
//ror_rerolls = 999;
//Infinite Rolls
//ror_max_rerolls = 999;
//ror_rerolls = 999;
ror_left_hold_timer = 0;
ror_right_hold_timer = 0;
ror_up_hold_timer = 0;
ror_down_hold_timer = 0;
ror_hold_buffer = 7;
//Objects
bazaar_ready = false;
//
item_display_offset = 0; //Displays phantom items at an offset
//Printer
ror_print_item = -4;
ror_print_rarity = -4;
ror_print_timer_max = 60; //60 Default
ror_print_timer = ror_print_timer_max;
ror_printer_id = -4;
//Scrapper
ror_scrapper_mode = false;
ror_scrap_pos = 0;
ror_scrap_draw_pos = 0;
ror_scrap_draw_array = [];
ror_scrapper_id = -4;
//
ror_taunt_item_array = []
ror_taunt_item_value = 0;
//Rogue Install
ror_install_cards = false; //whether or not you have an install card
//Gain Meter
//practice_mode = get_match_setting(SET_PRACTICE);
ror_install_meter = 0; //how much meter you have
ror_install_meter_base_max = 100; //Base Max Meter
ror_install_meter_max = ror_install_meter_base_max; //Meter after Items
ror_install_mult = 1; //multiplier for install meter gain
//Install Period
ror_install_timer = 0; //how much time is left in the install
ror_install_timer_base_length = 480; //how long the install lefts
ror_install_timer_length = 480; //how long the install lefts
ror_install_active = false; //whether or not the install should be active
ror_install_total_time = 0;
//Rogue Idle Item Timer
ror_idle_timer = 0;

#region //Commons
//Crazy Luck
ror_card_daves = [0, 0, 0, 0];
//Fast Movement
ror_card_fast_movement = 0;
//Lower Friction
ror_card_lower_friction = 0;
//Floatly Faller
ror_card_floaty_faller = 0
//Lottery Loser
ror_yuuko_pity = 0;
//Jump Man
ror_card_jump_man = 0;
//Crowbar
ror_crowbars = 0;
//Perma Buff (other.init next variables / update each round/ user_event10 initial sets/ user_event11 name)
ror_next_damage_buff = 0;
ror_next_start_buff = 0;
ror_next_whiff = 0;
//Reach 100% Items
ror_one_hundred = false;
//Quick Repair
ror_card_quick_repair = 0;
//Reconstruct
ror_card_change_stage = 0;
ror_change_stage = false; //false;
//Scam
ror_card_spam = 0;
//ror_scam_amount = 1;
//Funky Tea
ror_card_funky_tea = 0;
//Infection
ror_card_install_infection = 0;
//Wall Jump Gaming
ror_card_wj_height = 0;
//Mystery Egg 
ror_card_eggs = 0;
ror_eggs = 0;
ror_cracked_eggs = 0;
//Clean Sweep
ror_card_clean_sweep = 0;
//Tidal Flow
ror_card_tidal_flow = 0;
ror_update_stats = false;
ror_tidal_mult = 0; //modifier based on %
ror_tidal_mult_prev = 0; //modifier based on %, but from the previous frame
//Burst of Speed
ror_card_install_burst = 0; //Rogue Install Speed
//Reaper's Impulse
ror_card_install_impulse = 0; //Rogue Install Bonus Damage
//Sturdy Buildup
ror_card_install_sturdy = 0; //Rogue Install Weight
//Light Training
ror_card_install_training = 0; //Rogue Install Flat Damage
//Fast Food
ror_card_install_fast_food = 0;	//Rogue Install Meter
ror_install_time_decay = 60; //how much the card changes the install length by
//Micro Manage
ror_card_single_reroll = 0;
//Squared
ror_card_square = 0;
//Charge Champ
ror_card_install_charge_champ = 0;
//Boost of the Abyss
ror_card_install_abyss_boost = 0;
//The Floor is Lava
ror_card_floor_lava = 0;
ror_ground_timer = 0;
//Reckless Greed
ror_card_reckless_greed = 0;
//Len-Maker's Glasses
ror_card_glasses = 0;
//Nice throw!
ror_card_nice_throw = 0;
#endregion //Commons

#region //Rares
//Crazy Luck
//Get out of Jail Free
ror_card_jail = 0;
ror_jail_escapes = 0;
//Weight Up
ror_card_weight_up = 0;
//Better Rolls
ror_card_better_rolls = 0;
//Lower Pratland
ror_card_lower_pratland = 0;
//Fast Waveland
ror_card_fast_waveland = 0;
//Quick Drop
ror_card_quick_drop = 0;
//Meteor Master
ror_card_meteor_master = 0;
//Doctor's Orders
ror_card_doc_orders = 0;
//Bottled Up
ror_card_bottled = 0;
ror_bottled_activated = false;
ror_bottled_damage_buff = 0;
//Air Control
ror_card_air_control = 0;
//Light Landing
ror_card_light_landing = 0;
//Joycon Drift
ror_card_joycon_drift = 0;
//Torus' Band
ror_card_torus_bands = 0;
//Aerial Evasion
ror_card_aerial_evasion = 0;
//Lower Gravity
ror_card_lower_gravity = 0;
//Rough Guy
ror_card_rough_guy = 0;
//Batter Up!
ror_card_batter_up = 0;
//Heavy Hitter
ror_card_heavy_hitter = 0;
//
ror_card_hori_weight = 0;
//
ror_card_vert_weight = 0;
//Discord Ping
ror_card_discord = 0;
ror_discord_buff = false;
//Shifting Strongs
ror_card_shifting_strongs = 0;
//Grass Knot
ror_card_grass_knot = 0;
//Active Projectile
ror_card_active_proj = 0; //Set to 0
//Biological Weapon
ror_card_biological_weapon = 0;
ror_card_bio_poison = 2;
//Pacify
ror_card_pacify = 0;
//Ricochet
ror_card_proj_bounce = 0;
//Cold Embrace
ror_card_cold_embrace = 0;
ror_was_embraced = false;
//
ror_card_artist_alley = 0;
ror_art_printer = 0;
//Regenerative Shell
ror_card_regen_shell = 0;
//Feeling Ghoulish
ror_card_ghoul = 0;
//Crouch Jump
ror_card_crouch_jump = 0;
//Crouch Jump
ror_card_spicy = 0;
//Skedaddle
ror_card_funny_dash = 0;
ror_was_in_dashstart = false;
//Slip N' Slide
ror_card_install_slide = 0; //Rogue Install  No Friction
//Stopwatch
ror_card_install_stopwatch = 0; //Rogue Install Increase Duration
ror_install_time_change = 60; //how much the card changes the install length by
//
ror_card_express = 0;
//Objection!
ror_card_install_objection = 0; //Rogue Install Meter on Counter Hits
//Static Buildup
ror_card_install_static = 0;
//
ror_card_install_nothing = 0;
//TNT Jump
ror_card_tnt_jump = 0;
//Frostbite
ror_card_frostbite = 0;
//Dance Break - Bah Bah
ror_card_dance_break = 0;
ror_card_dance_break_count = 0;
//Bounce Bud
ror_card_bounce_bud = 0;
ror_djumps_used = 0;
//Rerolling Stones
ror_card_rerolling_stone = 0;
//Plasmic Precision
ror_card_plasmic_precision = 0;
//Free Download
ror_card_free_download = 0;
#endregion //End of Rares

#region //Epic
//Crazy Luck
//Extra Jumps
ror_card_extra_jumps = 0
//Parry Masher
ror_card_parry_masher = 0;
//Higher Airspeed
ror_card_higher_airspeed = 0;
//Stunning Projectiles
ror_card_stunning_projectiles = 0;
//More Hitstun
ror_card_more_hitstun = 0;
//Nap Time
ror_card_nap_time = 0;
//Night Seclusion
ror_card_night_seclusion = false;
//FLM Launcher
ror_card_flm_launcher = false; //Don't For get to set this to false
ror_atg_chance = 0;

ror_dont_missile = false;
//Protective Bubble
ror_card_protective_bubble = 0;
ror_bubble_burst = false;
ror_bubble_hsp = 0;
ror_bubble_vsp = 0;
//Air Dash
ror_card_air_dash = false; //false is default
//Vengeful Spirit
ror_can_ghost = true;
ror_is_ghost = false;
ror_card_ghost = 0;
ror_ghost_timer = 0;
//Bloodksucker
ror_card_bloodsucker = 0;
//Today's Look
ror_card_todayslook = 0;
ror_random_damage_modifier_range = 0;
ror_today_modifier = 0;
//Hold It
ror_card_holdit = 0;
ror_counterhit_mult = 0;
//Airdodge Plus
ror_card_airdodge_plus = 0;
ror_extra_airdodge_max = 0;
ror_airdodge_count = 0;
//Platforming Pro
ror_card_platform_pro = 0;
ror_extra_walljump_max = 0;
ror_walljump_count = 0;
//Blob Expansion
ror_card_blob_expansion = 0;
//Painted Projectiles
ror_card_paint = 0;
//Body Build
ror_card_body_build = 0;
//Rocky Exoskeleton
ror_card_exo_skele = 0;
//Sonic boom
ror_card_sonic_boom = 0;
ror_dash_hitbox = -4;
ror_sonic_vfx = -4;
//Techplosion
ror_card_techplosion = 0;
//URGH
ror_card_urgh = 0;
ror_thwomp_hitbox = -4;
//Bullet Hell Buddy
ror_card_extra_bullets = 0;
//Speedy Projectiles
ror_card_proj_speed = 0;
//Bamboo It
ror_card_bamboo = 0;
//Grapple Pie/Fritter
ror_card_grapple_pie = 0; //Damage Over Time
ror_card_grapple_fritter = 0; //Heal Over Time
ror_card_candy_grapple = 0;	//Freeze Over Time
ror_grapple_time = 0;
//Monstrous Growth
ror_card_sugar_rush = 0;
//ror_growth_amount = .05;
//Why Dose She Floot
ror_card_peach_float = 0;
ror_can_float = true;
ror_float_active = false;
ror_float_time = 0;
//Invisibility
ror_card_invis = 0;
ror_is_invis = false;
ror_invis_wait = 90;
ror_invis_multi = 2;
//Wall Cling
ror_starts_with_cling = can_wall_cling;
ror_card_cling = false;
ror_cling_timer = 0;
//Sweet Pearlfection
ror_card_pearl = 0;
//Coughing Bomb
ror_card_coughing_bomb = 0;
//Witch Brew!
ror_card_witch_brew = 0;
//Reflector
ror_card_reflector = 0;
//Black Hole
ror_card_hole = 0;
ror_has_thrown_hole = false;
//Boomerang
ror_card_boomerang = 0;
//Absa Double Jump
ror_absa_djump = 0;
//Green Thumb
ror_card_parry_heal = 0;
//Flame body
ror_card_flame_body = 0;
//Acidic Potion
ror_card_acidic = 0;
//Computer Virus
ror_card_virus = 0;
//Showstopper
ror_card_showstopper = 0;
//Jump Around
ror_card_xanne = 0;
//Rise and Shine
ror_card_install_shine = 0; //Rogue Install Heal
//Super Charge
ror_card_install_charge = 0; //Rogue Install Charge Speed
install_lower_max_change = 20; //how much the card lowers the requirements by
//Turnabout!
ror_card_install_turnabout = 0; //Rogue Install Meter on Hit
//Turnabout!
ror_card_install_blood_clotting = 0; //Rogue Install Meter on  Heal
//Magic Missile
ror_card_install_magic_missile = 0; //Fire Missile on Install
//Pocket Sand
ror_card_pocket_sand = 0;
//Gold Rush
ror_card_gold_rush = 0;
//Levitate
ror_card_levitate = 0;
//Recharge
ror_card_install_recharge = 0;
//Rapid Fire
ror_card_rapid_fire = 0;
ror_rapids = 0;
//House Warming
ror_card_house = 0;
//Self-Destruct
ror_card_self_destruct = 0;
//Fiery Spirit
ror_card_fiery = 0;
//A Platypus?
ror_card_install_platypus = 0;
//Air Force
ror_card_air_force = 0;
//Grounded Control
ror_card_ground_control = 0;
//
ror_card_warp_zone = 0;
//Hex
ror_card_hex = 0;
//Chilled Projectiles
ror_card_chilled_projectiles = 0;
//Fair Play
ror_card_fair_play = 0;
//Creepypasta
ror_card_creepypasta = 0;
//Parasite
ror_card_parasite = 0;
//Grav Cancel
ror_card_grav_cancel = 0;

ror_is_grav_cancel = false;
ror_grav_cancel_count = 0;
ror_grav_cancel_time = 10;
ror_grav_cancel_time_max = 10;
ror_grav_attacked = false;
ror_grav_buffer = 0;
ror_grav_buffer_max = 5; //Max amount of frames to start a grav cancel

ror_grav_cancel_djumps = 0;
ror_grav_cancel_airdodge = 0;
ror_grav_cancel_has_airdodge = false;
#endregion //Epics


#region //Legendaries
//Crazy Luck
//Fuel Leak
ror_card_fuel_leak= false;
ror_fuel_leak = false;

//Tough Guy
ror_card_toughguy = 0;
ror_toughguy_value = 5; //5
ror_toughguy = 0;
//Quicker Charing
ror_card_quick_charge = 0;
ror_strong_charge_bonus = 0;
//OOOHHHHHH / Mordecai
ror_card_mordecai = false;
//Neutral
ror_dattack_jc = false;
//Extra Selection
ror_card_extra_selection = false;
//Miss-tery Bag
ror_card_miss_bag = false;
//Fool's Gold
ror_card_fools_gold = 0;
ror_dony_self_damage = 0;
//Midas Punch
ror_card_luck_boost = false;
//Clone Buddy Delivery
ror_card_clone_buddy = false//is_aether_stage() ? 4 : false;
ror_temp_clones = 1; //Sets Automatically to fix a bug
//ror_card_clone_buddy = 9; //Debug
//Get Over Here
ror_card_get_over_here = 0;
//Shield of Shielding
ror_card_shield = 0;
//Roundabout Relocation
ror_card_relocation = 0;
ror_relocation_count = 0;
//Infinite Charging
ror_card_inf_charge = 0;
ror_inf_charge = 0;
//Consume Nutreints
ror_card_consume = false;
ror_will_consume_buddy = false;
ror_consume_amount = 25; //Common 25, Legendary 100
//Nice Throw!
//ror_card_nice_throw = 0;
ror_threw_game = false;
//
ror_card_belt = 0;
//
ror_card_control_proj = 0; //Set to 0
//Jump Cancel Rolls
//ror_card_jc_roll = 0;
//ror_cancel_dodging = false;
//Like Clockwork
ror_card_clock = 0;
ror_clock_buff = 2;
//Gura A Up Strong
ror_card_gura = 0;
ror_has_thrown_fish = false;
ror_boosted_fish = false;
//toke
ror_card_buffet = 0;
ror_should_buffet = false;
//
ror_card_master_of_one = 0;
ror_master_attack = -4; //Resets on Round
ror_infinite_stall_protection = false;
//Transcendent
ror_card_trans_proj = false;
//Roman Cancels
ror_card_roman = 0;
ror_roman_meter = 0;
ror_roman_meter_max = 100;
ror_roman_meter_cost = 50;
//Techxecution
ror_card_techxecution = 0;
//
ror_card_assist = 0;
ror_assist_cooldown = 0;
ror_assist_char = 0;
ror_assists_total = 4;
//ror_can_use_assist = true;
//R-00 Neutral Special
ror_card_r00 = 0;
ror_flip_count = 0;
ror_flip_cooldown = 0;
//Jolly Festivities
ror_card_jolly_gift = 0;
//Trash Baby
ror_card_trash_baby = 0;
//Data Error
ror_card_transparent = 0;//0
prev_spr_dir = spr_dir;
//Baked
ror_card_seconds = 0;
//Blazing Projectiles
ror_card_fire_proj = 0;
//Transform
ror_card_transform = 0;
//Dark Reflection
ror_card_dark_reflection = 0;
ror_has_air_parried = false;
//Slow Start
ror_card_install_slow_start = 0; //Rogue Install Double Power
//Rise from Ash
ror_card_install_rise_from_ash = 0 //
//Peach Install
ror_card_install_peach = 0; //Rogue Install Double Power
//Black Jack
ror_card_install_black_jack = false;
//ror_luck = -60 + 21; //Temp
//Tasty Croissant
ror_card_install_ant = 0;
//Great Asset
ror_card_great_asset = 0;
//Missile Defense
ror_card_missile_defense = 0;
//Gravity
ror_card_gravity = 0;
ror_gravity_dust = 0;
//Picky Eater
ror_card_picky_eater = false; //0
//Picky Eater
ror_card_dragoon = 0;
//Nuh Uh
ror_card_nuhuh = 0;
ror_card_stopsign = false; //Drawing a Stop Sign over top of you when frozen
//Dogfight
ror_card_dogfight = 0;
ror_card_dogfight_has_hit = false;
//Trash Collector
ror_card_trash_collector = 0;
//Suichopath
ror_card_suicho = 0;
ror_card_suicho_axe = [];
ror_card_suicho_rotation = 0;
//Abyss Teleport
ror_card_abyss_teleport = 0;
//Shield
ror_card_shield = false;
ror_is_shielding = false;
ror_can_shield = true;
ror_shield_strength_max = 200;
ror_shield_strength = ror_shield_strength_max;
ror_shield_broken = false;
//Persistent Pest
ror_card_persistent_pest = 0;
//Queen's Decree
ror_card_queen = 0;
ror_queen_heal = 0;
//Multi-Purpose
ror_card_multi_purpose = 0;
//Mushroom Items
ror_card_mega = 0;
ror_card_mini = 0;
//_mushroom_size
//Wish Upon a Star
ror_card_star = 0;
//Defensive Shield
ror_card_parry_armor = 0;
ror_roll_parried = false;
ror_can_roll_parry = true;
//Floatation Device
ror_card_floatation_device = false;
ror_swimming = false;
ror_swim_timer = 0;
ror_swim_timer_max = 90;
//Lazy Bones
ror_card_lazy_bones = false;
//Hey It's Me
ror_card_goku = false; //false
ror_dragon_balls = [0, 0, 0, 0, 0, 0, 0];
ror_dragon_ball_count = 0;
	ror_limitless_max = false;
	ror_extra_life = false;
	ror_has_extra_life = false;
//Creative Mode
//ror_card_creative_mode = false;
//ror_creative_types = [0, 0, 0, 0, 0]; //All, Common, Rare, Epic, Legendaries
ror_creative_types = [0, 0, 0, 0, 0]; //All, Common, Rare, Epic, Legendaries
//Monkey Mode
ror_card_strong_parry = 0;
ror_strong_parry_timer = 0;
ror_strong_parried = false;
//Got your back
ror_card_back = 0;
ror_back_array = [];
//BIRDBRAIN
ror_card_teto = 0;
//Reversi
ror_card_reversi = 0;
//Gravity Cancel
//ror_card_grav_cancel = 0;
//
//ror_is_grav_cancel = false;
//ror_grav_cancel_time_max = 20;
//ror_grav_cancel_time = 0;

//Blizzard
ror_card_blizzard = 0; //0
ror_has_thrown_blizzard = 0;
//Decay
ror_card_decay = 0; //0
//Shock Dart
ror_card_shock_dart = 0;
#endregion
//End of legendary
//


#region //Attack Values Check
//General
//Attacks
ror_attacks_dattack = [AT_DATTACK];
//Strong
ror_attacks_ustrong = [AT_USTRONG];
ror_attacks_fstrong = [AT_FSTRONG];
ror_attacks_dstrong = [AT_DSTRONG];
//Specials
ror_attacks_nspecial = [AT_NSPECIAL];
ror_attacks_fspecial = [AT_FSPECIAL];
ror_attacks_uspecial = [AT_USPECIAL];
//Taunt
ror_attacks_taunt = [AT_TAUNT];

//Funny Testings purposes for a future 5th tier of items that goes bonkers style dayo
//array_push(ror_attacks_ustrong, AT_USTRONG);
//array_push(ror_attacks_ustrong, AT_FSTRONG);
//array_push(ror_attacks_ustrong, AT_DSTRONG);
//array_push(ror_attacks_fstrong, AT_USTRONG);
//array_push(ror_attacks_fstrong, AT_FSTRONG);
//array_push(ror_attacks_fstrong, AT_DSTRONG);
//array_push(ror_attacks_dstrong, AT_USTRONG);
//array_push(ror_attacks_dstrong, AT_FSTRONG);
//array_push(ror_attacks_dstrong, AT_DSTRONG);

//Base Cast
//print(url)
/*
var _url = _player == -4 ? url ? _player.url;
print(_url)
*/
var _url = ror_clone ? _player.url : url;
//print([ror_clone, "Player Id", _url, url])
//print(["test"])
switch url {
	//Fire
	case CH_ZETTERBURN:
		array_push(ror_attacks_taunt, 47);
		array_push(ror_attacks_taunt, 46);
		array_push(ror_attacks_taunt, 45);
		array_push(ror_attacks_taunt, 43);
		array_push(ror_attacks_taunt, 42);
		array_push(ror_attacks_taunt, 40);
		array_push(ror_attacks_taunt, 39);
	break;
	case CH_FORSBURN:
		array_push(ror_attacks_taunt, 47);
		array_push(ror_attacks_taunt, 46);
		array_push(ror_attacks_taunt, 45);
		array_push(ror_attacks_taunt, 43);
		array_push(ror_attacks_taunt, 42);
		array_push(ror_attacks_taunt, 39);
		array_push(ror_attacks_nspecial, AT_EXTRA_2);
		array_push(ror_attacks_nspecial, AT_NSPECIAL_2);
		array_push(ror_attacks_uspecial, AT_EXTRA_1);
		array_push(ror_attacks_fspecial, AT_NSPECIAL_2);
	break;
	case CH_CLAIREN:
		array_push(ror_attacks_taunt, 47);
		array_push(ror_attacks_taunt, 46);
		array_push(ror_attacks_taunt, 45);
		array_push(ror_attacks_taunt, 44);
		array_push(ror_attacks_taunt, 43);
		array_push(ror_attacks_taunt, 42);
		array_push(ror_attacks_taunt, 40);
		array_push(ror_attacks_taunt, 39);
		array_push(ror_attacks_taunt, AT_TAUNT_2);
	break;
	case CH_MOLLO:
		array_push(ror_attacks_taunt, 45);
		array_push(ror_attacks_taunt, 43);
		array_push(ror_attacks_taunt, 42);
		array_push(ror_attacks_nspecial, AT_NSPECIAL_AIR);
		array_push(ror_attacks_nspecial, AT_NSPECIAL_2);
		array_push(ror_attacks_taunt, 39);
		array_push(ror_attacks_taunt, AT_TAUNT_2);
		array_push(ror_attacks_fspecial, AT_FSPECIAL_AIR);
		array_push(ror_attacks_fspecial, AT_FSPECIAL_2);
		array_push(ror_attacks_dstrong, AT_DTHROW);
		array_push(ror_attacks_dstrong, AT_DSTRONG_2);
		array_push(ror_attacks_ustrong, AT_UTHROW);
		array_push(ror_attacks_fstrong, AT_FTHROW);
		array_push(ror_attacks_uspecial, AT_USPECIAL_2);
	break;
	
	//Earth
	case CH_KRAGG:
		array_push(ror_attacks_taunt, 47);
		array_push(ror_attacks_taunt, 46);
		array_push(ror_attacks_taunt, 45);
		array_push(ror_attacks_taunt, 43);
		array_push(ror_attacks_taunt, 42);
		array_push(ror_attacks_nspecial, AT_NSPECIAL_AIR);
		array_push(ror_attacks_taunt, 40);
		array_push(ror_attacks_taunt, 39);
	break;
	case CH_MAYPUL:
		array_push(ror_attacks_taunt, 47);
		array_push(ror_attacks_taunt, 46);
		array_push(ror_attacks_taunt, 45);
		array_push(ror_attacks_taunt, 44);
		array_push(ror_attacks_taunt, 43);
		array_push(ror_attacks_taunt, 42);
		array_push(ror_attacks_taunt, 40);
		array_push(ror_attacks_taunt, 39);
		array_push(ror_attacks_taunt, AT_EXTRA_3);
		array_push(ror_attacks_taunt, AT_TAUNT_2);
		array_push(ror_attacks_fspecial, AT_EXTRA_1);
	break;
	case CH_SYLVANOS:		
		array_push(ror_attacks_taunt, AT_EXTRA_4);
		array_push(ror_attacks_taunt, 42);
		array_push(ror_attacks_taunt, 43);
		array_push(ror_attacks_taunt, 45);
		array_push(ror_attacks_taunt, 47);
	break;
	case CH_OLYMPIA:
		array_push(ror_attacks_fspecial, AT_FSTRONG_2);
		array_push(ror_attacks_nspecial, AT_EXTRA_1);
		array_push(ror_attacks_nspecial, AT_NSPECIAL_2);		
		array_push(ror_attacks_taunt, AT_EXTRA_4);
		array_push(ror_attacks_nspecial, AT_NSPECIAL_AIR);
		array_push(ror_attacks_taunt, 42);
		array_push(ror_attacks_taunt, 43);
	break;
	
	//Water
	case CH_ORCANE:
		array_push(ror_attacks_fstrong, AT_FSTRONG_2);
		array_push(ror_attacks_dstrong, AT_DSTRONG_2);
		array_push(ror_attacks_ustrong, AT_USTRONG_2);
		array_push(ror_attacks_uspecial, AT_USPECIAL_GROUND);
		array_push(ror_attacks_uspecial, AT_USPECIAL_2);
		array_push(ror_attacks_fspecial, AT_FSPECIAL_2);		
		array_push(ror_attacks_taunt, AT_EXTRA_4);
		array_push(ror_attacks_taunt, AT_EXTRA_5);
		array_push(ror_attacks_taunt, 42);
		array_push(ror_attacks_taunt, 43);
		array_push(ror_attacks_taunt, 45);
		array_push(ror_attacks_taunt, 46);
		array_push(ror_attacks_taunt, 47);
	break;
	case CH_ETALUS:
		array_push(ror_attacks_fstrong, AT_FSTRONG_2);
		array_push(ror_attacks_dstrong, AT_DSTRONG_2);
		array_push(ror_attacks_ustrong, AT_USTRONG_2);		
		array_push(ror_attacks_taunt, AT_EXTRA_4);
		array_push(ror_attacks_taunt, 42);
		array_push(ror_attacks_taunt, 43);
		array_push(ror_attacks_taunt, 45);
		array_push(ror_attacks_taunt, 46);
	break;
	case CH_RANNO:
		//ranno has a weird set of specials
		ror_attacks_nspecial = [AT_FSPECIAL];
		ror_attacks_fspecial = [AT_DSPECIAL, AT_DSPECIAL_AIR];	
		//
		array_push(ror_attacks_taunt, AT_EXTRA_4);
		array_push(ror_attacks_taunt, 42);
		array_push(ror_attacks_taunt, 43);
		array_push(ror_attacks_taunt, 45);
		array_push(ror_attacks_taunt, 46);
	break;
	case CH_HODAN:
		array_push(ror_attacks_uspecial, AT_USPECIAL_2);
		array_push(ror_attacks_fspecial, AT_FSPECIAL_2);
		array_push(ror_attacks_dattack, AT_FTHROW);
		array_push(ror_attacks_uspecial, AT_DTHROW);		
		array_push(ror_attacks_taunt, AT_EXTRA_4);
		array_push(ror_attacks_taunt, 42);
		array_push(ror_attacks_taunt, 43);
	break;
	
	//Air
	case CH_WRASTOR:
		array_push(ror_attacks_taunt, AT_EXTRA_4);
		array_push(ror_attacks_taunt, 42);
		array_push(ror_attacks_taunt, 43);
		array_push(ror_attacks_taunt, 45);
		array_push(ror_attacks_taunt, 46);
		array_push(ror_attacks_taunt, 47);
	break;
	case CH_ABSA:
		array_push(ror_attacks_nspecial, AT_NSPECIAL_2);
		array_push(ror_attacks_fspecial, AT_FSPECIAL_AIR);		
		array_push(ror_attacks_taunt, AT_TAUNT_2);
		array_push(ror_attacks_taunt, AT_EXTRA_4);
		array_push(ror_attacks_taunt, 42);
		array_push(ror_attacks_taunt, 43);
		array_push(ror_attacks_taunt, 45);
		array_push(ror_attacks_taunt, 46);
		array_push(ror_attacks_taunt, 47);
	break;
	case CH_ELLIANA:		
		array_push(ror_attacks_taunt, AT_EXTRA_4);
		array_push(ror_attacks_taunt, 42);
		array_push(ror_attacks_taunt, 43);
		array_push(ror_attacks_taunt, 45);
		array_push(ror_attacks_taunt, 46);
		array_push(ror_attacks_taunt, 47);
	break;
	case CH_POMME:
		array_push(ror_attacks_uspecial, AT_USPECIAL_2);
		array_push(ror_attacks_nspecial, AT_NSPECIAL_2);		
		array_push(ror_attacks_taunt, AT_TAUNT_2);
		array_push(ror_attacks_taunt, AT_EXTRA_4);
		array_push(ror_attacks_taunt, 42);
		array_push(ror_attacks_taunt, 43);
	break;
	
	//Other
	case CH_ORI:
		array_push(ror_attacks_fstrong, AT_FSTRONG_2);
		array_push(ror_attacks_dstrong, AT_DSTRONG_2);
		array_push(ror_attacks_ustrong, AT_USTRONG_2);
		array_push(ror_attacks_nspecial, AT_NSPECIAL_2);		
		array_push(ror_attacks_taunt, AT_EXTRA_2);
		array_push(ror_attacks_taunt, AT_EXTRA_4);
		array_push(ror_attacks_taunt, 42);
	break;
	case CH_SHOVEL_KNIGHT:
		array_push(ror_attacks_nspecial, AT_DSTRONG_2);
		array_push(ror_attacks_nspecial, AT_USTRONG_2);
		array_push(ror_attacks_nspecial, AT_DSPECIAL_2);		
		array_push(ror_attacks_nspecial, AT_FSTRONG_2);		
		array_push(ror_attacks_taunt, AT_EXTRA_4);
		array_push(ror_attacks_taunt, 42);
	break;
	
	//Workshop Hardcode
	case "1865940669": //Sandbert
		//array_push(ror_attacks_taunt , AT_TAUNT);
	break;	
	case "1866016173": //Guadua
		array_push(ror_attacks_fspecial, AT_FSPECIAL_AIR);
	break;
	case "2940069199": //Suisei
		print(["Suisei Support", should_switch])
		if should_switch {
			ror_attacks_nspecial = [AT_DSPECIAL];
		}
		array_push(ror_attacks_taunt, AT_TAUNT_2);
	break;
	
	//My Workshop Hardcode
	case "2811822410": //Miku
		array_push(ror_attacks_fstrong, AT_FTHROW);
		array_push(ror_attacks_dstrong, AT_DSTRONG_2);
		array_push(ror_attacks_ustrong, AT_USTRONG_2);
		array_push(ror_attacks_taunt, AT_DTHROW);
		array_push(ror_attacks_taunt, AT_TAUNT_2);
		array_push(ror_attacks_dattack, 48);
		array_push(ror_attacks_nspecial, AT_EXTRA_5);
	break;
	case "2885762133": //Brook
		array_push(ror_attacks_fstrong, AT_FTHROW);
		array_push(ror_attacks_dstrong, AT_DSTRONG_2);
		array_push(ror_attacks_ustrong, AT_USTRONG_2);
		array_push(ror_attacks_taunt, AT_DTHROW);
		array_push(ror_attacks_taunt, AT_TAUNT_2);
		array_push(ror_attacks_dattack, 48);
		array_push(ror_attacks_nspecial, AT_EXTRA_5);
	break;

	
	default:
		//print("No hardcoded attack checks");
	break;
	

	//SSL Character Support
	ror_is_ssl = "ssl_death_sound" in self;
	if (ror_is_ssl) {
		print("SSL Character Detected")
		array_push(ror_attacks_dattack, AT_FTILT);
		array_push(ror_attacks_ustrong, AT_UTILT);
		array_push(ror_attacks_fstrong, AT_FTILT);
		array_push(ror_attacks_dstrong, AT_DTILT);
		array_push(ror_attacks_nspecial, AT_JAB);
		array_push(ror_attacks_nspecial, AT_NAIR);
		array_push(ror_attacks_fspecial, AT_FTILT);
		array_push(ror_attacks_uspecial, AT_UAIR);
	}
}
//print("Attacks Done")


#endregion












}
}



