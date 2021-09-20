hurtbox_spr = sprite_get("hurtbox");
air_hurtbox_spr = sprite_get("hurtbox_air");
crouchbox_spr = sprite_get("cr_hurtbox");
hitstun_hurtbox_spr = -1;

//other stuff
set_victory_theme(sound_get("mus_galega_victory"));

char_height = 52;
idle_anim_speed = .14;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .4;
pratfall_anim_speed = 1;

saw_blade = 0

hue = 0;
outlineR = 0;
outlineG = 0;
outlineB = 0;
outlineDirection = 0;
sideBHold = 0;
//99, 155, 255

kirbyability = 16;

walk_speed = 4;
walk_accel = 0.2;
walk_turn_time = 4;
initial_dash_time = 9;
initial_dash_speed = 6;
dash_speed = 7.5;
dash_turn_time = 5;
dash_turn_accel = 2.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.2;

jump_start_time = 5;
jump_speed = 12.5;
short_hop_speed = 8;
djump_speed = 12.5;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; // (3) the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .45;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .1;
max_djumps = 1;
double_jump_time = 16; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4.5;
walljump_vsp = 12;
walljump_time = 18;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 15; // (11) fast fall speed
gravity_speed = .7; // (.45)
hitstun_grav = .55;
knockback_adj = 1.02; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 7;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .4; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 4;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 0;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 5;
techroll_recovery_frames = 1;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 10;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 5;
roll_back_recovery_frames = 1;	
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Sounds
vfx_steam_small = hit_fx_create( sprite_get( "vfx_steam1" ), 15 );
vfx_steam_medium = hit_fx_create( sprite_get( "vfx_steam3" ), 20 );
vfx_steam_large = hit_fx_create( sprite_get( "vfx_steam2" ), 25 );

//Visual Effects
vfx_doublejump_steam = hit_fx_create( sprite_get( "doublejump_steam" ), 15);
vfx_fair_oomph = hit_fx_create( sprite_get( "vfx_fair_oomph" ), 15);
vfx_steam_blast_bair = hit_fx_create( sprite_get( "vfx_steam_blast_bair" ), 15);
vfx_nair_boost = hit_fx_create( sprite_get( "vfx_nair_boost" ), 20);
vfx_nair_slam = hit_fx_create( sprite_get( "vfx_nair_slam" ), 16);
vfx_nspec_cancel = hit_fx_create( sprite_get( "vfx_nspec_cancel" ), 21);
vfx_fspecial_steam = hit_fx_create( sprite_get( "vfx_steam_fspecial" ), 16);
vfx_speed_line_x = hit_fx_create( sprite_get( "vfx_speed_line_x" ), 12);
vfx_speed_line_y = hit_fx_create( sprite_get( "vfx_speed_line_y" ), 12);
vfx_steam_bar_red = hit_fx_create( sprite_get( "vfx_steam_bar_red" ), 30);
vfx_steam_hit_small = hit_fx_create( sprite_get( "vfx_steam_small" ), 20);
vfx_steam_hit_large = hit_fx_create( sprite_get( "vfx_steam_large" ), 24);
vfx_rocket_trail = hit_fx_create( sprite_get( "rocket_trail" ), 18);
vfx_firework = hit_fx_create( sprite_get( "firework" ), 24);
vfx_firework2 = hit_fx_create( sprite_get( "firework2" ), 24);
vfx_firework3 = hit_fx_create( sprite_get( "firework3" ), 24);


//Variables
steam = 100
length = 0
steam_wall = noone
steam_wall_anim_sync = 0
full_length = 0
wall_dir = 1
steam_wall_dismiss = false
red_indicator_timer = 0
uspecial_uppie = false
uspecial_steam_grav = 0
uspecial_no_steam = false
has_bounce = true
nspec_cancel_buffer = false
alt_cur = get_player_color(player);
grabbedid = noone;
geyser = noone
geyser_2 = noone
steam_break = false
steam_wall_timer = 0
steam_rocket = noone
random_var = 0
random_sway = 1
steam_break_timer = 0

//Pokemon Stadium
pkmn_stadium_back_img = sprite_get("galega_back_sprite")
pkmn_stadium_front_img = sprite_get("galega_front_sprite")

//Dedede
arena_title = "The Pacific End";

//miiverse
miiverse_post = sprite_get("galega_miiverse");

sprite_change_offset("galega_miiverse", 60, 30);

//kirby
swallowed = 0;
kirbyability = 1;

switch_timer = 0

not_moved = true

//g7
g7fx_timer = 0;

//Ocean
waves_rising = 0.5
waves_direction = 2

//Blw
flag_width = 0

//Animation

if(get_player_color(player) > 8 || get_player_color(player) <= 8 && attack_down || get_player_color(player) <= 8 && attack_pressed){
	
	masked = true
	//Sfx
	sfx_steam1 = sound_get("sfx_masked_steam1")
	sfx_steam2 = sound_get("sfx_masked_steam2")
	sfx_steam3 = sound_get("sfx_masked_steam3")
	sfx_steam_cloth = sound_get("sfx_masked_steam_cloth")
	
	set_victory_portrait(sprite_get("portrait_mask"));
	//CCS
	spr_charselect = sprite_get("masked_charselect");
	
	//Ground
	spr_idle = sprite_get("masked_idle");
	spr_crouch = sprite_get("masked_crouch");
	spr_walk = sprite_get("masked_walk");
	spr_walkturn = sprite_get("masked_walkturn");
	spr_dash = sprite_get("masked_dash");
	spr_dashstart = sprite_get("masked_dashstart");
	spr_dashstop = sprite_get("masked_dashstop");
	spr_dashturn = sprite_get("masked_dashturn");

	//Air
	spr_jumpstart = sprite_get("masked_jumpstart");
	spr_jump = sprite_get("masked_jump");
	spr_doublejump = sprite_get("masked_doublejump");
	spr_walljump = sprite_get("masked_walljump");
	spr_pratfall = sprite_get("masked_pratfall");
	spr_land = sprite_get("masked_land");
	spr_landinglag = sprite_get("masked_landinglag");

	//Dodge
	spr_parry = sprite_get("masked_parry");
	spr_roll_forward = sprite_get("masked_roll_forward");
	spr_roll_backward = sprite_get("masked_roll_backward");
	spr_airdodge = sprite_get("masked_airdodge");
	spr_airdodge_waveland = sprite_get("masked_waveland");
	spr_tech = sprite_get("masked_tech");

	//Hurt
	spr_hurt = sprite_get("masked_hurt");
	spr_bighurt = sprite_get("masked_bighurt");
	spr_hurtground = sprite_get("masked_hurtground");
	spr_uphurt = sprite_get("masked_uphurt");
	spr_downhurt = sprite_get("masked_downhurt");
	spr_bouncehurt = sprite_get("masked_bouncehurt");
	spr_spinhurt = sprite_get("masked_spinhurt");

	//Attack
	spr_jab = sprite_get("masked_jab");
	spr_dattack = sprite_get("masked_dattack");
	spr_ftilt = sprite_get("masked_ftilt");
	spr_dtilt = sprite_get("masked_dtilt");
	spr_utilt = sprite_get("masked_utilt");
	spr_nair = sprite_get("masked_nair");
	spr_fair = sprite_get("masked_fair");
	spr_bair = sprite_get("masked_bair");
	spr_uair = sprite_get("masked_uair");
	spr_dair = sprite_get("masked_dair");
	spr_fstrong = sprite_get("masked_fstrong");
	spr_ustrong = sprite_get("masked_ustrong");
	spr_dstrong = sprite_get("masked_dstrong");
	spr_nspecial = sprite_get("masked_nspecial");
	spr_fspecial = sprite_get("masked_fspecial");
	spr_uspecial = sprite_get("masked_uspecial");
	spr_dspecial = sprite_get("masked_dspecial");
	if(get_player_color(player) == 12){
		spr_taunt = sprite_get("masked_taunt");
		spr_taunt_2 = sprite_get("masked_taunt_2");
		spr_taunt3 = sprite_get("masked_taunt3_g7");
	}else if(get_player_color(player) == 11){
		spr_taunt = sprite_get("masked_taunt");
		spr_taunt_2 = sprite_get("masked_taunt_2");
		spr_taunt3 = sprite_get("masked_taunt3_ocean");
	}else{
		spr_taunt = sprite_get("masked_taunt");
		spr_taunt_2 = sprite_get("masked_taunt_2");
		spr_taunt3 = sprite_get("masked_taunt3");
	}
	
	spr_fspecial_air = sprite_get("masked_fspecial_air");
	spr_uspecial_air = sprite_get("masked_uspecial_air");
	spr_uspecial_air_steam = sprite_get("masked_uspecial_air_steam");
	spr_nspecial_air = sprite_get("masked_nspecial_air");
	spr_dspecial_air = sprite_get("masked_dspecial_air");
	spr_bounce = sprite_get("masked_bounce");

	useskins = true;
}else if(get_player_color(player) <= 8 || get_player_color(player) > 8 && attack_down || get_player_color(player) > 8 && attack_pressed){
	
	masked = false
	
	if(get_player_color(player) == 12){
		spr_taunt = sprite_get("taunt");
		spr_taunt_2 = sprite_get("taunt_2");
		spr_taunt3 = sprite_get("taunt3_g7");
	}else if(get_player_color(player) == 11){
		spr_taunt = sprite_get("taunt");
		spr_taunt_2 = sprite_get("taunt_2");
		spr_taunt3 = sprite_get("taunt3_ocean");
	}else{
		spr_taunt = sprite_get("taunt");
		spr_taunt_2 = sprite_get("taunt_2");
		spr_taunt3 = sprite_get("taunt3");
	}
	
	set_victory_portrait(sprite_get("portrait"));
	sfx_steam1 = sound_get("sfx_steam1")
	sfx_steam2 = sound_get("sfx_steam2")
	sfx_steam3 = sound_get("sfx_steam3")
	sfx_steam_cloth = sound_get("sfx_steam_cloth")
	useskins = false
}