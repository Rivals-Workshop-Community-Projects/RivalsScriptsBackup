hurtbox_spr = sprite_get("horror_hurtbox");
crouchbox_spr = sprite_get("horror_crouch_hurtbox");
dashbox_spr = sprite_get("horror_dash_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 78;
idle_anim_speed = .15;
crouch_anim_speed = .15;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .15;

walk_speed = 4;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7.5;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 5.5;
djump_speed = 12;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 34; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
can_wall_cling = true;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 11;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 10;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 4;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 2;
roll_back_active_frames = 2;
roll_back_recovery_frames = 4;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_syl");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_forsburn_cape_swipe");
air_dodge_sound = asset_get("sfx_quick_dodge");

jab_particles = hit_fx_create(sprite_get("jab_particles"), 16);
bair_vfx = hit_fx_create(sprite_get("bair_vfx"), 15);
vfx_roll_afterimage = hit_fx_create(sprite_get("vfx_roll_afterimage"), 24);
nspecial_proj_hit = hit_fx_create(sprite_get("nspecial_proj_hit"), 45);
dspecial_vfx = hit_fx_create(sprite_get("dspecial_vfx"), 15);
dspecial_air_vfx = hit_fx_create(sprite_get("dspecial_air_vfx"), 15);
dthrow_vfx = hit_fx_create(sprite_get("dthrow_vfx"), 15);
curse_vfx = hit_fx_create(sprite_get("curse_vfx"), 18);

set_victory_theme( sound_get( "qoedil_victory_theme" ) );

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Character Specific Checks
alt_cur = get_player_color(player);
clingtime = 0;

//Frame timings for curse animation.
frame_timings = [15,15,15,15,3,3,4,4,4,4,8,8,8,8,8];
curse_sprite_a = sprite_get("curse_a")
curse_sprite_b = sprite_get("curse_b")
curse_sprite_length = sprite_get_number(sprite_get("curse_a"));

taunt_num = 0;

//Support
Hikaru_Title = "Primordial Horror";
arena_title = "Primordial Horror";
battle_text = "Run"
ncode1 = "All attempts to subdue the creature have ended in"
ncode2 = "failure. If you ever encounter it for even a moment..."
ncode3 = "It is already too late"
steve_death_message = "Steve was devoured...";
link_spear_drop = 3;
TCG_Kirby_Copy = 12;
mamizou_transform_spr = sprite_get("transformation");
sprite_change_offset("miiverse", 60, 30);
