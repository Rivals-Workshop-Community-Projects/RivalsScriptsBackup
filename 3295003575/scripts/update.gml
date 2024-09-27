// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);


if phone_cheats[CHEAT_FLY] && !shield_down vsp = -1;

if (state == PS_DOUBLE_JUMP && state_timer == 0) {
	if (spr_dir == 1 && (left_down || (left_pressed && !right_down))) {
		spr_dir = -1;
	} else if (right_down || (right_pressed && !left_down)) {
		spr_dir = 1;
	}
}

var intro_duration = clamp(get_gameplay_time() - 5*(player - 1), 0, 1000000000000000000000000000000000000000000000);
if intro_duration == 6 sound_play(sound_get("chainsawrev")){
}

if (meter > 0)
{
	meter--;
}

if (meter <= 0)
{
	meter = 0;
}

if (meter = 0)
{
	Reved= false;
}

if (meter > 0)
{
	Reved= true;
}

if (Reved= true) {
	walk_speed = 5.5;
	wave_land_adj = 1.5;
	dash_speed = 10;
	initial_dash_speed = 11;
	air_dodge_speed = 10.5;
	air_max_speed = 7;
	air_accel = 0.45;
	jump_speed = 12;
	djump_speed = 12;
	max_djumps   = 2;
	leave_ground_max = 7.5;
	max_jump_hsp = 7.5;
	short_hop_speed = 5.75;
	walljump_hsp = 8;
	walljump_vsp = 9;
}

if (Reved= false) {
walk_speed          = 2.8;		// 3    -  4.5
knockback_adj		=  1;
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 6;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 9;		// 4    -  9
dash_speed          = 7;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.6;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;	
}


if (timer > 0)
{
    timer--;
}

if (timer <= 0)
{
    timer = 0;
}

if (timer <= 0)
{
    set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 3);
}

if (timer = 0)
{
    set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 3);
}

if (!free || state_cat == SC_HITSTUN || state == PS_WALL_JUMP){
    move_cooldown[AT_USPECIAL] = 0;
}

