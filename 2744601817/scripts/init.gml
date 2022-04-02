/*
*
*               -------- init.gml -----------
*
*   This file runs on the first frame of the game starting.
*   
*   
*
*/
//#region Muno -----------------------------------------------------------------

/*
muno_event_type = 0;
user_event(14);
*/

//#region Log Values -----------------------------------------------------------
red_mode = false;
red_num = 2;
red_flash = 0;
stance_cd = 200;
no_cd = false;

draw_init = false;

dattack_jump = false;
dattack_jump_vfx = false;

special_dash = true;
bounce = false;
dash_angle = 0;
dash_dir = 0;
fake_kunai_proj = false;
kunai_proj = 0;
kunai_target = false;
kunai_x_dest = 0;
kunai_y_dest = 0;
special_jump = false;
dash_cd = 130;
old_dash_cd = dash_cd;

strong_charge = 0;

kill_sfx = 0;

implode_timer = 0;

kunai = noone;

new_has_hit_player = false;
kill_effects = false;

dair_angle = 320;
utilt_angle = 55;

dtilt_offledge = false;

new_spr_dir = 0;

combo_cd = 0;
combo_num = 0;
combo_buffer = 0;

recharged = 1
recoverytimer = 0;
recoverytick = 0;

indicator_color = get_player_hud_color( player );

trailer_mode = false;

ruair_timer = 20;
ruair_glow_count = 0;
ruair_glow = false;
rauir_dmg = 0;

//Grab
old_grabbed_player_obj = noone;
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

//Afterimage
afterimage = array_create(3);

//Switch Alt
joycons = get_player_color(player) = 15
//Kawaii Alt
kawaii = get_player_color(player) = 13

//#endregion

//------------------------------------------------------------------------------
//#region Sound effects --------------------------------------------------------
dash_sound = sound_get("dash");
land_sound = sound_get("land");
landing_lag_sound = sound_get("land");
waveland_sound = sound_get("waveland");
jump_sound = sound_get("jump");
djump_sound = sound_get("djump");
air_dodge_sound = asset_get("sfx_quick_dodge");
log_death_sound = sound_get("death");
//#endregion

//#region Hit FX ---------------------------------------------------------------
set_hit_particle_sprite( 1, sprite_get( "_fx_bhit" ) );
set_hit_particle_sprite( 2, sprite_get( "_fx_rhit" ) );
fx_bhit = hit_fx_create( sprite_get( "_fx_bhit1" ), 14 );
fx_bhit_med = hit_fx_create( sprite_get( "_fx_bhit2" ), 18 );
fx_bhit_large = hit_fx_create( sprite_get( "_fx_bhit3" ), 22 );
fx_bhit_line = hit_fx_create( sprite_get( "_fx_bhit4" ), 24 );
fx_bhit_beams = hit_fx_create( sprite_get( "_fx_bhit5" ), 22 );
fx_bhit_beams_small = hit_fx_create( sprite_get( "_fx_bhit5_small" ), 22 );
fx_rhit = hit_fx_create( sprite_get( "_fx_rhit1" ), 14 );
fx_rhit_med = hit_fx_create( sprite_get( "_fx_rhit2" ), 18 );
fx_rhit_large = hit_fx_create( sprite_get( "_fx_rhit3" ), 22 );
fx_rhit_line = hit_fx_create( sprite_get( "_fx_rhit4" ), 18 );
fx_rhit_beams = hit_fx_create( sprite_get( "_fx_rhit5" ), 22 );
fx_rhit_beams_small = hit_fx_create( sprite_get( "_fx_rhit5_small" ), 22 );
fx_phit = hit_fx_create( sprite_get( "_fx_phit1" ), 14 );
fx_phit_med = hit_fx_create( sprite_get( "_fx_phit2" ), 18 );
fx_phit_large = hit_fx_create( sprite_get( "_fx_phit3" ), 18 );

fx_bdattack = hit_fx_create( sprite_get( "_fx_bdattack" ), 14 );
fx_bdattack2 = hit_fx_create( sprite_get( "_fx_bdattack2" ), 10 );
fx_rdattack = hit_fx_create( sprite_get( "_fx_rdattack" ), 14 );
fx_rdattack2 = hit_fx_create( sprite_get( "_fx_rdattack2" ), 10 );
fx_pdattack = hit_fx_create( sprite_get( "_fx_pdattack" ), 14 );
fx_pdattack2 = hit_fx_create( sprite_get( "_fx_pdattack2" ), 14 );
fx_bdtilt = hit_fx_create( sprite_get( "_fx_bdtilt" ), 10 );
fx_rdtilt = hit_fx_create( sprite_get( "_fx_rdtilt" ), 16 );
fx_rdairspike = hit_fx_create( sprite_get( "_fx_rspike" ), 22 );
fx_bnspec = hit_fx_create( sprite_get( "_fx_bnspec" ), 18 );
fx_rnspec = hit_fx_create( sprite_get( "_fx_rnspec" ), 18 );

fx_bslam = hit_fx_create( sprite_get( "_fx_bslam" ), 16 );
fx_bslam2 = hit_fx_create( sprite_get( "_fx_bslam2" ), 16 );
fx_bzap = hit_fx_create( sprite_get( "_fx_bzap" ), 16 );
fx_slam = hit_fx_create( sprite_get( "_fx_slam" ), 24 );
fx_slam2 = hit_fx_create( sprite_get( "_fx_slam2" ), 24 );
fx_cracks = hit_fx_create( sprite_get( "_fx_cracks" ), 24 );

fx_slash = hit_fx_create( sprite_get( "_fx_slash" ), 16 );
fx_rslash = hit_fx_create( sprite_get( "_fx_rslash" ), 16 );
fx_dash = hit_fx_create( sprite_get( "_fx_dash" ), 14 );

fx_bdash_pixel1 = hit_fx_create( sprite_get( "_fx_bdash_pixel1" ), 14 );
fx_rdash_pixel1 = hit_fx_create( sprite_get( "_fx_rdash_pixel1" ), 14 );
//#endregion

//#region Hurtboxes ------------------------------------------------------------
hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1; //-1 uses hurtbox_spr hurtbox
hitstun_hurtbox_spr = -1; //-1 uses hurtbox_spr hurtbox
//#endregion

//#region Animation and Visuals ------------------------------------------------
char_height = 44;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

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
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 3;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 3;
roll_back_active_frames = 2;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
//#endregion

//#region Stats ----------------------------------------------------------------

//#region Ground ---------------------------------------------------------------
walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 8;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;
//#endregion

//#region Air ------------------------------------------------------------------
jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 5;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
max_jump_hsp_default = max_jump_hsp;
air_max_speed_default = air_max_speed; 
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 48; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall_default = 10; 
max_fall = max_fall_default; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed

//#endregion

//#region Character Weight -----------------------------------------------------
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
//#endregion

//#region Misc------------------------------------------------------------------
land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding
//#endregion

//#endregion

//------------------------------------------------------------------------------
//#region Compat ---------------------------------------------------------------

kart_sprite = sprite_get("!kart")
kart_engine_sound = sound_get("engine")
kart_frames = 0

//#endregion

//------------------------------------------------------------------------------
//#region Blu's Particle System ------------------------------------------------

bps_pre_active_parts = ds_list_create()
bps_post_active_parts = ds_list_create()
bps_groups = ds_map_create()
bps_game_paused = false
bps_prev_gameplay_time = 0

// ENUMS "BPS_AT"
BPS_STILL = -1
BPS_FOLLOW = 0
BPS_AT_SPIN = 1

// ENUMS "BPS_PT_AT"
BPS_SPIN_SPEED = 0

particle = bps_make("particle_group", sprite_get("_fx_gib"))

bps_set_particle_value(particle, "amount", 1)
bps_set_particle_value(particle, "weight", .3)
bps_set_particle_value(particle, "min_angle", 85)
bps_set_particle_value(particle, "max_angle", 95)
bps_set_particle_value(particle, "max_speed", 5)
bps_set_particle_value(particle, "angle_type", 1)



//// [ 💧 BLU PARTICLE SYSTEM 💧 ] ////

#define bps_make(_group, _sprite)
	temp_group = ds_list_create()
	if (ds_map_exists(bps_groups, _group)) {
		ds_list_destroy(temp_group)
		temp_group = bps_groups[? _group]
	} else {
		ds_map_set(bps_groups, _group, temp_group)
	}

	var temp_part = ds_map_create()
	ds_map_set(temp_part, "sprite", _sprite)
	ds_map_set(temp_part, "weight", 0.1)
	ds_map_set(temp_part, "amount", 1)
	ds_map_set(temp_part, "min_angle", -45)
	ds_map_set(temp_part, "max_angle", 45)
	ds_map_set(temp_part, "min_speed", 4)
	ds_map_set(temp_part, "max_speed", 8)
	ds_map_set(temp_part, "lifetime", 100)
	ds_map_set(temp_part, "angle_type", 0)
	ds_map_set(temp_part, "shader", true)

	ds_list_add(temp_group, temp_part)

	to_return = {"group": _group, "index": (ds_list_size(temp_group)-1)}

	return to_return

#define bps_spawn(_group, _x, _y, _front, _dir)
	if (ds_map_exists(bps_groups, _group)) {
		temp_group = bps_groups[? _group]
		i = 0
		repeat(ds_list_size(temp_group)) {
			temp_part = temp_group[| i]
			print(temp_part[? "weight"])
			repeat (temp_part[? "amount"]) {
				if (_front) {
					ds_list_add(bps_post_active_parts, {
						"sprite": temp_part[? "sprite"],
						"weight": temp_part[? "weight"],
						"min_angle": temp_part[? "min_angle"],
						"max_angle": temp_part[? "max_angle"],
						"min_speed": temp_part[? "min_speed"],
						"max_speed": temp_part[? "max_speed"],
						"lifetime": temp_part[? "lifetime"],
						"angle_type": temp_part[? "angle_type"],
						"shader": temp_part[? "shader"],
						"init": false,
						"life": 0,
						"gravity": 0,
						"speed": 0,
						"x": _x,
						"y": _y,
						"dir": _dir
					})
				} else {
					ds_list_add(bps_pre_active_parts, {
						"sprite": temp_part[? "sprite"],
						"weight": temp_part[? "weight"],
						"min_angle": temp_part[? "min_angle"],
						"max_angle": temp_part[? "max_angle"],
						"min_speed": temp_part[? "min_speed"],
						"max_speed": temp_part[? "max_speed"],
						"lifetime": temp_part[? "lifetime"],
						"angle_type": temp_part[? "angle_type"],
						"shader": temp_part[? "shader"],
						"init": false,
						"life": 0,
						"gravity": 0,
						"speed": 0,
						"x": _x,
						"y": _y,
						"dir": _dir
					})
				}
			}
			i += 1
		}
	} else {
		print(`[ BluParticleSystem ] ERR => '${_group}' not a registered group`)
	}

#define bps_set_particle_value(_part, _pt_index, _value)
	_group = _part.group
	_index = _part.index
	temp_group = bps_groups[? _group]
	temp_part = temp_group[| _index]
	temp_part[? _pt_index] = _value
	temp_group[| _index] = temp_part

#define bps_get_particle_value(_part, _pt_index)
	_group = _part.group
	_index = _part.index
	temp_group = bps_groups[? _group]
	temp_part = temp_group[| _part.index]
	return temp_part[? _pt_index]

#define bps_remove_group(_group)
	if (ds_map_exists(bps_groups, _group)) {
		ds_map_delete(bps_groups, _group)
	} else {
		print(`[ BluParticleSystem ] ERR => '${_group}' not a registered group`)
	}

#define bps_remove_particle(_part)
	_group = _part.group
	_index = _part.index
	if (ds_map_exists(bps_groups, _group)) {
		temp_group = bps_groups[? _group]
		if ( _index < (ds_list_size(temp_group)-1) ) {
			ds_list_delete(temp_group, _index)
		} else {
			print(`[ BluParticleSystem ] ERR => '${_index}' is not a valid index on '${_group}'`)
		}
	} else {
		print(`[ BluParticleSystem ] ERR => '${_group}' not a registered group`)
	}

/////////////////////////////////