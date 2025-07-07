hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

small_sprites = true;

char_height = 60;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .325;
pratfall_anim_speed = .25;

wait_sprite = sprite_get("wait");
wait_idle_pick = 0;
wait_time = 321;
wait_length = 60;

walk_speed = 3.0;
walk_accel = 0.2;
walk_turn_time = 6;

initial_dash_time = 12;
initial_dash_speed = 7.0;
dash_speed = 6.5;
dash_turn_time = 18;
dash_turn_accel = 1.1;
dash_stop_time = 9;
dash_stop_percent = .3; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.0;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;

djump_speed = -2;
djump_accel = -2;
djump_accel_start_time = 4;
djump_accel_end_time = 15;

leave_ground_max = 6.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6.0; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .2; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;

roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;

roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("SFX_Jump");

//djump_sound = sound_get("SFX_Jump_2");

air_dodge_sound = asset_get("sfx_quick_dodge");

set_victory_theme(sound_get("victory_intro_long"));

set_victory_bg(sprite_get("yoshi_victory_bg"));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = -4;

//Yoshi-specific code
yoshi_egg_break_big_fx = hit_fx_create(sprite_get("eggbreak_2_hitfx"), 18);

//NSpecial - Egg Lay
grabbed_player_obj = noone;

base_eggtime = 40;
eggtime_scaling = 0.8;

tongue_hitbox = noone;
tongue_length = 0;
old_tongue_length = 0;
max_tongue_length = 108;


//FSpecial - Egg Roll
egg_roll_timer = 300;

//USpecial - Egg Throw
throw_power = 0;
egg_speed = 0;
egg_angle = 0;

//Voiced Mode
yoshi_voiced = !get_synced_var( player );
yoshi_voice_rando = 0;

//This is a separate variable because rivals is stupid
djump_voice = noone;
djump_sfx = noone;


//Runes

//More Double Jumps
if has_rune("G"){
    max_djumps = 3;
}

//Tongue Extension
var tongue_extendo = 64;
if has_rune("D"){
    max_tongue_length += tongue_extendo;
}
if has_rune("E"){
    max_tongue_length += tongue_extendo;
}
if has_rune("F"){
    max_tongue_length += tongue_extendo;
}


//Compatibility!!!

    // -- Characters

//Unregistered HyperCam 2
uhc_victory_quote = "Double Yoshi Explosi!!! X3";
uhc_taunt_videos[0] = { title:"Baby Mario & Papa Yoshi - Brentalfloss", sprite:sprite_get("yoshi_uhc"), song:sound_get("SFX_UHC_Video"), fps:9 };

//The Chosen One
tcoart = sprite_get("yoshi_tco");

//Wall-E
walle_taunt_sound = sound_get("SFX_Walle_Record");
walle_taunt_type = 1;

//Mamizou Futatsuiwa
mamizou_transform_spr = sprite_get("yoshi_mamizou");

//Steve
steve_death_message = "Steve found out how a meatball feels.";

//Po & Gumbo
pot_compat_variable = sprite_get("yoshi_pogumbo");
pot_compat_text = "Green Eggs & Ham";

//Yoshi?
yoshi_egg_sprite = sprite_get("egg_player");

    // -- Stages

//Mt. Dedede Arena
arena_title = ("Plumber's Best Friend");

//Miiverse
miiverse_post = sprite_get("yoshiiverse");

//Trial Grounds
guiltySprite = sprite_get("yoshi_guilty");

//TTYD Battle Stage
ttyd_audience_sprite = sprite_get("yoshi_ttyd_audience");

//Last Resort
resort_portrait = sprite_get("yoshi_lastresort");

//Pokemon Stadium
pkmn_stadium_front_img = sprite_get("yoshi_pkmn_front");
pkmn_stadium_back_img = sprite_get("yoshi_pkmn_back");
pkmn_stadium_name_override = "YOSHI";

//GreenFlower Zone
gfzsignspr = sprite_get("yoshi_gfz_sign");

    // -- Buddies