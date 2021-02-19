// ------------------------------------------------------
// Astra Specific Variables
// ------------------------------------------------------

	// Unique Move Assignments
	AT_FSPECIAL_SUN = 40;
	AT_FSPECIAL_STAR = 41;
	AT_FSPECIAL_GALAXY = 42;

	// Unique Constants
	CHARGE_MAX = 4;
	CARD_SPEED = 32;
	CARD_TAP = 4; // Time it takes to enable tap swap again
	CARD_ACTIVE = 15; // Time it takes to hold into card select
	CARD_QUICK = 20;  // Time it takes to hold into quick swap
	CARD_RETURN = 35; // Time it takes to hold into card return
	// Card Objects: Sun, Star, Galaxy, Astral (TP), Black Hole Star
	CARD_OBJ = [instance_create(-1000,-1000,"obj_article1"),
							instance_create(-1000,-1000,"obj_article1"),
							instance_create(-1000,-1000,"obj_article1"),
							instance_create(-1000,-1000,"obj_article1")];

	CARD_SPRITE_SMALL = sprite_get("card_small");
	CARD_SPRITE_MEDIUM = sprite_get("card_medium");
	CARD_SPRITE_LARGE = sprite_get("card_large");

	SUN_SHOT = sprite_get("fspecial_sun_shot");

	// Set Object CARD_TYPE to proper types
	for (i = 0; i < 4; i++) {
		CARD_OBJ[i].CARD_TYPE = i;
		CARD_OBJ[i].image_index = i;
		if (i != 3) CARD_OBJ[i].mask_index = sprite_get("card_set_hurt");
	}

	// Unique Variables
	spark_x = 0; // FSpecial Star position X
	spark_y = 0; // FSpecial Star position Y
	spark_charge = 3;
	blackhole_obj = noone;
	sun_hitbox = noone;
	sun_charge_sound = 0;
	charge_level = 0;

	card_current = 0; // Current card: 0-Sun 1-Star 2-Galaxy
	card_is_returning = false;
	card_taptime = CARD_TAP; // Time it takes so you can tap swap again
	card_timer = 0; // Time it takes to activate Card Hold
	card_selecting = false;
	card_dir = 3; // Quick swap state 3 - Off
	card_qtimer = 0; // Quick swap hold timer

	thrown_card = noone;
	thrown_over = 0;
	thrown_value = 1;
	tp_dir_x = 0;
	tp_dir_y = 0;
	tp_air = false; // If I'm teleporting from the air
	tp_hb = noone; // Teleport hitbox
	joy_pad_idle_prev = false;

	// Debug Variables
	debug_card_names = ["Sun", "Star", "Galaxy"];
	debug_roa_sig = [id,"7617749324","sigc181e704"];

	// Unique Random Vars
	random_func = 354115108;
	random_func2 = 3808874662 ^ random_func;

	// Unique Effects
	sun_burst = hit_fx_create( sprite_get( "fspecial_sun_burst" ), 14 );
	galaxy_absorb = hit_fx_create( sprite_get( "dspecial_galaxy" ), 18 );

// ------------------------------------------------------
// Astra Particle Variables
// ------------------------------------------------------

	spark_sprite = sprite_get("sparkle");

	// Active card fx
	for (var i = 1; i > -1; i--) {
		active_fx[i] = (i/2 * 30); // FX Timer
	}

	// Spark fx
	for (var i = 3; i > -1; i--) {
		spark_fx[i,4] = 0; // VSpeed
		spark_fx[i,3] = 0; // HSpeed
		spark_fx[i,2] = 0; // Timer
		spark_fx[i,1] = -1000; // Y Pos
		spark_fx[i,0] = -1000; // X Pos
	}

// ------------------------------------------------------
// Character Variables
// ------------------------------------------------------

	// Hurtboxes
	hurtbox_spr = asset_get("ex_guy_hurt_box");
	crouchbox_spr = asset_get("ex_guy_crouch_box");
	air_hurtbox_spr = sprite_get("jump_hurt");
	hitstun_hurtbox_spr = -1;

	// Animation Speed
	char_height = 52;
	idle_anim_speed = .15;
	crouch_anim_speed = .1;
	walk_anim_speed = .2;
	dash_anim_speed = .25;
	pratfall_anim_speed = .2;

	// Horizontal Config
	walk_speed = 4;
	walk_accel = 0.25;
	walk_turn_time = 10;
	initial_dash_time = 6;
	initial_dash_speed = 7.5;
	dash_speed = 6.5;
	dash_turn_time = 5;
	dash_turn_accel = 1;
	dash_stop_time = 6;
	dash_stop_percent = .45; //the value to multiply your hsp by when going into idle from dash or dashstop
	ground_friction = .7;
	moonwalk_accel = 1.4;

	// Vertical Config
	jump_start_time = 5;
	jump_speed = 10;
	short_hop_speed = 7;
	djump_speed = 10;
	leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
	max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
	air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
	jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
	air_accel = .35;
	prat_fall_accel = .6; //multiplier of air_accel while in pratfall
	air_friction = .02;
	max_djumps = 1;
	double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
	walljump_hsp = 6;
	walljump_vsp = 10;
	walljump_time = 32;
	wall_frames = 2; //anim frames before you leave the wall
	max_fall = 10; //maximum fall speed without fastfalling
	fast_fall = 13; //fast fall speed
	gravity_speed = .5;
	hitstun_grav = .5;
	knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

	// Land Config
	land_time = 4; //normal landing frames
	prat_land_time = 10;
	wave_land_time = 8;
	wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
	wave_friction = .11; //grounded deceleration when wavelanding

	// Animation Frames
	crouch_startup_frames = 2;
	crouch_active_frames = 1;
	crouch_recovery_frames = 2;

	dodge_startup_frames = 1;
	dodge_active_frames = 1;
	dodge_recovery_frames = 5;

	tech_active_frames = 3;
	tech_recovery_frames = 3;

	techroll_startup_frames = 2;
	techroll_active_frames = 2;
	techroll_recovery_frames = 2;
	techroll_speed = 10;

	air_dodge_startup_frames = 1;
	air_dodge_active_frames = 3;
	air_dodge_recovery_frames = 3;
	air_dodge_speed = 7.5;

	roll_forward_startup_frames = 1;
	roll_forward_active_frames = 3;
	roll_forward_recovery_frames = 2;
	roll_forward_startup_frames = 1;
	roll_forward_active_frames = 3;
	roll_forward_recovery_frames = 2;
	roll_forward_max = 9; //roll speed
	roll_backward_max = 9;

	// Sound Effect Assignments
	land_sound = asset_get("sfx_land_light");
	landing_lag_sound = asset_get("sfx_land");
	waveland_sound = asset_get("sfx_waveland_may");
	jump_sound = asset_get("sfx_jumpground");
	djump_sound = asset_get("sfx_jumpair");
	air_dodge_sound = asset_get("sfx_quick_dodge");

	// Misc Variables
	// Ranno's Bubble Offset
	bubble_x = 0;
	bubble_y = 0;

// ------------------------------------------------------
