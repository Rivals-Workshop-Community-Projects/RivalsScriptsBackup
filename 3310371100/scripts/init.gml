//USHR INIT

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = 0.09;
crouch_anim_speed = 0.1;
walk_anim_speed = 0.095;
dash_anim_speed_normal = 0.26;
dash_anim_speed_tire = 0.15;
dash_anim_speed = dash_anim_speed_normal;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.27;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed_normal = 6; //5.75
dash_speed_tire = 4;
dash_speed = dash_speed_normal; //5.75
dash_turn_time = 14; //same as etalus
dash_turn_accel = 1.25;
dash_stop_time = 6;
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.4;//0.6
ground_friction_normal = 0.6;//even i dont remember how this works
ground_friction_atk = 0.3;
moonwalk_accel = 1.1;//1.2

jump_start_time = 5;
jump_speed = 13;
short_hop_speed = 8;
djump_speed = 9.5;
leave_ground_max = 4;//3.75 //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4;//3.75 //the maximum hsp you can have when jumping from the ground
air_max_speed = 4;//3.75 //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = 0.05; //bout the same as elliana and olympia
max_djumps = 1;
double_jump_time = 38; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;//7//5
walljump_vsp = 9;//12//11
walljump_time = 32;
max_fall = 7; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
//gravity deciding in update.gml later
gravity_speed = 0.5;
gravity_speed_rise = 0.8;
gravity_speed_fall_a = 0.4;
gravity_speed_fall_b = 0.35;
gravity_speed_normal = 0.5;//about clairen speed //dont chu worry, when in hitstun it goes to this
hitstun_grav = 0.5; //i'll keep it at that
knockback_adj = 1.05; //lighter than average, lighter than dr mario because i feel like her bigger range warrant it

land_time = 4; //normal landing frames
prat_land_time = 10; //same as maypul clairen etc
wave_land_time = 9; //sylv value now //8
wave_land_adj = 1.05; //1.2 //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.03; //0.03 //grounded deceleration when wavelanding

wall_frames = 2;

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;//7

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

AG_IASA_THIS_WINDOW = 70; //1 for always, 2 for on-hit
AG_AUTOCANCEL = 71; //1 to let landing lag be normal instead of the one set in attack grid, 2 to do nothing so you can override it (also the benefit of the system resetting landinglag automatically)

natdev = false;

switch_pal_let = true;

jump_tracker = 0;
crouch_tracker = 0;
crouch_check = 0;
crouch_cooldown = 0;
crouch_max_patience = 4;

dattack_speed_timer = 0;
fspecial_speed_timer = 0;
uspecial_speed_timer = 0;
dspecial_speed_timer = 0;
fsp_airstart = false;
fsp_did = false;
dsp_did = false;

dsp_bounce_count = 0;
fsp_loop_count = 0;
fsp_loop_count_storage = 0;
fsp_loop_count_max = 8;//8
fsp_vulnerable = false;
raincloud_present = false;
dsp_hsp_store = 0;
dsp_vsp_store = 0;

dsp_downpour = false;
dsp_downpour_vsp = 16;
dsp_downpour_hsp = 9;

move_start_spr_dir_tracker = 1;
wow_wavebounce_happened = false;

stamina_max = 120;
stamina = stamina_max;

//mawralgrab
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

dsp_hit = false;
ushr_rainclouded = false;
ushr_rainclouded_timer = 0;
ushr_rainclouded_timer_max = 0;
move_is_fresh = true;

the_parried_ice = 0;//raincloud freeze got parried, 1 for normal, 2 for fstrong

nurburgring_24h_endurance = true; //true!
signalling_all_my_besties_i_have_been_PARRIED = false;
signalling_all_my_besties_i_have_been_HIT_by_this_player = -4;
thanks_i_received_your_message_you_go_and_reset_now = false;
madeonfinale = false;
mightyfallen = false;

//hfx_splash = hit_fx_create( sprite_get("splash"), 12 );//unused

cloud_y_limit = 0;

awake = false;


mask_wait = 2;
mask_attack = 0;

set_victory_theme( sound_get( "ushr_victory_short" ));
set_victory_bg( sprite_get( "z_victorybg" ));

//simple compat land
steve_death_message = "Steve was slain by MooncakeFan2012"; //Thats Not Her Birth Year thats just her favorite year/year she made the account!!
arena_title = "Pluvio Snowstroll"; boxing_title = arena_title; //holy frick
battle_text = "* Today's weather is rain with a chance of rain.";
I_would_not_like_Sephiroth_to_impale_my_character = true; //yes

//alright char's done almost releasing waiting for trailer reveals it's time for more compats ya
TCG_Kirby_Copy = 6; //water.
//usher may give you the impressions her elemental power is ice, but in truth, her "elemental power" is "weather" per se
//like rain, snow, sunny, overcast, etc
//and something to keep in mind is that usher herself does not have a magical power,
//but instead she casts these magical things usings using her golden bracelet thing, which can hold an elemental gem
//if the teamcoolgang kirby had Parasol then itd definitely be Parasol though
//kirby fighters buddy:
copy_ability_id = 10; //parasol
knight_compat_dream = 
    [
        "Mhm...",
        "Can I win this fight at all?",
        "Keep going..."
    ]
mo_grab_x = 0; mo_grab_y = 0;
mo_mindName = "Usher Evalate"; mo_mindAge = "22"; mo_mindGender = "Female"; mo_mindIdent = "Human";
mo_mindMessage = "What!?!?";
sna_interrogated_line_01 = "Wha...!!?? Let me go!! I don't wanna...";
greenwood_cheer = 1;
//gwehhh so many sprite-based compats
pot_compat_variable = sprite_get("etc_pogumbo"); pot_compat_text = "Chocolate Danish"
scoop_personalized_flavour_sprite = sprite_get("etc_scoop"); scoop_personalized_flavour_name = "Vanilla-chocolate Softserve";
mamizou_transform_spr = sprite_get("etc_mamizou");
miiverse_post = sprite_get("etc_miiverse");
buddy_screenko_sprite = sprite_get("etc_koscreen")
buddy_starko_sprite = sprite_get("etc_kostar")
buddy_screenko_voice_sfx = sound_get("screen_ko");
buddy_starko_sfx = sound_get("star_ko");
neutralized_ability = "Ult. Jump Physics";
koffing_gas_active=0;
fx_ice_particle = hit_fx_create( sprite_get("ice_particle"), 8 );//6
fx_ice_mist_A = hit_fx_create( sprite_get("ice_mist_A"), 32 );
fx_ice_mist_B = hit_fx_create( sprite_get("ice_mist_B"), 96 );
fx_ice_mist_C = hit_fx_create( sprite_get("ice_mist_C"), 96 );
fx_ice_mist_D = hit_fx_create( sprite_get("ice_mist_D"), 96 );
fx_ashe_trail = hit_fx_create(sprite_get("etc_ashe_trail"), 20);

//victory quote thing - sscripts are unload.gml and results_post_draw.gml - scripts are taken from reiga mal but is from frtoud hypercam
ushr_victory_quote = "-4";
ushr_handled_victory_quote = false;
victoryicon_subimg = 0;


//i dont have munobird i hope this works
/*AG_MUNO_ATTACK_NAME = 82;
AG_MUNO_ATTACK_MISC_ADD = 87;
HG_MUNO_HITBOX_NAME = 81;
HG_MUNO_HITBOX_MISC_ADD = 92;*/

AG_MUNO_ATTACK_NAME = 80+1
AG_MUNO_ATTACK_MISC = 80+5
AG_MUNO_ATTACK_MISC_ADD = 80+6
AG_MUNO_WINDOW_EXCLUDE = 80+7 // 0: include window in timeline (default)    1: exclude window from timeline    2: exclude window from timeline, only for the on-hit time    3: exclude window from timeline, only for the on-whiff time
HG_MUNO_HITBOX_NAME = 80+1
HG_MUNO_HITBOX_MISC_ADD = 80+12







