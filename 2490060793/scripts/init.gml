set_color_profile_slot_range( 3, 1, 1, 1 );
set_color_profile_slot_range( 6, 1, 1, 1 );

instance_create(-1000, -1000, "obj_article2");

cssTimer = 0;

is_barr = true;

//fspec afterimage
fspec_movearr = array_create(5, [undefined,undefined])

//intro meter flip
intro_flip = false;

debugMode = false;

tip_active = true;

//practice mode detector
playtest = (object_index == oTestPlayer);
practice_mode = false;

fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "ori";
fs_meter_y = -20
fs_char_portrait_y = 90;
fs_char_portrait_x = 30;

genesis_timer = 0 //for genesis taunt
genesis_timer_2 = 0

shape_circle = sprite_get("hitbox_circle")
shape_rect = sprite_get("hitbox_rect")
shape_roundrect = sprite_get("hitbox_roundrect")

tipper_hfx = hit_fx_create(sprite_get("tipper_vfx"), 36);

meter_cur = 40;
meter_max = 100;
meter_flipped = false;

meter_prev = meter_cur;
meter_flash_timer = 0;
meter_flash_val = 10;
spark_timer = 0;
spark_val = 20;
spark_sprite = undefined;

draw_limit = false;
limit_loop = sound_get("limit_loop_sfx");
limit_vfx_large = sprite_get("limit_vfx_large")
limit_vfx_small = sprite_get("limit_vfx_small")
limit_vfx_finish = sprite_get("limit_vfx_finish")
limit_vfx_counter = 0;
limit_timer = 0;

limit_large = hit_fx_create(limit_vfx_large, 18)
limit_small = hit_fx_create(limit_vfx_small, 18)
limit_finish = hit_fx_create(limit_vfx_finish, 16)
draw_limit_flash = false;
limit_flash_timer = 0;

limit_circle_radius = 0;
limit_circle_alpha = 0;
limit_circle_col = c_yellow;

break_active = false
break_timer = 0
break_col = c_white
break_col2 = c_white


orb_value = 15;
hit_value = 7;
reduce_value = 7;
fspec_value = 0.8;

has_reduced = false;
has_increased = false

fspec_coords = [x,y];

timer = 0;
height_timer = 0;

orb_explosion_vfx = hit_fx_create(sprite_get("orb_explosion_vfx"), 14);
b_vfx = hit_fx_create(sprite_get("b_vfx"), 28);

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.25;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.35;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
wall_frames = 1;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = 0.48;
hitstun_grav = 0.50;
knockback_adj = 1.00; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 8;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_cla");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

/*
switch(get_match_setting(SET_SEASON)){
    case 1:
    // Spring
    set_color_profile_slot( 24, 0, 255, 235, 252 ); //Body main
    set_color_profile_slot( 24, 1, 227, 136, 215 ); //Body shade
    set_color_profile_slot( 24, 2, 255, 107, 153 ); //Eyes
    set_color_profile_slot( 24, 3, 242, 255, 255 ); //Meter White
    set_color_profile_slot( 24, 4, 242, 58, 163 ); //Meter main
    set_color_profile_slot( 24, 5, 242, 143, 199 ); //Sparks
    set_color_profile_slot( 24, 6, 169, 172, 188 ); //Meter Dark White
    set_color_profile_slot( 24, 7, 179, 11, 126 ); //Meter Dark main
    break;
    
    case 2:
    // Summer
    set_color_profile_slot( 24, 0, 235, 134, 59 ); //Body main
    set_color_profile_slot( 24, 1, 196, 63, 22 ); //Body shade
    set_color_profile_slot( 24, 2, 242, 228, 214 ); //Eyes
    set_color_profile_slot( 24, 3, 255, 218, 117 ); //Meter White
    set_color_profile_slot( 24, 4, 0, 156, 204 ); //Meter main
    set_color_profile_slot( 24, 5, 255, 212, 133 ); //Sparks
    set_color_profile_slot( 24, 6, 242, 149, 39 ); //Meter Dark White
    set_color_profile_slot( 24, 7, 0, 88, 156 ); //Meter Dark main
    break;
    
    case 3:
    // Autumn
    set_color_profile_slot( 24, 0, 55, 31, 94 ); //Body main
    set_color_profile_slot( 24, 1, 28, 11, 56 ); //Body shade
    set_color_profile_slot( 24, 2, 158, 4, 50 ); //Eyes
    set_color_profile_slot( 24, 3, 228, 227, 255 ); //Meter White
    set_color_profile_slot( 24, 4, 186, 5, 59 ); //Meter main
    set_color_profile_slot( 24, 5, 247, 146, 176 ); //Sparks
    set_color_profile_slot( 24, 6, 143, 140, 212 ); //Meter Dark White
    set_color_profile_slot( 24, 7, 150, 0, 80 ); //Meter Dark main
    break;
    
    case 4:
    // Winter
    set_color_profile_slot( 24, 0, 166, 254, 255 ); //Body main
    set_color_profile_slot( 24, 1, 78, 163, 212 ); //Body shade
    set_color_profile_slot( 24, 2, 250, 255, 255 ); //Eyes
    set_color_profile_slot( 24, 3, 242, 255, 255 ); //Meter White
    set_color_profile_slot( 24, 4, 89, 136, 227 ); //Meter main
    set_color_profile_slot( 24, 5, 161, 191, 247 ); //Sparks
    set_color_profile_slot( 24, 6, 169, 172, 188 ); //Meter Dark White
    set_color_profile_slot( 24, 7, 35, 86, 184 ); //Meter Dark main
    break;
}
*/

/*
rune O desc="At full meter, press parry + taunt to unleash a powerful attack."
rune O type="A"
rune N desc="NSPECIAL shoots out 3 orbs at once."
rune N type="O"
rune M desc="Press down + taunt to charge meter."
rune M type="A"
rune L desc="Sweetspots stun."
rune L type="H"

rune K desc="All special attacks are more powerful at full meter."
rune K type="O"
rune J desc="NAIR can be held indefinitely."
rune J type="A"
rune I desc="Hitting orbs with meter attacks creates much stronger hitboxes."
rune I type="H"
rune H desc="Orbs slowly home in on opponents."
rune H type="O"
rune G desc="Strong attacks have no sweetspot, but power uniformly scales with meter amount."
rune G type="H"

rune F desc="Orbs can't be destroyed by opponents."
rune F type="O"
rune E desc="USPECIAL goes much higher."
rune E type="A"
rune D desc="Press DSPECIAL during any attack to instantly flip meter."
rune D type="A"
rune C desc="NSPECIAL throws orb out further."
rune C type="R"
rune B desc="FSPECIAL travels further and can be jump canceled."
rune B type="H"
rune A desc="Non-sweetspot attacks give more meter on hit."
rune A type="A"
*/