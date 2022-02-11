hurtbox_spr = sprite_get("stand_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//Player variables
sfx_deploy = false; //Used for SFX
bullets = 6;
hud_bullet = 6;
hud_enhanced = 0;
hud_timer = 0;
hud_reload_timer = 0;
hud_fail = false;
uspec_used = 0;
fspec_used = false;
shot_x = 0 //Used for D-Tilt
scarf_angle = 0;
scarf_x = 0;
scarf_y = 0;
scarf_timer = 0;
scarf_off = false;
old_scarf_x = 0;
old_scarf_y = 0;
dspec_held = 0;
last_attack_hit = 0;
last_hit_timer = 0;
outline_timer = 0;
auto_reload = true;
tac_reload = false;
prac_text = "";
prac_timer = 0;

bTut_Missions = true;
bTut_mssn_reset = false;
bTut_mssn_total = 4;
bTut_mssn_title[0] = "Simple BnB";
bTut_mssn_desc[0]  = "I'm sure you wouldve figured this out by yourself.";
bTut_mssn_title[1] = "D-Special Extensions";
bTut_mssn_desc[1]  = "Make sure to set up this deadly orb! You can get some great extensions.";
bTut_mssn_title[2] = "U-Special Combos";
bTut_mssn_desc[2]  = "You can use U-Special multiple times if you land and/or hit with it to bypass pratfall!";
bTut_mssn_title[3] = "F-Special Ender";
bTut_mssn_desc[3]  = "Focus your breathing for this one! Its time to finish it.";

bTut_Tips = true; 
bTut_tips_total = 3;

//EXAMPLE TIP
bTut_tips_title[0] = "Active Reloads";
bTut_tips_desc[0] = "F.Ducky can reload early by pressing Attack + Special, you also gain a chance to enhance your bullets by timing the attack/special press right!";
bTut_tips_title[1] = "Enhanced Bullets";
bTut_tips_desc[1] = "With enhanced bullets, your Gun normals and N-Special have extra hitpause, Strongs kill earlier and Specials get additional properties! D-Special will carry a laser automatically and F-Special gains a sweetspot at the starting point of the move.";
bTut_tips_title[2] = "Gun Rekkas";
bTut_tips_desc[2] = "All of your aerials with the exception of N-Air and F-Air, have special extensions by pressing Attack or Strong again! Use this to kill your opponent much earlier!";

//Hit Effects
laserhit_sfx = sound_get("laser_hit")
laserhit_fx = hit_fx_create(sprite_get("laserspark"), 34);
stronglaser_fx = hit_fx_create(sprite_get("stronglaser"), 30);
dtilt_shot = hit_fx_create(sprite_get("dtilt_proj"), 15);
uspec_fire = hit_fx_create(sprite_get("uspecfire"), 18);
fspec_spark = hit_fx_create(sprite_get("fspec_thunder"), 20);
scarf_fire = hit_fx_create(sprite_get("scarf_fire"), 20);

//Compat
steve_death_message = "Steve was disintegrated.";
battle_text = "*You sense a greater danger than wavedashing...";
arena_title = "Revolver Ducky";
arena_short_name = "(Revolver Ducky)";
Hikaru_Title = "Revolver Ducky";
tcoart = sprite_get("tcoart");
miiverse_post = sprite_get("miiverse");
ncode1 = "Doesn't seem to come from here.";
ncode2 = "Technology has far advanced our times.";
ncode3 = "Too dangerous to be kept alive. Exterminate.";
kinniku_behind = sprite_get("Kinniku_Behind");
kinniku_front = sprite_get("Kinniku_Front");
set_victory_bg(sprite_get("victory_bg"));
set_victory_theme(sound_get("fduckyvic"));

// intro
introTimer = -4;
introText = "";
introText2 = "";
countPlayers = 0;
enemyObj = noone;

char_height = 58;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6.75;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.2;

jump_start_time = 5;
jump_speed = 9.5;
short_hop_speed = 5;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 36;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .4;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
