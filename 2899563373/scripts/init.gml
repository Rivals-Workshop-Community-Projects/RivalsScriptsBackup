hurtbox_spr = sprite_get("aaa_hurtbox");
crouchbox_spr = sprite_get("aaa_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 58;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .135;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 4.0;
walk_accel = 0.35;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 8.0;
dash_speed = 7.5;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 8.5;
djump_speed = 10.75;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .65; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 34; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14.5; //fast fall speed
gravity_speed = .55;
hitstun_grav = .48;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

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
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 1;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

small_sprites = 1;

hue = 7;
hue_speed = 1; //change this to change the speed of the hueshift

has_float = true;                   //once per airtime
in_float = false;                   //if currently in nspecial
nspec_grav_cur = 0;                 //current nspec gravity
nspec_float_cur = 0;                //current time until float starts descending
nspec_anim_frame = 0;               //nspec anim frame

nspec_grav = 0.05;                  //gravity of nspecial float per-frame
nspec_float_time = 20;              //time before nspecial starts descending
nspec_air_max = 4.75;               //nspecial max horizontal air speed
nspec_air_accel = 0.45;             //nspecial horizontal drift
float_gravity_speed = [gravity_speed, 0];

fspec_timer = -1;
fspec_yes = 0;                      //0: nothing, 1: blink, 2: fspec, 3:fspec hit wall
fspec_x = 0;
fspec_y = 0;
fspec_finalhit = noone;             //instance reference for the final hit vfx, so it can be affected by hitpause
right_buffer = 0;                   //detects "smash input" for far fspecial
left_buffer = 0;                    //detects "smash input" for far fspecial

warp_speed = 14.25;                    //default speed uspecial travels at
warp_dir = 0;                       //direction the current uspec is going in
warp_h = 0;                         //initial uspec hsp
warp_v = 0;                         //initial uspec vsp
warp_land = false;                  //if current uspec has landed already
warp_cancel = false;                //if current uspec can be ledge-cancelled

killarticles = false;
barrier = noone;                    //article instance reference
last_hit_dspec = false;             //sort of a "hit lockout" for dspecial
dspec_hud_cd = 0;                   //to visually convey the cooldown for dspec when it gets broken or despawns

vfx_holyhit_m = hit_fx_create( sprite_get( "vfx_holyhitm" ), 15 );
vfx_holyhit_l = hit_fx_create( sprite_get( "vfx_holyhitl" ), 24 );
vfx_barrier_beam = hit_fx_create( sprite_get( "vfx_barrier_beam" ), 12 );
vfx_fspec_blink = hit_fx_create( sprite_get( "vfx_fspec_blink" ), 18 );
vfx_fspec_hits = hit_fx_create( sprite_get( "vfx_fspec_hits" ), 20 );
vfx_fspec_final = hit_fx_create( sprite_get( "vfx_fspec_final" ), 18 );
vfx_fspec_no = hit_fx_create( sprite_get( "vfx_fspec_no" ), 12 );
vfx_blink = hit_fx_create( sprite_get( "vfx_blink" ), 12 );
vfx_twinkle = hit_fx_create( sprite_get( "vfx_twinkle" ), 6 );
vfx_warp_reappear = hit_fx_create( sprite_get( "vfx_warp_reappear" ), 12 );

set_hit_particle_sprite( 1, sprite_get( "h_particle1" ) );
set_hit_particle_sprite( 2, sprite_get( "h_particle2" ) );
set_hit_particle_sprite( 3, sprite_get( "h_particle3" ) );
if(get_player_color(player) == 7){
    particle_num = 0;
}else if(get_player_color(player) == 10){
    particle_num = 2;
}else{
    particle_num = 1;
}

//compatability
arena_title = "Goddess of Light";

miiverse_post = sprite_get("miiversepost");

user_event(7);