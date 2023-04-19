hurtbox_spr = sprite_get("1");
crouchbox_spr = sprite_get("2");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 64;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3; //ok
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 8;
dash_speed = 6.25;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 5;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5; //ok
jump_speed = 10.5; //ok
short_hop_speed = 5.00; //ok
djump_speed = 10; //ok
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping //ok
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground //ok
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state //ok
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down //ok
air_accel = .36; //ok
prat_fall_accel = 1.00; //multiplier of air_accel while in pratfall //ok
air_friction = .04; //ok
max_djumps = 1; //ok
double_jump_time = 45; //the number of frames to play the djump animation. Can't be less than 31. //ok
walljump_hsp = 6; //ok
walljump_vsp = 8; //ok
walljump_time = 32; //ok
max_fall = 8; //maximum fall speed without fastfalling //ok
fast_fall = 13; //fast fall speed //ok
gravity_speed = .48; //ok
hitstun_grav = .5; //ok
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames //ok
prat_land_time = 8; //ok
wave_land_time = 8; //ok
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1 //ok
wave_friction = .06; //grounded deceleration when wavelanding //ok

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//misc variables
fire_bouncetime = 0;
fireballs_out = 0;
rollable = false;
aerialdspec = false;
bonked = false;
ustrongtimer = 0;
airtransitionwindow = 0
airtransitiontimer = 0
//Image Mask
start_predraw = false;

//fx
bounce_fx = hit_fx_create( sprite_get( "vfx_bounce" ), 25 );
fireball_dead_fx = hit_fx_create( sprite_get( "vfx_fireball_disappear" ), 7 );
fireball_hit_fx = hit_fx_create( sprite_get( "vfx_fireball_impact" ), 20 );
coin_fx = hit_fx_create( sprite_get( "vfx_coin" ), 15);

//afterimages
after_image = array_create(10, -1);
after_image_timer = -1;

//VICTORY MUSIC AND BG SET ---------------------------------------------------------------------------------
//set_victory_bg( sprite_get( "[bg sprite name]" )); //Victory BackGround
//set_victory_theme(sound_get("[victory music file name]")); //Victory BGMusic
//remove the slashes at the start of the lines to use the above 2

//hfx template ---------------------------------------------------------------------------------
//[hit fx name] = hit_fx_create( sprite_get( "[hit fx sprite name]" ), [lifetime/length]);

//hit particles ---------------------------------------------------------------------------------
//just put the sprites into the sprites folder, named as hit_particle[number], like hit_particle1, up to 1-6
//or use below to change mid-game
//set_hit_particle_sprite( [number, start with 1, up to 6], sprite_get("[hit particle sprite name]"));

//usual variables i use ---------------------------------------------------------------------------------
marioanimframes = 0; //I usually use a variable to control image_index/anim frames for animation.gml
//if youre using this as a template, replace "maiosee" with your char's name. 
//unique variables = less mess with other variable owners

//Image Mask
start_predraw = false;

//read synced vars (from barkun)
var tmp_sync_vars = get_synced_var(player);
for (var i = 0; i < 2; i++)
{
    var shift = (i*4);
    synced_vars[i] = tmp_sync_vars >> shift & 15;
}

voice_enabled = false;
voice_type = 0;
jermama = false;
//voice
switch (synced_vars[0])
{
	default:
	voice_enabled = false;
	break;
	case 1:
	voice_enabled = true;
	break;
}
switch (synced_vars[1])
{
	default:
	jermama = false;
	break;
	case 1:
	jermama = true;
	break;
	
}
//voice_enabled = false;
voice_playing_sound = noone;
voice_id = 0;
voice_volume = 1;
dont_shutup = false;
jerma_muted = false;
