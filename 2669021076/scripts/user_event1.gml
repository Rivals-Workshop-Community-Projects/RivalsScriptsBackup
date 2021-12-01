// change stats
if claws_broken {
    change_stats(); 
    set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("lol funny sound"));
    set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("lol funny sound"));
}
else {
    reset_stats();
    reset_window_value(AT_TAUNT, 1, AG_WINDOW_SFX);
    reset_window_value(AT_TAUNT, 3, AG_WINDOW_SFX);
}

set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, hurtbox_spr);
claws_brittle = false;

#define change_stats
// Physical size
//char_height         = 32;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.5;		// 3    -  4.5
walk_accel          = 0.3;		// 0.2  -  0.5
//walk_turn_time      = 6;	    // 6
initial_dash_time   = 10;		// 8    -  16
initial_dash_speed  = 7.5;		// 4    -  9
dash_speed          = 7;		// 5    -  9
//dash_turn_time      = 8;		// 8    -  20
//dash_turn_accel     = 1.75;		// 0.1  -  2
//dash_stop_time      = 4;		// 4    -  6
//dash_stop_percent   = 0.3;		// 0.25 -  0.5
//ground_friction     = 0.65;		// 0.3  -  1
//moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6.5;		// 4    -  8
max_jump_hsp        = 6.5;		// 4    -  8
air_max_speed       = 5.5;  	// 3    -  7
//jump_change         = 3;		// 3
//air_accel           = 0.3;		// 0.2  -  0.4
//prat_fall_accel     = 0.85;		// 0.25 -  1.5
//air_friction        = 0.05;		// 0.02 -  0.07
//max_fall            = 10;		// 6    -  11
//fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.475;		// 0.3  -  0.6
hitstun_grav        = 0.45;		// 0.45 -  0.53

// Jumps
//jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 7;		// 4    -  7.4
djump_speed         = 11;		// 6    -  12       absa's is -1 because of her floaty djump
//djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
//djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
//max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 6;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
//land_time           = 4;		// 4    -  6
//prat_land_time      = 18;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.1;		// 0    -  0.15
//roll_forward_max    = 9;        // 9    -  11
//roll_backward_max   = 9;        // 9    -  11       always the same as forward
//wave_land_time      = 8;		// 6    -  12
//wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 8;      // 7.5  -  8
//techroll_speed      = 9;       // 8    -  11

// Misc. animation speeds
//idle_anim_speed     = 0.1;
//crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.275;
dash_anim_speed     = 0.3;
//pratfall_anim_speed = 0.25;

// Hurtbox sprites
hurtbox_spr         = asset_get("orca_hurtbox");
crouchbox_spr       = asset_get("orca_crouchbox");
//air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
//hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
//waveland_sound      = asset_get("sfx_waveland_orc"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
//jump_sound          = asset_get("sfx_jumpground");
//djump_sound         = asset_get("sfx_jumpair");
//air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 4;
bubble_y = 16;

// Compat
steve_death_message = "Steve was slain by Krabby";

// =======================================================================


#define reset_stats
// Physical size
//char_height         = 32;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.95;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.25;		// 0.2  -  0.5
//walk_turn_time      = 6;	    // 6
initial_dash_time   = 10;		// 8    -  16
initial_dash_speed  = 6.25;		// 4    -  9
dash_speed          = 6;		// 5    -  9
//dash_turn_time      = 8;		// 8    -  20
//dash_turn_accel     = 1.75;		// 0.1  -  2
//dash_stop_time      = 4;		// 4    -  6
//dash_stop_percent   = 0.3;		// 0.25 -  0.5
//ground_friction     = 0.65;		// 0.3  -  1
//moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 5.5;		// 4    -  8
max_jump_hsp        = 5.5;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
//jump_change         = 3;		// 3
//air_accel           = 0.3;		// 0.2  -  0.4
//prat_fall_accel     = 0.85;		// 0.25 -  1.5
//air_friction        = 0.05;		// 0.02 -  0.07
//max_fall            = 10;		// 6    -  11
//fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
//jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 7;		// 4    -  7.4
djump_speed         = 11;		// 6    -  12       absa's is -1 because of her floaty djump
//djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
//djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
//max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 6;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
//land_time           = 4;		// 4    -  6
//prat_land_time      = 18;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
//roll_forward_max    = 9;        // 9    -  11
//roll_backward_max   = 9;        // 9    -  11       always the same as forward
//wave_land_time      = 8;		// 6    -  12
//wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 8;      // 7.5  -  8
//techroll_speed      = 9;       // 8    -  11

// Misc. animation speeds
//idle_anim_speed     = 0.1;
//crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.25;
dash_anim_speed     = 0.25;
//pratfall_anim_speed = 0.25;

// Hurtbox sprites
hurtbox_spr         = sprite_get("idle_hurt");
crouchbox_spr       = sprite_get("crouch_hurt");
//air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
//hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Movement SFX
land_sound          = asset_get("sfx_land_med");
landing_lag_sound   = asset_get("sfx_land_heavy");
//waveland_sound      = asset_get("sfx_waveland_orc"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
//jump_sound          = asset_get("sfx_jumpground");
//djump_sound         = asset_get("sfx_jumpair");
//air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 16;

// Compat.
steve_death_message = "Steve was pummeled by Krabby using [Claws]";