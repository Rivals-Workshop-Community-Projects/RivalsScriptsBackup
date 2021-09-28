hurtbox_spr = sprite_get("big_band_hurtbox");
crouchbox_spr = sprite_get("big_band_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 99;
idle_anim_speed = .17;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 2.4;
walk_accel = 0.1;
walk_turn_time = 7;
initial_dash_time = 8;
initial_dash_speed = 3;
dash_speed = 5.50;
dash_turn_time = 12;
dash_turn_accel = 1.0;
dash_stop_time = 5;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .8;
moonwalk_accel = .9;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .82; //multiplier of air_accel while in pratfall
air_friction = .08;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .58;
hitstun_grav = .5;
knockback_adj = .88; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .6; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 5;
crouch_active_frames = 6;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
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
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.8;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("land");
landing_lag_sound = sound_get("land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

ustrong_ticks = 0;

arena_title = "Bird-Dog On The Beat";

battle_text = "* Big Band blocks your path!";

steve_death_message = "Steve was deafened by Big Band.";

Hikaru_Title = "Brass Knuckle";

dash_note1 = hit_fx_create(sprite_get("dash_note1"), 30);
dash_note2 = hit_fx_create(sprite_get("dash_note2"), 30);
dash_note3 = hit_fx_create(sprite_get("dash_note3"), 30);
dash_note4 = hit_fx_create(sprite_get("dash_note4"), 30);
dash_note5 = hit_fx_create(sprite_get("dash_note5"), 30);
dash_note6 = hit_fx_create(sprite_get("dash_note6"), 30);

dspecial_fx = hit_fx_create(sprite_get("dspecial_fx"), 30);
twinkle = hit_fx_create(sprite_get("taunt_twinkle"), 30);
toot = hit_fx_create(sprite_get("toot_vfx"), 5);


//Big Band stuff
bb_consecutive_cancelled_attacks = 0;
bb_coyote_timer = 0;

time_frozen = false
time_freeze_ticks = 0
ustrong_ticks = 0;

dair_float = true;
dair_timer = 0;

easter_egg_timer = 0;
easter_egg_set = false;
voice_activated = false;
cancelled_voice = true;
voiced_peacock = false;
peacock_player = self

got_hit_ticks = 0;
got_hit_num = 0;

voice_utilt_chain1 = false;
voice_utilt_chain2 = false;
voice_utilt_chain3 = false;
taunted = false;
hitpause_buffer = false;

//Noise Cancelling stuff
ncparry_timer = 0;
nc_dir = 1;
ncparrybox = noone;
nchbox_type = 1;
nctimer_hold = 0;
ncenemy = noone;
noise_cancel = false;
hurtboxobj = noone;
nclast_hbox = noone;
nc_cooldown = 0;
prev_burn = false;
prev_burn_time = 0;
prev_mark = false;
prev_wrap = false;

//Workshop parry
bambood = false;
prev_bamboo = false;

//TRUMPET
current_note = 0;
note_octave = "";
note_str = "C";
note_visual = 3;
honk = false;

