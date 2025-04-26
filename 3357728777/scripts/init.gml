hurtbox_spr = sprite_get("crow_hurtbox");
crouchbox_spr = sprite_get("crow_crouch_hurtbox");
dashbox_spr = sprite_get("crow_dash_hurtbox");
air_hurtbox_spr = sprite_get("crow_jump_hurtbox");
hitstun_hurtbox_spr = -1;

char_height = 70;
idle_anim_speed = .15;
crouch_anim_speed = .15;
walk_anim_speed = .145;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 1.2;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 18;
initial_dash_speed = 8;
dash_speed = 7.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.7;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .8; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 27; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .50;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
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

hfx_feather_small = hit_fx_create(sprite_get("hfx_feather_small"), 24)
hfx_feather_large = hit_fx_create(sprite_get("hfx_feather_large"), 24)
hfx_blood_small = hit_fx_create(sprite_get("hfx_blood_small"), 24)
hfx_blood_large = hit_fx_create(sprite_get("hfx_blood_large"), 24)
hfx_blood_massive = hit_fx_create(sprite_get("hfx_blood_massive"), 24)
hfx_curse_small = hit_fx_create(sprite_get("hfx_curse_small"), 24)
hfx_curse_large = hit_fx_create(sprite_get("hfx_curse_large"), 24)
dspecial_vfx = hit_fx_create(sprite_get("dspecial_vfx"), 21)
dspecial_vfx_bg = hit_fx_create(sprite_get("dspecial_vfx_bg"), 21)

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("step2");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_forsburn_cape_swipe");
air_dodge_sound = asset_get("sfx_quick_dodge");

set_victory_theme(sound_get("victory"))

step_sound = 0;
walk_cont = 0;

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

introTimer = -(1 + player);
introTimer2 = 0;
introAnimFrameLength = 5;


//Wrath Sprite Switch stuff
wrath = get_synced_var(player);
had_wrath = 0;
wrath_to_equip = 1;
can_recharge_wrath = false;
wrath_meter = 0;
wrath_meter_max = 40;
shown_wrath_meter = 0;
charged = 0;
wrath_recharge_delay = 30;
wrath_visual_delay = 30;
wrath_cancel = false;
//wrath_recharge_delay_max = 30;
wrath_sound_trigger = 0;
wrath_sound_timer = 0;
wrath_land = 0;
fair_charge = 0;

focused_fury = 0;
focused_fury_timer = 240;
focused_fury_max = 240;
focused_fury_delay = 30

nspec_proj_charge = 0;

jab_offset = 10;
temp_jab_offset = 0;
dspecial_wrath_delay = 0;
dspecial_wrath_delay_timer = 0;
centipede_prevention = 0;

crouch_tracker = 0;
crouch_check = 0;
crouch_cooldown = 0;
crouch_max_patience = 4;

fstrong_sfx = noone;

grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

var color = get_player_color(player)
blood_color = make_color_rgb(get_color_profile_slot_r(color, 6),get_color_profile_slot_g(color, 6),get_color_profile_slot_b(color, 6))
exclamation_frame = 0;
exclamation_speed = 0.15;
exclamation_show = false;

current_sprite_set = 0;
num_sprite_sets = 2;

checked_sprite_names = [
    "idle", 
    "crouch", 
    "walk", 
    "walkturn", 
    "dash", 
    "dashstart", 
    "dashstop", 
    "dashturn", 
    
    "hurt",
    "hurtground",
    "bighurt",
    "uphurt",
    "downhurt",
    "bouncehurt",
    "spinhurt",
    
    "jumpstart", 
    "jump", 
    "doublejump", 
    "walljump", 
    "pratfall", 
    "land", 
    "landinglag", 
    
    "parry", 
    "roll_forward", 
    "roll_backward", 
    "airdodge", 
    "waveland", 
    "tech", 
    
    "jab", 
    "dattack", 
    "ftilt", 
    "dtilt", 
    "utilt", 
    "nair", 
    "fair", 
    "bair", 
    "uair", 
    "dair", 
    "fstrong", 
    "ustrong", 
    "dstrong", 
    "nspecial", 
    "fspecial", 
    "uspecial", 
    "dspecial",
    "taunt",
    "wait",
    "intro",
    ];
