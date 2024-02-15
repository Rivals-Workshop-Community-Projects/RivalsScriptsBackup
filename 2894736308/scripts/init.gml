hurtbox_spr = sprite_get("batter_hurt");
crouchbox_spr = sprite_get("batter_crouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 6.5;
dash_speed = 6.4; //friction affects dash fsr
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6.8; //trust
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.25; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10.5;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.3; //was 1.35    //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 4;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
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
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
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

//------------------------------------------------------------------------------

nspec_flash = 0;        //visual flash fx on nspec
add_on = 0;             //dspec cycle, 0:Alpha, 1:Omega, 2:Epsilon

//fspec
ring_out = noone;       //instance var for the newest add-on onstage
killarticles = false;   //kills articles when set to true
addon_col = [make_colour_rgb(140, 230, 0), make_colour_rgb(231, 203, 0) ,make_colour_rgb(231, 32, 173)]; //color for add-on related afterimages
suppress_hud = false;   //darkens the current HUD add-on in cases where the normal parameters for it aren't enough

//uspec
uspec_hsp = 5;          //maximum hsp of uspecial
uspec_angle = 0;        //angle of uspec drawn sprites
uspec_2 = false;        //if current uspecial has transitioned (flushed) to uspec 2 yet
if (get_player_color(player) == 0){
    uspec_spin = sprite_get("uspecial_spin2");
    uspec2_spin = sprite_get("uspecial_2_spin2");
}else{
    uspec_spin = sprite_get("uspecial_spin");
    uspec2_spin = sprite_get("uspecial_2_spin");
}

//dspec
ring_equipped = -1;     //dspecial activated
ring_timer = -1;        //current duration of dspec
ring_time_max = 540;    //maximum time you can have dspec active for
ring_cd = [-1, -1, -1]; //current cooldown of add-ons
ring_time_cd = 720;     //cooldown of add-ons
ring_cd_max = [ring_time_cd, ring_time_cd, ring_time_cd];
hud_close = -1;         //timer for the hud meter to close
hud_close_type = -1;    //which hud meter to show while closing
hud_flash_timer = [-1, -1, -1]; //timer for the hud add-ons to flash when off cd

ring_follow = -1;       //LWO instance used for the following ring
spr_follow = [sprite_get("ringfollow0"), sprite_get("ringfollow1"), sprite_get("ringfollow2")];
alpha_buff = 1.15;      //dmg/kbs buff from alpha dspecial
epsilon_buff = 1.2;     //bat hitbox size buff from epsilon dspecial
//omega dspec buffs
omega_walk_speed = [walk_speed, 3.6];
omega_walk_accel = [walk_accel, 0.45];
omega_initial_dash_speed = [initial_dash_speed, 7.5];
omega_dash_speed = [dash_speed, 7.2];
omega_wave_land_adj = [wave_land_adj, 1.4];
omega_leave_ground_max = [leave_ground_max, 6.5];
omega_max_jump_hsp = [max_jump_hsp, 6.5];
omega_air_max_speed = [air_max_speed, 5];

//afterimages
after_image = array_create(10, -1);
after_image_timer = -1;

introTimer = 0;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

set_victory_bg( sprite_get("victorybg") );
set_victory_theme( sound_get("peper") );