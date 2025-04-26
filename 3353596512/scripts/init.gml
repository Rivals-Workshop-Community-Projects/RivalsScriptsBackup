//hurtbox_spr = sprite_get("1_idlehbox");
hurtbox_spr = sprite_get("1_idlehbox");
crouchbox_spr = sprite_get("2_crouchhbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//bunny suit alt
if (get_player_color(player) == 5){
    rabbit_suit = true;
    current_sprite_set = 1;
} else {
    rabbit_suit = false;
    current_sprite_set = 0;
}
num_sprite_sets = 2;

char_height = (rabbit_suit? 72 : 56);
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .3;
pratfall_anim_speed = .35;

walk_speed = 3;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 6.5; //changes with weight
dash_speed = 6; //changes with weight
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35;
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 11;
leave_ground_max = 6; 
max_jump_hsp = 6; 
air_max_speed = 4; //changes with weight
jump_change = 3; 
air_accel = .2;
prat_fall_accel = .85; 
air_friction = .05;
max_djumps = 1;
double_jump_time = 31; 
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 11; 
fast_fall = 15; 
gravity_speed = .55; //changes with weight
hitstun_grav = .5; 
knockback_adj = 1; 

land_time = 4;
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.35; //changes with weight
wave_friction = .12; 

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 6;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 4;
techroll_recovery_frames = 3;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_cla");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//gameplay

//meeting quota
quota_level = 1;
quota_level_max = 99;

quota_reqs = [
    160,
    280,
    410,
    550,
    1150,
    1300,
    1700,
    2200,
    2810,
    3540,
    4390,
    5390,
    6550,
    7870,
    9380,
    9999
    ];

quota_current = 0;
quota_next = quota_reqs[0];
quota_leftover = 0;

is_ranking_up = false;
rank_timer = 0;
rank_number_flicker = false;
levels_gained = 0;

//weight system
passive_weight = 42;
item_weight = 0;

weight_value = passive_weight + item_weight;

weight_max = 126;
weight_min = 0;

taunt_timer = 0;
respawn_timer = 0;

//scrap

//scrap information
current_scrap = noone;
prev_scrap = noone;
user_event(9);

melee_weapons = [
        {
        index : 0,
        name : "Yield sign",
        rank_req : 1
        },
        
        {
        index : 1,
        name : "Stop sign",
        rank_req : 3
        },
        
        {
        index : 2,
        name : "Shovel",
        rank_req : 4
        }
    ];
    
fspecial_tools = [
        {
        index : 0,
        name : "Stun grenades",
        rank_req : 2
        },
        
        {
        index : 1,
        name : "Zap gun",
        rank_req : 4
        }
    ];
    
uspecial_tools = [
        {
        index : 0,
        name : "Jetpack",
        rank_req : 2
        },
        
        {
        index : 1,
        name : "Cruiser",
        rank_req : 5
        }
    ];
    
curr_melee = 0;
curr_fspec = -1;
curr_uspec = -1;
    
employee_parry_sound = noone;

employee_death_sound = noone;

crouch_walking = false;
crouch_walk_timer = 0;
crouch_walk_anim_speed = 0.25;
crouch_walk_speed = 2.5;

jab_walk_dir = 0;
jab_rapid_timer = 0;

bair_shot_linger = hit_fx_create(sprite_get("bair_shot_linger"), 12);
bair_smoke_linger = hit_fx_create(sprite_get("bair_smoke_linger"), 12);
bair_gun_dropped = hit_fx_create(sprite_get("bair_shotty"), 300);

strong_walk_dir = 0;
strong_walk_index = 0;
strong_walking = false;
strong_sfx = noone;

vfx_drop_melee = [];

for (i = 0; i < 3; i++) {
    array_push(vfx_drop_melee, hit_fx_create(sprite_get(`vfx_drop_melee${i}`), 300));
}

vfx_cruiser_debris = [];

for (i = 0; i < 3; i++) {
    array_push(vfx_cruiser_debris, hit_fx_create(sprite_get(`vfx_cruiser_debris${i}`), 300));
}

vfx_explosion = hit_fx_create(sprite_get("vfx_explosion"), 25);
i_exploded = false;

//dstrong
ladder_obj = noone;
ladder_plat = noone;
has_ladder = true;

//nspec
using_terminal = false;
terminal_ui_index = 0;
terminal_transition = 0;

terminal_slot = 0;
terminal_melee_index = 0;
terminal_fspec_index = 0;
terminal_uspec_index = 0;
terminal_slot_buffer = 0;

used_nspecial_stall = false;

//fspec1
flashbang_detonate_max = 90;
flashbang_detonate_timer = 0;
flashbang_pin = hit_fx_create(sprite_get("fspec_pin"), 300);
ring_hitsound = sound_get("fspec_ringing");
stun_hfx = hit_fx_create(sprite_get("hfx_flashbang_hit"), 15);
flashbang_cork =  hit_fx_create(sprite_get("vfx_cork"), 300);

//fspec2
zapgun_scan_success = false;
scan_sound = noone;
beam_sound = noone;

fspec2_scan_linger = hit_fx_create(sprite_get("fspecial2_scan_linger"), 12);
fspec2_zap_linger = hit_fx_create(sprite_get("fspecial2_zap_linger"), 24);
fspec2_drop_gun = hit_fx_create(sprite_get("zapgun"), 300);

//uspec1
jetpack_fuel_max = 1200;
jetpack_fuel = jetpack_fuel_max;
fuel_rate = 0;
fuel_should_refill = false;
uspec_gauge_fade = 0;
jetpack_smoke = hit_fx_create(sprite_get("uspec_smoke"), 15);

jetpack_dir = 90;
jetpack_spindex = 0;
cant_use_jetpack = false;
jetpack_sfx = noone;
jetpack_used_walljump = false;
jetpack_fuel_low = false;
jetpack_warning_sfx = noone;
is_using_jetpack = false;
anti_thrust_stall = 0;
jetpack_was_parried = false;

// Tap Jump Protection System by @Danilo-PJ#3122
dj_state_timer = 0;
is_double_jump = false;

//uspec2
cruiser_charge = 0;
cruiser_rev_sound = noone;
cruiser_vroom_sound = noone;
cruiser_engine_sound = noone;
cruiser_sounds_playing = false;
uspec2_honking = false;
honk_start = noone;
honk_sound = noone;
honk_timer = 0;
honk_loop = true;
vfx_cruiser_eject = hit_fx_create(sprite_get("vfx_cruiser_eject"), 300);
vfx_cruiser = hit_fx_create(sprite_get("vfx_cruiser"), 300);
in_cruiser = false;
wheels_index = 0;

//dspec
has_scrap = false;
scrap_found_timer = 0;
scrap_found_timer_max = 90;
hud_anim_timer = 0;
hud_scrap_box_index = 0;
dspecial_linger = hit_fx_create(sprite_get("dspecial_linger"), 6);

jeb_obj = noone;
place_anim = 0;
scan_nofind = false;
jeb_collected = false;
jeb_collected_timer = 0;
pending_quota = 0;
jeb_cooldown = 0;
hit_by_jeb = false;
scrap_lifetime = 0;

bees_destroyed = hit_fx_create(sprite_get("bees_destroyed"), 12);
not_the_bees = noone;

zapgun_small = hit_fx_create(sprite_get("zap_small"), 12);
zapgun_big = hit_fx_create(sprite_get("zapgun_big"), 18);
easter_egg = hit_fx_create(sprite_get("egg_explode"), 21);

mask_active_sfx = sound_get("scrap_mask_attach");
mask_explode_sfx = sound_get("jeb_hit_heavy");
mask_puke_sfx = sound_get("scrap_mask_puke");
mask_explode_vfx = hit_fx_create(sprite_get("mask_blood"), 21);
mask_sprite = sprite_get("mask_active");
mask_blood_part = hit_fx_create(sprite_get("mask_blood_part"), 12);

stepped_on_whoopee = false;
whoopee_id = noone;
got_masked = false;
masked_timer = 0;
masked_id = noone;
masked_sound = noone;
masked_sound_puke = noone;
masked_index = 0;
mask_type = -1;
mask_position = 0;
mask_pos_difference = 0;

creature_x = 0;
creature_y = 0;
scanned_creature = false;
player_scanned = noone;
creature_timer = 0;
creature_index = 0;
creature_alpha = 0.8;

reticle_id = noone;
scanned_player_value = true;

is_zdropping = false;
zdrop_hsp = 0;
zdrop_vsp = 0;

scrap_visual = false;
scrap_visual_timer = 0;
scrap_visual_zoom_inner = 0;
scrap_visual_zoom_outer = 0;
scrap_visual_alpha = 0;
scrap_visual_dir= 0;
scrap_box_upper = 0;
scrap_box_lower = 0;
scrap_visual_x = 0;
scrap_visual_y = 0;
scrap_visual_size = 0;
scrap_visual_name = "";
scrap_visual_value = "";

parry_doors_closed = false;
parry_dooropen = hit_fx_create(sprite_get("parry_dooropen"), 13);
parry_dooropen_sfx = false;
turret_parry = false;
turret_parry_sound = sound_get("turret_deactivate");

//custom fonts
quota_font = font_get("_lethal_green");
weight_font = font_get("_lethal_orange");
rank_font = font_get("_lethal_red");

playtest_active = false;
with (oTestPlayer) playtest_active = true;

//VICTORY MUSIC AND BG SET ---------------------------------------------------------------------------------
//set_victory_bg( sprite_get( "[bg sprite name]" )); //Victory BackGround
set_victory_theme(sound_get("employee_victory")); //Victory BGMusic
//remove the slashes at the start of the lines to use the above 2

//hfx template ---------------------------------------------------------------------------------
//[hit fx name] = hit_fx_create( sprite_get( "[hit fx sprite name]" ), [lifetime/length]);

//hit particles ---------------------------------------------------------------------------------
//just put the sprites into the sprites folder, named as hit_particle[number], like hit_particle1, up to 1-6
//or use below to change mid-game
//set_hit_particle_sprite( [number, start with 1, up to 6], sprite_get("[hit particle sprite name]"));

//usual variables i use ---------------------------------------------------------------------------------
maioeseeanimframes = 0; //I usually use a variable to control image_index/anim frames for animation.gml
//if youre using this as a template, replace "maiosee" with your char's name. 
//unique variables = less mess with other variable owners

/*
//Image Mask
start_predraw = false;
*/
is_attacking = false;
attack_names = [ //has the names of all the attacks
    "0",
    "AT_JAB",
    "2 (custom intro default)",
    "3",
    "AT_FTILT",
    "AT_DTILT",
    "AT_UTILT",
    "AT_FSTRONG",
    "AT_DSTRONG",
    "AT_USTRONG",
    "AT_DATTACK",
    "AT_FAIR",
    "AT_BAIR",
    "AT_DAIR",
    "AT_UAIR",
    "AT_NAIR",
    "AT_FSPECIAL",
    "AT_DSPECIAL",
    "AT_USPECIAL",
    "AT_NSPECIAL",
    "AT_FSTRONG_2",
    "AT_DSTRONG_2",
    "AT_USTRONG_2",
    "AT_USPECIAL_GROUND",
    "AT_USPECIAL_2",
    "AT_FSPECIAL_2",
    "AT_FTHROW",
    "AT_UTHROW",
    "AT_DTHROW",
    "AT_NTHROW",
    "AT_DSPECIAL_2",
    "AT_EXTRA_1",
    "AT_DSPECIAL_AIR",
    "AT_NSPECIAL_2",
    "AT_FSPECIAL_AIR",
    "AT_TAUNT",
    "AT_TAUNT_2",
    "AT_EXTRA_2",
    "AT_EXTRA_3",
    "39",
    "40 (munophone default)",
    "AT_NSPECIAL_AIR",
    "42",
    "43",
    "44",
    "45",
    "46",
    "47",
    "48",
    "49 (final strong default)"
];

checked_sprite_names = [
    "idle", 
    "crouch", 
    "crawl",
    "walk", 
    "walkturn", 
    "dash", 
    "dashstart", 
    "dashstop", 
    "dashturn", 
    
    "hurt",
    "hurtground",
    "bighurt",
    "uphurt",
    "downhurt",
    "bouncehurt",
    "spinhurt",
    
    "jumpstart", 
    "jump", 
    "doublejump", 
    "walljump", 
    "pratfall", 
    "land", 
    "landinglag", 
    
    "parry", 
    "roll_forward", 
    "roll_backward", 
    "airdodge", 
    "waveland", 
    "tech", 
    
    "jab", 
    "dattack", 
    "ftilt", 
    "dtilt", 
    "utilt", 
    "nair", 
    "fair_shovel", 
    "fair_stop",
    "fair_yield",
    "bair", 
    "uair_shovel",
    "uair_stop", 
    "uair_yield", 
    "dair", 
    "fstrong_shovel", 
    "fstrong_stop", 
    "fstrong_yield", 
    "ustrong_shovel", 
    "ustrong_stop", 
    "ustrong_yield", 
    "dstrong", 
    "dstrong_ladderless", 
    "nspecial", 
    "nspecial_air", 
    "nspecial3", 
    "fspecial", 
    "fspecial2",
    "fspecial_fail",
    "fspecial2_fail",
    "fspecial_air",
    "uspecial", 
    "uspecial2", 
    "uspecial_fail", 
    "uspecial_air",
    "dspecial", 
    "dspecial2",
    "taunt",
    "taunt2",
    "intro"
    ];
    
//custom attack indexes

AT_FAIR_2 = 31;
AT_FAIR_3 = 37;
AT_UAIR_2 = 38;
AT_UAIR_3 = 39;
AT_FSTRONG_3 = 40;
AT_USTRONG_3 = 42;
AT_FSPECIAL_FAIL = 43;
AT_USPECIAL_FAIL = 44;
AT_FSPECIAL2_FAIL = 45;

TCG_Kirby_Copy = 10; //bomb
knight_compat_dream =
[
    "...Work...",
    "...For the... Company...",
    "...Run. Leave. Ship..."
];

mamizou_transform_spr = sprite_get("mamizou_transformation");
pot_compat_variable = sprite_get("pumbo_food");
pot_compat_text = "Company Rations";


//woodcock support
i = 80;

AG_MUNO_ATTACK_NAME = 70;
AG_MUNO_ATTACK_MISC = 71;		        // Enter a string for info

AG_MUNO_ATTACK_ENDLAG = 72;
AG_MUNO_WINDOW_EXCLUDE = 73;
AG_MUNO_ATTACK_FAF = 74;

HG_MUNO_HITBOX_EXCLUDE = i; i++;		// Set to 1 to exclude this hitbox from the frame data guide
HG_MUNO_HITBOX_NAME = i; i++;			// Enter a string to override hitbox name

HG_MUNO_HITBOX_ACTIVE = i; i++;			// Enter a string to override active frames
HG_MUNO_HITBOX_DAMAGE = i; i++;			// Enter a string to override damage
HG_MUNO_HITBOX_BKB = i; i++;			// Enter a string to override base knockback
HG_MUNO_HITBOX_KBG = i; i++;			// Enter a string to override knockback growth
HG_MUNO_HITBOX_ANGLE = i; i++;			// Enter a string to override angle
HG_MUNO_HITBOX_PRIORITY = i; i++;		// Enter a string to override priority
HG_MUNO_HITBOX_GROUP = i; i++;			// Enter a string to override group
HG_MUNO_HITBOX_BHP = i; i++;			// Enter a string to override base hitpause
HG_MUNO_HITBOX_HPG = i; i++;			// Enter a string to override hitpause scaling
HG_MUNO_HITBOX_MISC = i; i++;			// Enter a string to override the auto-generated misc notes (which include misc properties like angle flipper or elemental effect)
HG_MUNO_HITBOX_MISC_ADD = i; i++;		// Enter a string to ADD TO the auto-generated misc notes, not override (line break will be auto-inserted)

calculate_weight();

#define calculate_weight()

	weight_value = passive_weight + item_weight;
	dash_speed = lerp(7, 4, weight_value/weight_max);
	initial_dash_speed = lerp(7.5, 4.5, weight_value/weight_max);
	wave_land_adj = lerp(1.4, 1, weight_value/weight_max);
	air_max_speed = lerp(4.5, 3, weight_value/weight_max);
	gravity_speed = lerp(0.5, 0.65, weight_value/weight_max);
	leave_ground_max = round(lerp(6.5, 3, weight_value/weight_max)*2) / 2;
	max_jump_hsp = round(lerp(6.5, 3, weight_value/weight_max)*2) / 2;
	wave_friction = lerp(0.12, 0.2, weight_value/weight_max);