hurtbox_spr = sprite_get("void_hurtbox");
crouchbox_spr = sprite_get("void_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = sprite_get("void_hitstun_hurtbox");

char_height = 76;
idle_anim_speed = .23;
crouch_anim_speed = .1;
walk_anim_speed = .23;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 4;
dash_speed = 5.5;
dash_turn_time = 12;
dash_turn_accel = 1;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .3;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 7;
short_hop_speed = 3;
djump_speed = 6;
leave_ground_max = 6.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .35; //multiplier of air_accel while in pratfall
air_friction = .045;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 28;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .2;
hitstun_grav = .51
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 9;
wave_land_adj = 1.4; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 6;

//tech animation frames
tech_active_frames = 8;
tech_recovery_frames = 4;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

set_victory_theme( sound_get( "sparkling_star" ) );
land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_waveland_fors");
jump_sound = sound_get("na_jump2");
djump_sound = sound_get("na_doublejump2");
air_dodge_sound = asset_get("sfx_boss_shine");

//Character Specific Init

hit_sprites[0] = hit_fx_create(sprite_get("hfx_blob_small"), 28);
hit_sprites[1] = hit_fx_create(sprite_get("hfx_blob_medium"), 32);
hit_sprites[2] = hit_fx_create(sprite_get("hfx_blob_large"), 24);
hit_sprites[3] = hit_fx_create(sprite_get("nspecial_projfx"), 30);
spr_vfx_ustrong_spark = sprite_get("vfx_ustrong_spark");
vfx_ustrong_hit = hit_fx_create(sprite_get("biglightning_vfx"), 32);
fire_fx = hit_fx_create(sprite_get("hfx_fire"), 24);
split_baby_fx = hit_fx_create(sprite_get("vfx_nspecial_split"), 20);

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

fspecial_stored = [-1, -1]; // [WINDOW, WINDOW_TIMER]
fspecial_interval = 3; //frames inbetween spawns
fspecial_sound = noone;

uspecial_backupcoords = [0,0]

dspecial_laser = noone;

dair_direction = 270
nspecial_projectile = noone;

afterimages = ds_list_create();
particles = ds_list_create();

var cur = get_player_color(player);
var slot = 2;
afterimage_color = make_color_rgb(get_color_profile_slot_r(cur, slot), get_color_profile_slot_g(cur, slot), get_color_profile_slot_b(cur, slot));

slot = 1;
afterimage2_color = make_color_rgb(get_color_profile_slot_r(cur, slot), get_color_profile_slot_g(cur, slot), get_color_profile_slot_b(cur, slot));

afterimage_alpha = .9 //starting alpha
afterimage_alphadecay = 0.1 // alpha decay
afterimage_spawnsep = 6; // how many frames inbetween afterimage spawns

//Workshop Support
Hikaru_Title = "Astral Birth";
arena_title = "Astral Birth";
battle_text = "* To desire. To think. ";
battle_text2 = "* Within the void, there lurks... "
battle_text3 = "* A Soul!"
steve_death_message = "The Void cries out once more";
nname = "Astral Birth: Void"
ncode1 = " In place of tyrannical rage, will he find... naptime? "
ncode2 = " Gentle breezes? Treats? He may even dream again... "
ncode3 = " a dream of friends reunited! "
has_fail = true;
fail_text = "Your efforts were null and Void";
kf_custom_icon = sprite_get("ability_void");
kf_hud_name = "Astral Birth Void";

introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;