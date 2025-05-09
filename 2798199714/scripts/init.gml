hurtbox_spr = sprite_get("hurtbox");
sprite_change_offset( "hurtbox", 50, 118);
crouchbox_spr = sprite_get("crouchhurt");
sprite_change_offset( "crouchhurt", 50, 118);
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 55;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .05;
dash_anim_speed = .15;
pratfall_anim_speed = .25;
doublejump_anim_speed = .5;

walk_speed = 4;
walk_accel = .3;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7.5;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9.5;
short_hop_speed = 5.5;
djump_speed = 8;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 4;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .37;
hitstun_grav = .45;
knockback_adj = .95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 10;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .08; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 10; //roll speed
roll_backward_max = 10;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme(sound_get("Galacta_Knight_Victory"));
set_victory_portrait(sprite_get("portrait"));
set_victory_bg(sprite_get("victorybg"));
alt = get_player_color(player);

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

is_KOB = true;
upbground = false;upbtimer = 0;
nspec_angle = 0;
fspec_charge = 0;fspec_invinc = 0;fspec_timer = 0;fspec_stall = 0;
ustrongstall = false;
dstrongcharge = 0;dstrong_free = false;dstrongtornado = noone;
time_rift = noone;time_rift_hitbox = noone;
time_rift_hit_sprite = sprite_get("dspecial_time_rift_hit");
time_rift_dmg = 0;
fair_pin = false;
uairloop = 0;uairboost = 1;uairhold = 0;uairused = false;
spawnlightning = false;
outline_timer = 0;outline_rev = false;
intro = (state == PS_SPAWN);
introspeed = 0.2;
shieldfx = noone;shieldfx2 = noone;
lasernum = 0;lasernum2 = 0;
laser = 0;laserscale = 0;laserangle = 90;laseranglespeed = 0;laser_list = ds_list_create();
lasersound = noone;laser_sfx = sound_get("laser2");laserboom_sfx = sound_get("laserboom");laserboom2_sfx = sound_get("laserboom2");
contacthitbox = noone;
bonus_damage = false;bonus_damage_flash = 0;
size_mult = 1;big = false;mega = false;mini = false;normalsize = true;
bosspress = 0;superop = false;op = false;superboss = false;hyperboss = false;BossMode = false;boss_hp = 300;boss_display_hp = 0;
bossdead = false;bossdeadtimer = 0;bossmusic = noone;bossattack = false;
lookuptime = 0;
windowtiming = 0;
loaded = false;
trainingmode = false;
playtest = (object_index == oTestPlayer);
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = false;
runeC_charge_multiplier = 1.0;
runeC_charge_multiplier2 = 1.0;

//runeN = true;runeO = true;runesUpdated = true;
//runeA = true; runeB = true runeC = true; runeD = true; runeE = true; runeF = true; runeG = true; runeH = true; runeI = true; runeJ = true; runeK = true; runeL = true; runeM = true; runeN = true; runeO = true;

toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo2 = sprite_get("toonlink_photo_TL");
//toonlink_randomizephoto = false;
kob_freeze_sprite = sprite_get("frozen");
kob_sleep_sprite = sprite_get("sleep");
kob_sleep_sprite_air = sprite_get("downhurt");
kob_sleep_sprite_imageindex_override = false;
kob_sleep = false;
miiverse_post = sprite_get("miiverse_post");
kf_custom_icon = sprite_get("kf_icon");copy_ability_id = 6;kf_hud_offset = 0;
arena_title = "Aeon Hero";
boxing_title = "Aeon Hero";
FinalSmash = 0;
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 220;
fs_portrait_x = 120;
fs_attack_index = AT_NSPECIAL;
Toadie_Ability = 7;
TCG_Kirby_Copy = 5;

fx_nspecial_swordtrail = hit_fx_create(sprite_get("nspecial_swordtrail"), 10);
fx_fstrong_projectile_trail = hit_fx_create(sprite_get("fstrong_projectile_trail"), 10);
fx_fspecial_projectile_trail = hit_fx_create(sprite_get("fspecial_projectile_trail"), 10);
fx_feathers = hit_fx_create(sprite_get("feathers"), 90);
fx_trailvertical = hit_fx_create(sprite_get("fx_trailvertical"), 10);
fx_star_tiny = hit_fx_create(sprite_get("star_tiny"), 20);
fx_shockwave = hit_fx_create(sprite_get("shockwave"), 20);
fx_shockwave_short = hit_fx_create(sprite_get("shockwave_short"), 20);
fx_shockwave_short_2 = hit_fx_create(sprite_get("shockwave_short"), 30);
fx_shockwave_short2 = hit_fx_create(sprite_get("shockwave_short2"), 20);
fx_slam = hit_fx_create(sprite_get("fx_slam"), 20);
fx_slamfast = hit_fx_create(sprite_get("fx_slam"), 10);
fx_dust_sharp_big = hit_fx_create(sprite_get("dust_sharp_big"), 20);
fx_dust_sharp = hit_fx_create(sprite_get("dust_sharp"), 20);
fx_lightbeams = hit_fx_create(sprite_get("fx_lightbeams"), 12);
fx_lightbeams_fast = hit_fx_create(sprite_get("fx_lightbeams"), 6);
fx_empty = hit_fx_create(sprite_get("emptysprite"), 1);

muno_event_type = 0;
	user_event(14);