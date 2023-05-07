hurtbox_spr = sprite_get("ralsei_hurtbox");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56;
idle_anim_speed = 0.15;
crouch_anim_speed = 10;
walk_anim_speed = .25;
dash_anim_speed = .5;
pratfall_anim_speed = .25;

walk_speed = 3.5; 
walk_accel = 0.65;
walk_turn_time = 3;
initial_dash_time = 9;
initial_dash_speed = 5;
dash_speed = 6.25;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .75; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1;

jump_start_time = 5;
jump_speed = 9.5;
short_hop_speed = 6.25;
djump_speed = 9.5;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = 0.6; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 20; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4.5;
walljump_vsp = 9.5; 
walljump_time = 20;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 11.5; //fast fall speed
gravity_speed = .46; 
hitstun_grav = .49; 
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
                   




land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .4; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 1;
crouch_recovery_frames = 4;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 4;
techroll_recovery_frames = 3;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_waveland_may");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;



//character-specific
ralsei_nair_cycle = 5;

ralsei_dair_ammo_regen_counter = 0;
ralsei_dair_max_ammo = 25;
ralsei_dair_ammo = ralsei_dair_max_ammo;
ralsei_dair_consecutive_shots = 0;
ralsei_dair_velocity = gravity_speed * (7 + has_rune("D"));

ralsei_bair_bullet_hit_player_object_id = noone;
ralsei_bair_mlg_counter = 0;

ralsei_nspec_max_ammo = 3;
ralsei_nspec_ammo = ralsei_nspec_max_ammo;

ralsei_uspecial_ground_ammo = 0;
ralsei_uspecial_ground_max_ammo = 6;
ralsei_uspecial_ground_target_player_id = noone;

ralsei_fspecial_minigun_article_id = noone;
ralsei_fspecial_minigun_sweetspot_sfx = asset_get("sfx_blow_heavy1");

ralsei_extra_move_dir = 0;

ralsei_tp = 30;
ralsei_max_tp = 150;
ralsei_draw_tp = ralsei_tp;
ralsei_draw_time_since_last_hit = 30;
ralsei_use_super_move = false;
ralsei_super_move_cancelled = false;
ralsei_tp_multiplier = 1 + has_rune("H");
ralsei_tp_drain_lock = 0;
ralsei_tp_drain_lock_time = 30;

ralsei_courage = 0;
ralsei_max_courage = 480; //8s

ralsei_dstrong_heal_amount = 0;
ralsei_dstrong_player_heal_amount = [0, 0, 0, 0, 0];
ralsei_heart_article_id = instance_create(x, y, "obj_article3");

ralsei_heart_max_active_time = 150;
ralsei_heart_cooldown_time = 50;
spr_ralsei_heart_hurtbox = sprite_get("ralsei_hurtbox_heart");
spr_ralsei_heart_hurtbox_crouch = sprite_get("ralsei_hurtbox_heart_crouch");

ralsei_trigger = false;

ralsei_intro_animation = 0;

ralsei_heart_active = 0;
ralsei_heart_has_airdodge_before_activating = true;
ralsei_heart_deactivate_timer = 0;

ralsei_nair_consecutive_hits = 0;

ralsei_default_shell_bounce_spr = sprite_get("bullet_shell");
ralsei_default_shell_bounce_sound = sound_get("bullet_shell_by_anthousai_edited");

ralsei_most_recent_ground_height = y;



var col_r = ceil(get_color_profile_slot_r( get_player_color(player), 6) / 1.25);
var col_g = ceil(get_color_profile_slot_g( get_player_color(player), 6) / 1.25);
var col_b = ceil(get_color_profile_slot_b( get_player_color(player), 6) / 1.25);
ralsei_super_blink_color = [col_r, col_g, col_b];

col_r = ceil(get_color_profile_slot_r( get_player_color(player), 4) / 1.25);
col_g = ceil(get_color_profile_slot_g( get_player_color(player), 4) / 1.25);
col_b = ceil(get_color_profile_slot_b( get_player_color(player), 4) / 1.25);
ralsei_courage_blink_color = [col_r, col_g, col_b];


ralsei_nair_bullet1_x   = [ 45,  45,  15,  45,  40,  55];
ralsei_nair_bullet1_y   = [-25,  -5, -60, -50, -30, -25];
ralsei_nair_bullet1_dir = [  0, 315,  90,  40,  30,   0];
ralsei_nair_bullet2_x   = [-45, -40, -17, -40,   0, -20];
ralsei_nair_bullet2_y   = [-25, -45,  10,  -5, -55,   0];
ralsei_nair_bullet2_dir = [180, 135, 270, 220,  45, 225];

ralsei_fx_dair_spark = hit_fx_create( sprite_get( "fx_dair_spark" ), 4 );
ralsei_fx_dair_empty = hit_fx_create( sprite_get( "fx_dair_empty" ), 50 );
ralsei_fx_hitmarker = hit_fx_create( sprite_get( "fx_hitmarker" ), 20 );
ralsei_fx_mine_explode = hit_fx_create( sprite_get("fx_mine_explosion_by_ansimuz"), 24);
ralsei_fx_nade_explode = hit_fx_create( sprite_get("fx_nade_explosion_by_ansimuz"), 14);
ralsei_fx_sonic = hit_fx_create( sprite_get("fx_sonic"), 18 );
ralsei_fx_crosshair = hit_fx_create( sprite_get("fx_crosshair"), 20 );
ralsei_fx_heal = hit_fx_create( sprite_get("fx_heal"), 32 );
ralsei_fx_nou = hit_fx_create( sprite_get("fx_nou"), 28 );
ralsei_fx_atk_up = hit_fx_create( sprite_get("fx_atk_up"), 40 );
ralsei_fx_stockexplosion = hit_fx_create( sprite_get("fx_stockexplosion"), 34 );



ralsei_gui_tp_back = sprite_get("gui_tp_back");
ralsei_gui_tp_fill = sprite_get("gui_tp_fill");
ralsei_gui_dair_ammo = sprite_get("gui_dair_ammo");
ralsei_gui_nspecial_ammo = sprite_get("gui_nspecial_ammo");



//set_victory_bg(CH_ZETTERBURN);

debug_var = 0;


//character compatibility

//kirbyability = 0;
ralsei_check_character_compatibility = 0;

//stage compatibility
switch (get_stage_data( SD_ID )) {
    case 2123487420:
        miiverse_post = sprite_get("miiverseposts_by_altali");
}









