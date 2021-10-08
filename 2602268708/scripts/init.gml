hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;
char_height = 58;
idle_anim_speed = .18;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

bomb_numbering = 0; //Starting point for the bomb throwing visuals

nbair_intervals = [2, 3];
cannon_button_down = false;
cannon_dir = 0; //When turning in the canon
cannon_charge = 0;
cannon_move_sound = noone;
bits = 0;
funkyalts = 0;
dashcount = 0;
cling = 0;
wallanim = 0;
idleState = 0;
fired = 0;
thitground = false;

introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 5;
dash_speed = 6;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.8;
moonwalk_accel = 1.4;

jump_start_time = 4;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 10.5;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
can_wall_cling = true
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
wall_frames = 4;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 4;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 8;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 11;

//tech animation frames
tech_active_frames = 6;
tech_recovery_frames = 6;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 8;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 8;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 8;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("sm64_slide");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = sound_get("sm64_warp");

bomb_explode = hit_fx_create( sprite_get( "fspecial_bombproj_blast" ), 19 );
bullybomb_explode = hit_fx_create( sprite_get( "fspecial_bullyproj_blast" ), 19 );
bomb_hit = hit_fx_create( sprite_get( "fspecial_bombhit" ), 14 );
bomb_bounce = hit_fx_create( sprite_get( "bouncefx" ), 8 );
whomp_explode = hit_fx_create( sprite_get( "fstrong_whomp_destroyed" ), 19 );
thwomp_explode = hit_fx_create( sprite_get( "dstrong_thwomp_destroyed" ), 19 );
cannon_base = hit_fx_create( sprite_get( "uspecial_base_strip1" ), 1 );
launchblast = hit_fx_create( sprite_get( "uspecial_blast_fx" ), 22 );

funnyhit = hit_fx_create( sprite_get( "dair_sweetspotfx" ), 24 );

// Character-specific assets init

//Sprites
spr_wallcling = sprite_get("wallcling");
spr_grab_dthrow = sprite_get("grab_dthrow")
spr_fspecial_bombproj_blast = sprite_get("fspecial_bombproj_blast")
spr_heaveho = sprite_get("heaveho")
spr_whomp = sprite_get("fstrong_whomp")

last_cosmetic_proj = false;

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//COMPATABILITY
//Toon Link
toonlink_photo = sprite_get("comp_toonlink_photo");
toonlink_photo2 = sprite_get("toonlink_photo_TL");
toonlink_photo2 = 2
diag_portrait = sprite_get("comp_portrait"); // This will allow you to put any custom portrait onto the dialogue buddy!

user_event(14);

//GRAB
nspecial_grabbed_player = noone;
nspecial_grab_timer = 0;
nspecial_grab_max_time = 60;

nspecial_prevangleturn = 1; // your angle before you turned around, not updated during walk dir

//FS
fs_char_portrait_y = 164;
fs_char_chosen_final_smash = "custom";
fs_char_attack_index = 49;
fs_hit = hit_fx_create( sprite_get( "fs_hit" ), 24 );
