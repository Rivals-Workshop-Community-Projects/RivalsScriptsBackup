bair_mogura_mode = false;

dspecial_fall_timer = 0;
dspecial_fall_timer_max = 26; //the number of frames before you can cancel out of down special while falling

uspec_dir = 0;

nspec_dir = 0;
nspecial_not_picked_up_cooldown = 80; //for if it falls offstage
nspecial_out_cooldown = 679; //setting this to some random value so i can check it to tell if she has access to the move or not

in_daruma_range = false;
daruma_targets_anyone = false;
daruma_parry_hit_cooldown = 180;
daruma_parry_initial_cooldown = 160;

daruma_quick_speed = 19;
daruma_slow_speed = 36;
daruma_parry_speed = 36;

fspecial_cooldown = 80;
fspecial_cooldown_main = 200;
fspecial_cooldown_quick = 50;

hitbox_rate = 14;
enable_strong_charge_hitboxes = true; //for parry stuff
strong_charge_disable_timer = 0;
strong_charge_disable_timer_on_parry = 150;
have_strong_charge_hitboxes_in_general = true; //just enables/disables having the charge hitboxes entirely

ustrong_sfx_played = false;

ftilt_should_multihit = false;

hover_timer = 0;
max_hover_time = 35;
hover_uses = 0;

nair_hsp_boosted = false;

djump_speed_base = 10;
djump_speed_small = 6;

dash_vfx = hit_fx_create(sprite_get("vfx_dash"), 12);
coin_vfx = hit_fx_create(sprite_get("vfx_coin"), 20);
water_trail_vfx = hit_fx_create( sprite_get("vfx_trail_water"), 20 );
explosion_vfx = hit_fx_create(sprite_get("vfx_explosion"), 24);

vfx_trail = [];

for (i = 0; i < 4; i++) {
    array_push(vfx_trail, hit_fx_create(sprite_get(`vfx_trail_${i}`), 20));
}

slapstick_dust = hit_fx_create(sprite_get("hfx_funny"), 36);
slapstick_dust_small = hit_fx_create(sprite_get("hfx_funny_small"), 28);
petal_small = hit_fx_create( sprite_get("hfx_petal_small"), 24 );

//VICTORY MUSIC AND BG SET ---------------------------------------------------------------------------------
set_victory_bg(sprite_get("victory_yuuko")); //Victory BackGround
set_victory_theme(sound_get("hyadainnokakakatakataomoi-c")); //Victory BGMusic

//tdc kirby ability
TCG_Kirby_Copy = 9;

//mt dedede support
arena_title = "The Ordinary Android";

//pumbo support
pot_compat_variable = sprite_get("pumbodish");
pot_compat_text = "Roll Cake";

hurtbox_spr = sprite_get("1_idlehbox"); //i stole this hurtbox from yuuko!!!!!!!! ahh
crouchbox_spr = sprite_get("crouchhurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .175;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .175;
pratfall_anim_speed = .25;

walk_speed = 2.75;
walk_accel = 0.15;
walk_turn_time = 5.5;
initial_dash_time = 14;
initial_dash_speed = 6.25;
dash_speed = 5.75;
dash_turn_time = 10;
dash_turn_accel = 1.4;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .35;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.99;
short_hop_speed = 4.5;
djump_speed = djump_speed_base;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .06;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 7.5;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 14.5; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 11;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .03; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 5;
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 5;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 5;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 5;
roll_back_recovery_frames = 2;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_abs");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_boss_fireball_land");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
