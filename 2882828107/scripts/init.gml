hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = sprite_get("hurt_hurtbox");

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .075;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 4;
dash_speed = 7;
dash_turn_time = 18;
dash_turn_accel = 1;
dash_stop_time = 7;
dash_stop_percent = .5; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .35;
moonwalk_accel = 1.2;

jump_start_time = 5;
jump_speed = 8;
short_hop_speed = 4;
djump_speed = 1;
djump_accel = -1.6;
djump_accel_start_time = 4;
djump_accel_end_time = 12;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 5.5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .32;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = -4.5;
walljump_vsp = 6;
walljump_time = 32;
max_fall = 6; //maximum fall speed without fastfalling
fast_fall = 9; //fast fall speed
gravity_speed = .32;
hitstun_grav = .45;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .5; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 8;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 14;
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 1;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 3;
air_dodge_speed = 9;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 1;
roll_back_recovery_frames = 3;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_absa_jump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

small_sprites = 1;
set_victory_bg(sprite_get("winbg"));

jackolantern_effect = hit_fx_create( sprite_get("jackolantern_fire_vfx"), 12 );

wall_phase = false;
orig_mask = mask_index;

jackolantern_recharge = 0;
witchhazel_recharge = 0;
alert_text_timer = 0;

witch_hazel_id = noone;
puffshroom_timer = 0;
puffshroom_sprite = sprite_get("puffshroom");
playtest = (object_index == oTestPlayer);
practice_mode = false;
uspecial_used = false;

hit_player_event = 13;
draw_hud_event = 14;
copy_ability_id = 47;
TCG_Kirby_Copy = 9;
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 110;
mamizou_transform_spr = sprite_get("helpless");
pot_compat_variable = sprite_get("food");
pot_compat_text = "Ghost Pepper Fajita"
scoop_personalized_flavour_name = "Chilly Ice Scream";
scoop_personalized_flavour_sprite = sprite_get("chilly_ice_scream");
arena_title = "The Haunting Harvest";
miiverse_post = sprite_get("post_ghost"); 
tcoart = sprite_get("ghostpeppertco"); 
knight_compat_dream = 
    [
        "Hey, you're a ghost too!",
        "Ooh, I gotta learn those tricks...",
        ":D"
    ]