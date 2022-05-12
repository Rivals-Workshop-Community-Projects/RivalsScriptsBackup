hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 58;
idle_anim_speed = 0.7;
crouch_anim_speed = .1;
walk_anim_speed = .5;
dash_anim_speed = .15;
pratfall_anim_speed = .25;

walk_speed = 1.2; //op af
walk_accel = 0.25;
walk_turn_time = 8;
initial_dash_time = 15;
initial_dash_speed = 4.75; //4.6
dash_speed = 4;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .6; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 2.2;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6.25;
djump_speed = 11;
leave_ground_max = 10; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .1;
prat_fall_accel = 0.5; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4.5;
walljump_vsp = 9.5; 
walljump_time = 32;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 10.5; //maximum fall speed without fastfalling
fast_fall = 13.5; //fast fall speed
gravity_speed = .7; 
hitstun_grav = .51;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
                   

//absa jump
old_jump = false;
djump_speed = -1;
djump_accel = -2.4;
djump_accel_start_time = 3;
djump_accel_end_time = 10;


land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.225; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .32; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 6;
crouch_active_frames = 16;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 6;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 2;
techroll_recovery_frames = 6;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 6;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 5;
roll_forward_max = 8.5; //roll speed
roll_backward_max = 8.5;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_syl");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//epinel's custom variables.
epinel_charge_timer = 0; //value used for recording how long n-special and d-special are charged for
epinel_is_lightweight = false;
epinel_is_armored = false;
epinel_lightweight_time = 0;
epinel_dash_momentum = 0;
epinel_grab_connected = false;
epinel_grabbed_player_object_id = noone;
epinel_grabbed_player_x_offset = 0;
epinel_grabbed_player_y_offset = 0;
epinel_grabbed_player_suplex_distance = 30;
epinel_grabbed_player_break_points = 0;
epinel_grabbed_player_break_threshold = 0;
epinel_uair_jump_counter = 0;
epinel_consecutive_uair_jumps = 0;
epinel_consecutive_dair_jumps = 0;
epinel_fspecial_start_position_x = 0;
epinel_fspecial_start_position_y = 0;
epinel_fspecial_hit_player = false;
epinel_platform_ricochet = false;
epinel_weightless_logic_article = instance_create(round(room_width / 2), -20000, "obj_article_solid");
epinel_weightless_logic_article.player_id = id;
epinel_buffered_standing_on_platform_id = noone;
epinel_aerial_rise = 0;
epinel_grav_jump = 0;
epinel_nspecial_halt_vsp = true;
epinel_air_dspecial_fall_distance = 0;
epinel_air_dspecial_max_fall_speed = 0;
epinel_has_airdodge_during_aerial_attack = true;
epinel_heavy_state = 0;



//fix_djump_counter = 0; //added to 'fix' the broken doublejumps
//fix_djump_accel = djump_accel;
//djump_accel = 0; //set the original djump_accel value to 0, in case it gets an official patch later
//fix_old_djumps = 0; //added to accurately check when the player has double jumped. Thanks Supersonic




//epinel's "other" custom variables.
epinel_other_weightless_inflicted = false;
epinel_other_update_performed = false;
epinel_other_weightless_timer = 0;
epinel_other_weightless_hsp = 0;
epinel_other_weightless_vsp = 0;
epinel_other_yprevious = y;
epinel_other_freeprevious = free;
epinel_other_is_epinel = true;
epinel_other_standing_on_platform_id = noone;
epinel_sideb_platform_id = noone;
epinel_sideb_platform_relative_x = 0;
epinel_other_platform_collision_check_timer = 5;


epinel_fx_absorb = hit_fx_create( sprite_get( "absorb" ), 30 );
epinel_fx_afterimage = hit_fx_create( sprite_get( "fspecial_afterimage" ), 2 );
epinel_fx_afterimage_air = hit_fx_create( sprite_get( "fspecial_air_afterimage" ), 2 ); 
epinel_fx_field = hit_fx_create( sprite_get( "field" ), 7 );
epinel_fx_field_small = hit_fx_create( sprite_get( "field_small" ), 7 );
epinel_fx_inertia = hit_fx_create( sprite_get( "inertia_fx_big" ), 24 );
epinel_fx_inertia_medium = hit_fx_create( sprite_get( "inertia_fx" ), 16 );
epinel_fx_inertia_small = hit_fx_create( sprite_get( "inertia" ), 20 );
epinel_fx_warning = hit_fx_create( sprite_get( "warning" ), 24 );
epinel_fx_slash_small = hit_fx_create( sprite_get( "fx_slashsmall" ), 6 );
epinel_fx_slash_curve = hit_fx_create( sprite_get( "fx_slashcurve" ), 6 );
epinel_fx_spike = hit_fx_create( sprite_get( "fx_spike" ), 21 );
epinel_fx_narrowcut = hit_fx_create( sprite_get( "fx_narrowcut" ), 12 );
epinel_fx_narrowcross = hit_fx_create( sprite_get( "fx_narrowcross" ), 28 );
epinel_fx_bigslash = hit_fx_create( sprite_get( "fx_bigslash" ), 18 );
epinel_fx_bigspear = hit_fx_create( sprite_get( "fx_bigspear" ), 14 );
epinel_fx_parry = hit_fx_create( sprite_get( "fx_parry" ), 12 );
epinel_fx_parry_front = hit_fx_create( sprite_get( "fx_parry_front" ), 12 );
epinel_fx_sweetspot = hit_fx_create( sprite_get( "fx_sweetspot" ), 10 );
epinel_fx_armorbreak = hit_fx_create( sprite_get( "fx_armorbreak" ), 15 );
epinel_fx_jump = hit_fx_create( sprite_get( "fx_jump" ), 14 );
epinel_fx_arrows = hit_fx_create( sprite_get( "fx_arrows" ), 9 );
epinel_fx_cannot = hit_fx_create( sprite_get( "fx_cannot" ), 14 );

epinel_sprite_inertia = sprite_get("inertia_fx_by_NeXus");
epinel_sprite_heavy = sprite_get("fx_heavy");
epinel_sprite_heavy_arrow = sprite_get("heavy_arrow");

set_victory_bg(CH_KRAGG);
set_victory_theme(sound_get("Epinel_Victory_Theme_by_TailZMusicYT"));

//kragg kirby ability
kirbyability = 3;
swallowed = 0;

//check for if another workshop character breaks epinel's superarmor with questionable code
epinel_fspecial_currently_moving_with_superarmor = false;
epinel_fspecial_move_restore_x = x;
epinel_fspecial_move_restore_y = y;
epinel_fspecial_move_restore_window = 1;
epinel_fspecial_move_restore_window_timer = 1;



//Rune Support
//abyssEnabled = false;
//enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
//runesUpdated = false;

runeA = has_rune("A");
runeB = has_rune("B");
runeC = has_rune("C");
runeD = has_rune("D");
runeE = has_rune("E");
runeF = has_rune("F");
runeG = has_rune("G");
runeH = has_rune("H");
runeI = has_rune("I");
runeJ = has_rune("J");
runeK = has_rune("K");
runeL = has_rune("L");
runeM = has_rune("M");
runeN = has_rune("N");
runeO = has_rune("O");

//ab_hud_x = 0;
//ab_hud_y = 0;

/*
abyssMods = array_create(16,[-1,"Not Implemented."]);

abyssMods[@ runes.A] = [3, "DSPECIAL air speed and platform speed increased."];
abyssMods[@ runes.B] = [2, "Parrying inflicts Inertia."];
abyssMods[@ runes.C] = [2, "BAIR grab can be angled in all directions."];
abyssMods[@ runes.D] = [3, "Dash accelerates to top speed 3x faster."];
abyssMods[@ runes.E] = [3, "DSTRONG Spins 3x longer."];
abyssMods[@ runes.F] = [3, "NSPECIAL has a near-instant startup."];

abyssMods[@ runes.G] = [0, "DSPECIAL Platform size increased 40%."];
abyssMods[@ runes.H] = [2, "FSPECIAL deals full damage when travelling through an opponent."];
abyssMods[@ runes.I] = [0, "Jump-Cancel any move when standing on a DSPECIAL platform."];
abyssMods[@ runes.J] = [2, "Opponents in Inertia take +20% knockback."];    
abyssMods[@ runes.K] = [2, "Double-jump is restored when an Inertia sweetspot connects."];

abyssMods[@ runes.L] = [0, "Stasis fields last 2x longer."];
abyssMods[@ runes.M] = [2, "Hitting an opponent in Inertia extends Inertia time."];
abyssMods[@ runes.N] = [0, "Platforms fire shards in all directions when broken."];
abyssMods[@ runes.O] = [3, "-25% Gravity."];
*/

//dspecial spin
if (runeE) { set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 2); }
else       { set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 3); }

//fast nspecial
if (runeF) { set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 2);  set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1); }
//else       { set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 11); set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 10);  }

//no fspecial sourspot
var move_name_array;
move_name_array[0] = AT_FSPECIAL; move_name_array[1] = AT_FSPECIAL_AIR; move_name_array[2] = AT_FSPECIAL_AIR;
var move_hitbox_array;
move_hitbox_array[0] = 3; move_hitbox_array[1] = 4; move_hitbox_array[2] = 11;


for(var n = 0; n < 3; n++) {
	if (runeH) 
	{
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_BASE_KNOCKBACK, 6);
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_KNOCKBACK_SCALING, 0.65); 
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_ANGLE, 50);
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_DAMAGE, 16);
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_EFFECT, 0); 
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_EXTRA_CAMERA_SHAKE, 1); 
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_VISUAL_EFFECT, 304  );
	}
	/*
	else {
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_BASE_KNOCKBACK, 4);
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_KNOCKBACK_SCALING, 0); 
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_ANGLE, 90);
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_DAMAGE, 1);
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_HITSTUN_MULTIPLIER, 0.1);
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_EFFECT, 12); //crouching armors through this hitbox
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_EXTRA_CAMERA_SHAKE, -1); //no camera shake
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(move_name_array[n], move_hitbox_array[n], HG_VISUAL_EFFECT, 0  ); 
	}
	*/
}


//low gravity
if (runeO) { gravity_speed = .525; hitstun_grav = 0.5; }

//munophone
//user_event(14);
