// Physical size
char_height             = 62;       //                  the height of the overhead hud - the arrow with your name and %
knockback_adj           = 1.1;		// 0.9  -  1.2

// Ground movement
walk_speed              = 3;		// 3    -  4.5
walk_accel              = 0.3;		// 0.2  -  0.5
walk_turn_time          = 6;		// 6
initial_dash_time       = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed      = 7;		// 4    -  9
dash_speed              = 6.5;		// 5    -  9
dash_turn_time          = 12;		// 8    -  20
dash_turn_accel         = 1.5;		// 0.1  -  2
dash_stop_time          = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.35;		// 0.25 -  0.5
ground_friction         = 0.5;		// 0.3  -  1
moonwalk_accel          = 1.3;		// 1.2  -  1.4

// Air movement
leave_ground_max        = 5.5;		// 4    -  8
max_jump_hsp            = 5.5;		// 4    -  8
air_max_speed           = 4.5 + 2*has_rune("D");  		// 3    -  7
jump_change             = 3;		// 3
air_accel               = 0.3;		// 0.2  -  0.4
prat_fall_accel         = 0.8;		// 0.25 -  1.5
air_friction            = 0.03;		// 0.02 -  0.07
max_fall                = 8.5;		// 6    -  11
fast_fall               = 13;		// 11   -  16
gravity_speed           = 0.45;		// 0.3  -  0.6
hitstun_grav            = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time         = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed              = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 6;		// 4    -  7.4
djump_speed             = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time    = 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps              = 1 + has_rune("A"); // 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp            = 5;		// 4    -  7
walljump_vsp            = 10;		// 7    -  10
land_time               = 6;		// 4    -  6
prat_land_time          = 24 + 56*has_rune("E");		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction           = 0.14;		// 0    -  0.15
wave_land_time          = 9;		// 6    -  12
wave_land_adj           = 1.35;		// 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 9;		// 9    -  11
roll_backward_max       = 9;		// 9    -  11       always the same as forward
air_dodge_speed         = 8;		// 7.5  -  8
techroll_speed          = 10;		// 8    -  11



// Animation Info
// Misc. animation speeds
idle_anim_speed         = .22;
crouch_anim_speed       = .25;
walk_anim_speed         = .5;
dash_anim_speed         = .5;
pratfall_anim_speed     = .25;

// Crouch
crouch_startup_frames   = 3;
crouch_active_frames    = 16;
crouch_recovery_frames  = 3;
//a dan moment makes it so the last frame needs to be doubled, the strip actually has 3 frames but the last 2 are the same

// Jumps
double_jump_time        = 42;		// 24   -  40
walljump_time           = 18;		// 18   -  32
wall_frames             = 1;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 3;

// Airdodge
air_dodge_startup_frames    = 2;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 3;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 3;
roll_back_active_frames         = 3;
roll_back_recovery_frames       = 2;

// Tech
tech_active_frames      = 6;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 3;
techroll_recovery_frames    = 1;


// Hurtbox sprites
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = sprite_get("crouch_hurt");
air_hurtbox_spr     = sprite_get("air_hurt");
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr


// Victory
set_victory_bg(sprite_get("winscreen")); // sprites\winscreen.png - name doesn't matter, the size has to be 480 x 270 pixels big, usually has this puple filter on it
set_victory_theme(sound_get("Rosso_Victory")); // sounds\mus_victory.ogg - leave some silence in the file after the victory theme finishes

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_may"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//set this to 1 if you want to export sprites at a smaller size (only includes character sprites without hurtboxes)
//alternatively, you can set it up on config.ini
//small_sprites = 1;

// setting to true will allow the character to cling by holding jump
// when clinging you usually need to manually set the image_index in animation.gml, but i did it for you
can_wall_cling = false;

small_djump = false;                // setting this to true gives characters the smaller double jump vfx from wrastor

wait_time = 0;                      // if wait_time is over 0, staying in idle for the amount of frames specified the character will do a wait animation
wait_length = 0;                    // this values sets how long the character is animated for in the wait animation
wait_sprite = sprite_get("wait");   // sets the wait animation sprite strip

init_shader();



//vars
alt_cur = get_player_color(player);
alt_section = get_synced_var(player);
if alt_cur != 0{
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("unmapped_portrait"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("unmapped_result_small"));
	set_ui_element(UI_CHARSELECT, sprite_get("unmapped_charselect"));
	set_ui_element(UI_HUD_ICON, sprite_get("unmapped_hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("unmapped_hurt"));
	set_ui_element(UI_OFFSCREEN, sprite_get("unmapped_offscreen"));
}else{
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("corr_portrait"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("corr_result_small"));
	set_ui_element(UI_CHARSELECT, sprite_get("corr_charselect"));
	set_ui_element(UI_HUD_ICON, sprite_get("corr_hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("corr_hurt"));
	set_ui_element(UI_OFFSCREEN, sprite_get("corr_offscreen"));
}

//anims
prev_st = state;

//jab
gun_count = 0;

//fstrong
double_fire = 0;
strong_buffer = 0;
prev_strong = 0;

//nair
pseudo_grab = [];

//uair
uair_shot = noone;
uair_fx = hit_fx_create(sprite_get("uair_shell"), 10);

//nspecial
trail_smoke = hit_fx_create(sprite_get("vfx_nspecial_smoke"), 15);
missile_explode = hit_fx_create(sprite_get("vfx_missile_explosion"), 21);
missile_angle = 0;

//fspecial
hit_drone = 0;
shot_angle = 0;
body_anim_timer = 0;
fire_pos = [0, 0];
fire_end = fire_pos;
shot_fx_timer = 0;
snipe_hit = hit_fx_create(sprite_get("sniper_hit"), 24);
using_controller = 0;
hit_count = 0;
hit_list = [];
hit_pos = [];
air_body_frame = 0;
float_sfx = noone;
extra_vsp = 0;
ground_body_pos = [
    [2, -36],
    [2, -30],
    [4, -28],
    [2, -38],
    [-2, -40],
    [-4, -42],
    [-4, -42],
    [-4, -42],
    [-4, -42],
    [-4, -42],
    [-4, -42],
    [-4, -44],
    [-4, -44],
    [-4, -44],
    [-4, -44],
    [-2, -40],
    [4, -34],
    [4, -28],
    [2, -30]
];

//dspecial
drone = noone;
target_spr = sprite_get("vfx_drone_target");
target_excl = hit_fx_create(sprite_get("vfx_drone_found"), 15);
drone_max = 200;
targets = [];
target_timers = [];

//uspecial
ground_propel = hit_fx_create(sprite_get("vfx_uspecial_ground"), 36);
air_propel = hit_fx_create(sprite_get("vfx_uspecial_air"), 36);
trail_smoke = hit_fx_create(sprite_get("vfx_nspecial_smoke"), 20);
usp_angle = 0;

//runes
rune_cancel = 0;
multi_missile = 1;
knockback_scaling = 1 - 0.3*has_rune("I");

//anti cheapie
target_practice_mode = 0;

//compats
is_rosso = 1;
rosso_reflect_sfx = sound_get("sfx_drone_reflect");

wiimote_compat_sprite = sprite_get("wiimote");

//super metroid compat
super_metroid_intro_ship_sprite = sprite_get("super_metroid_ship_cutscene");
super_metroid_zebes_ship_sprite = sprite_get("super_metroid_ship");
super_metroid_zebes_ship_lights = sprite_get("super_metroid_ship_lights");
super_metroid_zebes_ship_hatch = sprite_get("super_metroid_ship_hatch");
super_metroid_zebes_ship_hatch_lights = asset_get("empty_sprite");
super_metroid_zebes_ship_collider = sprite_get("super_metroid_ship_col");
super_metroid_zebes_ship_slopes = [
	[-91*2 +1, -13*2, -55*2 +1, -49*2],
	[-44*2, -49*2, -36*2, -57*2],
	[-22*2, -57*2, -13*2, -48*2],
	[91*2 +1, -13*2, 55*2 +1, -49*2],
	[44*2, -49*2, 36*2, -57*2],
	[22*2, -57*2, 13*2, -48*2],
];

super_metroid_zebes_map_icon = sprite_get("super_metroid_map_icon");
super_metroid_zebes_map_ship = sprite_get("super_metroid_map_ship");

super_metroid_save_pose = sprite_get("super_metroid_save_pose");
super_metroid_zebes_save_sparks = sprite_get("super_metroid_save_sparks");
super_metroid_zebes_save_sparks_shade = 1;
//super_metroid_zebes_intro_fanfare = sound_get("super_metroid_intro_fanfare");
var cur = (alt_cur? alt_cur: 32);
super_metroid_zebes_save_flash_colors = [make_color_rgb(get_color_profile_slot_r(cur, 1)*.7, get_color_profile_slot_g(cur, 1)*.7, get_color_profile_slot_b(cur, 1)*.7), make_color_rgb(0, 27, 137)];

super_metroid_morph_ball_r = sprite_get("super_metroid_morph_ball");
super_metroid_morph_ball_l = sprite_get("super_metroid_morph_ball");
super_metroid_morph_ball_r_anim = 0;
super_metroid_morph_ball_l_anim = 0;
morph_ball_time = 0;

super_metroid_zebes_bomb_icon_guide = sprite_get("super_metroid_bomb_guide_icon");
super_metroid_pause_menu_box_name = sprite_get("super_metroid_pause_box");
super_metroid_pause_menu_cool_name = sprite_get("super_metroid_pause_cool_name");
super_metroid_pause_menu_larger_cool_name = 0;
super_metroid_pause_menu_character = sprite_get("super_metroid_pause_character");
super_metroid_zebes_intro_fanfare = sound_get("metroid_jingle");