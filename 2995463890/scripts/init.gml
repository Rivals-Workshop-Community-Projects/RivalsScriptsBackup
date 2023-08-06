hurtbox_spr = sprite_get("cowboy_hurtbox");
crouchbox_spr = sprite_get("cowboy_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .145;
dash_anim_speed = .175;
pratfall_anim_speed = .25;

walk_speed = 3.0;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7.5;
dash_speed = 6.75;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9.5;
walljump_time = 34;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 4;
techroll_recovery_frames = 4;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 4;
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

dattack_forgiveness = 0;
dattack_forgiveness_threshold = 35

fair_rekka = false;

used_dspecial = false;

//bullet trail drawing
//bullets = ds_list_create();


//my_array = [10,23,14,536,24]

//Gun variables
bullet_obj = noone;
bottle_obj = noone;
puddle_obj = noone;

bottle_backup_position = [0,0];
fspecial2_buffer = false;
can_fspecial2 = false;
nspecial2_fall_timer = 0;

nspecial_hit = hit_fx_create(sprite_get("nspecial_proj_hit"), 20);
bottle_hit = hit_fx_create(sprite_get("bottle_hit_vfx"), 24);
firework_hfx = hit_fx_create(sprite_get("vfx_fireworks"), 34)
splash_vfx = hit_fx_create(sprite_get("puddle_burst"), 34)
splashback_vfx = hit_fx_create(sprite_get("puddle_backvfx"), 24)
watertrail_vfx = hit_fx_create(sprite_get("puddle_trailvfx"), 20)
bighit_hfx = hit_fx_create(sprite_get("hfx_big"), 28)
bigshot_hfx = hit_fx_create(sprite_get("hfx_bigshot"), 28)
splash_hfx = hit_fx_create(sprite_get("hfx_splash"), 24)
bigsplash_hfx = hit_fx_create(sprite_get("hfx_bigsplash"), 27)
gun_directional_hfx = hit_fx_create(sprite_get("nspecial_proj_dirhit"), 20)
storage_obj = hit_fx_create(asset_get("empty_sprite"), 1000)


mj_enabled = (get_player_color(player) == -1 ? 31 : get_player_color(player)) == 31
mj_should_carry_over = false;

if mj_enabled {
    set_victory_theme(sound_get("mj_victory"));
}
else {
    set_victory_theme(sound_get("Hol_Horse_victory_theme"));
}

puddle_hitbox = noone;
puddle_hitbox_angles = ds_map_create()
puddle_hitbox_angles[AT_DSTRONG] = [55, 125]
puddle_hitbox_angles[AT_USTRONG] = [-1,-1, 105]
puddle_hitbox_angles[AT_USPECIAL] = [90]

introTimer = -(1 + player);
introTimer2 = 0;
introAnimFrameLength = 5;

puddle_cooldown = 0;


//drawing stuff
player_alt = (get_player_color(player) == -1 ? 31 : get_player_color(player));
var slot = 0;
player_color = make_color_rgb(get_color_profile_slot_r(player_alt, slot), get_color_profile_slot_g(player_alt, slot), get_color_profile_slot_b(player_alt, slot));
hud_color = get_player_hud_color(player)
directions = [ [2,0], [0, 2], [-2, 0], [0, -2] ]
dir_sprite = sprite_get("nspecial_proj_direction");

//Support
Hikaru_Title = "Unbeatable Emperor";
arena_title = "Unbeatable Emperor";
battle_text = "A lone gunman wanders with the wind."
ncode1 = "A mercenary working for an unknown client. Weilds"
ncode2 = "some unseen weapon that can hit from afar. He's"
ncode3 = "probably not alone, so be on your guard."
steve_death_message = "Steve was retired";
link_spear_drop = 1;
TCG_Kirby_Copy = 3;