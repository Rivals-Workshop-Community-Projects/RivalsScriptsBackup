hurtbox_spr = sprite_get("ganondorf_hurtbox");
crouchbox_spr = sprite_get("ganondorf_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 70;
idle_anim_speed = .125;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6.25;
dash_speed = 5.75;
dash_turn_time = 10;
dash_turn_accel = 1.75;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 6.5;
djump_speed = 12;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .6;
hitstun_grav = .52;
knockback_adj = 0.9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 21;
wave_land_time = 9;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .10; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 4;
techroll_recovery_frames = 5;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 5;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 5;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_fors");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

vfx_dair = hit_fx_create(sprite_get("vfx_dair"), 20);
vfx_nair1 = hit_fx_create(sprite_get("vfx_nair1"), 8);
vfx_nair2 = hit_fx_create(sprite_get("vfx_nair2"), 20);
vfx_fspecial = hit_fx_create(sprite_get("vfx_fspecial"), 25);
vfx_fspecialair = hit_fx_create(sprite_get("vfx_fspecialair"), 16);
vfx_roll = hit_fx_create(sprite_get("vfx_roll"), 16);
vfx_airdodge = hit_fx_create(sprite_get("vfx_airdodge"), 16);
vfx_float = hit_fx_create(sprite_get("vfx_float"), 24);
vfx_collect = hit_fx_create(sprite_get("vfx_collect"), 24);
vfx_sweetspot = hit_fx_create(sprite_get("vfx_collect"), 36);
//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//voice
var tmp_sync_vars = get_synced_var(player);
for (var i = 0; i < 2; i++)
{
    var shift = (i*4);
    synced_vars[i] = tmp_sync_vars >> shift & 15;
}

switch (synced_vars[0])
{
	default: //no voice

	break;
	case 1: //voice
	voice_attack[1] = sound_get("voice_attack1");
	voice_attack[2] = sound_get("voice_attack2");
	voice_attack[3] = sound_get("voice_attack3");
	voice_attack[4] = sound_get("voice_attack4");
	voice_attack[5] = sound_get("voice_attack5");
	voice_attack_long[1] = sound_get("voice_attack_long1");
	voice_attack_long[2] = sound_get("voice_attack_long2");
	voice_attack_long[3] = sound_get("voice_attack_long3");
	voice_attack_long[4] = sound_get("voice_attack_long4");
	voice_attack_long[5] = sound_get("voice_attack_long5");
	voice_fstrong[1] = sound_get("voice_fstrong1");
	voice_fstrong[2] = sound_get("voice_fstrong2");
	voice_fstrong[3] = sound_get("voice_fstrong3");
	voice_damage[1] = sound_get("voice_damage1");
	voice_damage[2] = sound_get("voice_damage2");
	voice_damage[3] = sound_get("voice_damage3");
	voice_damage[4] = sound_get("voice_damage4");
	voice_damage[5] = sound_get("voice_damage5");
	voice_damage[6] = sound_get("voice_damage6");
	voice_death[1] = sound_get("voice_damage_big1");
	voice_death[2] = sound_get("voice_damage_big2");
	voice_death[3] = sound_get("voice_damage_big3");
	voice_death[4] = sound_get("voice_damage_big4");
	break;
}
voice_cooldown = 0;

atime=0
can_glide = false;
glide_used = false;
glide_off = false;
im_gliding = false;
im_gliding_cont = 0;
i_died = false;

AT_FSPECIAL_2_AIR = AT_EXTRA_1;

trident = noone;
trident_opponent = noone;
spinning_hitbox = noone;

trident_choke = false;
air_trident_choke = false;
flame_choke = false;
air_flame_choke = false;
tri_plat = noone;

uspecial_dir = 0;
uspecial_hsp = 0;
uspecial_ysp = 0;
uspecial_angle = 0;
uspecial_effect = hit_fx_create( sprite_get( "vfx_uspecialparticles" ), 25 );

thunder = noone;
cloud_effect = hit_fx_create( sprite_get( "thunder_cloud" ), 15 );
trident_opponent_hit = false;