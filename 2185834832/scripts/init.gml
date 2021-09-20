hurtbox_spr = sprite_get("torrohitbox");
crouchbox_spr = sprite_get("torrohitbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//other stuff
set_victory_theme(CH_RANNO);

char_height = 52;
idle_anim_speed = .14;
crouch_anim_speed = .1;
walk_anim_speed = .18;
dash_anim_speed = .2;
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
ai = 0;
aiplaceholder = 0;

isTethering = 0;

introTimer = -4;
introTimer2 = 0;

uSpecialLag = 0;

neutralBCharge = 0;
neutralBStored = 0;
neutralBStoreVisTimer = 0;
sideBHit = 0;
downBStart = 0;
upBX = 0;
upBY = 0;
boostX = 0;
boostY = 0;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 4;
initial_dash_time = 12;
initial_dash_speed = 6;
dash_speed = 5.5;
dash_turn_time = 7;
dash_turn_accel = 0.1;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .22;
moonwalk_accel = 1.2;

jump_start_time = 5;
jump_speed = 9.5;
short_hop_speed = 5.8;
djump_speed = 2;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; // (3) the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .32;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 40; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 3.5;
walljump_vsp = 9;
walljump_time = 18;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 15; // (11) fast fall speed
gravity_speed = .45; // (.45)
hitstun_grav = .5;
knockback_adj = 0.9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 7;
wave_land_time = 13;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .16; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 0;

//tech roll animation frames
techroll_startup_frames = 3;
techroll_active_frames = 9;
techroll_recovery_frames = 1;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 4;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 9;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 3;
roll_back_active_frames = 9;
roll_back_recovery_frames = 1;	
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_orc");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

waterCutterExist = 0

bubblejump = hit_fx_create( sprite_get( "bubblejump" ), 25 );
bouncePad = hit_fx_create( sprite_get( "bouncePad" ), 12 );
airdodge1 = hit_fx_create( sprite_get( "airdodge1" ), 15 );
airdodge2 = hit_fx_create( sprite_get( "airdodge2" ), 15 );
airdodge3 = hit_fx_create( sprite_get( "airdodge3" ), 15 );
waterSpout90 = hit_fx_create( sprite_get( "waterSpout90" ), 15 );
waterSpout70 = hit_fx_create( sprite_get( "waterSpout70" ), 15 );
waterSpout110 = hit_fx_create( sprite_get( "waterSpout110" ), 15 );
waterPort = hit_fx_create( sprite_get( "waterTeleport" ), 15 );
waterCharge = hit_fx_create( sprite_get( "nspecial_charging" ), 36 );
nspec_large = hit_fx_create( sprite_get( "nspec_large" ), 20 );
waterHud_sprite= sprite_get("waterHud");
waterHudbub_sprite= sprite_get("waterHudbub");
waterHudEmerg_sprite = sprite_get("waterhudemergency");

vfx_waterhit_small = hit_fx_create( sprite_get( "vfx_waterhit_small" ), 18 );
vfx_waterhit_big = hit_fx_create( sprite_get( "vfx_waterhit_big" ), 24 );
vfx_waterhit_light_big = hit_fx_create( sprite_get( "vfx_waterhit_light_big" ), 24 );
vfx_waterhit_light_huge = hit_fx_create( sprite_get( "vfx_waterhit_light_huge" ), 24 );

emergencyCount = 0
waterLevelEmergency = 0
dspecVar = 0
fspecVar = 2
waterLevel = 0
waterCharges = 1
waterBomb = 0
combatTimer = 5
waterTimer = 1
strongAttack = false
dspecFlying = false
doublejumpVar = 0
grabbedid = noone;
saw_blade = noone
waterChargingFx = noone
effect_drawangle = 0
forceNoWater = false
stupid_hit_var = false
can_action = false
enemykirby = noone
inner_audio = true
ustrong_cycle = true
alt_cur = get_player_color(player);
double_jump_timer = 0
torga_grav_jump = 0
uspec_non = 0
has_djump = true

//Pokemon Stadium
pkmn_stadium_back_img = sprite_get("torga_back_sprite")
pkmn_stadium_front_img = sprite_get("torga_front_sprite")

//Dedede
arena_title = "The Pacific End";

//miiverse
miiverse_post = sprite_get("torga_miiverse");

sprite_change_offset("torga_miiverse", 60, 30);

//Wall-E
walle_taunt_sound = sound_get("stage_theme");
walle_taunt_type = 1;

//kirby
swallowed = 0;
kirbyability = 16;
