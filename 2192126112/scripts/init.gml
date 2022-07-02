hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouchbox");
set_victory_theme (sound_get("victory"));
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

pkmn_stadium_front_img = sprite_get("stadfront");
pkmn_stadium_back_img = sprite_get("stadback");
miiverse_post = sprite_get("anything");


introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

plushForAmber = sprite_get("lil_stout_shako")

charge_timer = 0;

taunt_num = 1;
taunt_menu = 1;
taunt_timer = 10;
taunt_trans = 0;
taunt_trans_timer = 0;

dattackhit = 0;
butter = 0;

if (has_rune("B"))
{
    fourchan = 1;
}
else
{
    fourchan = 0;
}

if (has_rune("C"))
{
    bounce = 1;
}
else
{
    bounce = 0;
}

fling_toggle = 0;


reminder_timer = 0;
boom = hit_fx_create( sprite_get( "boom" ), 18 );

chargefx = hit_fx_create( sprite_get( "chargefx" ), 22 );
weaponswitch = hit_fx_create( sprite_get( "weaponswitch" ), 94 );
trail = hit_fx_create( sprite_get( "trail" ), 18 );

shoot = hit_fx_create( sprite_get( "shoot" ), 44 );

crit = hit_fx_create( sprite_get( "crit" ), 60 );

donk = hit_fx_create( sprite_get( "donk" ), 60 );

chuck = hit_fx_create( sprite_get( "throw" ), 12);

crash = hit_fx_create( sprite_get( "crash" ), 37 );

mesacrash = hit_fx_create( sprite_get( "mesacrash" ), 37 );

nostickies = hit_fx_create( sprite_get( "nostickies" ), 37 );

wackyracescrash = hit_fx_create( sprite_get( "wackyracescrash" ), 37 );

fsmashgun = hit_fx_create( sprite_get( "fsmashgun" ), 36);
fsmashshot = hit_fx_create( sprite_get( "fsmashshot" ), 18);


dsmashspah = hit_fx_create( sprite_get( "dsmashspah" ), 50);

uspecialbeam = hit_fx_create( sprite_get( "uspecialbeam" ), 23);

objectcompat = noone;

game_time = 0;
introToggle = 0;
char_height = 66;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = 0.15;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walkturn_toggle = 0;
walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 12;
initial_dash_time = 14;
initial_dash_speed = 6;
dash_speed = 6.50;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 1.4;
meem_regen = 0;
meem_limit = 0;
jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6.5;
djump_speed = 10.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = 0.7; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 24; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 18;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 11;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .07; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 3;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 1;

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
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 1;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

song_num = 0;
call_count = 3;


dtaunt_mode = 0;
dtaunt_toggle = 0;
land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

object = noone;
//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

meem_num = 0;

sticky_charge = 0;
sticky_count = 0;
sticky_oldest = 2;
sticky_timer = 0; //specifically to prevent one thing from happening


//toggles experimental features i'm working on
experimental = 1;

oldest = noone;






beam_flicker = 20;
stop_timer = 0;
det_timer = 10;

// Final Smash Buddy
fs_char_portrait_y = 80;
fs_char_portrait_x = 200;
fs_char_chosen_final_smash = "custom";

//TinMines Code
looseboost_timer = 0; //if this is > 0, it makes dair give a much bigger boost
bair_cancel = false; //
bair_can_vsp = 0;
meem_ping = 2;