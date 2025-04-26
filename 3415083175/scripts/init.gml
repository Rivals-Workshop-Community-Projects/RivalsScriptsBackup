//small_sprites=1

is_ruber_tco = true
in_ditto = false

tco_draw_sprites = [
    "bair", "dair", "dattack", "dstrong", "dtilt", "dspecial", "fair", "ftilt", "fstrong", "fspecial", "fspecial_air", "jab", "nair", "nspecial", "uair", "utilt", "ustrong", "uspecial", "uspecial_forward", "uspecial_diagonal",
    "ftilt_fire", "fair_fire", "parry", "utilt_fire", "jab_fire", "dair_fire", "dtaunt", "intro"
]

fire_draw_sprites = [
    "idle", "crouch", "walk", "walkturn", "dash", "dashstart", "dashstop", "dashturn", "roll_forward", "roll_backward", "jumpstart", "jump", "doublejump", "airdodge", "land", "landinglag", "waveland", "walljump",
    "dtilt", "uair", "bair", "dattack", "nair", "taunt", "fspecial", "fspecial_air"
]

trailer_mode = true

vfx_electric_ground = hit_fx_create(sprite_get("electric_ground_vfx"), 16)
hfx_laser_big = hit_fx_create(sprite_get("laser_hfx_big"), 21)
hfx_laser_small = hit_fx_create(sprite_get("laser_hfx_small"), 21)

timer = 0

has_snapped = false

practice_mode = false
state_attacking = false
fire_stance = false
fire_amount = 0

tcoart = sprite_get("tcoart")
tcoart_timer = 0
tcoart_timer_max = 120
tcoart_coords = [x, y]
tcoart_spr = undefined
tcoart_url = undefined

laser_state = 0
laser_timer = 0
laser_angle = 0
laser_dist = 0
laser_dist_max = 300
laser_end_pos = [0, 0]
laser_pos_max = [0, 0]
laser_hit = false

fireblast_state = 0
fireblast_timer = 0
fireblast_angle = 0
fireblast_dist = 0
fireblast_dist_max = 200
fireblast_end_pos = [0, 0]
fireblast_pos_max = [0, 0]
fireblast_hit = false

cloud_id = undefined
summon_lightning = false
under_cloud = false
lightning_draw_length = 230
lightning_angle = 0
empowered_cloud = false

hover_timer = 0

uspec_angle = 0
was_grounded = false

jab_grab = false
jab_grab_pos = [x, y]

utilt_grab = false
utilt_grab_pos = [x, y]

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .15;
crouch_anim_speed = .15;
walk_anim_speed = .2;
dash_anim_speed = .4;
pratfall_anim_speed = .15;

walk_speed = 3;
walk_accel = 0.6;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7.5;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.7;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.3;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 1;
double_jump_time = 30; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
wall_frames = 2;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = 0.5;
hitstun_grav = 0.50;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 8;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 6;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 6;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
