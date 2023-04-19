hurtbox_spr = asset_get("ferret_hurtbox");
crouchbox_spr = asset_get("wolf_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 50;
idle_anim_speed = .17;
crouch_anim_speed = .17;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 6.5;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .35;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9;
short_hop_speed = 6;
djump_speed = 8.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3.5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .15;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 9.25; //fast fall speed
gravity_speed = .38;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 18;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .2; //grounded deceleration when wavelanding

//defaults
def_walk_speed 			= walk_speed;
def_dash_speed 			= dash_speed;
def_leave_ground_max 	= leave_ground_max;
def_max_jump_hsp		= max_jump_hsp;
def_air_max_speed 		= air_max_speed;
def_air_accel			= air_accel;
def_wave_land_adj 		= wave_land_adj;
def_knockback_adj 		= knockback_adj;
def_idle_anim_speed 	= idle_anim_speed;
def_crouch_anim_speed 	= crouch_anim_speed;
def_walk_anim_speed 	= walk_anim_speed;
def_dash_anim_speed 	= dash_anim_speed;
def_prat_fall_accel     = prat_fall_accel;


//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 8;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 7.25; //roll speed
roll_backward_max = 7.25;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//custom attack index
AG_WINDOW_IASA = 56;

//anim vars
draw_timer = 0;
jump_back = false;
soft_land = false;

//draw vars
pulse_timer = 0;

//vars
grabbed_player = noone;

timer_end = 0;
dair_loop = false;

sync_bools = get_synced_var( player );



// VFX
muzzle_flash = hit_fx_create( sprite_get("fstrong_proj"), 15 );
muzzle_flash_up = hit_fx_create( sprite_get("fstrong_proj_up"), 15 );
muzzle_flash_upair = hit_fx_create( sprite_get("fstrong_proj_upair"), 15 );
muzzle_flash_down = hit_fx_create( sprite_get("fstrong_proj_down"), 15 );
tp_slice = hit_fx_create( sprite_get("tp_slice"), 20 );
x_slice = hit_fx_create( sprite_get("x_slice"), 20 );
hkr_slashbg = hit_fx_create(sprite_get("x_slicebg"), 20);
shine_fx = hit_fx_create( sprite_get("shine"), 18 );


hkr_slash = hit_fx_create(sprite_get("slash"), 20); 
hkr_slash_weak = hit_fx_create(sprite_get("slash_small"), 15); 
hkr_slash_strong = hit_fx_create(sprite_get("slash_big"), 30); 
hkr_slash_med = hit_fx_create(sprite_get("slash_med"), 30); 
hkr_slash_up_med = hit_fx_create(sprite_get("slashup_med"), 30); 
hkr_stab_strong = hit_fx_create(sprite_get("stab_big"), 30); 
hkr_stab_up_strong = hit_fx_create(sprite_get("stabup_big"), 35); 



exct_has_healed = false;
exct_heal_cd_default = 60 * 4;
exct_heal_cd = 0;

exct_prehit = 0;
excitement = 0;
excitement_max = 100;
excited = false;
excited_timer = 0;

fspec_free_start = 0;

fspec_cd = 0;
uspec_cd = 0;
nspec_cd = 0;
air_strong = 0;
dspec_cd = 0;

jump_strong_input = false;

fair_launch_rate = 0.005;
uair_launch_rate = 0.01;
dair_launch_rate = 0.015;

ammo = 3;
reload_delay_default = 60 * 9;
reload_delay = 0;

anchor_x = 0;
anchor_y = 0;


//animation vars
//rainbow vars
hue_offset=0;
hue_speed=1; //change this to change the speed of the hueshift



//tablet screen draw time
screen_loop = 0;
screen_timer = 0;

nero_alt = false;

nero_voice = false;

nero_music = false;
nero_music_end = false;
nero_end_timer = 0;


chaos_alt = false;
mako_alt = false;

//intros init
char_height_default = char_height;
starting_height = 68;
intro_end_time = 2*60;

hkr_gunshot_sfx = sound_get("gunshot");
hkr_gunhit_sfx = asset_get("sfx_ell_big_missile_fire");

circle_timer = -1;


//turpix intro
turpix_exists = false;
turpix_y = 0;

spawning_x = x;
spawning_y = y;
turpix_circle = -1;

//sound init
tab_conf_sound = asset_get("mfx_confirm");


switch(get_player_color(player)){

case 7:
starting_height = char_height_default;
nero_alt = true;
nero_voice = ((1 & sync_bools) && (get_player_color(player) == 7)) ? true:false;
hkr_gunshot_sfx = sound_get("bluerose_shot");
hkr_gunhit_sfx = asset_get("sfx_ell_big_missile_fire");
tab_conf_sound = sound_get("nero_menu");
break;

case 8:
chaos_alt = true;
hkr_gunshot_sfx = sound_get("chaos_shot");
hkr_gunhit_sfx = sound_get("chaos_hit");
break;

case 10:
mako_alt = true;
starting_height = 68;


break;
}

//ATTACK and HITBOX INDEXES

AG_HKR_EXCITE_DAMAGE = 72;
AG_HKR_EXCITE = 71;

HG_HKR_HEAL = 57;
HG_HKR_CLAW = 56;

//EXCT Damage Buff
dmg_exct = 1.5;


//existence
hkr_loaded = false;








user_event(14);