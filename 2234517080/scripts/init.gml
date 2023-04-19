masking_alt = false;
should_use_masking_alt = false;

if (get_match_setting( SET_RUNES ) == true){
    should_use_masking_alt = false;
}

//change star sprite on alts that use masking
if (get_player_color(player) == 9 && should_use_masking_alt){
    masking_alt = true;
    set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("star_masking"));
}

//character support stuff
tcoart = sprite_get("tcoart");
otto_bobblehead_sprite = sprite_get("otto");

//pokemon stadium stuff
pkmn_stadium_front_img = sprite_get("pkmn_front");
pkmn_stadium_back_img = sprite_get("pkmn_back");

cancelled = false;
rock_armor = 4;

bruh = noone;
fspec_speed_max = 3;
fspec_on_hit_cooldown = 30;

uspec_speed_max = 2;

nspecial_thing = 11;

thingy_type = 0;
bababooey = false;

fspec_speed = 12.5;
should_clamp = true;

grabbed = -4;

//are you happy now
star_cooldown = 0;
star_cooldown_time = 320;

blaboa_big = hit_fx_create( sprite_get("hfx_blabrock_big"), 20 );

hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = sprite_get("hitstun_hurtbox");

char_height = 45;
idle_anim_speed = .125;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .15;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 5.5;
dash_speed = 5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .55;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 2;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .6;
hitstun_grav = .53;
knockback_adj = .95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 8;
wave_land_adj = 1.22; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

wall_frames = 1;

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 3;
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

land_sound = sound_get("plop");
landing_lag_sound = sound_get("plop");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("jump");
djump_sound = sound_get("djump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
