hurtbox_spr = sprite_get("bug_hurtbox");
crouchbox_spr = sprite_get("bug_crouch_hurtbox");
dashbox_spr = sprite_get("bug_dash_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 64;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 1.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 6.5;
dash_speed = 5;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .8;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 6.5;
djump_speed = 11;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .53;
knockback_adj = 0.9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 10;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

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
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 42;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("sfx_deracine_waveland")
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

jump_vfx = hit_fx_create(sprite_get("vfx_jump"), 24)
tomb_vfx = hit_fx_create(sprite_get("vfx_tomb"), 20)
blood_hfx_horizontal = hit_fx_create(sprite_get("vfx_blood_horizontal"), 28)
blood_hfx_vertical = hit_fx_create(sprite_get("vfx_blood_vertical"), 36)
ghost_hfx_weak = hit_fx_create(sprite_get("vfx_ghost_weak"), 27);
ghost_hfx_strong = hit_fx_create(sprite_get("vfx_ghost_strong"), 27);
dirt_hfx_weak = hit_fx_create(sprite_get("vfx_dirt_weak"), 21);
dirt_hfx_strong = hit_fx_create(sprite_get("vfx_dirt_strong"), 21);
minion_death_vfx = hit_fx_create(sprite_get("vfx_minion_death"), 24);
fair_vfx_1 = hit_fx_create(sprite_get("fair_vfx"), 23)
fair_vfx_2 = hit_fx_create(sprite_get("fair_vfx"), 15)
uair_vfx_1 = hit_fx_create(sprite_get("uair_vfx"), 15)
uair_vfx_2 = hit_fx_create(sprite_get("uair_vfx"), 10)
fspecial_proj_die = hit_fx_create(sprite_get("fspecial_proj_die"), 18)
dspec_vfx_fg = hit_fx_create(sprite_get("dspecial_air_vfxfg"), 10)
dspec_vfx_bg = hit_fx_create(sprite_get("dspecial_air_vfxbg"), 10)

set_victory_theme(sound_get("victory"))

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

dspecial_should_enhance = false

dash_sound_instance = noone;

fspecial_trail_vfx = hit_fx_create(sprite_get("fspecial_trail_vfx"), 24)

var color = get_player_color(player);
var slot = 7;
decay_color = [ get_color_profile_slot_r(color, slot), get_color_profile_slot_g(color, slot), get_color_profile_slot_b(color, slot) ]
decay_color_rbg = make_color_rgb(get_color_profile_slot_r(color, slot), get_color_profile_slot_g(color, slot), get_color_profile_slot_b(color, slot))

fstrong_sfx = noone;
tombstone_landfx = hit_fx_create(sprite_get("uspecial_proj_impact"), 20)
scream_trail = hit_fx_create(sprite_get("vfx_deracine_scream_trail"), 25)

decay_particles = hit_fx_create(sprite_get("decay_effect"), 32)

introTimer = -(1 + player);
introTimer2 = 0;
introAnimFrameLength = 5;

split_var = split_synced_var(2,1,1);

color_shift = 0; // Declare variable
should_switch = 0; // Declare variable
awesome = 0; // Declare variable

last_frame_color_alt = get_player_color(player);

par_block = asset_get("par_block");

// Synced variable overwrite
color_shift = split_var[0];
should_switch = split_var[1];
awesome = split_var[2];

// Reload on round start
manual_init_shader_call = true;
init_shader();

/////////////////////////////////// MINIONS /////////////////////////////

// Minion object
minion_obj = noone;
minion_control_timer = -1;
minion_incubation_spawn_threshold = 10;
minion_attack_forgiveness_timer = 0;
minion_attack_forgiveness_max = 10;
minion_decay_sap_multiplier = 2.25;
minion_death_max_cooldown = 240
minion_attack_cache = -1;
// PS_SPAWN -- tombstone spawn attack 
// PS_BURIED -- tombstone spawn idle
// PS_DEAD -- tombstone spawn death
// PS_ATTACK_GROUND -- minion attack (any)
// PS_IDLE -- minion idle, passive
// PS_IDLE_AIR -- minion idle, active
// PS_PARRY -- minion passive idle -> active idle anim
// PS_WRAPPED -- minion active idle -> passive idle anim
// PS_ROLL_FORWARD -- minion active, moving forward
// PS_ROLL_BACKWARD -- minion active, moving backward
// PS_HITSTUN -- minion got hit
// PS_CRYSTALIZED -- minion death

minion_state_info = ds_map_create();

// Travelling state
minion_spawn_position = {
    target_player : noone,
    visited_players : [],
    active : false,
    timer : 0,
    max_time : 24,
    start_distance: 0,
    current_distance: 0,
    stop_distance: 0,
    y_pos: 0,
    x_scale : 1,
}


minion_state_info[? PS_SPAWN] = {
    sprite : sprite_get("tombstone_spawn"), // sprite to display
    hurtbox : sprite_get("tombstone_hurt"),
    next : PS_BURIED, // next state to go to. -1 means die.
    length : 24, // length in frames
    frames : 6, // # of frames to show
    loop : false // whether to loop the animation indefinitely or move onto `next` on animation end
}

minion_state_info[? PS_BURIED] = {
    sprite : sprite_get("tombstone_idle"), // sprite to display
    hurtbox : sprite_get("tombstone_hurt"),
    next : PS_ATTACK_GROUND, // next state to go to. -1 means die.
    attack : 5, // only applicable since we are moving to go to attack state
    length : 5, // length in frames
    frames : 1, // # of frames to show
    loop : true
}

minion_state_info[? PS_DEAD] = {
    sprite : sprite_get("tombstone_die"),
    hurtbox : sprite_get("minion_hurt"),
    next : -1,
    length : 36, 
    frames : 9,
    loop : false,
}

minion_state_info[? PS_ATTACK_GROUND] = {
    next : PS_IDLE, // next state to go to. -1 means die.
}

minion_state_info[? PS_IDLE] = {
    sprite : sprite_get("minion_passive"),
    hurtbox : sprite_get("minion_hurt"),
    next : PS_CRYSTALIZED,
    length : 40, 
    frames : 8,
    loop : true,
}

minion_state_info[? PS_PARRY] = {
    sprite : sprite_get("minion_awake"), // sprite to display
    hurtbox : sprite_get("minion_hurt"),
    next : PS_IDLE_AIR, // next state to go to. -1 means die.
    length : 12, // length in frames
    frames : 4, // # of frames to show
    loop : false // whether to loop the animation indefinitely or move onto `next` on animation end
}

minion_state_info[? PS_IDLE_AIR] = {
    sprite : sprite_get("minion_active"),
    hurtbox : sprite_get("minion_hurt"),
    next : PS_CRYSTALIZED,
    length : 96, 
    frames : 16,
    loop : true,
}

minion_state_info[? PS_WRAPPED] = {
    sprite : sprite_get("minion_asleep"), // sprite to display
    hurtbox : sprite_get("minion_hurt"),
    next : PS_IDLE, // next state to go to. -1 means die.
    length : 16, // length in frames
    frames : 4, // # of frames to show
    loop : false // whether to loop the animation indefinitely or move onto `next` on animation end
}

minion_state_info[? PS_ROLL_FORWARD] = {
    sprite : sprite_get("minion_walk_forward"),
    hurtbox : sprite_get("minion_hurt"),
    next : PS_IDLE,
    length : 24, 
    frames : 4,
    loop : true,
}

minion_state_info[? PS_ROLL_BACKWARD] = {
    sprite : sprite_get("minion_walk_backward"),
    hurtbox : sprite_get("minion_hurt"),
    next : PS_IDLE,
    length : 24, 
    frames : 4,
    loop : true,
}

minion_state_info[? PS_HITSTUN] = {
    sprite : sprite_get("minion_hitstun"),
    hurtbox : sprite_get("minion_hurt"),
    next : PS_IDLE,
    length : 20, 
    frames : 4,
    loop : false,
}

minion_state_info[? PS_HITSTUN_LAND] = { ///please replace this with an actual state, because I do not know which states haven't been used yet, lul)
    sprite : sprite_get("minion_longstun"),
    hurtbox : sprite_get("minion_hurt"),
    next : PS_IDLE,
    length : 32, 
    frames : 8,
    loop : false,
}

minion_state_info[? PS_CRYSTALIZED] = {
    sprite : sprite_get("minion_death"),
    hurtbox : sprite_get("minion_hurt"),
    next : -1,
    length : 25, 
    frames : 5,
    loop : false,
}

//Attacks

minion_right_attack = {
    cost : 10,
    hurtbox : sprite_get("minion_attack_forward_hurt"),
    sprite : sprite_get("minion_attack_forward"),
    windows : [
        { //doesn't move yet
            length : 14,
            anim_frame_start : 0,
            anim_frames : 3,
        },
        { //Starts moving forward here)
            length : 9,
            anim_frame_start : 3,
            anim_frames : 4,
        },
        {
            length : 6,
            anim_frame_start : 7,
            anim_frames : 2,
            hitboxes: [
            {
                frame: 0,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 4, // hitbox number to reference
                position : { // position to spawn at
                    x : 58, // x position (multiplied by minion spr_dir on spawn)
                    y : -60, // y position
                },
            },
            {
                frame: 3,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 12, // hitbox number to reference
                position : { // position to spawn at
                    x : 48, // x position (multiplied by minion spr_dir on spawn)
                    y : -90, // y position
                },
            }]
        },
        {
            length : 12,
            anim_frame_start : 9,
            anim_frames : 3,
            has_whifflag : true,
        },
        {
            length : 9,
            anim_frame_start : 12,
            anim_frames : 3,
            has_whifflag : true,
        }
    ]
}

minion_left_attack = {
    cost : 5,
    hurtbox : sprite_get("minion_attack_backward_hurt"),
    sprite : sprite_get("minion_attack_backward"),
    windows : [
        { 
            length : 12,
            anim_frame_start : 0,
            anim_frames : 3,
        },
        {
            length : 6,
            anim_frame_start : 3,
            anim_frames : 2,
        },
        {
            length : 4,
            anim_frame_start : 5,
            anim_frames : 2,
            hitboxes: [
            {
                frame: 0,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 5, // hitbox number to reference
                position : { // position to spawn at
                    x : 58, // x position (multiplied by minion spr_dir on spawn)
                    y : -70, // y position
                },
            },
            {
                frame: 2,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 6, // hitbox number to reference
                position : { // position to spawn at
                    x : 0, // x position (multiplied by minion spr_dir on spawn)
                    y : -45, // y position
                },
            },]
        },
        {
            length : 20,
            anim_frame_start : 7,
            anim_frames : 5,
            has_whifflag : true,
        }
    ]
}

minion_up_attack = {
    cost : 10,
    hurtbox : sprite_get("minion_attack_upward_hurt"),
    sprite : sprite_get("minion_attack_upward"),
    windows : [
        {
            length : 20,
            anim_frame_start : 0,
            anim_frames : 5,
        },
        {
            length : 3,
            anim_frame_start : 5,
            anim_frames : 1,
            hitboxes: [
            {
                frame: 0,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 9, // hitbox number to reference
                position : { // position to spawn at
                    x : -15, // x position (multiplied by minion spr_dir on spawn)
                    y : -190, // y position
                },
            },
            {
                frame: 0,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 10, // hitbox number to reference
                position : { // position to spawn at
                    x : -15, // x position (multiplied by minion spr_dir on spawn)
                    y : -140, // y position
                },
            } ]
        },
        {
            length : 20,
            anim_frame_start : 6,
            anim_frames : 5,
            has_whifflag : true,
        }
    ]
}

minion_down_attack = {
    cost : 15,
    hurtbox : sprite_get("minion_attack_downward_hurt"),
    sprite : sprite_get("minion_attack_downward"),
    windows : [
        {
            length : 29,
            anim_frame_start : 0,
            anim_frames : 6,
        },
        {
            length : 30,
            anim_frame_start : 6,
            anim_frames : 10,
            hitboxes: [
            {
                frame: 0,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 7, // hitbox number to reference
                position : { // position to spawn at
                    x : 42, // x position (multiplied by minion spr_dir on spawn)
                    y : -70, // y position
                },
            },
            {
                frame: 9,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 7, // hitbox number to reference
                position : { // position to spawn at
                    x : 48, // x position (multiplied by minion spr_dir on spawn)
                    y : -80, // y position
                },
            },
            {
                frame: 18,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 7, // hitbox number to reference
                position : { // position to spawn at
                    x : 42, // x position (multiplied by minion spr_dir on spawn)
                    y : -70, // y position
                },
            },
            {
                frame: 27,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 8, // hitbox number to reference
                position : { // position to spawn at
                    x : 48, // x position (multiplied by minion spr_dir on spawn)
                    y : -80, // y position
                },
            }
            ]
        },
        {
            length : 20,
            anim_frame_start : 16,
            anim_frames : 5,
            has_whifflag : true,
        }
    ]
}

minion_weak_scream_attack = {
    sprite : sprite_get("minion_scream_weak"),
    hurtbox : sprite_get("minion_hurt"),
    windows : [
        {
            length : 14,
            anim_frame_start : 0,
            anim_frames : 3,
            has_whifflag : false,
        },
        {
            length : 3,
            anim_frame_start : 3,
            anim_frames : 1,
            has_whifflag : false,
            hitboxes: [
            {
                frame: 0,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 11, // hitbox number to reference
                position : { // position to spawn at
                    x : 0, // x position (multiplied by minion spr_dir on spawn)
                    y : -50, // y position
                },
            } ]
        },
        {
            length : 8,
            anim_frame_start : 4,
            anim_frames : 2,
        },
        {
            length : 3,
            anim_frame_start : 6,
            anim_frames : 1,
            has_whifflag : false,
            hitboxes: [
            {
                frame: 0,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 3, // hitbox number to reference
                position : { // position to spawn at
                    x : 15, // x position (multiplied by minion spr_dir on spawn)
                    y : -118, // y position
                },
            } ]
        },
        {
            length : 25,
            anim_frame_start : 7,
            anim_frames : 5,
            has_whifflag : false,
        },
        { //Rises upwards slightly here
            length : 12,
            anim_frame_start : 12,
            anim_frames : 3,
            has_whifflag : false,
        }
    ]
}

minion_savage_scream_attack = {
    sprite : sprite_get("minion_scream_strong"),
    hurtbox : sprite_get("minion_hurt"),
    windows : [
        {
            length : 14,
            anim_frame_start : 0,
            anim_frames : 3,
        },
        {
            length : 3,
            anim_frame_start : 3,
            anim_frames : 1,
            hitboxes: [
            {
                frame: 0,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 1, // hitbox number to reference
                position : { // position to spawn at
                    x : 0, // x position (multiplied by minion spr_dir on spawn)
                    y : -50, // y position
                },
            } ]
        },
        {
            length : 12,
            anim_frame_start : 4,
            anim_frames : 2,
        },
        {
            length : 3,
            anim_frame_start : 6,
            anim_frames : 1,
            hitboxes: [
            {
                frame: 0,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 2, // hitbox number to reference
                position : { // position to spawn at
                    x : -10, // x position (multiplied by minion spr_dir on spawn)
                    y : -125, // y position
                },
            } ]
        },
        {
            length : 25,
            anim_frame_start : 7,
            anim_frames : 5,
        },
        { //Rises upwards slightly here
            length : 12,
            anim_frame_start : 12,
            anim_frames : 3,
        }
    ]
}

minion_grab_attack = {
    hurtbox : sprite_get("minion_grab_hurt"),
    sprite : sprite_get("minion_grab"),
    windows : [
        { //Initial grab (first active window)
            length : 4,
            anim_frame_start : 0,
            anim_frames : 1,
        },
        { //Initial grab (first active window)
            length : 3,
            anim_frame_start : 1,
            anim_frames : 1,
            hitboxes: [
            {
                frame: 0,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 13, // hitbox number to reference
                position : { // position to spawn at
                    x : 50, // x position (multiplied by minion spr_dir on spawn)
                    y : -75, // y position
                },
            } ]
        },
        { //Whiff
            length : 24,
            anim_frame_start : 2,
            anim_frames : 4,
        },
        { //Transition
            length : 5,
            anim_frame_start : 6,
            anim_frames : 1,
        },
        { //Hold
            length : 8,
            anim_frame_start : 11,
            anim_frames : 2,
            hitboxes: [
            {
                frame: 0,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 15, // hitbox number to reference
                position : { // position to spawn at
                    x : 60, // x position (multiplied by minion spr_dir on spawn)
                    y : -120, // y position
                },
            /*},
            {
                frame: 4,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 14, // hitbox number to reference
                position : { // position to spawn at
                    x : 60, // x position (multiplied by minion spr_dir on spawn)
                    y : -120, // y position
                },
            },
            {
                frame: 8,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 15, // hitbox number to reference
                position : { // position to spawn at
                    x : 60, // x position (multiplied by minion spr_dir on spawn)
                    y : -120, // y position
                },*/
            },]
            
        },
        { //Grab Endlag
            length : 20,
            anim_frame_start : 13,
            anim_frames : 4,
        }
    ]
}

minion_uspecial_attack = {
    cost : 100,
    hurtbox : sprite_get("minion_uspecial_hurt"),
    sprite : sprite_get("minion_uspecial"),
    windows : [
        { //Grabs Deracine
            length : 15,
            anim_frame_start : 0,
            anim_frames : 3,
            hitboxes: [
            {
                can_hit_self : true,
                frame: 1,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 16, // hitbox number to reference
                position : { // position to spawn at
                    x : 50, // x position (multiplied by minion spr_dir on spawn)
                    y : -70, // y position
                },
            } ]
        },
        { //prepping to slam
            length : 7,
            anim_frame_start : 3,
            anim_frames : 2,
        },
        { //SLAM!
            length : 4,
            anim_frame_start : 5,
            anim_frames : 1,
            hitboxes: [
            {
                frame: 0,
                attack : AT_EXTRA_3, // attack to reference
                hbox_num : 17, // hitbox number to reference
                position : { // position to spawn at
                    x : -64, // x position (multiplied by minion spr_dir on spawn)
                    y : -50, // y position
                },
            } ]
        },
        { //endlag (transitions into asleep)
            length : 20,
            anim_frame_start : 6,
            anim_frames : 4,
        }
    ]
}


minion_attacks = [ minion_left_attack, minion_right_attack, minion_up_attack, minion_down_attack, minion_weak_scream_attack, minion_savage_scream_attack, minion_grab_attack, minion_uspecial_attack ];
#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
//print(chunk_arr);
return chunk_arr;    