

/*

Reality has come in sight

What did you see?
What did you hear?
What did you think?
What did you seek?

What did you do?

*/








hurtbox_spr = sprite_get("na_hurtbox");
crouchbox_spr = sprite_get("na_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = asset_get("wolf_hitstun_hurtbox");

char_height = 38;
idle_anim_speed = .09; //.11
crouch_anim_speed = .05;
walk_anim_speed = .08;
dash_anim_speed = .12;
pratfall_anim_speed = .25;

walk_speed = 2; //2
walk_accel = 0.1;
walk_turn_time = 10;
initial_dash_time = 8;
initial_dash_speed = 6.5; //6.5
dash_speed = 4.7; //4.7
dash_turn_time = 8;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .2;
moonwalk_accel = 1.25;

jump_start_time = 5;
jump_speed = 11.8;
short_hop_speed = 7.5;
djump_speed = 10.4;
leave_ground_max = 4; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3.8; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .5; //multiplier of air_accel while in pratfall
//prat_fall_accel_normal = .5; //
//prat_fall_accel_reduce = .3; //
//air_friction_orig = 0.017;
air_friction = 0.03;//0.017
//air_friction_hitstun = 0.04;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4.7;
walljump_vsp = 10.8;
walljump_time = 36;
max_fall = 7.5; //maximum fall speed without fastfalling //10.5
fast_fall = 12.7; //fast fall speed //14.7
gravity_speed = .45; //.45
hitstun_grav = .51;
knockback_adj = 1.05;//1.09 //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 13;//11
wave_land_time = 6;
wave_land_adj = 1.18; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .3; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 2;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 9.6;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 10; //7.5//9

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 8.6; //roll speed
roll_backward_max = 8.6;

//walljump animation frames
wall_frames = 3;

//land_sound = asset_get("sfx_land_med");
land_sound = asset_get("sfx_land_med2");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_fors");
//jump_sound = asset_get("sfx_jumpground");
jump_sound = sound_get("na_jump3");
//djump_sound = asset_get("sfx_jumpair");
djump_sound = sound_get("na_doublejump3");
//air_dodge_sound = asset_get("sfx_quick_dodge");
air_dodge_sound = asset_get("sfx_boss_shine");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

/*
na_vsp_h=[0, 0, 0, 0, 0, 0];
na_hsp_h=[0, 0, 0, 0, 0, 0];
*/

set_victory_theme( sound_get( "Victory" ));
set_victory_bg( sprite_get( "na_resultbg" ));

voidfx = hit_fx_create( sprite_get( "na_void" ), 24 );
voidfxB = hit_fx_create( sprite_get( "na_voidB" ), 24 );
wavefx = hit_fx_create( sprite_get( "na_wave" ), 28 );
na_ls_fx = hit_fx_create( sprite_get( "hfx1" ), 24 ); //largeslash
na_ms_fx = hit_fx_create( sprite_get( "hfx2" ), 24 ); //mediumslash
na_cs_fx = hit_fx_create( sprite_get( "hfx3" ), 24 ); //clawslash
na_ss_fx = hit_fx_create( sprite_get( "hfx4" ), 20 ); //sentryslash
na_aura1 = hit_fx_create( sprite_get( "na_aura1" ), 12 );
na_aura2 = hit_fx_create( sprite_get( "na_aura2" ), 14 );
na_aura3 = hit_fx_create( sprite_get( "na_aura3" ), 16 );

na_dot2 = hit_fx_create( sprite_get( "na_dot2" ), 16 );

arena_title = "N/A";
arena_short_name = "N/A";
battle_text = "* Devoid of environment.";
Hikaru_Title = "-4";
pkmn_stadium_front_img = sprite_get("na_ps_f");
pkmn_stadium_back_img = sprite_get("na_ps_b");
steve_death_message = "death.attack.void";
tcoart = sprite_get("na_stickman");
copy_ability_id = 47; //kirbyfighters
kf_health_modify  = 50;
has_fail = true; fail_text = "The abyss stared back, I guess.";
pot_compat_variable = sprite_get("pogumbo_food");
pot_compat_text = "Le abyssfishe au chocolat";
hit_player_event = 5;

//table of contents:
//article1 is abyss bubble
//article2 is nspecial rift
//article3 is lingering slash

nadev = false;
nadev_display = true;
nadev_cooldown = 0;
na_ust_marked = 0;
was_usp = false;
na_dsp_charge = 0;
dspmax = 30;//initially 50, previously 35, currently 30
dairvsp_orig = -12;
dairvsp = -12;
dair_mark = false;
usp_ls_cooldown = 0;
usp_real_cd = false;
yo_dummy_your_up_b_got_PARRIED = false;
fair_thing = false;
fair_thing_hsp = false;
fstr_thing = false;
fstr_thing_hsp = false;
was_it_extended_parrystun = false;

usp_land = false;

col_timer = 0;
col_timer_max = 30;
col_phase = 0;
ea_init = 0;
s_init = 0;
giy_timer = 0;
giy_max = 192;
giy_speed = 0.3;
giy_speed_n = 0.3;
giy_speed_f = 3;
giy_tr_speed = 0.06;

trummelcodecneeded = false;
trummelcodec_id = -4;

clock_show = false;
clock_timer = 0;
clock_dur_orig = 80;
clock_dur = 80;
clock_s_type = 0;
clock_s_timer = 0;
clock_s_dur = 20;
clock_n_prev = 0;
clock_n_cur = 0;
clock_n_timer = 0;
clock_n_dur_orig = 6;
clock_n_dur = 6;
clock_n_deathstore = 0;
clock_lock = false;

dsp_air_track = 0;
/*
quake_timer = 0;
quake_dur = 24;
*/
extra_col = 0;
rk_sfx = false;
na_bh = false;

v_fstrong = false;
eyechecker = false;

laseroverlay_init = false;

practice = false;






//i just happened to have LoA design for N/A so here goes;

// Date Girl Support
	Chatting = true; 

	DG_portrait = sprite_get("na_vn");
	var DG_page = 0;
	
// Page 0
	DG_page = 0;								DG_chat_type[DG_page] = 2;
	// 1 = Dialogue with answers to select after
	// 2 = Dialogue that transitions into more dialogue
	// 3 = Dialogue that ends afterwards
	

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 2;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = true;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "...
	
	
							_                                                              Page "+string(DG_page+1)+"
							N/A";

	DG_nextindex[DG_page] = 1;
		
// Page 1
	DG_page = 1;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "No longer do we need speech...
							Not any more.
							
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 52;

// Page 2	
	DG_page = 2;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "I hope that before it is too late,
							You will break free of your chains.
							
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 3;

// Page 52 - trailer
	DG_page = 52;								DG_chat_type[DG_page] = 3;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "We respect your curiousity. This vessel's cognitio, too,
							is driven majorly by curiousity as well.";
	
	DG_nextindex[DG_page] = 52;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	