hurtbox_spr = sprite_get("hurtBox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = sprite_get("hitstun_hurtbox_hurt");

char_height = 52;
idle_anim_speed = .17;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 8;
initial_dash_time = 12;
initial_dash_speed = 7;
dash_speed = 5.85;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
ground_friction_default = ground_friction;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12.5;
short_hop_speed = 7.5;
djump_speed = -1.2;

djump_accel = -3.7;
djump_accel_start_time = 5;
djump_accel_end_time = 12;
oldSpeed = 0;
dj_speed_modifier = 4; //makes wavelanding from double jump go farther

leave_ground_max = 20; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 6; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .59;
gravity_speed_default = gravity_speed;
hitstun_grav = .5;
knockback_adj = .9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_timeDefault = 8;
wave_land_timeNew = 10;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

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
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;
air_dodge_defaultSpeed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med2");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

utiltRockBreak = hit_fx_create(sprite_get("utiltRockBreak"), 10);

//visual offsets for when you're in Ranno's bubble
bubble_x = 8;
bubble_y = 8;

armorpoints = 1;
nextarmor = false;
swallowarmor = false;
armorgain = false;
moveArmorLoss = false;
armorloss = false;
hit_totem = false;
grabbed_player = noone;
gplayer = noone;
grab_x = 0;
totem_slide_friction = 0.1;
swallow = false;
swallow_gravity = .7;
swallow_action = -1;
throw_power_default = 6;
throw_power = throw_power_default;

grabTongue_sprite = sprite_get("grabtongue");
tongue_end_spr = sprite_get("tongueEnd");
tongue_length_spr = sprite_get("tongueLength");
totemIdle = sprite_get("dnock_totem");
totemTop_spr = sprite_get("totemTop");
totemSpawnAnim = sprite_get("totemSpawn");
totemBreak = sprite_get("totemBreak");
rockPrison = sprite_get("rockprison");
rockPrisonForm = sprite_get("rockprisonForm");
rockPrisonCrack = sprite_get("rockprisonCrack");
rockPrisonBreak = sprite_get("rockprisonBreak");
rockBreakCounter = 0;
swallowAnimCounter = 0;

wallPlattotem = sprite_get("totemPlat");
wallPlattotemSpawn = sprite_get("totemPlat_spawn");
wallplattotemproj = sprite_get("totemPlat_destroyproj");
stagePlattotem = sprite_get("totemPlat_stage");
stagePlattotemMask = sprite_get("totemPlat_stage_mask");
magwallplattotem = sprite_get("offscreen_platform");

canledgecancel = false;
eggroll_timer_store = 0;
eggroll_window_store = 0;

nspHboxX = noone;
firstNspecXpos = 0;
lastNspecXpos = 0;
nSpecPlatHboxXpos = 0;
totemSwallowTime = 0;
totemStorePos = 0;
totemspr_dir = 1;
prev_attack = -1;
armorhit = false;
swallowups = false;
old_armorpoints = 0;
armorsfxtimer = 0;
djhit = false;
totemwehit = noone;
sideup = 0;
swallowinput = 0;
upcancel = false;
fdownsprecovery = false;
groundstart = false;
totemAndplayer = false;
has_dinoplat = true;
uppratt = false;
stageplatcreate = false;
onDinockPlat = false;
DinockPlatref = noone;
armorplus = 0;
fspecial_moonroll = false;
aireggy = false;
Upbcanledgecancel = false;
xMag = 0;
yMag = 0;
subMag = 6;
offscreen = false;

//workshop comp
feri_costume = sprite_get("costume_dinock");
enemykirby = noone; 
Hikaru_Title = "The Rock Dinosaur";
ncode1 = "No lore";
ncode2 = "Only Dinock";
ncode3 = "Minor Threat";
battle_text = "* Time to Rock and Roll!";
steve_death_message = "Steve couldn't mine through Dinock";
arena_title = "The Armored Dino";
arena_short_name = "Dinock";

//vfx
djarmorgain = hit_fx_create(sprite_get("djvfx"), 35);
djarmorenter = hit_fx_create(sprite_get("djvfx_enter"), 20);
djarmorexit = hit_fx_create(sprite_get("djvfx_EXIT"), 20);
armorgainfx = noone;
armorlossfx = noone;
upsidespecialfx = hit_fx_create(sprite_get("upsidespecialfx"), 50);
icepowfx = hit_fx_create(sprite_get("icepow"), 20);
armorlosssmallfx = hit_fx_create(sprite_get("armorlossSmall"), 20);
rockeggpowfx = hit_fx_create(sprite_get("rockeggpowfx"), 20);
totemPowfx = hit_fx_create(sprite_get("totemPOW"), 20);
armorbreakfx = hit_fx_create(sprite_get("armorbreakvfx"), 20);