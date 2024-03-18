hurtbox_spr = sprite_get("1_idlehbox");
crouchbox_spr = sprite_get("2_crouchhbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 36;
idle_anim_speed = .08;
crouch_anim_speed = .08;
walk_anim_speed = .12;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 2.6;
walk_accel = 0.35;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = 7;
dash_speed = 5.75;
dash_turn_time = 10;
dash_turn_accel = 1.7;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.7;
short_hop_speed = 6;
djump_speed = 10.7;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .38;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .6;
hitstun_grav = .51;
knockback_adj = 1.08; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 4;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 2;
techroll_recovery_frames = 1;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 1;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = sound_get("hero_land_soft");
landing_lag_sound = sound_get("hero_land_soft");
waveland_sound = asset_get("sfx_waveland_ori");
jump_sound = sound_get("hero_jump");
djump_sound = sound_get("hero_wings");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

can_wall_cling = true;
spawned_wall_dust = false;
wallkick_hsp            = 2;
wallkick_vsp            = 11;
wallslide_fric          = 0.07;
wallslide_initial_speed = 0.5;
max_slide_speed = (60 * wallslide_fric + wallslide_initial_speed + gravity_speed);
used_wallkick = false;

//the knight
shade_stock = 1;
shade_duration = 180;
shade_timer = shade_duration
shade_consumer = 0;
shade_a = 1;

bobTime = 0;
bobFreq = 9;
bobAmp = 1;

cdash_timer = 8;
c_anim = 1;

vwings = noone;

vwings_duration = 26;
vwings_timer = vwings_duration;
vwings_a = 1;

vddive_duration = 44; 
vddive_timer = vddive_duration;

//afterimages
after_image = array_create(10, -1);
after_image_timer = -1;


//plat
respawnPlatSprite = sprite_get("platbehind");

//dreamnail
dreamreading = false;
dreambox_timer = 0;
dreambox_timer_max = 180;


defaultdreams = [ "...Fight...", "...Duel...", "...Match..." ];
dreamread = defaultdreams;

knight_compat_dream = 
    [
        "...",
        "...",
        "..."
    ]
wiimote_compat_sprite = sprite_get("knight_for_the_wii");

//VICTORY MUSIC AND BG SET ---------------------------------------------------------------------------------
set_victory_bg( sprite_get( "knight_victory1" )); //Victory BackGround
set_victory_theme(sound_get("victory_theme")); //Victory BGMusic


//hfx template ---------------------------------------------------------------------------------
//[hit fx name] = hit_fx_create( sprite_get( "[hit fx sprite name]" ), [lifetime/length]);
fx_shade_p = hit_fx_create( sprite_get( "vfx_shadeparticle" ), 8);
fx_shade_p_small = hit_fx_create( sprite_get( "vfx_shadeparticle_s" ), 6);
fx_soulb_small = hit_fx_create( sprite_get( "vfx_soulburst_small" ), 28);
fx_shadeb_small = hit_fx_create( sprite_get( "vfx_shadeburst_small" ), 28);
fx_shadeb_big = hit_fx_create( sprite_get( "vfx_shadeburst_big" ), 28);
fx_ddive = hit_fx_create( sprite_get( "vfx_ddive" ), 44);
set_hit_particle_sprite( 1, sprite_get( "vfx_dreamglyphs" ) );

//hit particles ---------------------------------------------------------------------------------
//just put the sprites into the sprites folder, named as hit_particle[number], like hit_particle1, up to 1-6
//or use below to change mid-game
//set_hit_particle_sprite( [number, start with 1, up to 6], sprite_get("[hit particle sprite name]"));

//usual variables i use ---------------------------------------------------------------------------------
knightanimframes = 0; //I usually use a variable to control image_index/anim frames for animation.gml
//if youre using this as a template, replace "maiosee" with your char's name. 
//unique variables = less mess with other variable owners

//Image Mask
start_predraw = false;
