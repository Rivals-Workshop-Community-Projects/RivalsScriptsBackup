//Steve

//Items
discard_timer = 0; //Timer for holding NSpecial to discard Totem of Undying
discard_timer_max = 60;
rune_totem = 0;
held_item_timer = 0;
held_item_timer_max = 5;
has_container = 1;
exp_shake = 0;
steve_riptide_stage_y = 0;

//USpecial
max_blocks = has_rune("G") ? 10 : 3;
blocks = max_blocks;
on_block = false;
prev_on_block_and_grounded = false;
on_block_timer = 0;
on_block_timer_max = 15; //for vfx
has_properly_landed = false; //landed not on a block
block_meter_fade = 0;

//NSpecial gui stuff
nspecial_gui_alpha = 0;
nspecial_cursor = 1;
nspecial_cursor_timer = 0;
nspecial_cursor_timer_max = 5;
restock_alpha = 0;

//Chat
chat_txt = ds_list_create(); //contents of each chat
chat_tmr = ds_list_create(); //timer for each chat
chat_col = ds_list_create(); //color of each chat
chat_tmr_max = 300;

chat_owner = self; //the steve responsible for displaying the chat
with oPlayer if ("chat_owner" in self && chat_owner == self) other.chat_owner = self;

with chat_owner{
	ds_list_add(chat_txt, "Steve joined the game");
	ds_list_add(chat_tmr, chat_tmr_max);
	ds_list_add(chat_col, c_yellow);
}

advancement_made = false;
advancement_made_arrow = false;
advancement_made_items = false;
advancement_made_parry = false;

has_been_marked = false;
has_been_burned = false;
has_been_bubbled = false;
has_been_wrapped = false;
has_been_poison = false;
has_been_frozen_player = false;
has_been_plasma_pause = false;
has_been_stuck = false;

bed_spawn = false;
bed_x = room_width / 2;
bed_y = get_stage_data(SD_Y_POS) - 96;

//Misc
shield_time_max = has_rune("F") ? 60 : 30;
check_kill_effect = false;
piston_out = false;
stored_waveland_hsp = 0;
bow_cooldown_max = 45;
water_cooldown = 0;
water_cooldown_max = 60; //plus however long the water exists
porkchop_heal_amt = 20 + 30 * has_rune("O");
boost_color = make_color_rgb(
	get_color_profile_slot_r(get_player_color(player), 0),
	get_color_profile_slot_g(get_player_color(player), 0),
	get_color_profile_slot_b(get_player_color(player), 0)
);
boost_color = $f0a580;
pearled = false;
elytra = false;
elytra_max = 300;
elytra_fall_speed = 0; //ever-changing
strength_pot = 0;
strength_pot_max = 300;
strength_pot_mult = has_rune("O") ? 2 : 1.3;
bed_time_max = 120;
bed_time_mid = 45; //sizz starts
frozen_player = noone;
taunt_stored = 0;
stopped_sounds = [];
stored_death_message = "";

dark_grey = make_color_hsv(0, 0, 64);

nair_armor = 12;



//Stats

//Change Based On Block
stat_initial_dash_speed = [6,   8	 + has_rune("C")];
stat_dash_speed			= [5.5, 7.5	 + has_rune("C")];
stat_moonwalk_accel     = [1,   1.5	 + has_rune("C")];
stat_leave_ground_max   = [6,   8	 + has_rune("C")];
stat_max_jump_hsp       = [6.5, 8	 + has_rune("C")];
stat_wave_land_adj      = [1.3, 2	 + has_rune("C")];


//Physical size
char_height = 52;
knockback_adj = 1;

//Animation speeds (who cares)
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .13;
dash_anim_speed = .26;
pratfall_anim_speed = .25;

//Ground movement
walk_speed = 3;
walk_accel = 1;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = stat_initial_dash_speed[0];
dash_speed = stat_dash_speed[0];
dash_turn_time = 9;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = .35;
ground_friction = 0.5;
moonwalk_accel = stat_moonwalk_accel[0];

//Air movement
leave_ground_max = stat_leave_ground_max[0];
max_jump_hsp = stat_max_jump_hsp[0];
air_max_speed = 4.5;
jump_change = 3;
air_accel = .3;
prat_fall_accel = 0.8;
air_friction = .04;
max_fall = 11;
fast_fall = 16; 
gravity_speed = .6;
hitstun_grav = .5;

//Jumps
jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7.5;
djump_speed = 10.5; //instead of 10, so dtilt --> djump can reach plats
max_djumps = 1;
double_jump_time = 32;
walljump_hsp = 5;
walljump_vsp = 7;
walljump_time = 32;
wall_frames = 1;

//Landing and wavelanding
land_time = 4;
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = stat_wave_land_adj[0];
wave_friction = 0.15;



//Animation Frames

//Crouch
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2; //must be 1 less than actual num of frames

//Parry
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//Tech
tech_active_frames = 2;
tech_recovery_frames = 1;

//Tech roll
techroll_startup_frames = 1
techroll_active_frames = 5;
techroll_recovery_frames = 3;
techroll_speed = 9;

//Airdodge
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//Roll
roll_forward_startup_frames = 1;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 5;
roll_back_recovery_frames = 2;
roll_forward_max = 7.5; //roll speed
roll_backward_max = 7.5;



//Sprites

//Ground
spr_idle = sprite_get("idle");
spr_crouch = sprite_get("crouch");
spr_walk = sprite_get("walk");
spr_walkturn = sprite_get("walkturn");
spr_dash = sprite_get("dash");
spr_dashstart = sprite_get("dashstart");
spr_dashstop = sprite_get("dashstop");
spr_dashturn = sprite_get("dashturn");

//Air
spr_jumpstart = sprite_get("jumpstart");
spr_jump = sprite_get("jump");
spr_doublejump = sprite_get("doublejump");
spr_walljump = sprite_get("walljump");
spr_pratfall = sprite_get("pratfall");
spr_land = sprite_get("land");
spr_landinglag = sprite_get("landinglag");

//Dodge
spr_parry = sprite_get("parry");
spr_roll_forward = sprite_get("roll_forward");
spr_roll_backward = sprite_get("roll_backward");
spr_airdodge = sprite_get("airdodge");
spr_airdodge_waveland = sprite_get("waveland");
spr_tech = sprite_get("tech");

//Hurt
spr_hurt = sprite_get("hurt");
spr_bighurt = sprite_get("bighurt");
spr_hurtground = sprite_get("hurtground");
spr_uphurt = sprite_get("uphurt");
spr_downhurt = sprite_get("downhurt");
spr_bouncehurt = sprite_get("bouncehurt");
spr_spinhurt = sprite_get("spinhurt");

//Attack
spr_jab = sprite_get("jab");
spr_dattack = sprite_get("dattack");
spr_ftilt = sprite_get("ftilt");
spr_dtilt = sprite_get("dtilt");
spr_utilt = sprite_get("utilt");
spr_nair = sprite_get("nair");
spr_fair = sprite_get("fair");
spr_bair = sprite_get("bair");
spr_uair = sprite_get("uair");
spr_dair = sprite_get("dair");
spr_fstrong = sprite_get("fstrong");
spr_ustrong = sprite_get("ustrong");
spr_dstrong = sprite_get("dstrong");
spr_nspecial = sprite_get("nspecial");
spr_fspecial = sprite_get("fspecial");
spr_uspecial = sprite_get("uspecial");
spr_dspecial = sprite_get("dspecial");
spr_taunt = sprite_get("taunt");
spr_taunt_2 = sprite_get("taunt_2");

//NSpecials
spr_nspecial_guis = sprite_get("nspecial_guis");
spr_nspecial_gui_cursor = sprite_get("nspecial_gui_cursor");
spr_nspecial_cont_craft = sprite_get("nspecial_cont_craft");
spr_nspecial_cont_furnace = sprite_get("nspecial_cont_furnace");
spr_nspecial_cont_chest = sprite_get("nspecial_cont_chest");
spr_nspecial_cont_ender_chest = sprite_get("nspecial_cont_ender_chest");
spr_nspecial_cont_brewing_stand = sprite_get("nspecial_cont_brewing_stand");
spr_nspecial_cont_enchanting_table = sprite_get("nspecial_cont_enchanting_table");
spr_nspecial_cont_villager = sprite_get("nspecial_cont_villager");
spr_nspecial_item_sticky_piston = sprite_get("nspecial_item_sticky_piston");
spr_nspecial_item_sticky_piston_head = sprite_get("nspecial_item_sticky_piston_head");
spr_nspecial_item_porkchop = sprite_get("nspecial_item_porkchop");
spr_nspecial_item_potion = sprite_get("nspecial_item_potion");
spr_nspecial_item_minecart = sprite_get("nspecial_item_minecart");
spr_nspecial_item_throw = sprite_get("nspecial_item_throw");
spr_nspecial_item_elytra = sprite_get("nspecial_item_elytra");
spr_elytra_wings = sprite_get("elytra_wings");
spr_nspecial_item_boots = sprite_get("nspecial_item_boots");
spr_nspecial_item_trident = sprite_get("nspecial_item_trident");
spr_nspecial_item_chestplate = sprite_get("nspecial_item_chestplate");
spr_nspecial_item_crossbow = sprite_get("nspecial_item_crossbow");

//VFX
spr_vfx_crit = sprite_get("vfx_crit");
spr_vfx_smoke = sprite_get("vfx_smoke");
spr_vfx_ender = sprite_get("vfx_ender");
spr_vfx_splash = sprite_get("vfx_splash");
spr_vfx_food = sprite_get("vfx_food");
spr_vfx_potion_glass = sprite_get("vfx_potion_glass");
spr_vfx_potion_bubble_strength = sprite_get("vfx_potion_bubble_strength");
spr_vfx_potion_bubble_harming = sprite_get("vfx_potion_bubble_harming");
spr_vfx_potion_bubble_poison = sprite_get("vfx_potion_bubble_poison");
spr_vfx_tech_water = sprite_get("vfx_tech_water");
spr_vfx_exp = sprite_get("vfx_exp");
spr_vfx_exp_pickup = sprite_get("vfx_exp_pickup");

//Items
spr_itm_block_grass = sprite_get("itm_block_grass");
spr_itm_block_plank = sprite_get("itm_block_plank");
spr_itm_block_stone = sprite_get("itm_block_stone");
spr_itm_block_leafs = sprite_get("itm_block_leafs");
spr_itm_dispenser = sprite_get("itm_dispenser");
spr_itm_slime_block = sprite_get("itm_slime_block");
spr_itm_sticky_piston = sprite_get("itm_sticky_piston");
spr_itm_porkchop = sprite_get("itm_porkchop");
spr_itm_porkchop_hud = sprite_get("itm_porkchop_hud");
spr_itm_anvil = sprite_get("itm_anvil");
spr_itm_lava_bucket = sprite_get("itm_lava_bucket");
spr_itm_minecart = sprite_get("itm_minecart");
spr_itm_fire_charge = sprite_get("itm_fire_charge");
spr_itm_fire_charge_proj = sprite_get("itm_fire_charge_proj");
spr_itm_tnt = sprite_get("itm_tnt");
spr_itm_pearl = sprite_get("itm_pearl");
spr_itm_pearl_proj = sprite_get("itm_pearl_proj");
spr_itm_eye_of_ender = sprite_get("itm_eye_of_ender");
spr_itm_eye_of_ender_proj = sprite_get("itm_eye_of_ender_proj");
spr_itm_elytra = sprite_get("itm_elytra");
spr_itm_potion = sprite_get("itm_potion");
spr_itm_potion_hud = sprite_get("itm_potion_hud");
spr_itm_splash_potion = sprite_get("itm_splash_potion");
spr_itm_splash_potion_hud = sprite_get("itm_splash_potion_hud");
spr_itm_lingering_potion = sprite_get("itm_lingering_potion");
spr_itm_lingering_potion_hud = sprite_get("itm_lingering_potion_hud");
spr_itm_boots = sprite_get("itm_boots");
spr_itm_trident = sprite_get("itm_trident");
spr_itm_trident_hud = sprite_get("itm_trident_hud");
spr_itm_chestplate = sprite_get("itm_chestplate");
spr_itm_crossbow = sprite_get("itm_crossbow");
spr_itm_crossbow_hud = sprite_get("itm_crossbow_hud");
spr_itm_bell = sprite_get("itm_bell");
spr_itm_bell_proj = sprite_get("itm_bell_proj");
spr_itm_totem = sprite_get("itm_totem");

spr_itm_stick = sprite_get("itm_stick");

//Blocks
spr_blocks = sprite_get("blocks");
spr_blocks_destroy = sprite_get("blocks_destroy");
spr_blocks_destroy_wide = sprite_get("blocks_destroy_wide");
spr_blocks_mask = sprite_get("blocks_mask");
spr_blocks_mask_wide = sprite_get("blocks_mask_wide");
spr_blocks_break_grass = sprite_get("blocks_break_grass");
spr_blocks_break_plank = sprite_get("blocks_break_plank");
spr_blocks_break_stone = sprite_get("blocks_break_stone");
spr_blocks_break_leafs = sprite_get("blocks_break_leafs");
spr_blocks_break_slime = sprite_get("blocks_break_slime");
spr_blocks_break_iron = sprite_get("blocks_break_iron");
spr_blocks_break_ice = sprite_get("blocks_break_ice");

//HUD
spr_hud_hotbar = sprite_get("hud_hotbar");
spr_hud_experience = sprite_get("hud_experience");
spr_hud_selected = sprite_get("hud_selected");
spr_hud_item_durability = sprite_get("hud_item_durability");
spr_hud_strength = sprite_get("hud_strength");

//Misc.
spr_fstrong_arrow = sprite_get("fstrong_arrow");
spr_fstrong_arrow_fire = sprite_get("fstrong_arrow_fire");
spr_fspecial_proj = sprite_get("fspecial_proj");
spr_tnt = sprite_get("tnt");
spr_tnt_mask = sprite_get("tnt_mask");
spr_tnt_blast = sprite_get("tnt_blast");
spr_splash_potion_blast = sprite_get("splash_potion_blast");
spr_lingering_potion_blast = sprite_get("lingering_potion_blast");
spr_empty = sprite_get("empty");
spr_flowing_water = sprite_get("flowing_water");
spr_flowing_lava = sprite_get("flowing_lava");
spr_fire = sprite_get("fire");
spr_intro = sprite_get("intro");

sprite_change_collision_mask("flowing_lava", true, 1, 0, 0, 0, 0, 0);
sprite_change_collision_mask("blocks", true, 1, 0, 0, 0, 0, 0);
sprite_change_collision_mask("fspecial_proj", true, 1, 0, 0, 0, 0, 0);



//SFX init

sfx_minecraft_eat = sound_get("minecraft_eat");
sfx_minecraft_hit = sound_get("minecraft_hit");
sfx_minecraft_oof = sound_get("minecraft_oof");
sfx_minecraft_pop = sound_get("minecraft_pop");
sfx_minecraft_bell = sound_get("minecraft_bell");
sfx_minecraft_fuse = sound_get("minecraft_fuse");
sfx_minecraft_lava = sound_get("minecraft_lava");
sfx_minecraft_anvil = sound_get("minecraft_anvil");
sfx_minecraft_click = sound_get("minecraft_click");
sfx_minecraft_ding1 = sound_get("minecraft_ding1");
sfx_minecraft_ding2 = sound_get("minecraft_ding2");
sfx_minecraft_drink = sound_get("minecraft_drink");
sfx_minecraft_singe = sound_get("minecraft_singe");
sfx_minecraft_totem = sound_get("minecraft_totem");
sfx_minecraft_glass = sound_get("minecraft_glass");
sfx_minecraft_bubble = sound_get("minecraft_bubble");
sfx_minecraft_elytra = sound_get("minecraft_elytra");
sfx_minecraft_explode = sound_get("minecraft_explode");
sfx_minecraft_minecart = sound_get("minecraft_minecart");
sfx_minecraft_fireball = sound_get("minecraft_fireball");
sfx_minecraft_crossbow = sound_get("minecraft_crossbow");
sfx_minecraft_whirlpool = sound_get("minecraft_whirlpool");
sfx_minecraft_break_wood = sound_get("minecraft_break_wood");
sfx_minecraft_break_tool = sound_get("minecraft_break_tool");
sfx_minecraft_armor_equip = sound_get("minecraft_armor_equip");

sfx_minecraft_fire_idle = sound_get("minecraft_fire_idle");
sfx_minecraft_fire_ignite = sound_get("minecraft_fire_ignite");

sfx_minecraft_teleport1 = sound_get("minecraft_teleport1");
sfx_minecraft_teleport2 = sound_get("minecraft_teleport2");

sfx_minecraft_piston_in = sound_get("minecraft_piston_in");
sfx_minecraft_piston_out = sound_get("minecraft_piston_out");

sfx_minecraft_chest_close = sound_get("minecraft_chest_close");
sfx_minecraft_chest_open = sound_get("minecraft_chest_open");

sfx_minecraft_place_grass = sound_get("minecraft_place_grass");
sfx_minecraft_place_plank = sound_get("minecraft_place_plank");
sfx_minecraft_place_stone = sound_get("minecraft_place_stone");
sfx_minecraft_place_slime = sound_get("minecraft_place_slime");

sfx_minecraft_shield = [];
sfx_minecraft_shield[1] = sound_get("minecraft_shield1");
sfx_minecraft_shield[2] = sound_get("minecraft_shield2");
sfx_minecraft_shield[3] = sound_get("minecraft_shield3");
sfx_minecraft_shield[4] = sound_get("minecraft_shield4");
sfx_minecraft_shield[5] = sound_get("minecraft_shield5");

sfx_minecraft_bow_loose = sound_get("minecraft_bow_loose");
sfx_minecraft_bow_hit = [];
sfx_minecraft_bow_hit[1] = sound_get("minecraft_bow_hit1");
sfx_minecraft_bow_hit[2] = sound_get("minecraft_bow_hit2");
sfx_minecraft_bow_hit[3] = sound_get("minecraft_bow_hit3");
sfx_minecraft_bow_hit[4] = sound_get("minecraft_bow_hit4");

sfx_minecraft_swim = [];
sfx_minecraft_swim[0] = sound_get("minecraft_swim1");
sfx_minecraft_swim[1] = sound_get("minecraft_swim2");
sfx_minecraft_swim[2] = sound_get("minecraft_swim3");
sfx_minecraft_splash = [];
sfx_minecraft_splash[0] = sound_get("minecraft_splash1");
sfx_minecraft_splash[1] = sound_get("minecraft_splash2");
sfx_minecraft_bucket_water = sound_get("minecraft_bucket_water");
sfx_minecraft_bucket_lava = sound_get("minecraft_bucket_lava");

sfx_minecraft_villager_idle = sound_get("minecraft_villager_idle");
sfx_minecraft_villager_death = sound_get("minecraft_villager_death");

sfx_ssbu_bell = sound_get("ssbu_bell");
sfx_ssbu_bow_charge = sound_get("ssbu_bow_charge");
sfx_ssbu_fludd_ding = sound_get("ssbu_fludd_ding");
sfx_splatoon_click = sound_get("splatoon_click");



//Misc.

//VFX init
vfx_tech_water = hit_fx_create(spr_vfx_tech_water, 15);
vfx_crit = hit_fx_create(spr_vfx_crit, 30);
vfx_smoke = hit_fx_create(spr_vfx_smoke, 30);
vfx_ender = hit_fx_create(spr_vfx_ender, 30);
vfx_tnt_blast = hit_fx_create(spr_tnt_blast, 20);
vfx_splash_potion_blast = hit_fx_create(spr_splash_potion_blast, 20);
vfx_arrow = hit_fx_create(spr_fstrong_arrow, 60);
vfx_arrow_fire = hit_fx_create(spr_fstrong_arrow_fire, 60);
vfx_blocks_break_grass = hit_fx_create(spr_blocks_break_grass, 30);
vfx_blocks_break_plank = hit_fx_create(spr_blocks_break_plank, 30);
vfx_blocks_break_stone = hit_fx_create(spr_blocks_break_stone, 30);
vfx_blocks_break_leafs = hit_fx_create(spr_blocks_break_leafs, 30);
vfx_blocks_break_slime = hit_fx_create(spr_blocks_break_slime, 30);
vfx_blocks_break_iron = hit_fx_create(spr_blocks_break_iron, 30);
vfx_blocks_break_ice = hit_fx_create(spr_blocks_break_ice, 30);
vfx_splash = hit_fx_create(spr_vfx_splash, 30);
vfx_food = hit_fx_create(spr_vfx_food, 30);
vfx_potion_glass = hit_fx_create(spr_vfx_potion_glass, 30);
vfx_potion_bubble_strength = hit_fx_create(spr_vfx_potion_bubble_strength, 60);
vfx_potion_bubble_harming = hit_fx_create(spr_vfx_potion_bubble_harming, 60);
vfx_potion_bubble_poison = hit_fx_create(spr_vfx_potion_bubble_poison, 60);
vfx_blocks_items_grass = hit_fx_create(spr_itm_block_grass, 1000000);
vfx_blocks_items_plank = hit_fx_create(spr_itm_block_plank, 1000000);
vfx_blocks_items_stone = hit_fx_create(spr_itm_block_stone, 1000000);
vfx_blocks_items_leafs = hit_fx_create(spr_itm_block_leafs, 1000000);
vfx_exp = hit_fx_create(spr_vfx_exp, 1000000);
vfx_exp_pickup = hit_fx_create(spr_vfx_exp_pickup, 24);

//Hurtbox sprites
hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//Victory
set_victory_bg(sprite_get("victory"));
set_victory_theme(sound_get("win_steve"));

//SFX
land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_med");
waveland_sound = asset_get("sfx_waveland_ran");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;



//Items

items = [0];
i = 0;

/*
 * initItem(item name, held sprite, gui sprite, attack index, count type)
 * 
 * Returns the array index which was populated with the item
 * 
 * Set attack index to 0 and it will simply do nothing when nspecial is used,
 * eg Totem of Undying doesn't transition to an attack and instead lets you
 * keep moving while holding B to discard the item
 * 
 * Set gui sprite to 0 and it will just use the held sprite
 * 
 * Count type:
 * - 0: One-time use
 * - 1: 3-time use, represented as item count
 * - 2: 3-time use, represented as item durability
 * - 3: One-time use, with wiggle room for one whiffed attempt (based on has_hit)
 * - 4: 2-time use, represented as item count
 * - 5: 6-time use, represented as item count
 */

IT_NOTHING			= initItem("nothing, idiot.", asset_get("empty_sprite"), asset_get("empty_sprite"), 0, 0);

IT_SLIME_BLOCK		= initItem("Slime Block", spr_itm_slime_block, 0, AT_USPECIAL, 0);
IT_STICKY_PISTON	= initItem("Sticky Piston", spr_itm_sticky_piston, 0, AT_EXTRA_1, 0);
IT_DISPENSER		= initItem("Dispenser", spr_itm_dispenser, 0, AT_USPECIAL, 0);

IT_PORKCHOP			= initItem("Cooked Porkchop", spr_itm_porkchop, spr_itm_porkchop_hud, AT_EXTRA_2, 0);
IT_ANVIL			= initItem("Anvil", spr_itm_anvil, 0, AT_USPECIAL, 0);
IT_LAVA				= initItem("Lava Bucket", spr_itm_lava_bucket, 0, AT_DSPECIAL, 0);

IT_MINECART			= initItem("Minecart", spr_itm_minecart, 0, AT_EXTRA_3, 0);
IT_FIRE_CHARGE		= initItem("Fire Charge", spr_itm_fire_charge, 0, AT_NTHROW, 1 + (4 * has_rune("O")));
IT_TNT				= initItem("TNT", spr_itm_tnt, 0, AT_USPECIAL, 0);

IT_ENDER_PEARL		= initItem("Ender Pearl", spr_itm_pearl, 0, AT_NTHROW, 1);
IT_EYE_OF_ENDER		= initItem("Eye of Ender", spr_itm_eye_of_ender, 0, AT_NTHROW, 1);
IT_ELYTRA			= initItem("Elytra", spr_itm_elytra, 0, AT_UTHROW, 0);

IT_POTION			= initItem("Potion of Strength", spr_itm_potion, spr_itm_potion_hud, AT_EXTRA_2, 0);
IT_SPLASH_POTION	= initItem("Splash Potion", spr_itm_splash_potion, spr_itm_splash_potion_hud, AT_NTHROW, 1 + (4 * has_rune("O")));
IT_LINGERING_POTION	= initItem("Lingering Potion", spr_itm_lingering_potion, spr_itm_lingering_potion_hud, AT_NTHROW, 0);

IT_FROST_WALKER		= initItem("Frost Walker I", spr_itm_boots, spr_itm_boots, AT_DTHROW, 0 + 2 * has_rune("O"));
IT_RIPTIDE			= initItem("Riptide II", spr_itm_trident, spr_itm_trident_hud, AT_FTHROW, 0);
IT_THORNS			= initItem("Thorns III", spr_itm_chestplate, spr_itm_chestplate, AT_NSPECIAL_AIR, 2);

IT_CROSSBOW			= initItem("Crossbow", spr_itm_crossbow_hud, spr_itm_crossbow_hud, AT_FSTRONG_2, 0);
IT_BELL				= initItem("Bell", spr_itm_bell, spr_itm_bell, AT_NTHROW, 0);
IT_TOTEM			= initItem("Totem of Undying", spr_itm_totem, spr_itm_totem, 0, 0);

held_item = 0;



//Containers

containers = [0];
i = 0;

/*
 * initContainer(container name, char sprite, container icon, gui sprite, list of item indexes)
 * 
 * Returns the array index which was populated with the container
 */

CT_CRAFT			= initContainer("Crafting Table", spr_nspecial_cont_craft, spr_walk, [IT_SLIME_BLOCK, IT_STICKY_PISTON, IT_DISPENSER]);
CT_FURNACE			= initContainer("Furnace", spr_nspecial_cont_furnace, spr_walk, [IT_PORKCHOP, IT_ANVIL, IT_LAVA]);
CT_CHEST			= initContainer("Chest", spr_nspecial_cont_chest, spr_walk, [IT_MINECART, IT_FIRE_CHARGE, IT_TNT]);
CT_ENDER			= initContainer("Ender Chest", spr_nspecial_cont_ender_chest, spr_walk, [IT_ENDER_PEARL, IT_EYE_OF_ENDER, IT_ELYTRA]);
CT_BREWING			= initContainer("Brewing Stand", spr_nspecial_cont_brewing_stand, spr_walk, [IT_POTION, IT_SPLASH_POTION, IT_LINGERING_POTION]);
CT_ENCHANT			= initContainer("Enchanting Table", spr_nspecial_cont_enchanting_table, spr_walk, [IT_FROST_WALKER, IT_RIPTIDE, IT_THORNS]);
CT_TESTIFICATE		= initContainer("Villager", spr_nspecial_cont_villager, spr_walk, [IT_CROSSBOW, IT_BELL, IT_TOTEM]);

next_container = CT_CRAFT;



//Blocks

block_datas = [0];
i = 0;

BL_GRASS			= initBlock("Grass Block", vfx_blocks_break_grass, spr_itm_block_grass, sfx_minecraft_place_grass, vfx_blocks_items_grass);
BL_PLANKS			= initBlock("Oak Planks" , vfx_blocks_break_plank, spr_itm_block_plank, sfx_minecraft_place_plank, vfx_blocks_items_plank);
BL_COBBLE			= initBlock("Cobblestone", vfx_blocks_break_stone, spr_itm_block_stone, sfx_minecraft_place_stone, vfx_blocks_items_stone);
BL_LEAFS			= initBlock("Oak Leaves" , vfx_blocks_break_leafs, spr_itm_block_leafs, sfx_minecraft_place_grass, vfx_blocks_items_leafs);

BL_DISPENSER		= initBlock("Dispenser", vfx_blocks_break_stone, spr_itm_dispenser, sfx_minecraft_place_stone, vfx_blocks_items_grass);
BL_SLIME			= initBlock("Slime Block", vfx_blocks_break_slime, spr_itm_slime_block, sfx_minecraft_place_slime, vfx_blocks_items_grass);
BL_ANVIL			= initBlock("Anvil", vfx_blocks_break_iron, spr_itm_anvil, sfx_minecraft_anvil, vfx_blocks_items_grass);
BL_ICE				= initBlock("Ice", vfx_blocks_break_ice, spr_itm_anvil, sfx_minecraft_glass, vfx_blocks_items_grass);

primary_block = (player - 1) % 4;
// primary_block = BL_LEAFS;



//Animation item positions

ok_anims = []; //List of sprites whose traits have been set up

cur = 0;//Move index
rec = [0];//List of frames
hotbar = [];//Hotbar positions

cur = spr_idle;
array_push(ok_anims, cur);
rec = [0, 4, 8, 12];//Frame number(s) to apply the next itemPos() to
itemPos(-13, -14, 0); //x, y, angle to draw the item at
rec = [1, 3, 9, 11];
itemPos(-15, -13, 0);
rec = [2, 10];
itemPos(-15, -12, 0);
rec = [5, 7, 13, 15];
itemPos(-11, -12, 0);
rec = [6, 14];
itemPos(-10, -11, 0);
hotbar[cur] = 4;

cur = spr_crouch;
array_push(ok_anims, cur);
rec = [0, 4, 5];
itemPos_ext(-8, -10, 90, 0, -1, 1, c_white, 1);
rec = [1, 3];
itemPos_ext(-3, -7, 90, 0, -1, 1, c_white, 1);
rec = 2;
itemPos_ext(2, -8, 0, 0, -1, 1, c_white, 1);
hotbar[cur] = 4;

cur = spr_walk;
array_push(ok_anims, cur);
rec = [1, 5];
itemPos(-12, -15, 0);
rec = [0, 6];
itemPos(-13, -14, 0);
rec = [2, 4];
itemPos(-11, -14, 0);
rec = 3;
itemPos(-11, -13, 0);
rec = 7;
itemPos(-13, -13, 0);
hotbar[cur] = 4;

cur = spr_walkturn;
array_push(ok_anims, cur);
rec = 0;
itemPos_ext(3, -13, 0, 0, -1, 1, c_white, 1);
rec = 1;
itemPos_ext(-3, -13, 0, 0, 1, 1, c_white, 1);
hotbar[cur] = 4;

cur = spr_dash;
array_push(ok_anims, cur);
rec = 0;
itemPos_ext(-1, -9, 90, 0, -1, 1, c_white, 1);
rec = 1;
itemPos_ext(10, -15, 0, 0, -1, 1, c_white, 1);
rec = 2;
itemPos_ext(12, -15, 0, 0, -1, 1, c_white, 1);
rec = 3;
itemPos_ext(12, -14, 0, 0, -1, 1, c_white, 1);
rec = 4;
itemPos_ext(10, -13, 0, 0, -1, 1, c_white, 1);
rec = 5;
itemPos_ext(-1, -9, 90, 0, -1, 1, c_white, 1);
rec = 6;
itemPos_ext(-10, -19, 180, 0, -1, 1, c_white, 1);
rec = 7;
itemPos_ext(-10, -18, 180, 0, -1, 1, c_white, 1);
hotbar[cur] = 4;

cur = spr_dashstart;
array_push(ok_anims, cur);
rec = 0;
itemPos_ext(-10, -15, 180, 0, -1, 1, c_white, 1);
rec = 1;
itemPos_ext(-11, -18, 180, 0, -1, 1, c_white, 1);
rec = 2;
itemPos_ext(-10, -19, 180, 0, -1, 1, c_white, 1);
rec = 3;
itemPos_ext(-10, -18, 180, 0, -1, 1, c_white, 1);
hotbar[cur] = 4;

cur = spr_dashturn;
array_push(ok_anims, cur);
rec = 0;
itemPos_ext(16, -14, 0, 0, -1, 1, c_white, 1);
rec = 1;
itemPos_ext(0, -12, 90, 0, -1, 1, c_white, 1);
rec = 2;
itemPos_ext(-8, -15, 90, 0, -1, 1, c_white, 1);
hotbar[cur] = 4;

cur = spr_dashstop;
array_push(ok_anims, cur);
rec = 0;
itemPos_ext(-14, -13, 0, 0, 1, 1, c_white, 1);
rec = 1;
itemPos_ext(-14, -14, 0, 0, 1, 1, c_white, 1);
hotbar[cur] = 4;

cur = spr_parry;
array_push(ok_anims, cur);
rec = 0;
itemPos_ext(4, -14, 0, 1, 1, 1, c_white, 1);
rec = 1;
itemPos(-12, -14, 0);
rec = 2;
itemPos(-14, -13, 0);
rec = 3;
itemPos_ext(0, -12, 0, 1, 1, 1, c_white, 1);
rec = 4;
itemPos_ext(2, -14, 0, 1, 1, 1, c_white, 1);
rec = 5;
itemPos_ext(-10, -13, 0, 1, 1, 1, c_white, 1);
hotbar[cur] = [5,5,5,5,5,4];

cur = spr_roll_forward;

repeat(2){
array_push(ok_anims, cur);
rec = 0;
itemPos(-5, -8, 0);
rec = 1;
itemPos(-10, -16, 0);
rec = 2;
itemPos(-2, -15, 270);
rec = 3;
itemPos(9, -17, 270);
rec = 4;
itemPos(8, -33, 180);
rec = 5;
itemPos(-6, -21, 90);
rec = 6;
itemPos(-7, -14, 0);
rec = 7;
itemPos(-10, -15, 0);
rec = 8;
itemPos(-7, -14, 0);
hotbar[cur] = 4;

cur = spr_roll_backward;
}

cur = spr_airdodge_waveland;
array_push(ok_anims, cur);
rec = 0;
itemPos(-13, -13, 0);
rec = 1;
itemPos(-14, -13, 0);
rec = 2;
itemPos(-15, -14, 0);
hotbar[cur] = 4;

cur = spr_jumpstart;
array_push(ok_anims, cur);
rec = 0;
itemPos(-11, -11, 0);
rec = 1;
itemPos(-7, -7, 270);
hotbar[cur] = 3;

cur = spr_jump;
array_push(ok_anims, cur);
rec = [0, 1, 2];
itemPos(-5, -10, 270);
rec = 3;
itemPos(-10, -11, 0);
rec = 4;
itemPos(-15, -17, 0);
rec = 5;
itemPos(-16, -22, 90);
rec = [6, 7, 8];
itemPos(-15, -23, 90);
hotbar[cur] = 3;

cur = spr_doublejump;
array_push(ok_anims, cur);
rec = 0;
itemPos(-5, -10, 270);
rec = 1;
itemPos(0, -12, 270);
rec = 2;
itemPos(-7, -15, 0);
rec = 3;
itemPos(11, -18, 90);
rec = 4;
itemPos(-4, -8, 270);
rec = 5;
itemPos(-15, -17, 0);
rec = 6;
itemPos(-16, -22, 90);
rec = [7, 8, 9];
itemPos(-15, -23, 90);
hotbar[cur] = 3;

cur = spr_land;
array_push(ok_anims, cur);
rec = 0;
itemPos(-11, -20, 90);
rec = 1;
itemPos(-14, -17, 90);
hotbar[cur] = 4;

cur = spr_landinglag;
array_push(ok_anims, cur);
rec = 0;
itemPos(-11, -20, 90);
rec = 1;
itemPos(-14, -17, 90);
hotbar[cur] = 4;

cur = spr_airdodge;
array_push(ok_anims, cur);
rec = [0, 5];
itemPos(-11, -15, 0);
rec = 1;
itemPos_ext(15, -20, 0, 1, -1, 1, c_white, 1);
rec = 2;
itemPos_ext(12, -23, 0, 1, -1, 1, c_white, 1);
rec = 3;
itemPos_ext(11, -23, 0, 1, -1, 1, c_white, 1);
rec = 4;
itemPos_ext(8, -21, 0, 1, -1, 1, c_white, 1);
rec = 6;
itemPos(-13, -16, 0);
hotbar[cur] = 3;

cur = spr_jab;
array_push(ok_anims, cur);
rec = 0;
itemPos_ext(2, -14, 0, 1, 1, 1, c_white, 1);
rec = 1;
itemPos(-12, -16, 0);
rec = 2;
itemPos(-11, -13, 0);
rec = 3;
itemPos(-14, -11, 0);
rec = 4;
itemPos(-12, -15, 0);
rec = 5;
itemPos_ext(27, -13, 0, 0, -1, 1, c_white, 1);
rec = 6;
itemPos_ext(25, -13, 0, 0, -1, 1, c_white, 1);
rec = 7;
itemPos_ext(22, -12, 0, 0, -1, 1, c_white, 1);
rec = 8;
itemPos_ext(-1, -16, 0, 0, -1, 1, c_white, 1);
hotbar[cur] = 4;

cur = spr_ftilt;
array_push(ok_anims, cur);
rec = 0;
itemPos_ext(2, -14, 0, 1, 1, 1, c_white, 1);
rec = 1;
itemPos(-8, -15, 0);
rec = 2;
itemPos(-3, -16, 0);
rec = 3;
itemPos(-4, -15, 0);
rec = 4;
itemPos(-6, -12, 0);
rec = 5;
itemPos(-12, -13, 0);
hotbar[cur] = 4;

cur = spr_utilt;
array_push(ok_anims, cur);
rec = 0;
itemPos_ext(1, -16, 0, 0, -1, 1, c_white, 1);
rec = 1;
itemPos_ext(9, -10, 0, 0, -1, 1, c_white, 1);
rec = 2;
itemPos(-13, -12, 0);
rec = 3;
itemPos(-15, -12, 0);
rec = 4;
itemPos(-14, -12, 0);
rec = 5;
itemPos(-14, -13, 0);
hotbar[cur] = 4;

cur = spr_dtilt;
array_push(ok_anims, cur);
rec = 0;
itemPos_ext(-4, -8, 0, 0, -1, 1, c_white, 1);
rec = 1;
itemPos_ext(-7, -9, 0, 0, -1, 1, c_white, 1);
rec = 2;
itemPos(-3, -3, 0);
rec = 3;
itemPos(-2, -3, 0);
rec = 4;
itemPos(-1, -4, 0);
rec = 5;
itemPos_ext(-1, -7, 0, 0, -1, 1, c_white, 1);
rec = 6;
itemPos_ext(0, -8, 0, 0, -1, 1, c_white, 1);
hotbar[cur] = 4;

cur = spr_dattack;
array_push(ok_anims, cur);
rec = 0;
itemPos_ext(9, -10, 0, 0, -1, 1, c_white, 1);
rec = 1;
itemPos_ext(10, -18, 0, 0, -1, 1, c_white, 1);
rec = 2;
itemPos_ext(8, -17, 0, 0, -1, 1, c_white, 1);
rec = 3;
itemPos(-8, -17, 0);
rec = 4;
itemPos(-7, -18, 0);
rec = 5;
itemPos(-10, -15, 0);
rec = 6;
itemPos(-12, -14, 0);
hotbar[cur] = 4;

cur = spr_nair;
array_push(ok_anims, cur);
rec = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
itemPos_ext(0, 0, 0, 0, 0, 0, c_white, 0);
rec = 11;
itemPos(-13, -16, 0);
hotbar[cur] = [9,9,9,9,9,9,9,9,9,9,9,3];

cur = spr_fair;
array_push(ok_anims, cur);
rec = 0;
itemPos(0, -10, 90);
rec = 1;
itemPos(5, -23, 0);
rec = 2;
itemPos(-3, -17, 90);
rec = 3;
itemPos_ext(-10, -29, 90, 1, 1, 1, c_white, 1);
rec = 4;
itemPos_ext(-11, -26, 90, 1, 1, 1, c_white, 1);
rec = 5;
itemPos(-12, -24, 90);
rec = 6;
itemPos(-14, -20, 90);
hotbar[cur] = 3;

cur = spr_bair;
array_push(ok_anims, cur);
rec = 0;
itemPos(-15, -16, 0);
rec = 1;
itemPos(-4, -8, 270);
rec = 2;
itemPos(18, -22, 180);
rec = 3;
itemPos(17, -18, 180);
rec = 4;
itemPos(12, -12, 270);
rec = 5;
itemPos(-5, -9, 0);
hotbar[cur] = 3;

cur = spr_uair;
array_push(ok_anims, cur);
rec = 0;
itemPos(-12, -26, 0);
rec = 1;
itemPos(-14, -23, 0);
rec = 2;
itemPos(-13, -20, 0);
rec = 3;
itemPos(13, -18, 90);
rec = 4;
itemPos(12, -17, 90);
rec = 5;
itemPos(10, -14, 90);
rec = 6;
itemPos(-12, -16, 180);
hotbar[cur] = 3;

cur = spr_dair;
array_push(ok_anims, cur);
rec = 0;
itemPos(6, -14, 90);
rec = 1;
itemPos(4, -13, 90);
rec = 2;
itemPos(-4, -25, 90);
rec = 3;
itemPos(-2, -23, 90);
rec = 4;
itemPos(-8, -28, 90);
rec = 5;
itemPos(-7, -27, 90);
rec = 6;
itemPos(-9, -26, 90);
hotbar[cur] = [6,6,10,10,6,6,6];

cur = spr_fstrong;
array_push(ok_anims, cur);
rec = 0;
itemPos_ext(-6, -10, 0, 0, -1, 1, c_white, 1);
rec = 1;
itemPos_ext(9, -11, 0, 0, -1, 1, c_white, 1);
rec = 2;
itemPos(-10, -15, 0);
rec = 3;
itemPos(-8, -15, 0);
rec = 4;
itemPos(-15, -15, 0);
rec = 5;
itemPos(-12, -15, 0);
rec = 6;
itemPos_ext(2, -8, 0, 0, -1, 1, c_white, 1);
rec = 7;
itemPos_ext(-5, -10, 0, 0, -1, 1, c_white, 1);
hotbar[cur] = [6,6,10,10,6,6,6,4];

cur = spr_ustrong;
array_push(ok_anims, cur);
rec = 0;
itemPos_ext(2, -12, 0, 0, -1, 1, c_white, 1);
rec = 1;
itemPos_ext(7, -16, 0, 0, -1, 1, c_white, 1);
rec = 2;
itemPos_ext(5, -15, 0, 0, -1, 1, c_white, 1);
rec = 3;
itemPos_ext(-8, -37, 0, 1, 1, 1, c_white, 1);
rec = 4;
itemPos_ext(-9, -36, 0, 1, 1, 1, c_white, 1);
rec = 5;
itemPos_ext(-10, -29, 0, 1, 1, 1, c_white, 1);
rec = 6;
itemPos_ext(-9, -17, 0, 1, 1, 1, c_white, 1);
rec = 7;
itemPos(-11, -13, 0);
rec = 8;
itemPos(-13, -15, 0);
hotbar[cur] = [7,7,7,7,7,7,7,7,4];

cur = spr_dstrong;
array_push(ok_anims, cur);
rec = 0;
itemPos_ext(-9, -15, 0, 1, 1, 1, c_white, 1);
rec = 1;
itemPos_ext(-12, -17, 90, 1, 1, 1, c_white, 1);
rec = 2;
itemPos_ext(-11, -13, 0, 0, 1, 1, c_white, 1);
rec = 3;
itemPos_ext(22, -11, 0, 1, -1, 1, c_white, 1);
rec = 4;
itemPos_ext(21, -11, 0, 0, -1, 1, c_white, 1);
rec = 5;
itemPos(8, -6, 90);
rec = 6;
itemPos(-10, -12, 0);
rec = 7;
itemPos(-14, -16, 0);
hotbar[cur] = [7,7,7,7,7,7,7,4];

cur = spr_dspecial;
array_push(ok_anims, cur);
rec = [2, 3];
itemPos_ext(0, 0, 0, 0, 0, 0, c_white, 0);
rec = [0, 4];
itemPos_ext(3, -14, 0, 1, 1, 1, c_white, 1);
rec = [1, 5];
itemPos_ext(-3, -14, 0, 1, 1, 1, c_white, 1);
rec = 6;
itemPos(18, -12, 0);
rec = 7;
itemPos(19, -13, 0);
rec = 8;
itemPos(5, -12, 0);
rec = 9;
itemPos(-7, -10, 0);
hotbar[cur] = [1,1,1,1,4,4,4,4,4,4];

cur = spr_fspecial;
array_push(ok_anims, cur);
rec = 0;
itemPos(-3, -10, 0);
rec = 1;
itemPos(8, -12, 270);
rec = 2;
itemPos(9, -12, 270);
rec = 3;
itemPos(-14, -35, 90);
rec = 4;
itemPos(-13, -33, 90);
rec = 5;
itemPos(-15, -19, 0);
hotbar[cur] = 2;

cur = spr_uspecial;
array_push(ok_anims, cur);
rec = 0;
itemPos(-8, -13, 0);
rec = 1;
itemPos(-5, -8, 0);
rec = 2;
itemPos(-7, -10, 0);
rec = 3;
itemPos(-15, -22, 0);
rec = 4;
itemPos(-13, -19, 0);
rec = 5;
itemPos(-14, -20, 0);
hotbar[cur] = 0;

cur = spr_uspecial + 1; //placed block/item
array_push(ok_anims, cur);
rec = 0;
itemPos_ext(7, -4, 0, 1, 1, 1, c_white, 1);
rec = 1;
itemPos(11, -19, 0);
rec = 2;
itemPos(13, -21, 0);
rec = 3;
itemPos(2, -2, 0);
rec = 4;
itemPos(5, -6, 0);
rec = 5;
itemPos(16, -21, 0);
hotbar[cur] = 0;

cur = spr_nspecial_item_throw;
array_push(ok_anims, cur);
rec = 0;
itemPos(-18, -21, 0);
rec = 1;
itemPos(-9, -27, 0);
rec = 2;
itemPos(22, -18, 0);
rec = 3;
itemPos(19, -14, 0);
rec = 4;
itemPos(15, -12, 0);
rec = 5;
itemPos(-2, -16, 0);
hotbar[cur] = 4;

var anims_to_handle = [
	spr_nspecial_cont_craft,
	spr_nspecial_cont_furnace,
	spr_nspecial_cont_chest,
	spr_nspecial_cont_ender_chest,
	spr_nspecial_cont_brewing_stand,
	spr_nspecial_cont_enchanting_table,
	spr_nspecial_cont_villager
	];

for (current = 0; current < array_length_1d(anims_to_handle); current++){
	
	cur = anims_to_handle[current];
	array_push(ok_anims, cur);
	rec = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24];
	itemPos_ext(0, 0, 0, 0, 0, 0, c_white, 0);
	rec = 25;
	itemPos_ext(16, -19, 30, 0, 1.5, 1.5, c_white, 1);
	rec = 26;
	itemPos_ext(15, -18, 20, 0, 1.4, 1.4, c_white, 1);
	rec = 27;
	itemPos(6, -16, 0);
	hotbar[cur] = 4;
}

cur = spr_hurt;
array_push(ok_anims, cur);
rec = 0;
itemPos(-15, -10, 0);
hotbar[cur] = 1;

cur = spr_hurtground;
array_push(ok_anims, cur);
rec = 0;
itemPos(-15, -10, 0);
hotbar[cur] = 4;

cur = spr_bighurt;
array_push(ok_anims, cur);
rec = 0;
itemPos(6, -12, 90);
hotbar[cur] = 1;

cur = spr_uphurt;
array_push(ok_anims, cur);
rec = 0;
itemPos(-5, -11, 270);
hotbar[cur] = 1;

cur = spr_downhurt;
array_push(ok_anims, cur);
rec = 0;
itemPos(3, -22, 90);
hotbar[cur] = 1;

cur = spr_bouncehurt;
array_push(ok_anims, cur);
rec = 0;
itemPos(-9, -13, 0);
hotbar[cur] = 1;

cur = spr_spinhurt;
array_push(ok_anims, cur);
rec = 0;
itemPos(3, -23, 0);
rec = 1;
itemPos(-6, -16, 270);
rec = 2;
itemPos(-3, -4, 180);
rec = 3;
itemPos(6, -12, 90);
hotbar[cur] = 1;



user_event(14);



if has_rune("M"){
	phone_cheats[cheat_cont_select] = 1;
	phone_cheats[cheat_tmi] = 1;
	containers[CT_TESTIFICATE].spent_items = [0, 0, 1];
}

if has_rune("N"){
	phone_cheats[cheat_tmi] = 1;
}



#define initItem(item_name, item_held_sprite, item_inv_sprite, item_attack, item_count)

var temp = (item_count == 5);

if item_count == 5 item_count = 1;

items[i] = {
	name: item_name,
	held_sprite: item_held_sprite,
	inv_sprite: item_inv_sprite ? item_inv_sprite : item_held_sprite,
	attack: item_attack,
	count_type: item_count,
	count: 0,
	count_max: ((item_count == clamp(item_count, 1, 2)) ? 3 : 1) + (item_count == 3 || item_count == 4),
	show_count: (item_count == 1),
	show_durability: (item_count == 2),
	show_durability_mercy: (item_count == 3)
};

if temp{
	items[i].count_max = 6;
}

i++;
return i - 1;



#define initContainer(cont_name, cont_anim, cont_sprite, cont_items)

containers[i] = {
	name: cont_name,
	anim: cont_anim,
	sprite: cont_sprite,
	items: cont_items,
	spent_items: [0, 0, 0]
};

i++;
return i - 1;



#define initBlock(bloc_name, bloc_vfx, bloc_itm, bloc_sfx, bloc_vfx2)

block_datas[i] = {
	name: bloc_name,
	vfx: bloc_vfx,
	item: bloc_itm,
	sfx: bloc_sfx,
	item_vfx: bloc_vfx2,
	num: i
};

i++;
return i - 1;



#define itemPos(x_pos, y_pos, rot)

if is_array(rec){
	for (i = 0; i < array_length_1d(rec); i++){
		itm_pos[cur, rec[i]] = {
			x: x_pos * 2,
			y: y_pos * 2,
			angle: rot,
			back: 0,
			xscale: 1,
			yscale: 1,
			color: c_white,
			alpha: 1
		}
	}
}

else{
	itm_pos[cur, rec] = {
		x: x_pos * 2,
		y: y_pos * 2,
		angle: rot,
		back: 0,
		xscale: 1,
		yscale: 1,
		color: c_white,
		alpha: 1
	}
}



#define itemPos_ext(x_pos, y_pos, rot, back_pos, xsc, ysc, col, alp)

if is_array(rec){
	for (i = 0; i < array_length_1d(rec); i++){
		itm_pos[cur, rec[i]] = {
		x: x_pos * 2,
		y: y_pos * 2,
		angle: rot,
		back: back_pos,
		xscale: xsc,
		yscale: ysc,
		color: col,
		alpha: alp
		}
	}
}

else{
	itm_pos[cur, rec] = {
		x: x_pos * 2,
		y: y_pos * 2,
		angle: rot,
		back: back_pos,
		xscale: xsc,
		yscale: ysc,
		color: col,
		alpha: alp
	}
}