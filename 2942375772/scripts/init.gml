#macro NOTE_NONE -1
#macro NOTE_WEAK 0
#macro NOTE_MED 1
#macro NOTE_STRONG 2
#macro NOTE_SYNC -2

hurtbox_spr = sprite_get("idle_hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 44;
idle_anim_speed = .17;
crouch_anim_speed = .1;
walk_anim_speed = .134;
dash_anim_speed = .24;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 6;
initial_dash_speed = 7.5;
dash_speed = 7.5;
dash_turn_time = 8;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .425;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = 0.95; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 18;
wave_land_time = 8;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 1;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 1;
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

//hit effects
note_hfx = hit_fx_create(sprite_get("hfx_generic"), 28);
note_strong_hfx = hit_fx_create(sprite_get("hfx_strong"), 40);
note_trail = hit_fx_create(sprite_get("note_trail"), 22);
note_trail_orange = hit_fx_create(sprite_get("note_trail_orange"), 22);
note_trail_purple = hit_fx_create(sprite_get("note_trail_purple"), 22);
purple_nspec_vfx = hit_fx_create(sprite_get("hfx_purple_hit"), 24);
fire_trail = hit_fx_create(sprite_get("vfx_nspecial_fire"), 24);
smoke_vfx = hit_fx_create(sprite_get("vfx_smoke"), 24);
fspecial_vfx = hit_fx_create(sprite_get("vfx_fspecial"), 20);
tambo_vfx = hit_fx_create(sprite_get("tambobounce"), 16);
tamboboom_vfx = hit_fx_create(sprite_get("vfx_tamboboom"), 32);
dattack_vfx = [];

for (i = 0; i < 3; i++) {
    array_push(dattack_vfx, hit_fx_create(sprite_get(`vfx_dattack_${i}`), 15))
    sprite_change_offset(`vfx_dattack_${i}`, 134, 158);
}

tambo_obj = noone;

fspecial_timer = 0;
fspecial_distance = 0;

notes = [-1, -1, -1, -1]
note_pointer = -1;
pointer_should_stay = false;
popped_note = 0;

last_note = NOTE_NONE
unique_hitboxes = [];
note_pointer_display_timer = 0;

sfx_cooldown = 0;

note_mappings = ds_map_create();
note_mappings[? AT_DATTACK] = [NOTE_SYNC, NOTE_WEAK]
note_mappings[? AT_FTILT] = [NOTE_WEAK,NOTE_STRONG];
note_mappings[? AT_DTILT] = [NOTE_WEAK];
note_mappings[? AT_UTILT] = [NOTE_WEAK, NOTE_MED, NOTE_MED];
note_mappings[? AT_NAIR] = [NOTE_WEAK, NOTE_MED];
note_mappings[? AT_FAIR] = [NOTE_WEAK, NOTE_MED];
note_mappings[? AT_BAIR] = [NOTE_MED, NOTE_STRONG];
note_mappings[? AT_DAIR] = [NOTE_MED, NOTE_MED];
note_mappings[? AT_UAIR] = [NOTE_MED, NOTE_WEAK, NOTE_MED];
note_mappings[? AT_FSTRONG] = [NOTE_MED, NOTE_STRONG];
note_mappings[? AT_USTRONG] = [NOTE_MED, NOTE_STRONG];
note_mappings[? AT_DSTRONG] = [NOTE_STRONG];

nspecial_framedata = [];
array_push(nspecial_framedata, { loop: false, spawn_pos: [90, -20], sprite: sprite_get("nspecial_proj_1"), anim_frames : [1, 2, 4], lengths : [4, 4, 16] } )
array_push(nspecial_framedata, { loop: false, spawn_pos: [40, -26], sprite: sprite_get("nspecial_proj_2"), anim_frames : [4, 8, 5], lengths : [10, 16, 20] } )
array_push(nspecial_framedata, { loop: true, spawn_pos: [30, -20], sprite: sprite_get("nspecial_proj_3"), anim_frames : [5], lengths : [18] } )

dattack_loops = 0;
dattack_vfx_obj = noone;
dattack_sfx = [noone, noone];
set_victory_theme(sound_get("victory"));

//compats yippee yahoo
mamizou_transform_spr = sprite_get("mamizou_transformation");
pot_compat_variable = sprite_get("milk_shake");
pot_compat_text = "Milk Shake";
guiltySprite = sprite_get("dangamrompa");
tcoart = sprite_get("tco_drawing");
arena_title = "The Swingin' Serpent";
boxing_title = "The Swingin' Serpent";
greenwood_cheer = 2;