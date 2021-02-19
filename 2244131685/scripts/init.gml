hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

// 2B Variables

uair_grav = 0.30; // Attack_update; the gravity when holding attack during UAIR
attacking = false; // Multiple places; whether or not 2B is attacking
fair_win = 0; // Attack_update/update; the window FAIR is at before landing
fair_win_timer = 0; // Attack_update and update; the window timer FAIR is at before landing
uspec_up_speed = -80; // Attack_update; the upwards speed of USPECIAL
uspec_hover_speed = -4; // Attack_update; the hovering speed of USPECIAL
uspec_down_speed = 28; // Attack_update; the downwards speed of USPECIAL
uspec_horizontal = false; // Attack_update; whether or not USPECIAL is horizontal
dair_speed = 16; // Hitbox_update; the speed the dair throw goes
sword_speed = 16; // Hitbox_update; the speed the jab/fair throw goes
sword_pos = [0, 0]; // Hitbox_update; the current position of the jab/fair sword
sword_hbox_offset = [50, 20]; // Hitbox_update; how offset the sword's hitbox positions are
sword_hitpause = [0, 0, 0, 0, 0]; // Hitbox_update/has_hit/set_attack; whether or not the sword is currently in hitpause
sword_hbox_created = [false, false, false, false]; // Hitbox_update/has_hit/set_attack; whether or not the sword hbox has been created
sword_timer = 0; // Hitbox_update; the current hitbox timer of the sword
sword_created = false; // Attack_update/set_attack; whether or not the fair/jab sword has been created yet
trail_1 = false; // Whether or not the first trail is currently active
trail_2 = false; // Whether or not the second trail is currently active
trail_1_draw = false; // Whether or not trail 1 should draw
trail_2_draw = false; // Whether or not trail 2 should draw
trail_1_pos = [[noone, noone], [noone, noone], [noone, noone], [noone, noone]]; // The position of the first trail (last 2 frames)
trail_2_pos = [[noone, noone], [noone, noone], [noone, noone], [noone, noone], [noone, noone], [noone, noone], [noone, noone], [noone, noone]]; // The position of the second trail (last 4 frames)
var empty = asset_get("empty_sprite");
trail_1_index = [[empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0]]; // The sprite and image index (+ spr_dir) of trail 1 (last 2 frames)
trail_2_index = [[empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0]]; // The sprite and image index (+ spr_dir) of trail 2 (last 4 frames)empty_trail_2_index = []; // What trail 2 looks like when it's empty
trail_1_gone = 0; // How many frames trail 1 has been disappearing for
trail_2_gone = 0; // How many frames trail 2 has been disappearing for
repeat_times = 0; // Set_attack/Attack_update; how many times a move has repeated
free_time = 0; // Multiple places; how long 2B has been free
not_free_time = 0; // Multiple places; how long 2B hasn't been free
moved_up = false; // Attack_update/set_attack; whether or not 2B has moved up ledge with FSPECIAL
rocket_speed_init = 1; // Attack_update; how fast the rocket initially moves
rocket_speed = 14; // Attack_update; how fast the rocket moves
rocket_land_sfx_played = false; // Attack_update/set_attack; whether or not the rocket sound has been played
fspecial_land_sfx_played = false; // Attack_update/set_attack; whether or not the land sound has been played
fspecial_launch_dust_played = false; // Update/set_attack; whether the FSPECIAL launch dust has appeared yet
uspecial_looping = false; // Animation/set_attack/attack_update; for determining the animation for the USPECIAL loop
uspecial_cancelled = false; // Attack_update/update; for determining whether USPECIAL has hit a player to cancel pratglide or not yet
rocket_fx = hit_fx_create(sprite_get("fspecialparticle"), 50);
rocket_started = false; // Whether or not the rocket is ready
rocket_particles = 0; // The rocket particles hit fx
prev_attack = 0; // The previous attack the user had
cur_attack = 0; // A second indicator for the current attack
pre_paused = false; // Whether the game is paused for the pre_draw script
post_paused = false; // Whether the game is paused for the post_draw script
spears = [noone, noone, noone, noone]; // The ID of the spear hit FX
spears_hit = [[0, noone, noone, 0], [0, noone, noone, 0], [0, noone, noone, 0], [0, noone, noone, 0]]; // Whether or not the spears have landed a hit, and where
spears_destroyed = [[noone, noone, 0, 0], [noone, noone, 0, 0], [noone, noone, 0, 0], [noone, noone, 0, 0]]; // The info given when a spear is destroyed
spear_fade = 5; // How long the spear fade animation lasts
spear_grabbed = ds_list_create(); // List of people who are grabbed by spears
spear_ids = ds_list_create(); // List of player ids that are currently grabbed
created_spear_article = false; // Whether the spear draw article has been created
grab_time = 50; // How long a grab lasts
cur_image = 0; // Image index for taunt
starting_grab_time = grab_time; // The default grab time
dspecial_stalled = false; // Whether or not DSPECIAL has stalled yet
big_hit_fx = hit_fx_create(sprite_get("hit_fx"), 32); // The hit FX for the big hits
sd_text_image_index = 0; // post_draw; the image index for the self destruct text
sd_text_anim_speed = 0.15; // post_draw; the animation speed of the self destruct text
sd_boom_image_index = 0; // post_draw; the image_index of the explosion
sd_boom_anim_speed = 0.24; // post_draw; the animation speed of the explosion
window_length = 0; // How long the current attack window is
suicide_hit_fx = hit_fx_create(sprite_get("suicide_boom"), 24); // The hit FX for the suicide explosion
suicide_later_hit_fx = hit_fx_create(sprite_get("suicide_boom_latter_half"), 15); // The hit FX for the suicide explosion
current_suicide_sound = 0; // The sound playing for suicide
suicide_loops = 0; // How many times the suicide hold window has looped
suicide_max_loops = 5; // How many times the suicide hold window should loop
suicide_timer = 120; // The max timer for suicide timer
ground_particle = hit_fx_create(sprite_get("groundparticle"), 48); // Particle for grounded specials
// SWORD FADE
fade_fx = 0; // The FX for the fade
fade_created = false; // Whether the sword fade has been created yet
fade_anim_speed = 0.2; // How fast the sword fades
fade_anim_frames = 6; // How many frames of animation for the sword fade
// Sword fades
dattack_fade = hit_fx_create(sprite_get("dattackfade"), fade_anim_frames/fade_anim_speed);
dstrong_fade = hit_fx_create(sprite_get("dstrongfade"), fade_anim_frames/fade_anim_speed);
fstrong_fade = hit_fx_create(sprite_get("fstrongfade"), fade_anim_frames/fade_anim_speed);
uair_fade = hit_fx_create(sprite_get("uairfade"), fade_anim_frames/fade_anim_speed);
uspecial_fade = hit_fx_create(sprite_get("uspecialfade"), fade_anim_frames/fade_anim_speed);

// Update/pre_draw; Animation variables for swords (x, y)

swords_animating = true; // Whether or not the swords are calculating animation

real_djumps = 0; //Manages double jumps.

katana = {
    // Shortsword
    time: [0, 0], // The animation timer
    duration: [68, 60],  // The duration
    calc_pos: [0, 0], // The calculated position in the animation
    pos: [0, 0], // The actual sword position
    start: [-13, -13],  // The starting position
    dest: [-11, -8],  // The destination position
    vis: 1,  // Also in attack_update/set_attack; whether or not the sword is visible
    sprite: sprite_get("shortsword"), // The sprite of the sword
    image: 0, // The image index of the sword
    fr: 0, // The framerate of the animation
    anim: 1  // Many places; whether or not the sword is currently animated
}

greatsword = {
    // Longsword
    time: [0, 0], // The animation timer
    duration: [68, 60], // The duration
    calc_pos: [0, 0], // The calculated position in the animation
    pos: [0, 0], // The actual sword position
    start: [-11, -11], // The starting position
    dest: [-9, -5], // The destination position
    vis: 1, // Also in attack_update/set_attack; whether or not the sword is visible
    sprite: sprite_get("greatsword"), // The sprite of the sword
    image: 0, // The image index of the sword
    fr: 0, // The framerate of the animation
    anim: 1 // Many places; whether or not the sword is currently animated
}

// Pod variables
pod = instance_create(x, y, "obj_article1");
//pod = noone;
//define pod state and attack names (user_event0.gml)
user_event(0);

touching_deployed_pod = false;

pod_fspec_dir = 0;

pod_glide_maxfall = 3;
pod_glide_leniency = 3; //leniency frame time. if the glide is deactivated within this amount of frames, it is given back.
pod_glide_lprot = false; //if the protection has activated. if this is true you can't activate it again.
pod_glide_time = 0; //amount of time gliding
pod_glided_from_pratfall = false;
pod_glided = false;

hitbox_display = false;

// COMPATIBILITIES

// Kirby
kirbyability = 16;
swallowed = noone;
enemykirby = noone;
kirby_window = 0;
kirby_window_timer = 0;
kirby_hitpause = 0;
kirby_attacking = false;
kirby_volt_timer = 0;
kirby_pos = [0, 0];

// Otto
otto_bobblehead_sprite = sprite_get("bobblehead");

// Pokemon Stadium
pkmn_stadium_front_img = sprite_get("pokemon_front");
pkmn_stadium_back_img = sprite_get("pokemon_back");

// Character stats
char_height = 52;
default_char_height = char_height; // The char_height to return to when changed
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = 0.25;

walk_speed = 3.25;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 16;
initial_dash_speed = 7.50;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1;
dash_stop_time = 6;
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstopb
ground_friction = 0.70;
moonwalk_accel = 1.2;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
orig_max_jump_hsp = max_jump_hsp;
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.30;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 1;
double_jump_time = 42; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 8;
walljump_time = 32;
wall_frames = 2;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = 0.50;
hitstun_grav = 0.45;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 9;
wave_land_time = 8;
wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.08; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 8;
crouch_recovery_frames = 4;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 4;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 3;
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

//i couldnt stop myself lol
//Rune Support
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = false;
ab_hud_x = 0;
ab_hud_y = 0;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Not Implemented."]);

//t1
abyssMods[runes.A] = [3, "FAIR can be.. tilt cancelled???"];
abyssMods[runes.B] = [3, "Don't commit to volt."];
abyssMods[runes.C] = [3, "Hold attack to helicopter during UAIR."];
abyssMods[runes.D] = [-1, "2B Implemented ;)"];
abyssMods[runes.E] = [-1, "2B Implemented ;)"];
abyssMods[runes.F] = [-1, "2B Implemented ;)"];
//t2
abyssMods[runes.G] = [-1, "2B Implemented ;)"];
abyssMods[runes.H] = [-1, "2B Implemented ;)"];
abyssMods[runes.I] = [-1, "2B Implemented ;)"];
abyssMods[runes.J] = [-1, "2B Implemented ;)"];
abyssMods[runes.K] = [-1, "2B Implemented ;)"];
//t3
abyssMods[runes.L] = [-1, "2B Implemented ;)"];
abyssMods[runes.M] = [-1, "2B Implemented ;)"];
abyssMods[runes.N] = [-1, "2B Implemented ;)"];
abyssMods[runes.O] = [-1, "2B Implemented ;)"];
