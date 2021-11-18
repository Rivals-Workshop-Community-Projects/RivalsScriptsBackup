//user_event(14); // MunoPhone init

//Neo Mario stats initialization
qua_debug_needs_init = true;
debug_keycheats = false;
debug_hud = false; debug_mario_hud = true; debug_items_hud = false; debug_enemies_hud = false; debug_projectiles_hud = false;
debug_multihud = true;
debug_print_attacked_url = false; //Give the URL of a character in an easily copied format
debug_nspecial_entry = false; //Print to the log when Mario enters Nspecial
debug_sprite_offsets = false; //Print to the log when Mario loads a new sprite
debug_orders = false; //Print to the log when Mario receives an order for a particle or coin
debug_echoes = false; //Print information to the log relating to echoes
debug_ice_registry = false; //Print useful information about the ice registry
debug_freeze_projectiles_hud = false; //Shows information related to freezing projectiles
debug_skip_animation = false; //Prevent animation.gml from running
debug_infinite_reserve = false; //Prevents the Reserve slot from clearing when used, for easier testing

debug_get_match_analysis = false; debug_match_analysis = "start/";

// object_containing_arrays = {
// 	primary: ["apples", "black bears", "crayons", "doggers"],
// 	secondary: ["apples", "black bears", "crayons", "doggers", "enderman", "frienderoo", "griventeen", "hurderer the murderer", "indivisible", "Joker's trick", "klogged sink", "looperoopert", "monkeyteen", "novembering", "orangutastic", "penguinos", "qua Floral", "ratio'd", "succ", "tundra", "uupsie daisies", "voblin", "wumbo", "xenophobe", "yesterday", "zoinks!"]
// };

debug_error_data = [false, 100, sprite_get("misc_error_warning"), 0];

// classic_controls = false; //Use Mario-style controls on FQF's control scheme
use_custom_offscreen = false; //Use special offscreen indicators with the MunoPhone

failed_attack_init = false;

//Low-timer and death song related variables
music_suppression_time = 0; low_timer = (object_index == oTestPlayer);

user_event(0); //Establish Neo Mario data structures (power ups, characters, etc)

var in_playtest = (object_index == oTestPlayer);
move_type = MOVESTATS_OBJ.normal;
floor_type = FLOORTYPES_OBJ.block;
floortype_override = undefined; movetype_override = undefined;
move_air = MOVESTATS_AIR_OBJ.normal;
neo_power = in_playtest?POWER_OBJ.depowered:POWER_OBJ.fire_flower;
prev_neo_power_name = neo_power.name;
neo_char = COSTUMES[get_player_color(player)];
prev_neo_char_name = undefined;
print_debug(string("[QUA MARIO INITIALIZED] " + neo_char.intro_text));

hit_player_event = 6;
pride_weekend_poggies = (current_weekday == 0 || current_weekday == 6) && random_func(current_second % 20, 2, true);

//Import adventure mode data from the character object
for(var incrementeroo = 0, total = array_length(neo_char.ext_char_vars); incrementeroo < total; incrementeroo += 2;) {
	variable_instance_set(id, neo_char.ext_char_vars[incrementeroo], neo_char.ext_char_vars[incrementeroo + 1]);
}

set_hit_particle_sprite(1, sprite_get("misc_invisiboy"));

//Define fundamental Neo Mario state variables
neo_state = "Grounded";
neo_substate = "Idle";
neo_animstate = "idle";

neo_statetimer = 0;
neo_substatetimer = 0;
neo_animtimer = 0; neo_image = 0; prev_neo_image = 0; theoretical_neo_image = 0; prev_hud_offset = 0;
run_animation_in_pre_draw = false; last_animation_time = -100;
repeat_animation = false;
neo_age = 0;

neo_state_changed = false;
neo_substate_changed = false;
neo_animstate_changed = false;
cancel_state_processing = false;

//Reserve slot data
reserve_scale = 1;
reserve_slot = in_playtest?RESERVE_OBJ.empty:RESERVE_OBJ.super_mushroom;
roulette_slot = 0;
instant_reserve_available = false;
reserve_lock_time = -100;

//Stomp-related variables
stomped_success = false; prohibit_stomp = false;
stomped_player = false; stomped_clone = false;
consecutive_stomps = 0;
stomp_hitbox = noone;
tail_hitbox = noone;
bump_hitbox = noone;
last_stomp_data = {
	type: STOMPS_OBJ.normal,
	hitbox: noone,
	new_neostate: "Aerial",
	new_substate: "Stomp",
	new_animstate: "jump",
	time: -100,
	age: -100
};
queued_change_neostate = [false];
queued_play_prog_sfx = [false];
queued_earn_coins_for = [false];
queued_earn_points_for = [false];
queued_earn_life_for = [false];
queued_flotbox = [false];

//Yoshi Drum variables
yoshi_drum_enabled = false;
yoshi_drum_playing = true;

//Death-related variables
death_x = 0; death_y = 0;
death_hsp = 0; death_vsp = 0;
hud_shake_time = -100;
ranno_swallow = noone; prev_bubbled = false;

in_peril = false;
peril_time = -1;

//Hitpause manipulation and tracking variables
aggressive_hitstop = 0;
listening_for_hitpause = false;
listening_for_hitpause_sfx = "none";
prev_hitpause = false;
found_hitpause = false;
hitpause_spr_dir = 0;
animating_hitpause = false;

hit_last_frame = false;

//Shell movement variables
skid_timer = 0;
in_shell = false; shell_points_owner = id; shell_player = 5;
performed_shell_slide = false;
consecutive_hits = 0; shell_bounce_dir = 0;
shell_hitbox = noone;

//Stomp bounce sfx (used to play before hitpause is applied instead of after
hit_player_sfx = PROG_SFX_OBJ.bookworm;
hit_clone_sfx = PROG_SFX_OBJ.bookworm;
hit_hitpause_sfx = PROG_SFX_OBJ.bookworm;
hit_parry_sfx = PROG_SFX_OBJ.bookworm;

//Anim overrides are for things like kicks, fireballs, etc
override_anim_animstate = "fireball";
override_anim_timer = 0;
override_aggressive = false;
override_ignore = false;
resist_carrier_holp_dir = false;

fireball_timer_alfa = 0;
fireball_timer_bravo = 0;
fireball_timer_charlie = 0;

first_fireball_time = -100;
second_fireball_time = -100;
allow_fireballs_time = -100;
fireball_input_time = -100;

//P Meter variables
p_speed = 0;
p_flashing = false;
p_speed_sfx_instance = noone;
show_p_meter = false;
statue_was_hit = false;

//Carrying and HOLP functionality
carry_obj = noone; neoshield_obj = noone;
holp_relative_x = 0; holp_relative_y = 0;
holp_xscale = 1; holp_dir = 1; holp_depth = 0;
render_holp = false; holp_player = noone; holp_player_escapable = true;
carry_neo_animstate = "_idle";
carry_status = 0;

UNDEFINED_SPRITE = sprite_get("quarkjoyIsAGreatFriend"); //This is used to identify missing sprites

nspecial_leniency_timer = 0; //Decrements by 1 every frame that Mario should enter Nspecial

footstep_counter = 0; //Used to make footstep sounds alternate

damage_revert = false; //tells Mario when to take damage and revert
neo_armor = false; //tells Mario when to ignore the got_hit event and status checks
helpless_darken = false; //visual: makes Mario's sprite render darker to indicate helplessness (a la Rivals pratfall)
give_flicker_frames = 0; //gives Mario this many invincibility frames on the next non-hitpause frame
anim_is_flickering = 0; //used to ensure Mario becomes visible again after he stops flickering, even if his invincibility is forcefully removed
transition_to_frames = -2; //tells Mario for how long he will be in the power-changing animation
transition_to_power = POWER_OBJ.super_mushroom; //tells Mario what new form he's going to take
transition_to_statue = -2;
playtest_power_index = 1; //tells Mario which power-up to equip when he presses Reserve in playtest

//Movement time variables
jump_land_time = -100; //when did Mario last land from a jump?
doublejump_land_time = -100; //when did Mario last land from a double jump?
blj_land_time = -100; //when did Mario last land from a BLJ?
blj_land_hsp = 0; //what was Mario's hsp when he landed from his last BLJ?
last_twirl_time = -100; //when did Mario last twirl in midair?
pre_twirl_animstate = neo_animstate;
prev_prev_hsp = 0; prev_hsp = 0; firsties_hsp = 0; //how much speed Mario will conserve if he does a first-frame wall kick
wall_jump_y = room_height; wall_jump_polarity = 0; //limits Mario's ability to jump off the same wall twice in a row
roll_initial_speed = 4;

//SFX trackers
latest_voice_sfx_instance = noone; queue_voice = null; unpause_queue_voice = null;
jump_sfx_instance = noone;
pound_twirl_sfx_instance = noone;
coin_sfx_instance = noone;
thrown_sfx_instance = noone;
burning_sfx_instance = noone;

//Skid sound variables
skid_sfx_instances = [noone, noone, noone];
play_skid_sfx = "skid_wall"; play_skid_freq = 0;

//Ground particle variables
dust_status = "none";
puddle_colour = c_red;

//Rendering variables
animation_frozen = false;
neo_sprite = ""; neo_sprite_name = "idle"; mirror_spr_dir = 0;
neo_power_checked = neo_power;
neo_draw_x = 0; neo_draw_y = 0;

//Set up compatibility data
user_event(1);

neo_coins = 0; neo_points = 0; saved_neo_points = 0;
tallying_points = false; tallying_points_overflow = 0; tallying_per_frame = 100;
tally_score_sfx_instance = noone; display_points = 0;
points_reward = REWARDS_ARRAY[0];
score_old_render_images = array_create(7, -1);
score_bounce_values = array_create(7, 0);
queue_update_score = false;
score_flash_time = 0;

points_reward_preview = REWARDS_ARRAY[0];
points_reward_next = REWARDS_ARRAY[1];
prev_reward_value = 0;

// order_particles = [];
	// name
	// variant
	// sprite
	// image
	// xpos
	// ypos
	// alpha
	// hsp
	// vsp
	// life
	// size
// order_coins = [];
	//name
	//xpos
	//ypos
	//variant ("coin", "coin spawner", "coin free")
	//value (only relevant)
order_sfx  = {};
	//count
	//suffix
schedule_echo_sfx = [];
	//name
	//at_time
	//full_name
	//volume
echo_array = [];
	//array of instance IDs

//Compat
first_update = true; //Used for some compatibility stuff
init_time = get_gameplay_time(); //Used for character compat when reloading
boss_hud = false; //Rearranges the HUD if we're in a Boss Template stage
enemy_boss = false; stage_boss = false; //Represents whether the stage and/or enemy players are a boss battle
set_victory_theme(sound_get("victory_" + neo_char.prefix + "course")); //gets changed if we're in a boss battle
event4_phase = "init"; user_event(4);

//Intro stuff
if(get_gameplay_time() < 5) {
	var cover_instance = instance_create(0, 0, "obj_article1");
	cover_instance.variant = "Intro Cover"; cover_instance.life = 120;
	cover_instance.sprite_index = sprite_get("hud_cover"); cover_instance.depth = 10;
	cover_instance.image_xscale = room_width; cover_instance.image_yscale = room_height;
}

mario_number = 1; neo_mario_prime = id; false_mario_prime = true;
switch(player) {
	case 4:
		mario_number += (get_char_info(3, INFO_STR_NAME) == "Qua Mario");
	case 3:
		mario_number += (get_char_info(2, INFO_STR_NAME) == "Qua Mario");
	case 2:
		mario_number += (get_char_info(1, INFO_STR_NAME) == "Qua Mario");
	break;
	case 1:
		false_mario_prime = false;
	break;
};
intro_timing = 12 + (mario_number - 1) * 24;
last_freezeables_clean_time = get_gameplay_time() + 120;
last_carry_clean_time = get_gameplay_time() + 120;

//Rivals variable
small_sprites = true;

// STAT NAME		NEO VALUE   BASECAST RANGE      NOTES

// Physical size
char_height         = 52;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 0;		// 3    -  4.5
walk_accel          = 0;		// 0.2  -  0.5
walk_turn_time      = 0;	    // 6
initial_dash_time   = 0;		// 8    -  16
initial_dash_speed  = 0;		// 4    -  9
dash_speed          = 0;		// 5    -  9
dash_turn_time      = 0;		// 8    -  20
dash_turn_accel     = 0;		// 0.1  -  2
dash_stop_time      = 0;		// 4    -  6
dash_stop_percent   = 0;		// 0.25 -  0.5
ground_friction     = 0;		// 0.3  -  1
moonwalk_accel      = 0;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 0;		// 4    -  8
max_jump_hsp        = 0;		// 4    -  8
air_max_speed       = 0;  		// 3    -  7
jump_change         = 0;		// 3
air_accel           = 0;		// 0.2  -  0.4
prat_fall_accel     = 0;		// 0.25 -  1.5
air_friction        = 0;		// 0.02 -  0.07
max_fall            = 0;		// 6    -  11
fast_fall           = 0;		// 11   -  16
gravity_speed       = 0;		// 0.3  -  0.6
hitstun_grav        = move_air.fall_accel * 0.85;		// 0.45 -  0.53

// Jumps
jump_start_time     = 0;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 0;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 0;		// 4    -  7.4
djump_speed         = 0;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 0;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0;		// 0    -  0.15
roll_forward_max    = 0;        // 9    -  11
roll_backward_max   = 0;        // 9    -  11       always the same as forward
wave_land_time      = 0;		// 6    -  12
wave_land_adj       = 0;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 0;      // 7.5  -  8
techroll_speed      = 0;       // 8    -  11

// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_example = sound_get("example"); // sounds/example.ogg

// VFX
vfx_example = hit_fx_create(spr_example, 54);

// Variables
rainbow_color = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 4;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 8;
crouch_recovery_frames  = 2;

/*

Muno's Words of Wisdom: Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation. Dan Moment

*/



// Hurtbox sprites
hurtbox_spr         = sprite_get("init_hurtbox");
crouchbox_spr       = sprite_get("init_hurtbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_bg_" + string(random_func_2(current_second % 77, 4, true) + 1)));

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_ran"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 0;

// Muno preparation
muno_event_type = 0; user_event(14); //MunoPhone Touch init!

HG_FQF_HITBOX_IDENTITY = HG_MUNO_OBJECT_LAUNCH_ANGLE + 1;
HG_FQF_STEVE_DEATH_MESSAGE = HG_MUNO_OBJECT_LAUNCH_ANGLE + 2;
HG_AM_LIGHTING = HG_MUNO_OBJECT_LAUNCH_ANGLE + 3;

//render_sprite = sprite_get("light"); render_index = 0;

training_town_crouch = false;
if(use_custom_offscreen) {
	array_push(phone_offscreen, self);
	phone_offscr_sprite = sprite_get("_pho_offscreen_example"); // icon to display
	phone_offscr_index = 0; // image_index of the icon
	phone_offscr_x_offset = 0; // x offset to draw the arrow at; uses spr_dir
	phone_offscr_y_offset = -21; // y offset to draw the arrow at
	phone_offscr_leeway = 16; // approximate width/height of obj
}