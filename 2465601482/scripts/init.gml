

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .1;
dash_anim_speed = .24;
pratfall_anim_speed = .25;

walk_speed = 2.8;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 15;
initial_dash_speed = 6.1;
dash_speed = 5.7;
dash_turn_time = 11;
dash_turn_accel = 1.5;
dash_stop_time = 3;
dash_stop_percent = .9; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .46;
moonwalk_accel = 1.6;

jump_start_time = 6;
jump_speed = 12.6;
short_hop_speed = 6;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
 //the maximum hsp you can accelerate to when in a normal aerial state
air_max_speed = 5.6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .022;
max_djumps = 1;
double_jump_time = 33; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 33;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 15.6; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 5; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .03; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 11;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5 + 3*has_rune("E");

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
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

item_held = "none";
// "beamsword" - down
// "superscope" - forward
// "boomerang" - neutral
// "bumper" - up
prev_item_held = item_held
item_attack = false;
item_held_type = 0;
item_pulling = "beamsword";
transcendent_items = has_rune("J");
if has_rune("N") superstar_in_me = true
can_fast_bump = false;
check_hitboxes = false;
player_scale = 1;
ustrong_is_mega = has_rune("I");
target_scale = 1;
prev_scale = 1;
gunk = hit_fx_create(sprite_get("gunk"),12);
scale_timer = 0;
metal_timer = 0;
prev_metal = false;
curry_timer = 0;
prev_curry = false;
check_scale = false;
check_curry = false;
check_metal = false;
aiming_dir = 0;

beamsword_out = false;
superscope_out = false;
boomerang_out = false;
boomerang_back = has_rune("D");
bumper_id = noone;
bumper_unlimited = has_rune("H");
pop_limit_at = 0;
pop_max_limit = 3;

shadow_hit_fx = hit_fx_create(sprite_get("shadow_bug"),45);
shadow_indicator_fx = hit_fx_create(sprite_get("shadow_bug_2x"),12);
shadow_indicator_fx2 = hit_fx_create(sprite_get("shadow_bug_2x"),15);
set_victory_theme(sound_get("victory"));
set_victory_bg(sprite_get("final_destination_bg_sunset"));
//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
item_arrow_sprite = sprite_get("player_arrow");

reset_to_air_max_speed = air_max_speed;
reset_to_ground_friction = ground_friction;
reset_to_dash_speed = dash_speed;
reset_to_initial_dash_speed = initial_dash_speed;
reset_to_jump_speed = jump_speed;
reset_to_djump_speed = djump_speed;

// used for final smash
fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "custom";
fs_char_is_attack_grid = false;
fs_char_portrait_y = 156

// used for Orby's Workshop
/*
    here are a few variables to keep in mind:
        `ow_orby_last_hit_attack` -> returns the attack of the most recent hitbox which hit orby
        `ow_orby_last_hit_num` -> returns the hbox_num of the most recent hitbox which hit orby
        `ow_orby_last_hitbox` -> returns the hitbox reference id of the most recent hitbox which hit orby
        `ow_orby_list_hit_time` -> number of frames since orby was last hit
        `ow_action_counter` -> returns the current action counter, reset when an action passes.
        `ow_current_action` -> returns the current action being taught
    
    there's also a structure called "tests"
    these are basically boolean tests composed into JSON
    
*/
// orby actions
#macro OA_IDLE 0
#macro OA_TALK 1
#macro OA_FLY 2
#macro OA_FIRE 3
#macro OA_SHOT 4
// orby positions
#macro OT_FLY_LOW 0
#macro OT_FLY_MED 1
#macro OT_FLY_HIGH 2
#macro OT_FLY_OFF_LOW 3
#macro OT_FLY_OFF_MED 4
#macro OT_FLY_OFF_HIGH 5
ow_tutorial = [
    {
        // we need a few things:
        // dialogue for Orby
        // input text
        // action text
        // counter
        // what to reset
        // counter reset trigger
        // action reset trigger
        // and completion tests.
        "lines" : [
            "Welcome to the Primid tutorial!",
            "Primid, the Shadow Bug Soldier, is a mid-weight, item-based character.",
            "They depend on pulling, throwing, and catching an onslaught of items to land combos, and enter powerful states.",
            "Let's begin with the basics. Pull out your boomerang with NSPECIAL."
        ],
        "orby_action": OA_FLY,
        "orby_at": OT_FLY_MED,
        /* the button inputs
            [special] -> shows a red button
            [attack] -> shows a greed button
            [strong] -> shows a yellow button
            [jump] -> shows a grey button
            [shield] -> shows a grey trigger
            [taunt] -> shows a d-pad
            
            [nstick] -> shows a neutral stick
            [ustick] -> shows a stick tilted up
            [dstick] -> shows a stick tilted down
            [fstick] -> shows a stick tilted the way the player is facing
            [bstick] -> shows a stick tilted opposite the way the player is facing
            
        */
        "input_text" : `[special]`,
        "action_text": `PULL BOOMERANG`,
        // list of variables and what to reset them to
        // this should be true every time the counter goes up. the full action is considered complete once this has been true a few times.
        "completed_tests": [
            {"$item_held$==":"boomerang"}
        ],
        // the amount of times the action must be completed to "pass"
        "completed_requirement" : 1
    },
    {
        "lines": [
            "Good.",
            "The boomerang can be thrown in eight directions:",
            "up, down, left, right, up-left, up-right, down-left, and down-right.",
            "Hit me with the thrown boomerang, and catch it before it touches the ground, using ATTACK!"
        ],
        "orby_action": OA_FLY,
        "orby_at": OT_FLY_MED,
        "input_text" : `[attack] at Orby, then [attack] near boomerang`,
        "action_text": `CATCH ITEM AFTER HIT [count]/3`,
        "reset_counter": [
            {"$ow_primid_boomerang_on_floor$==":true},
            {"%and":[
                {"$item_held$!=":"boomerang"},
                {"$item_held$!=":"none"}
            ]}
        ],
        "completed_tests" : [
            {"$ow_orby_last_hit_time$==":0},
            {"$ow_orby_last_hit_attack$==":AT_NSPECIAL}
        ],//`ow_orby_last_hit_time == 0 && ow_orby_last_hit_attack == ${AT_NSPECIAL}`,
        "completed_requirement" : 3
    },
    {
        "lines": [
            "Nice!",
            "Now pull the super scope with FSPECIAL."
        ],
        "orby_action": OA_FLY,
        "orby_at": OT_FLY_MED,
        "input_text":`[attack], then [fstick]/[bstick] + [special]`,
        "action_text":`PULL SUPER SCOPE`,
        "completed_tests": [
            {"$item_held$==":"superscope"}
        ],
        "completed_requirement": 1
    },
    {
        "lines": [
            "The super scope can fire in four directions:",
            "up, down, left and right.",
            "Use SPECIAL to fire it while holding it.",
            "Try shooting me with each direction on the super scope shot."
        ],
        "orby_action": OA_FLY,
        "orby_at": OT_FLY_LOW,
        "input_text": `[special] + [fstick]/[nstick]`,
        "action_text": `SUPER SCOPE FSHOT`,
        "completed_tests" : [
            {"$ow_orby_last_hit_time$==":0},
            {"$ow_orby_last_hit_attack$==":AT_FSPECIAL_2}
        ],//`ow_orby_last_hit_time == 0 && ow_orby_last_hit_attack == ${AT_FSPECIAL_2}`,
        "completed_requirement" : 1
    },
    {
        "input_text": `[special] + [ustick]`,
        "action_text": `SUPER SCOPE USHOT`,
        "orby_action": OA_FLY,
        "orby_at": OT_FLY_HIGH,
        "completed_tests" : [
            {"$ow_orby_last_hit_time$==":0},
            {"$ow_orby_last_hit_attack$==":AT_USPECIAL_2}
        ],
        "completed_requirement" : 1
    },
    {
        "input_text": `[special] + [dstick]`,
        "action_text": `SUPER SCOPE DSHOT`,
        "orby_action": OA_FLY,
        "orby_at": OT_FLY_LOW,
        "completed_tests" : [
            {"$ow_orby_last_hit_time$==":0},
            {"$ow_orby_last_hit_attack$==":AT_DSPECIAL_2}
        ],
        "completed_requirement" : 1
    },
    {
        "lines": [
            "Excellent!",
            "On to the beamsword. The beamsword is a powerful blade made of pure energy.",
            "You can pull it out with DSPECIAL.",
            "Just like the super scope, you can throw it with ATTACK and use it with SPECIAL.",
            "Hit me with one of each type of beam sword swing."
        ],
        "orby_action": OA_FLY,
        "orby_at": OT_FLY_LOW,
        "action_text":"BEAMSWORD FSTRONG",
        "input_text": "[special] + [fstick]/[nstick]",
        "completed_tests" : [
            {"$ow_orby_last_hit_time$==":0},
            {"$ow_orby_last_hit_attack$==":AT_FSPECIAL}
        ],
        "completed_requirement" : 1
    },
    {
        "action_text":"BEAMSWORD USTRONG",
        "input_text": "[special] + [ustick]",
        "orby_action": OA_FLY,
        "orby_at": OT_FLY_MED,
        "completed_tests" : [
            {"$ow_orby_last_hit_time$==":0},
            {"$ow_orby_last_hit_attack$==":AT_USPECIAL}
        ],
        "completed_requirement" : 1
    },
    {
        "action_text":"BEAMSWORD DSTRONG",
        "input_text": "[special] + [dstick]",
        "orby_action": OA_FLY,
        "orby_at": OT_FLY_LOW,
        "completed_tests" : [
            {"$ow_orby_last_hit_time$==":0},
            {"$ow_orby_last_hit_attack$==":AT_DSPECIAL}
        ],
        "completed_requirement" : 1
    },
    {
        "lines": [
            "Lovely!",
            "Now to the bumper. The bumper is used for both stage control and recovery.",
            "It allows you to bounce both yourself and enemies around.",
            "However, the bumper has a few special properties which set it apart from other items.",
            "You can always pull a bumper, but only one can be in play at any given time.",
            "Primid can also neutral drop it immediately, to bounce themselves back on stage.",
            "Do so by pressing ATTACK right after pulling a bumper with USPECIAL.",
            "However, immediately dropping it will also put Primid into pratfall.",
            "This maneuver is called a fast bump. Try performing 3 fast bumps."
        ],
        "action_text":"FAST BUMP [count]/3",
        "input_text": "[special] + [ustick] then [attack]",
        "reset_counter": [
            {"$attack$==":AT_NTHROW}
        ],
        "orby_action": OA_FLY,
        "orby_at": OT_FLY_OFF_HIGH,
        "completed_tests" : [
            {"$state$==":PS_PRATFALL},
            {"$attack$==":AT_NSPECIAL},
            {"$state_timer$==":3},
            {"$can_fast_bump$==":false}
        ],
        "completed_requirement" : 3
    },
    {
        "lines": [
            "Nicely done!",
            "Properly using the bumper is key to recovering as Primid.",
            "Now onto Primid's STRONGS. Instead of powerful attacks, Primid has three states they can enter.",
            "USTRONG is the super mushroom. This increases knockback, startup, and endlag of moves.",
            "Fstrong is spicy curry. This increases speed in both movement and framedata.",
            "Dstrong is metal box. This gives extra weight, damage, and some soft armor, at the cost of mobility.",
            "However, these STRONGS have a long startup.",
            "So, Primid uses the pop item to bypass this.",
            "You might have already noticed, but the pop item is what Primid pulls when an item is already in play.",
            "Meaning that pulling a boomerang twice would give one boomerang and one pop.",
            "Using it is practically a requirement in order to access them in the heat of battle.",
            "Try stacking all three STRONGS using your knowledge of the pop item."
        ],
        "input_text":"[ustick]/[fstick]/[dstick]+[strong] while holding pop",
        "action_text":"STACK STRONGS",
        "orby_action": OA_FLY,
        "orby_at": OT_FLY_OFF_HIGH,
        "completed_tests" : [
            {"$metal_timer$>=":1},
            {"$scale_timer$>=":1},
            {"$curry_timer$>=":1}
        ],
        "completed_requirement" : 1
    },
    {
        "lines": [
            "This concludes the Primid tutorial!"
        ],
        "orby_action": OA_FLY,
        "orby_at": OT_FLY_MED,
        "completed_tests": [
            {"$ow_i_am_stupid$==":true}
        ],
        "completed_requirement" : 0
    }
];
ow_primid_boomerang_on_floor = false;
ow_i_am_stupid = true;
