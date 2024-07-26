// // the cool stuff  -------------------------------------------------------
//gimmick variables
shields_up = true;
armorless_timer = 0;
armorless_damage_time = 480; //8 seconds
meteor_id = noone;
meteor_armor = true;

//attack specifics
nspecial_charge_timer = 0;
nspecial_charge_looped = false;
strong_charge_anim_timer = 0;
dstrong_loop_num_max = 0;
dstrong_loop_num_current = 0;

//vfx
hue_offset=0; //shiny alt effect
hue_speed=1; //change this to change the speed of the hueshift
//alt_funny_effect = false;
/*
texture_bg = asset_get("sprite_empty"); 
switch(get_player_color(player)) { //texture for specific alt effects
    case 5:
        alt_funny_effect = true;
        texture_bg = sprite_get("text_rainbow"); 
        break;
}
texture_timer = 0;
*/
hfx_star_small = hit_fx_create(sprite_get("hfx_small"),21);
hfx_star_medium = hit_fx_create(sprite_get("hfx_medium"),21);
hfx_star_big = hit_fx_create(sprite_get("hfx_big"),23);
hfx_rock_big = hit_fx_create(sprite_get("hfx_rock_large"),21);
hfx_rock_small = hit_fx_create(sprite_get("hfx_rock_small"),12);
hfx_sand_big = hit_fx_create(sprite_get("hfx_sand_large"),21);
hfx_sand_small = hit_fx_create(sprite_get("hfx_sand_small"),12);
hfx_sand_absorb = hit_fx_create(sprite_get("hfx_sand_absorb"),12);

//sfx
sfx_poke_cry = sound_get("sfx_minior_cry");
sfx_poke_ability = sound_get("sfx_poke_ability");
sfx_poke_accelrock = sound_get("sfx_poke_accelerock");
sfx_poke_acrobatics = sound_get("sfx_poke_accelerock");
sfx_poke_aerialace_1 = sound_get("sfx_poke_airace_1");
sfx_poke_aerialace_2 = sound_get("sfx_poke_airace_2");
sfx_poke_ancientpower = sound_get("sfx_poke_ancient");
sfx_poke_dazzlinggleam_1 = sound_get("sfx_poke_dazzlgleam_1");
sfx_poke_dazzlinggleam_2 = sound_get("sfx_poke_dazzlgleam_2");
sfx_poke_hit_normal = sound_get("sfx_poke_hitnormal");
sfx_poke_hit_super = sound_get("sfx_poke_hitsuper");
sfx_poke_hit_weak = sound_get("sfx_poke_hitweak");
sfx_poke_powergem = sound_get("sfx_poke_powergem");
sfx_poke_reflect = sound_get("sfx_poke_reflect");
sfx_poke_rocktomb = sound_get("sfx_poke_rocktomb");
sfx_poke_sandstorm = sound_get("sfx_poke_sandstorm");
sfx_poke_shellsmash = sound_get("sfx_poke_shellsmash");
sfx_poke_steelwing = sound_get("sfx_poke_steelwing");
sfx_poke_stonedge_1 = sound_get("sfx_poke_stonedge_1");
sfx_poke_stonedge_2 = sound_get("sfx_poke_stonedge_2");
sfx_poke_twinkletackle_1 = sound_get("sfx_poke_twinkletackle_1");
sfx_poke_twinkletackle_2 = sound_get("sfx_poke_twinkletackle_2");
sfx_spiral_attackwind = sound_get("sfx_spiral_attackcrash_wind_01");
sfx_spiral_avengerhit = sound_get("sfx_spiral_avenger_chit");
sfx_spiral_dustbun = sound_get("sfx_spiral_dustbun_bounce");
sfx_spiral_wolver = sound_get("sfx_spiral_wolver_spawn");
sfx_spiral_sword_1 = sound_get("sfx_spiral_sword_01");
sfx_spiral_sword_2 = sound_get("sfx_spiral_sword_02");
sfx_spiral_sword_3 = sound_get("sfx_spiral_sword_03");
sfx_spiral_hitsoft_1 = sound_get("sfx_spiral_hit_soft_07");
sfx_spiral_hitsoft_2 = sound_get("sfx_spiral_hit_soft_alt_01");
sfx_spiral_hitcrash = sound_get("sfx_spiral_hit_crash_01");
sfx_smash_special_1 = sound_get("sfx_smash_special1");
sfx_smash_special_2 = sound_get("sfx_smash_special2");
sfx_smash_special_3 = sound_get("sfx_smash_special3");
sfx_smash_swing_1 = sound_get("sfx_smash_swing1");
sfx_smash_swing_2 = sound_get("sfx_smash_swing2");
sfx_smash_swing_3 = sound_get("sfx_smash_swing3");


//pokemon stadium compat
pkmn_stadium_front_img = sprite_get("pkmn_stadium_front");
pkmn_stadium_back_img = sprite_get("pkmn_stadium_back");




// // stats ---------------

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 5.5;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
ground_friction = .55;
moonwalk_accel = 1.35;

jump_start_time = 5;
jump_speed = 7.5;
short_hop_speed = 4;
djump_speed = 6.5;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .95; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 5;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 7;
walljump_time = 32;
max_fall = 7; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .35;
hitstun_grav = .40;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
meteor_kb_adj = knockback_adj;
core_kb_adj = 1.1;

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
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
