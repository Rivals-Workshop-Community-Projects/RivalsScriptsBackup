debug = false;

hurtbox_spr = sprite_get("1_idlehbox");
crouchbox_spr = sprite_get("2_crouchhbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 54;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .25;
pratfall_anim_speed = .25;


//quick wait anim setup
wait_time = sprite_get_number(sprite_get("idle"))*(2/*[Amount of Idle Loops]*/)/idle_anim_speed
wait_length = sprite_get_number(sprite_get("idle_fidget")) * 4;//replace last number with amount of in-game frame each anim-frame plays
wait_sprite = sprite_get("idle_fidget");//put the wait anim sprite here

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 9;
initial_dash_time = 12;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 11;
dash_turn_accel = 1.4;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.99;
short_hop_speed = 5.5;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .9; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
base_walljump_hsp = 6;
base_walljump_vsp = 8;
hstance_walljump_hsp = 5;
hstance_walljump_vsp = 9;
walljump_hsp = base_walljump_hsp;
walljump_vsp = base_walljump_vsp;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .45;
base_knockback_adj = 0.9;
hstance_knockback_adj = 1.3;
knockback_adj = base_knockback_adj;

land_time = 6; // heavy landtime
prat_land_time = 14;
wave_land_time = 10;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .05; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 3;
roll_back_active_frames = 2;
roll_back_recovery_frames = 4;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_abs");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//VICTORY MUSIC AND BG SET ---------------------------------------------------------------------------------
//set_victory_bg( sprite_get( "[bg sprite name]" )); //Victory BackGround
//set_victory_theme(sound_get("[victory music file name]")); //Victory BGMusic
//remove the slashes at the start of the lines to use the above 2

//hfx template ---------------------------------------------------------------------------------
//[hit fx name] = hit_fx_create( sprite_get( "[hit fx sprite name]" ), [lifetime/length]);

//hit particles ---------------------------------------------------------------------------------
//just put the sprites into the sprites folder, named as hit_particle[number], like hit_particle1, up to 1-6
//or use below to change mid-game
//set_hit_particle_sprite( [number, start with 1, up to 6], sprite_get("[hit particle sprite name]"));

//intro ---------------------------------------------------------------------------------
intro_anim_frame = 0;


//////////hi twenny
is_twenny = true;
dair_used = false;
was_crouching = false;

//crawl stuff
crawl_time = 0;
crawl_speed = 2.5;
crawl_anim_speed = 0.15;
crawl_sound = noone;
fake_img = 0;

//warp pipe article
latest_pipe_angle = 90;
pipe_distance = 48;
last_dist_check_x = 0;
pipewarp_cd = 0;
setting_visible = false; // used to ensure that visible is safely reset on hit or parry

//livespark handling
HG_TWENNY_ELECTRIC = 64;
has_twenny_electric = true; // Used for efficiency when checking hitboxes
livespark_attack = AT_DSPECIAL; // Since pipes need to be able to fetch livesparks from any instance of Twenny
livespark_index = 2;
// Technically, this is compat : ^)

// Implement as rune later
////status (mirrored in other_init.gml)
//twenny_hexed = false;
//twenny_hex_owner = noone;
//twenny_hex_timer = 0;
//twenny_text_timer = 0;
//twenny_hex_outline = []; // gets set on hit
//
//var p_col = get_player_color(player);
//brittle_outline = [ // constant; gets passed to twenny_hex_outline on hit
//    get_color_profile_slot_r(p_col, 0),
//    get_color_profile_slot_g(p_col, 0),
//    get_color_profile_slot_b(p_col, 0),
//];
//brittle_kb_mod = 0.1;

//-- NSPEC: THE BOMB
nspec_charge = 0;
bomb_type = 0; // 0 = scrap, 1 = big
bomb_angle = 45;
nspec_charge_threshold = 20;// Frames to charge garbage bag

//-- Monitor Head Stance.
in_hstance = false; // Whether hstance values should be in effect.
hstance_applied = false; // Whether hstance values are currently in effect.
hstance_old_djumps = 0;
has_long_endlag = false;

sting = hit_fx_create( sprite_get( "vfx_sting" ), 21 );
splsh = hit_fx_create( sprite_get( "vfx_splattersplash" ), 21 );
splatter = hit_fx_create( sprite_get( "vfx_splatter" ), 21 );
ustr_corpse = hit_fx_create( sprite_get( "vfx_ustrong_corpse" ), 48 );
thunder_small = hit_fx_create( sprite_get( "vfx_thunder_small" ), 18 );
thunder_big = hit_fx_create( sprite_get( "vfx_thunder_big" ), 28 );
livespark_death = hit_fx_create( sprite_get( "vfx_livespark_death" ), 20 );
bigbomb_expl = hit_fx_create( sprite_get( "vfx_bigbomb_explosion" ), 24 );
hex_fx = hit_fx_create( sprite_get( "fx_hex" ), 15 );
corpsedeath = hit_fx_create( sprite_get( "vfx_uspecial_corpse_death" ), 21 );

//Victory Screen
twenny_handled_victory_quote = false;
twenny_will_victory_quote = true;
twenny_victory_quote = "> SHREWD W0MAN! IMITATI0N WAS IMMINENT FAILURE- I AM 0NE IN A TWILLI0N~";
twenny_vic_face = "vicf_laugh";
twenny_vic_line = "vic_another_twenny"
twenny_randquote_icon = "vicf_base";

// just in case
is_voiced = true;

// compat
knight_compat_dream = 
    [
        "W0AH, THE R0ACHES HERE ARE EVEN BIGGER THAN IN THE SEWERS!",
        "0R IS IT A GH0ST? AM I A GH0ST?",
        "AM I... N0T THIS AGAIN."
    ]
arena_title = "Ambrosia's CUTEST Anomaly"
mamizou_transform_spr = sprite_get("mami_transformation");
pot_compat_variable = sprite_get("pumbo_dish");
pot_compat_text = "Spaghetti al Necrotico"

scrapbomb_visual = "b_scrapbomb"
scrapbomb_alt_index = 0;

// Alt Bombs
switch (get_player_color(player)) {
    case 6:
    case 9:
    case 13:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
        scrapbomb_visual = "b_scrapbomb_variants";
    break;
}

is_deadalt = false;

switch (get_player_color(player)) {
    case 6:
        scrapbomb_alt_index = 0;
    break;
    case 9:
        scrapbomb_alt_index = 1;
    break;
    case 13:
        scrapbomb_alt_index = 2;
    break;
    case 15:
        scrapbomb_alt_index = 6;
    break;
    case 16:
        scrapbomb_alt_index = 3;
    break;
    case 17:
        scrapbomb_alt_index = 4;
    break;
    case 18:
        scrapbomb_alt_index = 5;
    break;
    case 19:
        scrapbomb_alt_index = 7;
    case 20:
        set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("p_livespark_alt"))
        is_deadalt = true;
        is_voiced = false;
    break;
    default:
        is_deadalt = false;
        set_victory_bg( sprite_get( "twenny_victorybg" ));
        set_victory_theme( sound_get( "mus_twenny_victory" ));
    break;
}

//voiceline on galaxy
galaxy_timer = 0;
eureka = false;
