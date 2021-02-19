// Larger hurtbox sprites for hodan
hurtbox_spr = sprite_get("hodan_hurt_box");
crouchbox_spr = sprite_get("hodan_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

// Personal variables for Hodan
is_stinky_monke = true; // Update; lets things that are reading this know that Hodan is, in fact, a stinky monke.
attacking = false; // Multiple places; defined in update, tells whether you're attacking or not
attack_has_b_reversed = false; // Attack_update; whether an attack has been b_reversed yet
jab_loop = false; // Attack_update; for looping the jab on attack press
jab_sound_ongoing = false; // Update; for stopping the jab sound properly
free_time = 0; // Update; time in the air
not_free_time = 0; // Update; time on the ground
parry_is_dstrong = false; // Update; whether or not a parry is DSTRONG
uspecial_landing_lag = 17; // Update; how much landing lag is on USPECIAL
dspecial_landing_lag = 10; // Update; how much landing lag is on DSPECIAL
somersault_charged = false; // Multiple places; whether or not USPECIAL is charged
somersault_easing = 1; // Update; the amount you ease the charged somersault at the end
sweatwhirl_exists = false; // Multiple places; whether the sweatwhirl projectile exists
sweatwhirl_starting_dir = 0; // Attack_update; for making b-reverse cancel sweatwhirl charge
sweatwhirl_startup_frames = 10; // Hitbux_update; how many frames of startup sweatwhirl has
sweatwhirl_startup_anim_frames = 3; // Hitbux_update; how many animation frames of startup sweatwhirl's anim has
sweatwhirl_max_frames = 6; // Hitbox_update; the last frame before sweatwhirl loops again (from 0)
sweatwhirl_noncharged_speed = 6; // Update; the animation speed of a non-charged sweatwhirl
sweatwhirl_charged_speed = 4; // Update; the animation speed of a charged sweatwhirl
sweatwhirl_anim_speed = 6; // Hitbox_update; how fast the sweatwhirl animates
sweatwhirl_float_speed = -3; // Attack_update; determines how high the FSPECIAL and NSPECIAL hop
sweatwhirl_gravity = 0.4; // Attack_update; determines the gravity of FSPECIAL and NSPECIAL
sweatwhirl_cooldown_time = 0; // Multiple places; defined in hitbox_update, gives the gameplay time, if it stops updating, the projectile no longer exists
sweatwhirl_charged = false; // Multiple places; determines if the FSPECIAL is charged or not
sweatwhirl_charged_hit = false; // Multiple places; whether the charged FSPECIAL just hit
sweatwhirl_hit_pos = []; // Multiple places; the position the charged FSPECIAL hit
sweatwhirl_hitpause = false; // Update; if the opponent is currently in hitpause from charged FSPECIAL
sweatwhirl_level = 1; // Multiple places; determines the level of the currently active sweatwhirl
sweatwhirl_level_3_timing = 10; // Hitbox_update; determines how fast the levelled up sweatwhirls hit
sweatwhirl_level_2_width = 80; // Hitbox_update; how wide the sweatwhirl multihit hits are
sweatwhirl_level_3_width = 120; // Hitbox_update; how wide the sweatwhirl multihit hits are
sweatwhirl_leveled_hit = false; // Multiple places; whether or not you've hit the leveled hit yet
sweatwhirl_hitpause_frames = -1; // Multiple places; whether or not sweatwhirl is frozen
sweatwhirl_level_3_timer = -1; // Multiple places; the timer for the level 3 sweatwhirl
sweatwhirl_max_hitpause = 10; // Multiple places; how much hitpause sweatwhirl has
sweatwhirl_old_hsp = 0; // Multiple places; the speed before hitpause
sweatwhirl_old_vsp = 0; // Multiple places; the speed before hitpause
sweatwhirl_charged_hspeed = 11; // Multiple places; the hspeed of a charged sweatwhirl
sweatwhirl_charged_vspeed = 0; // Multiple places; the vspeed of a charged sweatwhirl
sweatwhirl_looped = false; // Set_attack, attack_update, and update; This is for land-cancelling the dspecial, due to windows being strange
fspecial_hspeed = 7; // Hitbox_update; determines the horizontal speed of fspecial
fspecial_vspeed = -5; // Hitbox_update; determines the vertical speed of fspecial
fspecial_time = 30; // Hitbox_update; determines the time of fspecial's falling
nspecial_hspeed = 3; // Hitbox_update; determines the horizontal speed of nspecial
nspecial_vspeed = 30; // Hitbox_update; determines the vertical speed of nspecial
nspecial_time = 40; // Hitbox_update; determines the time for nspecial to start falling
nspecial_hold_time = 30; // Hitbox_update; determines how long nspecial should hold in the air for
nspecial_full_time = 100; // Hitbox_update; determines the time for nspecial to be full speed
parried_sweatwhirl_hitpause = false; // Multiple places; whether or not the parried sweatwhirl is in hitpause
parry_sweatwhirl_hit = false; // Multiple places; whether or not the parried charged sweatwhirl has been hit yet
sweatwhirl_parry_player = 0; // Multiple places; defines the player that parried the sweatwhirl
uair_grav = gravity_speed * 0.5; // Attack_update; the gravity upair sets you to if you hold attack
utilt_height = 74; // Attack_update; the height the character gets if he up tilts
default_height = 52; // Attack_update; the height to reset the character to if not up tilting
dstrong_parry = false; // Multiple places; whether the current parry is DSTRONG or not
dstrong_parry_frame = 12; // Attack_update; what frame the DSTRONG transitions into parry
dstrong_charged = false; // Multiple places; whether or not the DSTRONG is currently charged
splash_created = false; // Attack_update; whether or not a splash has been created
fair_strong = false; // Multiple places; defined in set_attack, whether the fair is strong or not
grabbed = -1; // Multiple places; The player ID of the currently grabbed character (-1 if nobody is grabbed)
flash_timing = 4; // Update; how frequently the flashes flicker
flash_visible = 0; // Multiple places; used in post_draw to determine whether the flash should be visible or not
flash_on = false; // Update; does the actual determining for whether it should be flashing, used to make it flicker off for longer than it flickers on
sweatwhirl_length = 19; // Here; length of sweatwhirl animation
sweatwhirl_fx = hit_fx_create(sprite_get("sweatwhirlhit"), sweatwhirl_length); // Multiple places; the destroy fx for sweatwhirl
sweatwhirl_bashed = false; // Multiple palces; checks if sweatwhirl was bashed
splash_length = 12; // Here; length of splash animation
splash_fx = hit_fx_create(sprite_get("splash"), splash_length); // Multiple places; landing splash fx
giga_splash_length = 32; // Here; length of giga splash animation
giga_splash_fx = hit_fx_create(sprite_get("gigasplash"), giga_splash_length); // Multiple places; landing splash fx
special_splash_length = 20; // Here; length of the special splash animation
special_splash_fx = hit_fx_create(sprite_get("special_splash"), special_splash_length) // Multiple places; grounded special splash fx
vapour_fx_xy = []; // Multiple places; is defined in hitbox_update and tells update where to create the vapour
create_vapour = false; // Multiple places; is defined in hitbox_update and tells update when to create the vapour
vapour_length = 10000; // Multiple places; used for how long the vapour cloud lasts
vapour_sprite = sprite_get("vapour"); // Multiple places; determines which vapour sprite to use
max_vapours = 3; // Article1_update; sets how many vapours there can be at once 
current_vapours = 0; // Multiple places; defined in article1_init for how many vapours currently exist, used in article1_update
vapour4_count = 0; // Article1; how many vapour 4's exist
longest_vapour4_lifetime = 0; // Article1; updated for the longest vapour4
longest_vapour_lifetime = 0; // Article1_update; updated for the longest possible lifetime every time a vapour is destroyed
vapour4_time = false; // Animation/article1_init; whether the vapour about to be made is vapour4
oldest_sprite_index = 0; // Article1; gives the oldest sprite index for replacing
big_hit_length = 40; // Here; how long this hit fx lasts for
big_hit_fx = hit_fx_create( sprite_get( "hit_particle2" ), big_hit_length); // Hit_player; the hit fx for charged USPECIAL
slam_hit = false; // Multiple places; whether or not the USTRONG slam hitbox has been spawned
// Variables to check if any of the 3 vapours already exist, visually
vapour1_exists = false;
vapour2_exists = false;
vapour3_exists = false;
vapour4_exists = false; // DSTRONG parry vapour
inf_steam = false; // Multiple places; whether steam is infinite or not, for use in training and vapour
inf_steam_checker = 0; // Multiple places; this is the timer to check if vapour is actively giving inf_steam, see explanation in article1_update
// These four are for the range that vapour affects you, all in update.gml
vapour_left = -66;
vapour_right = 78;
vapour_up = -64;
vapour_down = 90;
trail_frames = 6; // Pre_draw; how many frames until the trail starts
for (i = 0; i <= trail_frames; i++){ // Pre_draw; set up arrays for previous positions, index, and time
    prev_x[i] = 0;
    prev_y[i] = 0;
    prev_index[i] = 0;
    prev_time[i] = 0;
}
flash_sprite = 0; // Multiple places; defines which sprite is used for the next flash
nair_parry = false; // Multiple places; whether or not your nair was parried
dspecial_land = 0; // Multiple places; a timer that sees how many frames you've been landing for
nspecial_thrown = false; // Multiple places; whether or not nspecial has been thrown yet
throw_frame = 12; // Multiple places; the frame NSPECIAL is thrown in DSPECIAL
dspecial_throw_speed = 10; // Hitbox_update; the speed NSPECIAL is thrown during DSPECIAL
sweatwhirl_grabbed = false; // Multiple places; whether or not the sweatwhirl has been grabbed
sweatwhirl_held_frame = 0; // Multiple places; the anim frame of the held sweatwhirl
sweatwhirl_held = ""; // Mutiple places; defines the string to add if sweatwhirls are held
sweatwhirl_held_draw = ""; // Multiple places; defines the string to add if steamwhirls are held in the draw script
paused = false; // A timer to check if things are paused
dspecial_level_2_hit = false; // Multiple places; whether or not downspecial has hit while holding a level 2 charged sweatwhirl
sweatwhirl_leveled_hit_time = 0; // Multiple places; the time the level 2 sweatwhirl hit, to make it so it will connect better if it needs to
sweatwhirl_leveled_hit_reset = 20; // Hitbox_update; how long it takes to reset the hitbox
dspecial_level_3_time = 2; // Hitbox_update; how many frames until the level 3 dspecial could hit
dspecial_level_3_hit = false; // Multiple places; whether or not dspecial level 3 has hit
// The width and height of level 2 and three nspecials pull hitboxes when thrown
nspecial_thrown_level_2_width = 90;
nspecial_thrown_level_2_height = 90;
nspecial_thrown_level_3_width = 130;
nspecial_thrown_level_3_height = 130;
dspecial_handspring = false; // Multiple places; whether or not DSPECIAL was done grounded or aerially
last_nspecial_id = 0; // Multiple places; updated in hitbox_update and used in article1 to see what the last nspecial ID was
nspecial_recorded = false; // Whether or not the NSPECIAL ID has been seen yet
dspecial_jc = false; // Multiple places; Whether or not DSPECIAL has been jump cancelled yet
dattack_strong = false; // Set_attack and animation; whether or not DATTACK is the charged variant
inf_steam_source = 0; // Multiple places; where the infinite steam is coming from
dspecial_jumped = -1; // Multiple places; a specific variable that sets true when the DSPECIAL JC happens
dspecial_jump_steam = 0; // Multiple places; which sweatspirit was just jumped off of
dspecial_jump_index = 0; // Pre_draw; the sprite index of the dspecial jump
dspecial_jump_anim_speed = 0.25; // Pre_draw; how fast the jump splash animates
dspecial_jump_frames = 6; // Pre_draw; how many frames the dspecial jump anim has

// Steam variables
steam = 0; // Multiple places; how charged your steam is
steam_lines = ds_list_create(); // Multiple places; initializes the master list of steam particles
steam_line_lifetime = 25; // Pre_draw; how long a steam particle lasts
steam_line_max_frames = 25; // Pre_draw; the max frames
steam_sprites = 4; // Pre_draw; how many sprites there are for steam
steam_sfx_played = 0; // Update; makes it so steam sfx don't loop
v_steam = 0; // Multiple places; your vertical steam charge
steam_charge = 0.04; // Update; steam charge rate
steam_buffer = 0; // Update; for determining current buffer length
v_steam_buffer = 0; // Update; for determining current vertical buffer length
steam_buffer_max = 10; // Update; max buffer length
steam_decay = 0.08; // Update; steam decay rate
steam_dir = 0; // Update; defined in update, gives steam direction
v_steam_dir = 0; // Update; defined in update, gives vertical steam direction
steam_vis_per = 0.7; // Update; percent of steam to start visualizing
steam_red_colour = 70; // Update; shade of red for steam to be
steam_appearance_odds = 7; // Update; chance for steam to appear
moonwalking = false; // Update; whether you are moonwalking or not
moonwalking_buffer = 0; // Update; buffer to make moonwalk detection slightly more lenient
inf_steam_override = false; // Update; ovverides teh infinite steam so it can't go away
old_steam_dir = 0; // Update; makes the steam_dir only change if it's properly 1 or -1
kill_steam = false; // Update; whether or not to kill the steam after the dash turn is over

// Training variables
practice_mode = false; // Multiple places; primarily atricle_update3.gml where it decides whether you're in practice mode or not
god_mode = false; // Multiple places; whether or not Hodan is in god mode, done in animation.gml by removing his hurtbox
taunt_buffered = false; // Update; whether or not the taunt is buffered
taunt_menu = false; // Multiple places; whether the taunt menu is up
taunt_switched = false; // Update; whether the taunt menu has been switched
player_info = false; // Multiple places; where the steam indicator shows up
info_switched = false; // Update; what handles the info switching not infinitely
instance_create(room_width/2, -500, "obj_article3"); // Load all the preload stuff
bighud_frame = 0; // Draw_hud; for determining the frame of the hud
invis_hud = false; // Multiple places; for determining whether the hud should fade or not
invis_hud_me = false; // Upddate; for checking if Hodan is in the way of the hud
invis_hud_other = false; // Update; for checking if other players are in the way of the hud
hud_x = 0; // Multiple places; defined in draw_hud.gml
hud_y = 0; // Multiple places; defined in draw_hud.gml
hud_w = 224; // Update; the width of the hud
hud_h = 236; // Update; the height of the hud
hud_buffer = 20; // Update; the buffer zone where the hud starts going invisible early
taunt_angle = 0; // Draw_hud; for determining the angle of the taunt text
taunt_direction = -1; // Draw_hud; determining the direction of the taunt swing
taunt_speed = 0.1; // Draw_hud; determing the swing speed of the taunt
taunt_max = 4; // Draw_hud; determining the max angle for the taunt
taunt_open_text = "Taunt: Menu" // Draw_hud; the text for the taunt menu
taunt_close_text = "Taunt: Close" // Draw_hud; the text for the taunt menu closing
taunt_frozen = true; // Update; whether or not you can move while in the taunt menu
freeze_switched = false; // Update; resets when the taunt buffer is up
taunt_mfx_open = sound_get("mfx_open"); // Update; mfx for opening the menu
taunt_mfx_close = sound_get("mfx_close"); // Update; mfx for closing the menu
line_y = []; // Draw_hud; defined in draw_hud.gml, a line that gives the proper y-position for every line.
line_height = 16; // Draw_hud; the height of lines drawn in the practice menu
inf_steam_text = "No"; // Draw_hud; the text to display on the infinite steam text
steam_player_text = "No"; // Draw_hud; the text to display on the steam player display text
god_mode_text = "No"; // Draw_hud; the text to display on the godmode text
cursor_frame = 0; // Multiple places; alternates the frame for the cursor every cursor_anim_speed frames
cursor_anim_speed = 20; // Update; how many frames does it take for cursor to frame advance
cursor_line = 0; // Multiple places; calculated in update, used in draw_hud, determines which line is selected
cursor_lines = [1, 4, 7, 10]; // Multiple places; which lines are currently active
menu_options = ["player_info", "inf_steam", "god_mode", "frame_data"]; // Multiple places; what the menu lines actually translate to
menu_buffered = false; // Update; makes it so the menu press only happens once per button press
frame_data = false; // Multiple places; whether or not the training menu is showing frame data or not
steam_text = []; // Multiple places; defined in article3_update, used in draw_hud
displayed_steam_text = 0; // Draw_hud; whether or not the steam text has been displayed yet
nair_anim_frame = 0; // Animation; determines the animation frame of nair
parry_radius = 40; // Animation/post_draw; the radius of the parry projectile eating field
parry_debug_view = false; // Post_draw; whether to visualize the parry projectile eating field or not
parry_x_offset = 0; // Animation/post_draw; the x offset of the parry projectile eating field
parry_y_offset = 60; // Animation/post_draw; the y offset of the parry projectile eating field
proj_eat = noone; // Animation/update; the value of the projectile Hodan should be eating
proj_eat_timer = 0; // Animation; the timer for when you can eat another projectile
proj_eat_timer_max = 8; // Animation; the max timer for projectile eat cooldown
parry_window_timer = 0; // Animation/update; to set the parry back properly on certain occasions with DSTRONG

// Misc
gb_alt = get_player_color(player) == 7; // Multiple places; check if using gameboy skin
primary_gb_colour = [ 83, 122, 62 ]; // Update; for the first steam gameboy colour
secondary_gb_colour = [ 211, 226, 154 ]; // Update; for the second steam gameboy colour
abyss_alt = get_player_color(player) == 6; // Multiple Places; checks if Hodan is abyss-coloured
champ_alt = get_player_color(player) == 13; // Multiple places; checks if Hodan is a champion
gold_alt = get_player_color(player) == 14; // Multiple places; checks if Hodan is golden
ambi_alt = get_player_color(player) == 15; // Multiple places; checks if Hodan is Ambi
if (gold_alt) {
    gold_shines = ds_list_create();
    gold_rng = 40;
    gold_shine_duration = 12;
}
if (gb_alt) { // Multiple places; determines the type between gameboy, abyss, and normal
    type = "gb_";
} else if (abyss_alt) {
    type = "abyss_";
} else {
    type = "";
}
rainbow = false; // Update; whether or not rainbow steam is activated
rainbow_window = 60; // Update; the timer for the rainbow_window
// These 4 are in update and init_shader and calculate the rainbow colour
hue = 0;
hue2 = 0;
colour_rgb = 0;
colour_hsv = 0;
hitbox_view = false; // Multiple places; whether or not hitbox view is on
burning_bros_init = false;
burning_bros = false;

// Compatibilities

// Rune Variables
uair_count = 0; // Multiple places; used in attack_update to determine the amount of UAIR spins
uair_speed = -3; // Attack_update; the vertical speed of upair
orig_vapour_length = vapour_length; // Update; sets the reset vapour length value to be the original length defined in init
orig_steam_charge = steam_charge; // Update; sets the reset steam charge speed value to be the original speed defined in init
x_inc = 50; // Attack_update; how much to increment x by
starting_grapple_x = -10; // Attack_update; the X value to start checking
grapple_x = starting_grapple_x + 3 * x_inc; // Attack_update; the X value to check for grapples
y_inc = 50; // Attack_update; how much to increment y by
starting_grapple_y = 136; // Attack_update; the Y value to start checking
starting_grapple_y_2 = 236; // Attack_update; the higher starting grapple
grapple_y = starting_grapple_y - 2 * y_inc; // Attack_update; the Y value to check for grapples
grapple_y_2 = starting_grapple_y_2 - 2 * y_inc; // Attack_update; the Y value to check for grapples
grappled_block = false; // Attack_update; whether or not a block has been grappled yet
grappled_platform = false; // Attack_update; whether or not a platform has beem=n grappled yet
grappled_pos = [0, 0]; // Attack_update; the position to eventually spawn the FX that shows a grapple
grappled = 0; // Attack_update; whether the grapple was done in the top or bottom half
ustrong_parry = false; // Multiple places; whether the current parry is USTRONG or not
fstrong_parry = false; // Multiple places; whether the current parry is FSTRONG or not
ustrong_parry_frame = 10; // Attack_update; what frame the USTRONG transitions into parry
fstrong_parry_frame = 0; // Attack_update; what frame the FSTRONG transitions into parry
fake_dstrong_charge = false; // Set_attack/animation; detects whether its a rune dstrong parry or a properly charged one
orig_dstrong_parry_frame = dstrong_parry_frame; // Update; the original dstrong parry frame

// TCO Art
tcoart = sprite_get("hodantcoart");

// Kirby
kirbyability = 16;
swallowed = -1;
enemykirby = -1;
kirby_sweatwhirl_anim_speed = sweatwhirl_anim_speed; // Update; uses only the initial sweatwhirl speed for kirbym so hodan's and kirby's don't sync.

// Trummel & Alto
trummelcodecneeded = false;
trummelcodec_id = noone;

// Otto
otto_bobblehead_sprite = sprite_get("bobblehead");

// Basic character information
char_height = 52;
idle_anim_speed = 0.16;
crouch_anim_speed = 0.16;
walk_anim_speed = 0.125;
dash_anim_speed = 0.20;
pratfall_anim_speed = .25;

// Grounded movement information
walk_speed = 3.00;
walk_accel = 0.20;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6.00;
dash_speed = 5.75;
dash_turn_time = 16;
dash_turn_accel = 0.65;
dash_stop_time = 6;
dash_stop_percent = 0.35; // The value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.60;
moonwalk_accel = 1.4;

// Aerial information
jump_start_time = 5;
jump_speed = 11.50;
short_hop_speed = 7.40;
djump_speed = 11.75;
leave_ground_max = 6; // The maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; // The maximum hsp you can have when jumping from the ground
air_max_speed = 4; // The maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; // Maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.30;
prat_fall_accel = 0.70; // Multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 1;
double_jump_time = 32; // The number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
wall_frames = 2;
max_fall = 11; // Maximum fall speed without fastfalling
fast_fall = 16; // Fast fall speed
gravity_speed = 0.60;
hitstun_grav = 0.52;
knockback_adj = 0.90; // The multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

// Landing information
land_time = 6; // Chunky landing frames
prat_land_time = 26;
wave_land_time = 8;
wave_land_adj = 1.35; // The multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.12; // Grounded deceleration when wavelanding

// Crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 8;
crouch_recovery_frames = 3;

// Parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

// Tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

// Tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

// Airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

// Roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

// Sound effect information
land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("sfx_waveland_hod");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Original values for things changed in runes
orig_walk_speed = walk_speed;
orig_walk_accel = walk_accel;
orig_initial_dash_time = initial_dash_time;
orig_initial_dash_speed = initial_dash_speed;
orig_dash_speed = dash_speed;
orig_moonwalk_accel = moonwalk_accel;
orig_jump_start_time = jump_start_time;
orig_jump_speed = jump_speed;
orig_short_hop_speed = short_hop_speed;
orig_djump_speed = djump_speed;
orig_leave_ground_max = leave_ground_max;
orig_max_jump_hsp = max_jump_hsp;
orig_air_max_speed = air_max_speed;
orig_jump_change = jump_change;

//Rune Support

// Rune Buddy

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

// Level 1
abyssMods[@ runes.A] = [3, "DATTACK can be jumped out of."];
abyssMods[@ runes.B] = [3, "DSPECIAL can be hitfalled at any point."];
abyssMods[@ runes.C] = [3, "USPECIAL does not send into pratfall, and can be followed by DSPECIAL."];
abyssMods[@ runes.D] = [3, "USPECIAL has significantly less endlag."];
abyssMods[@ runes.E] = [0, "Vapour clouds last much longer."];
abyssMods[@ runes.F] = [2, "DAIR gives a slight vertical boost, and has a bigger sweetspot."];

// Level 2
abyssMods[@ runes.G] = [3, "Steam does not decay. [+ H: Infinite Steam]"];
abyssMods[@ runes.H] = [3, "Steam charges faster. [+ G: Infinite Steam]"];
abyssMods[@ runes.I] = [3, "UAIR lasts longer and goes higher."];
abyssMods[@ runes.J] = [3, "Charging steam increases movement ability."];
abyssMods[@ runes.K] = [2, "Sweat hits do Clairen stun."];

// Level 3
abyssMods[@ runes.L] = [3, "USTRONG can be used aerially, grapples walls, and has faster startup."];
abyssMods[@ runes.M] = [3, "All strongs have parry startups."];
abyssMods[@ runes.N] = [2, "Vapour gets a continuous hitbox."];
abyssMods[@ runes.O] = [1, "Sweatwhirl has no cooldown and is land-cancellable."];

// Official Runes
runesUpdated = get_match_setting(SET_RUNES);

var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}