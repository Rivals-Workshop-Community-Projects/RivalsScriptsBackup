hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 46;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = 6.5;
dash_speed = 6.1;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; 
ground_friction = .5;
moonwalk_accel = 1.5;

jump_start_time = 5;
jump_speed = 9.5;
short_hop_speed = 5.5;
djump_speed = 9;
leave_ground_max = 7; 
max_jump_hsp = 7;
air_max_speed = 5.5; 
jump_change = 3; 
air_accel = .43;
prat_fall_accel = .85;
air_friction = .02;
max_djumps = 1;
jump_time = 32;
double_jump_time= 20;
walljump_hsp = 6;
walljump_vsp = 9.5;
walljump_time = 8;
max_fall = 10; 
fast_fall = 11;
gravity_speed = .35;
hitstun_grav = .5;
knockback_adj = 1.1; 

land_time = 4; 
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.05; 
wave_friction = .05; 

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8.1;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

pot_compat_variable = sprite_get("revivemint");
pot_compat_text = "Revive Mint"; 
steve_death_message = "Steve fell off of the carosal";
arena_title = "The Jester Gone Mad";
arena_short_name = "Jevil";

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

knifedissapear = hit_fx_create( sprite_get( "knifediss" ), 12 )
slash = hit_fx_create( sprite_get( "scythe_slash" ), 17 )
bairdestroy = hit_fx_create( sprite_get( "bair_destroy" ), 17 )
chaos_afterimage = hit_fx_create( sprite_get( "idle_chaos1_afterimage" ), 15 )
pirouette = hit_fx_create( sprite_get( "pirouette_effect" ), 10 )
uair_destroy = hit_fx_create( sprite_get( "heartproj_destroy" ), 6 )
dair_warn = hit_fx_create( sprite_get( "tipper_warn" ), 11 )
//uspecial vars
projshoot = 0
//fspecial vars
fspecial_vc = 0
special_used = 0
move_ready = 0
fspecial_starting_x = 0
fspecial_used = 0
fspecial_returning_angle = 0
fsp_vlc = 0
pratfall_queued = 0
//nspecial vars
nspecial_ammo = 3
angle_used_nspecial = 0
//dspecial vars
pirouette_selected = 1
active_effect = 0
effect_timer = 0
roulette_rot = 0
//misc vars
baircooldown = 0
timer = 0
pirouette_timer = 0
uair_hit_num = 0
uair_stationary = 0
uair_timer = 0
uair_landing_hitbox = 0

customuihide = 0
user_event(7)

if get_player_color(player) == 20{
    set_victory_theme(sound_get("victorysecret"));
}else{
    set_victory_theme(sound_get("victory"));
}