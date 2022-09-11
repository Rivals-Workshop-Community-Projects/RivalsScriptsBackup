/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The ATTACKS are still in their overpowered form in this
 * template, so be sure to make the ones for your character weaker.
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

// Physical size
char_height         = 44;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.98;		// 0.9  -  1.2

// Ground movement
walk_speed          = 4;		// 3    -  4.5
walk_accel          = 0.5;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 15;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 5;		// 4    -  9
dash_speed          = 6;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.2;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.05;		// 0.02 -  0.07
max_fall            = 8;		// 6    -  11
fast_fall           = 13;		// 11   -  16
gravity_speed       = 0.4;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 7;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 5;		// 4    -  7.4
djump_speed         = 7;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 5;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 5;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.1;		// 0    -  0.15
roll_forward_max    = 7;		// 9    -  11
roll_backward_max   = 7;		// 9    -  11       always the same as forward
wave_land_time      = 5;		// 6    -  12
wave_land_adj       = 1.2;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_dbfz_kame_charge = sound_get("ARC_BTL_GKN_Kamehame_Chrg");
sfx_dbfz_kame_fire = sound_get("ARC_BTL_GKN_Kamehame_Fire");
sfx_dbfz_hit_weak = sound_get("ARC_BTL_CMN_Hit_Small-A");
sfx_dbfz_hit_broken = sound_get("ARC_BTL_CMN_Hit_XLarge");
sfx_dbfz_hit_jab3 = sound_get("ARC_BTL_GKN_Atk5A_3rd_Hit");

// VFX
vfx_ftilt_destroy = hit_fx_create(sprite_get("vfx_ftilt_destroy"), 12); // actually for nspecial, not ftilt
vfx_nspecial_fire = hit_fx_create(sprite_get("vfx_nspecial_fire"), 16);

// Variables
has_goku_beam = true;
doing_goku_beam = false;
beam_newest_hbox = noone;



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.125;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.2;
dash_anim_speed     = 0.25;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 20;		// 24   -  40
walljump_time       = 18;		// 18   -  32
wall_frames         = 1;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 0;
dodge_active_frames     = 2;
dodge_recovery_frames   = 2;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 2;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 0;
roll_forward_active_frames      = 5;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 0;
roll_back_active_frames         = 5;
roll_back_recovery_frames       = 3;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;

/*

Muno's Words of Wisdom: Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation. Dan Moment

*/



// Hurtbox sprites
hurtbox_spr         = asset_get("cat_hurtbox");
crouchbox_spr       = asset_get("cat_crouchbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr
mask_index = sprite_get("pika_mask");

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


//Variables

//arsene
rebellion_meter = 0;
arsene = false;
arsene_x = 0;
arsene_y = 0;

//sai M
trigger_all_hit = false;

shsp = 0
svsp = 0
all_hit = 0;

cinematic = 0;

ink_ring_v = 0;
ink_ring_v_flash = 0;

ink_ring_h = 0;
ink_ring_h_flash = 0;

ink_ring_n = 0;
ink_ring_n_flash = 0;

//witch time
witch_sound = false;



//mishima climbers
nana = noone;
popo = noone;
is_nana = false;
nana_spawned = false;
nana_catchup = false;

//lists for input delay nana
input_clearing = false;

input_queue = [];
input_storage = [];
list_to_arr = array_create(40, undefined);
list_convert = false;

input_store_interval_def = 1;
input_store_interval = input_store_interval_def;

input_delay_def = 5;
input_delay = input_delay_def;


//input indexes

INP_ATTACK          = 0;//attack_pressed
INP_SPECIAL         = 1;//special_pressed
INP_JUMP            = 2;//jump_pressed
INP_SHIELD          = 3;//shield_pressed  
INP_TAUNT           = 4;//taunt_pressed   
INP_ATTACK_HOLD     = 5;//attack_down     
INP_SPECIAL_HOLD    = 6;//special_down    
INP_JUMP_HOLD       = 7;//jump_down       
INP_SHIELD_HOLD     = 8;//shield_down     
INP_STRONG_HOLD     = 9;//strong_down     
INP_TAUNT_HOLD      = 10;//taunt_down      
INP_USTRONG         = 11;//up_strong_pressed  
INP_DSTRONG         = 12;//down_strong_pressed
INP_LSTRONG         = 13;//left_strong_pressed   
INP_RSTRONG         = 14;//right_strong_pressed  
INP_USTRONG_HOLD    = 15;//up_strong_down 
INP_DSTRONG_HOLD    = 16;//down_strong_down
INP_LSTRONG_HOLD    = 17;//left_strong_down
INP_RSTRONG_HOLD    = 18;//right_strong_down
INP_USTICK          = 19;//up_stick_pressed    
INP_DSTICK          = 20;//down_stick_pressed  
INP_LSTICK          = 21;//left_stick_pressed  
INP_RSTICK          = 22;//right_stick_pressed 
INP_USTICK_HOLD     = 23;//up_stick_down       
INP_DSTICK_HOLD     = 24;//down_stick_down     
INP_LSTICK_HOLD     = 25;//left_stick_down     
INP_RSTICK_HOLD     = 26;//right_stick_down 
INP_UP              = 27;//up_pressed          
INP_DOWN            = 28;//down_pressed        
INP_LEFT            = 29;//left_pressed        
INP_RIGHT           = 30;//right_pressed       
INP_UP_HOLD         = 31;//up_down             
INP_DOWN_HOLD       = 32;//down_down           
INP_LEFT_HOLD       = 33;//left_down           
INP_RIGHT_HOLD      = 34;//right_down             
INP_UP_HARD         = 35;//up_hard_pressed     
INP_DOWN_HARD       = 36;//down_hard_pressed   
INP_LEFT_HARD       = 37;//left_hard_pressed   
INP_RIGHT_HARD      = 38;//right_hard_pressed 
INP_IDLE            = 39;//joy_pad_idle  
INP_JOYDIR          = 0;//joy_pad_idle  

//3s parry stuff
tsp_state = false;
tsp_cd = 0;
tsp_window = 7;
tsp_active = false;
tsp_hitpause = 10;
tsp_enemyhitpasue = 0;
tsp_success = false;
tsp_enemy = noone;
tsp_hsp = 0;
tsp_vsp = 0;
tsp_ehsp = 0;
tsp_evsp = 0;


tsp_stack = 0;
hud_timer = 50;
slide_timer = 400;
point_timer = 400;

//BASEBALL
bases = 0;
runs = 0;
strikes = 0;
balls = 0;
outs = 0;

attack_buff = 0;

out_cd = 0;
base_cd = 0;
striked = false;

is_safe = false;

safe_attacks = [
AT_USPECIAL,
AT_NSPECIAL,
AT_DSPECIAL,
AT_FSPECIAL,
AT_UTILT,
AT_BAIR,
AT_UAIR,
AT_TAUNT,
AT_EXTRA_1,
AT_EXTRA_3,
AT_USTRONG_2,
AT_FSTRONG_2,
AT_DSTRONG_2,
40,
42,
48,
49,
46,
];


//MORE LIKE STUPEI ACE DEFECTIVE
evidence = [ //ITEM, TYPE, TOOK, INDEX
[undefined, undefined, 0, 0],
[undefined, undefined, 0, 0],
[undefined, undefined, 0, 0],
];

evidence_list = 
[
    [[0,0],[1,0],[2,0],[3,0],[4,0],[5,0],[6,0]], //bad = 0
    [[7,0],[8,0],[9,0],[10,0]], //food = 1
    [[11,0],[12,0],[13,0],[14,0],[15,0],[16,0]], //good = 2
];

evidence_slot = 0;
evidence_pity = 0;

ace_attorney_state = 0; //0 Investigation, 1 Trial, 2 Turnabout

//ROYALGUARD
rg_meter = 0;

//CHAOS
concentration = 100;
bullets = 6;
crosshair = noone;
concentration_state = 0;
bullet_hit = false;
muzzle_flash = hit_fx_create( sprite_get("gunflare"), 20 );
muzzle_flash_u = hit_fx_create( sprite_get("gunflareup"), 20 );
muzzle_flash_d = hit_fx_create( sprite_get("gunflaredown"), 20 );

//totsugeki
totstugeki_fly = hit_fx_create( sprite_get("totsugeki_fly"), 60 );
totstugeki_whiff = hit_fx_create( sprite_get("totsugeki_whiff"), 20 );

//Minecraft Inventory

max_dirt_inv = 10;
dirt_inv = max_dirt_inv;

mining_loops = 0;
place_block = true;
stand_dirt = false;

dirt_offset = false;

dirt_check = false;

//Noise Cancelling stuff
ncparry_timer = 0;
nc_dir = 1;
ncparrybox = noone;
nchbox_type = 1;
ncenemy = noone;
noise_cancel = false;
hurtboxobj = noone;
nclast_hbox = noone;
nc_cooldown = 0;
prev_burn = false;
prev_burn_time = 0;
prev_mark = false;
prev_wrap = false;


stored_mask = 0;

start_dir[0] = 1;     //dp
start_dir[1] = 1;       //otgf
start_dir[2] = 1;   //omen hell axle

ohax = 0;
ohax_timer = 0;
ohax_temp = 0;
shimmy = false;
omen_axle = false;


dp = 0;
dp_timer = 0;
dp_temp = 0;

otgf = 0;
otgf_timer=0;
otgf_temp=0;

omen = false;

ewgf = false;
ewgf_real = false;
ewgf_window = 2;
ewgf_parry = false;

strong_pressed = false;
strong_held = false;
attack_held = false;
no_drain = false;

tapf = 0;
tapf_timer = 0;
tapf_temp = 0;

dd = 0;
dd_timer = 0;
dd_temp = 0;

down_charge = 0;
down_timer = 0;
down_temp = 0;
hold_charge = 0;

noturn = true;
looking = 0;

animtimer = 0;
animtimer_2 = 0;

while_rising = 0;

electrified = false;
elec_active = false;
elec_charge = 0;
elec_vfx = false;
elec_drain = 8;
elec_passivedrain = 0.04;
elec_gain = 0.01;
elec_start = false;
elec_full = false;

nspec_loops = 0;


elecstun_mult_strong = 1.4;
elecstun_mult_weak = 1.3;

field_obj = noone;


hellsweep2 = false;
hellsweepdgf = false;

kazuya_mishima = sound_get("kazuyamishima");
wins = sound_get("wins");
kazuyamishima = false;

tekken_mode = false;
chicken = false;
intro_timer = 0;
// hitfall_window = 0;

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);