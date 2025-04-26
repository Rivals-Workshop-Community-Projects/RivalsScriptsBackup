//La Reina init.gml

spawnChair = false;
set_victory_bg( sprite_get( "victory_bg" ) );
set_victory_portrait( sprite_get( "portrait_actual" ));

total_player_count = 1;

hurtbox_spr = asset_get("bug_hurtbox");
crouchbox_spr = asset_get("bug_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .175;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 2.75;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12; //originally 12
initial_dash_speed = 6.25;  //originally 7. 6.25 is Kragg speed.
dash_speed = 5.75;  //originally 6.5. 5.75 is Kragg speed.
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .48;
moonwalk_accel = 1.6;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7;
djump_speed = 12;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 4;
dodge_recovery_frames = 11;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

fair_sweetspot_sfx = asset_get("sfx_ell_uspecial_explode");
fair_sweetspot_volume = 0.4;

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Particle Effects
small_blue_fx = hit_fx_create( sprite_get( "small_blue_fx" ), 14 );

hitfx_magnet_inward_big = hit_fx_create( sprite_get( "hitfx_magnet_inward" ), 30 );
hitfx_magnet_inward_small = hit_fx_create( sprite_get( "hitfx_magnet_inward_small" ), 30 );
hitfx_magnet_inward_slow = hit_fx_create( sprite_get( "hitfx_magnet_inward" ), 36 );
hitfx_magnet_outward = hit_fx_create( sprite_get( "hitfx_magnet_outward_small" ), 16 );
hitfx_magnet_outward_big = hit_fx_create( sprite_get( "hitfx_magnet_outward_large" ), 16 );
hitfx_magnet_outward_clap = hit_fx_create( sprite_get( "hitfx_magnet_outward_clap" ), 16 );
/* hitfx_magnet_outward.depth = depth - 10; */
active_magnet_fx = noone;

hitfx_crown_bigland = hit_fx_create( sprite_get( "hitfx_crown_bigland" ), 20 );
hitfx_crown_medland = hit_fx_create( sprite_get( "hitfx_crown_medland" ), 20 );
active_landing_fx = noone;

//BAH GAWHD, SHE'S PULLING OUT THE STEEL CHAIR!
universal_chair_big_cooldown = 420;
chair_cooldown_by_destruction = false;
create_chair_flash_opacity = 0;
can_create_air_chair = true;
air_chair_died = false;
myChair = noone;
magnet_dash_x = 0;
magnet_dash_y = 0;
magnet_dash_speed = 10;
zoomspeed_x = 0;
zoomspeed_y = 0;

pullchair_field = sprite_get("pullchair_field");
pullchair_loops = 0;

pullchair_can_end = false;
pullchair_direction = 0;

secret_nspecial_cooldown = 0;

//THE GRAB ZONE
grab_victim = noone;
grab_valid = false;
old_grab_valid = false;
destroy_postgrab_hitbox_countdown = 0;

grabevent_grab_box = 0;
grabevent_attack_box = 0;

LOYAL_FANS = noone; loyal_fans_sfx = asset_get("sfx_pom_cheer");
LOYAL_TABLE = noone; loyal_table_sfx = asset_get("sfx_kragg_rock_shatter");
ring_object = noone;
ringout_y = get_stage_data(SD_BOTTOM_BLASTZONE_Y) - 320;
ringout_x_right = get_stage_data(SD_RIGHT_BLASTZONE_X) - 200;
ringout_x_right_extreme = get_stage_data(SD_RIGHT_BLASTZONE_X) - 50;
ringout_x_left = get_stage_data(SD_LEFT_BLASTZONE_X) + 200;
ringout_x_left_extreme = get_stage_data(SD_LEFT_BLASTZONE_X) + 50;
ring_summon_count = 0;
reset_fans = 0;
half_width = 18;
can_summon_ring = true;
ring_height_decay = 0;
ring_height_decay_rate = 45;

var cgo = 30; // uspecial close grab offset
var fgo = 44; // uspecial far grab offset
uspecial_spin_offsets = [cgo, 0, -cgo, -fgo, -cgo, 0, cgo, fgo];
uspecial_spin_speed = 24;
uspecial_last_positions = [];
uspecial_afterimage_timer = 0;
uspecial_have_drawn_afterimages = false;
uspecial_can_cheer = 0;
uspecial_grab_victim = noone;
//delta parallax variables
uspecial_spin_timer = 0;
uspecial_spin_max_time = 43;

user_event(2); // set swappable colours

// afterimage colour stuff
var altpal = get_player_color( player );
var rcomp = get_color_profile_slot_r(altpal, 3);
var gcomp = get_color_profile_slot_g(altpal, 3);
var bcomp = get_color_profile_slot_b(altpal, 3);
magnet_colour = make_colour_rgb(rcomp, gcomp, bcomp);
afterimage_colour_array = [
  make_colour_rgb(0, 100, 100), // default
  make_colour_rgb(250, 0, 0), // blue
  make_colour_rgb(107, 99, 68), // red
  make_colour_rgb(255, 20, 255), // green
  make_colour_rgb(200, 210, 210), // silver
  make_colour_rgb(210, 190, 90), // yellow
  // INSERT SEASONAL
  make_colour_rgb(200, 40, 0), // potemkin
  make_colour_rgb(0, 200, 200), // r mika
  make_colour_rgb(150, 20, 230), // abyss
  make_colour_rgb(60,  102, 22), // early access
  //make_colour_rgb(250, 30, 255), // ETDT
  make_colour_rgb(99, 95, 170), // Gold
  //
  make_colour_rgb(40,  125, 50), // Playtest
  make_colour_rgb(255, 50, 50), // Tournament / genesis
  make_colour_rgb(0, 230, 230), // Rivals 2

  //make_colour_rgb(0, 255, 255), // Riptide
]

// afterimage colours for skins
playtester_afterimage_colours = [
  make_colour_rgb(0,  120, 200), // toma
  make_colour_rgb(40,  125, 50), // dakota
  make_colour_rgb(230, 128, 185), // Senpu
  make_colour_rgb(0,  120, 255), // gracefulknight
  make_colour_rgb(150, 40, 63), // honorless
  make_colour_rgb(243, 133, 235), // Kally
]
riptide_colours = [
  make_colour_rgb(0,199,218), // blue shadow
  make_colour_rgb(254, 184, 0), // yellow shadow
  make_colour_rgb(218, 93, 0), // orange shadow
]
vortex_colours = [
  make_colour_rgb(218, 70, 0), // orange shadow
  make_colour_rgb(191, 10, 48), // red
  make_colour_rgb(254, 215, 40), // yellow
]
heatwave_colours = [
  make_colour_rgb(0, 40, 104), // blue
  make_colour_rgb(254, 215, 40), // yellow
  make_colour_rgb(191, 10, 48), // red
]

afterimage_colour = afterimage_colour_array[get_player_color( player )];

// replace the afterimage colour for skins
alt_palette = 0;
var real_player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : player;
alt_palette = get_player_color( real_player );

// Unique afterimage colours
var sync = get_synced_var(player);
var tens = floor(sync/10)
var ones = sync-10*tens

// Playtester afterimage colours
if alt_palette == playtester_alt {
  afterimage_colour = playtester_afterimage_colours[sync-10*floor(sync/10)];
}

// Multicolour afterimage colours
multicolour_colours = riptide_colours; riptide_active = true;
if tens == 3 {
  multicolour_colours = vortex_colours; riptide_active = false;
} else if tens == 4 {
  multicolour_colours = heatwave_colours; riptide_active = false;
}
multicolour_after_index = 0;
magnet_colour = multicolour_colours[0];
activate_multicolour = alt_palette == tournament_alt && (tens > 1);

if activate_multicolour { // Riptide, Vortex and Heatwave
  afterimage_colour = multicolour_colours[multicolour_after_index]
}

//Throw direction detector.
//1 = forward. 2 = down. 3 = back. 4 = up.
throw_direction = 1;

// FSpecial Section
fspecial_was_grounded = true;
fspecial_dash_loops = 0;
fspecial_max_dash_loops = 5;
fspecial_can_edgecancel = false;
ropes_standalone = hit_fx_create(sprite_get("ropes_standalone"), 26);

//Rolling Girl
has_rolling_girl = false;
add_afterimages_timer = 0;
rolling_hit_sfx = asset_get("sfx_boss_shine");

//Dash attack variable
dattack_starting_y = 0;

//Uair variables
backbreaker_damage = 4;
uair_acceleration = 0.1;
uair_acceleration_acceleration = 0.038;

//Taunt variables
selected_taunt = noone;
total_taunts = [1,2,3,4];
available_taunts = [];

//SFX stuff
upsecial_spin_pitch = 1;
uspecial_slam_pitch = 1;
fstrong_falling_sound = noone;

init_shader();
//set_article_color_slot( shade_slot, r, g, b );
if alt_palette == playtester_alt or alt_palette == tournament_alt {
  var ptp = playtester_list[sync-10*floor(sync/10)];
  if alt_palette == tournament_alt {ptp = tournament_list[floor(sync/10)-1];}

  set_article_color_slot(0, ptp[1][0], ptp[1][1], ptp[1][2]);
  set_article_color_slot(1, ptp[2][0], ptp[2][1], ptp[2][2]);
  set_article_color_slot(2, ptp[3][0], ptp[3][1], ptp[3][2]);
  set_article_color_slot(3, ptp[4][0], ptp[4][1], ptp[4][2]);
  set_article_color_slot(4, ptp[5][0], ptp[5][1], ptp[5][2]);
}
