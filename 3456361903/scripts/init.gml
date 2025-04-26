hurtbox_spr = sprite_get("1_idlehbox");
crouchbox_spr = sprite_get("2_crouchhbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 36;
idle_anim_speed_init = .25;
idle_anim_speed = idle_anim_speed_init
idle_anim_speed_spotlight = .42;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

//quick wait anim setup
wait_time = sprite_get_number(sprite_get("idle"))*(5/*[Amount of Idle Loops]*/)/idle_anim_speed
wait_length = sprite_get_number(sprite_get("idle_fidget")) * 4;//replace last number with amount of in-game frame each anim-frame plays
wait_sprite = sprite_get("idle_fidget");//put the wait anim sprite here

walk_speed = 4.5;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 8.5;
dash_speed = 8.5;
dash_turn_time = 10;
dash_turn_accel = 1.8;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 13;
init_jump_speed = 13;
short_hop_speed = 6.5;
djump_speed = 12.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .4; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 48; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 9;
walljump_time = 32;
can_wall_cling = true;
max_fall = 10.5; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .09; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 4;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 4;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 4;
roll_back_active_frames = 1;
roll_back_recovery_frames = 1;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_oly");
//
jump_sound = sound_get("jamb_jump");
jump_sound_default = sound_get("jamb_jump");
jump_sound_superjump = sound_get("smw_spring_jump");
jump_sound_bboost = sound_get("jamb_boosted_jump");
//
djump_sound = sound_get("jamb_djump");
djump_sound_default = sound_get("jamb_djump");
djump_sound_bboost = sound_get("jamb_boosted_djump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//VICTORY MUSIC AND BG SET ---------------------------------------------------------------------------------
//set_victory_bg( sprite_get( "[bg sprite name]" )); //Victory BackGround
//set_victory_theme(sound_get("[victory music file name]")); //Victory BGMusic
//remove the slashes at the start of the lines to use the above 2

//hfx template ---------------------------------------------------------------------------------
//[hit fx name] = hit_fx_create( sprite_get( "[hit fx sprite name]" ), [lifetime/length]);
vfx_notemorph_b = hit_fx_create(sprite_get("vfx_notemorph_back"), 25)
vfx_notemorph_f = hit_fx_create(sprite_get("vfx_notemorph_front"), 25)
vfx_n_b= hit_fx_create(sprite_get("vfx_n_b"), 12)
vfx_n_g= hit_fx_create(sprite_get("vfx_n_g"), 12)
vfx_n_y= hit_fx_create(sprite_get("vfx_n_y"), 12)
vfx_n_r= hit_fx_create(sprite_get("vfx_n_r"), 12)
vfx_n_w= hit_fx_create(sprite_get("vfx_n_w"), 12)
vfx_n_gold= hit_fx_create(sprite_get("vfx_n_gold"), 12)
//
vfx_count1= hit_fx_create(sprite_get("vfx_count1"), 16)
vfx_count2= hit_fx_create(sprite_get("vfx_count2"), 16)
vfx_count3= hit_fx_create(sprite_get("vfx_count3"), 20)
vfx_count_fant= hit_fx_create(sprite_get("vfx_count_fantastic"), 20)
//
hfx_bell = hit_fx_create(sprite_get("hfx_bellring_large"), 20);
//
hfx_loud_big = hit_fx_create(sprite_get("hfx_loud_big"), 30);
hfx_loud = hit_fx_create(sprite_get("hfx_loud"), 30);
//
hfx_sound = hit_fx_create(sprite_get("hfx_sound"), 20);
hfx_sound_other = hit_fx_create(sprite_get("hfx_sound_other"), 10);

//hit particles ---------------------------------------------------------------------------------
//just put the sprites into the sprites folder, named as hit_particle[number], like hit_particle1, up to 1-6
//or use below to change mid-game
//set_hit_particle_sprite( [number, start with 1, up to 6], sprite_get("[hit particle sprite name]"));

//usual variables i use ---------------------------------------------------------------------------------
maioeseeanimframes = 0; //I usually use a variable to control image_index/anim frames for animation.gml
//if youre using this as a template, replace "maiosee" with your char's name. 
//unique variables = less mess with other variable owners
is_ninji = true;
parry_anim_i = 0;
log_angle = 10;
clingtime = 0;

// USpec
glide_stored = false;

//Super Jump
sjump_init = 3 // how many frames idle until super jump starts charging
sjump_charge = 12 // how many frames to charge super jump
sjump_buffer = 15 //buffers how many frames after exiting crouching into idle you can still superjump
in_sjump = false;

//Image Mask
start_predraw = false;

//Note Block
just_bounced = false;
just_bounced_period = 30;
just_bounced_period_max = 30;
noteblock_co_counter = -1;

// Spotlight
spotlight = noone;
in_spotlight = false;
//spotlight_grace_p = 90 //1.5 seconds grace period after leaving field where you can still carry the "rhythm"
//spotlight_grace_p_max = 90
bboost_counter = 0;
spot_cd_on = false;
spot_cd = 180; //cooldown for spotlight
spot_cd_max = 180;
jumped_off_ground_once = false //check if bboost had initial jump performed already
nspec_hit_in_spotlight = false;

//unmoving roll hud code by jh
airdodge_pos_x = 0;
airdodge_pos_y = 0;
airdodge_player_col = get_player_hud_color(player);
playtest_active = false;
with (oTestPlayer) playtest_active = true;

//VICTORY MUSIC AND BG SET ---------------------------------------------------------------------------------
set_victory_bg(sprite_get("victory_ninji")); //Victory BackGround
set_victory_theme(sound_get("ninji_victory_by_bestbuilder101")); //Victory BGMusic

// compat
knight_compat_dream = 
    [
        "GOOD!",
        "NICE!!",
        "SUPER!!!!"
    ]
arena_title = "The Rising Ninja Star"
mamizou_transform_spr = sprite_get("mamizou_ninjiboy"); //Replace "X" with your sprite.
pot_compat_variable = sprite_get("pumbo_dish");
pot_compat_text = "Subconian Stew"