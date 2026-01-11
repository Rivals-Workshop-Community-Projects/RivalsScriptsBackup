small_sprites = true;

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .135;
dash_anim_speed = .198;
pratfall_anim_speed = .10;

walk_speed = 2.5;
walk_accel = 0.8;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = 6.7;
dash_speed = 5.5;
dash_turn_time = 23.8;
dash_turn_accel = 0.6;
dash_stop_time = 14;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .8;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 6.5;
djump_speed = 11.5;
leave_ground_max = 6.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .50; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 62; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 26;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .53;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 10;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .12; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2
dodge_recovery_frames = 4

//tech animation frames
tech_active_frames = 5;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 8;
air_dodge_recovery_frames = 4;
air_dodge_speed = 9;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 2
roll_back_recovery_frames = 2;
roll_forward_max = 10//roll speed
roll_backward_max = 10

land_sound = sound_get("sfx_land_step");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("sfx_jump_first");
djump_sound = sound_get("SB_jump_dub");
air_dodge_sound = asset_get("sfx_quick_dodge");
initial_dash_sound = sound_get("sfx_sb_step_r");

timer = 1;
sfx_hold = sound_get("sfx_dspecial_charge")


//Victory
set_victory_theme(sound_get("mus_sb_victory"))
set_victory_bg(sprite_get("winscreen"))

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Spongebob Specific (Zard was here) (Jestin was also here) (Krispy was also also here)
nspecial_level = 1;
nspecial_xOff = 0;
nspecial_yOff = 0;

fspecial_type = 0;
fspec_has_hit = false;

used_uspecial = false;

fair_hsp = 0;

//Effects On Hit//

hfx_utilt_finalhit = hit_fx_create(sprite_get("hfx_utilt"), 28);
hfx_nspecial_explode = hit_fx_create(sprite_get("nspecial_explode"), 36);

//NSpecial - Giraffe
giraffe = noone;

//DSpecial - Tongue
grabbed_player_obj = noone;

tongue_hitbox = noone;
tongue_length = 0;
tongue_full_length = 0;
old_tongue_length = 0;

min_tongue_length = 80;
max_tongue_length = 204;
tongue_charge = 0;
tongue_charge_max = 60;

dspec_proj_type = 0;

//Min Length: 80
//Max Length: 204

tongue_subimg = 0;

//voice
sb_voiced = true;

/*
╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Compatibility			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝
*/

//Mt. Dedede
arena_title = "Employee of the Month";

//Miiverse

miiverse_post = sprite_get("sponge_miiverse")

//Steve Quote
steve_death_message = "Steve experienced High Tide"

//Scoop Icream
scoop_personalized_flavour_name = "SpongeBar PopsiclePants";
scoop_personalized_flavour_sprite = sprite_get("icecream_bobbar")

//Mamizou
//mamizou_trans = false;
//mamizou_transform_spr = sprite_get("mamizou_snailbob");//

//Kirby
TCG_Kirby_Copy = 6;

//Unregistered HyperCam 2
uhc_victory_quote = "Double Yoshi Explosi!!! X3";
uhc_taunt_videos[0] = { title:"Baby Mario & Papa Yoshi - Brentalfloss", sprite:sprite_get("yoshi_uhc"), song:sound_get("SFX_UHC_Video"), fps:9 };