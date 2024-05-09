hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = asset_get("ex_guy_hurt_box");
hitstun_hurtbox_spr = asset_get("ex_guy_hurt_box");

//char specific
item = 0;

apple_hit = false;

stage_y = get_stage_data(SD_Y_POS);

 stage_x1 = get_stage_data(SD_X_POS);

 stage_x2 = get_stage_data(SD_X_POS);

 stage_bot = get_stage_data(SD_BOTTOM_BLASTZONE);

gem_speed = 5;

gem_x= 5;

gem_y = 0;

trick = false;

can_trick = 0;

draw_orb = false;
draw_flame = false;
draw_blast = false;

//bio
bio = false;
poison_ready = false;


// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES
// Physical size
knockback_adj       = 1.10;		// 0.9  -  1.2
char_height = 52;
idle_anim_speed = .12;
crouch_anim_speed = .1;
walk_anim_speed = .135;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.3;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 4;		// 8    -  16
initial_dash_speed  = 7.5;		// 4    -  9
dash_speed          = 6.10;		// 5    -  9
dash_turn_time      = 9;		// 8    -  20
dash_turn_accel     = 1.2;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6
dash_stop_percent   = 0.15;		// 0.25 -  0.5
ground_friction     = 0.55;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 5;		// 4    -  8
max_jump_hsp        = 8;		// 4    -  8
air_max_speed       = 6;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.4;		// 0.2  -  0.4
prat_fall_accel     = 0.4;		// 0.25 -  1.5
air_friction        = 0.05;		// 0.02 -  0.07
max_fall            = 8.75;		// 6    -  11
fast_fall           = 11;		// 11   -  16
gravity_speed       = 0.3;		// 0.3  -  0.6
hitstun_grav        = 0.45;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5               
jump_speed          = 7.6;		// 7.6  -  12       
short_hop_speed     = 4.5;		// 4    -  7.4
djump_speed         = 8;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 6;		// 4    -  7
walljump_vsp        = 7;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 4;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.0;		// 0    -  0.15
roll_forward_max    = 8.4;        // 9    -  11
roll_backward_max   = 8.4;        // 9    -  11       always the same as forward
wave_land_time      = 6;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      
air_dodge_speed     = 8;      // 7.5  -  8
techroll_speed      = 8;       // 8    -  11

// Jumps
double_jump_time    = 25;		// 24   -  40
walljump_time       = 25;		// 18   -  32
jump_time           = 25;		// 18   -  32
//wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 2;
dodge_active_frames     = 1;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 4;
techroll_active_frames      = 2;
techroll_recovery_frames    = 3;

// Airdodge
air_dodge_startup_frames    = 3;
air_dodge_active_frames     = 2;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 4;
roll_forward_active_frames      = 2;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 4;
roll_back_active_frames         = 2;
roll_back_recovery_frames       = 3;

// Crouch
crouch_startup_frames   = 1;
crouch_active_frames    = 6;
crouch_recovery_frames  = 1;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//custom hfx
tomb_dest= hit_fx_create(sprite_get( "tomb_dest" ), 7);
pulse = hit_fx_create(sprite_get( "pulse" ), 12);
cure = hit_fx_create(sprite_get( "cure" ), 12);
foul = hit_fx_create(sprite_get( "foul" ), 16);
//blast = hit_fx_create(sprite_get( "nair_blast" ), 16);
