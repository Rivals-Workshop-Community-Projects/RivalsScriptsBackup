// sans kirby
swallowed = 0;

kirbyability = 16;
newicon = 0;

//hard mode
match_start = 180;
times_pressed = 0;
pressed_required = 5;
hard_mode = false;
hard_alt_timer = 0;
hard_alt = 1;

hard_walk = walk_speed*1.2;
hard_groundfric = ground_friction/2;
hard_initialdash = initial_dash_speed*1.2;
hard_dash = dash_speed*1.2;
hard_groundmax = leave_ground_max*1.2;
hard_jumpmax = max_jump_hsp*1.2;
hard_airmax = air_max_speed*1.2;

no = false;
deed_is_done = false;

//i was pressured into doing this
//also i said if someone made a complete troll!sans
//spritesheet i'd add it as a skin/costume
trolled = false;

//trummel & alto
trummelcodecneeded = false;
trummelcodec_id = noone;
sans_speech = 0;

//tco
tcoart = sprite_get("sanstcoart");

//feri
feri_costume = sprite_get("sansferi");

//otto
otto_bobblehead_sprite = sprite_get("sans_bobble");

//miiverse
miiverse_post = sprite_get("sans_miiverse1");
miiverse_post2 = sprite_get("sans_miiverse2");

sprite_change_offset("sans_miiverse1", 60, 30);
sprite_change_offset("sans_miiverse2", 60, 30);

//dedede that's the name you should know
arena_title = "The Judgeful Comedian";

//d-d-danganronpa
guiltySprite = sprite_get("sansganronpa");

//last resort
resort_portrait = sprite_get("portrait_sans");

//waaaalllllll-eeeee
walle_taunt_sound = sound_get("mus_yea");
walle_taunt_type = 1;

//amber :)
plushForAmber = sprite_get("plushSans");

//pokemon - gotta catch em all
pkmn_stadium_front_img = sprite_get("sans_front");
pkmn_stadium_back_img = sprite_get("sans_back");

//greenflower - aka my past catching up to me
gfzsignspr = sprite_get("signsans");

//anti-youtuber-bait
anti_op = false;

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_hurt_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

normal_height = char_height;
char_height = 44;
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .25;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

blue_bone = false;

dtilt_cooldown = 0;

fspecial_select_timer = 0;
fspecial_select_max = 60;
fspecial_select_min = 30;

destroy_gaster_blaster = false;
snd_blaster_charge = [sound_get("sfx_blaster_charge"), sound_get("sfx_lazar_charge")];

walk_speed = 3.25;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 7;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 2;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.7;

jump_start_time = 4;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = -1;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 2;
djump_accel = -1.9;
djump_accel_start_time = 4;
djump_accel_end_time = 15;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 20;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .50;
hitstun_grav = .50;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.48; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 0;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 1;
roll_back_recovery_frames = 1;
roll_forward_max = 10; //roll speed
roll_backward_max = 10;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");



//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;