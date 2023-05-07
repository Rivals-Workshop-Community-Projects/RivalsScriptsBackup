hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .125;
walk_anim_speed = .18;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 13;
initial_dash_speed = 6.25;
dash_speed = 6;
dash_turn_time = 14;
dash_turn_accel = 1;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 4.5;
djump_speed = 9;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.3;
prat_fall_accel = .6; //multiplier of air_accel while in pratfall
air_friction = 0.03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = 0.4;
hitstun_grav = 0.45;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 11;
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.125; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 2;

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
techroll_recovery_frames = 2;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("sfx_waveland");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
// setting to true will allow the character to cling by holding jump
// when clinging you usually need to manually set the image_index in animation.gml, but i did it for you
can_wall_cling = false;

small_djump = false;                // setting this to true gives characters the smaller double jump vfx from wrastor

wait_time = 0;                      // if wait_time is over 0, staying in idle for the amount of frames specified the character will do a wait animation
wait_length = 0;                    // this values sets how long the character is animated for in the wait animation
wait_sprite = sprite_get("wait");   // sets the wait animation sprite strip

//#region Local Variables
debug_display = get_match_setting(SET_PRACTICE); //0 = no display | 1 = draw_hud display (will display in practice mode by default with this setup)
in_battle = get_training_cpu_action() == CPU_FIGHT;
debug_taunt_buffer = 0;

window_end = 0; //the last frame (including whifflag if it's there)
window_last = 0; //AG_NUM_WINDOWS
window_cancel_time = 0; //AG_WINDOW_CANCEL_FRAME

alt_cur = get_player_color(player);
playtest_active = false;
with (oTestPlayer) playtest_active = true;

is_dodging = false;
is_attacking = false;

//grab code
my_grab_id = noone; //grabbed player ID, the game has it's own way of setting up the grabs but this is easier
grab_time = 0; //timer for grabbing, works as a state_timer of sorts
//#endregion

//#region Custom Attack/Hitbox Macros
//custom window loop time (NOTE: this is a custom index that is created manually)
AG_WINDOW_LOOP_TIMES = 37;          //attack grid index, the number you put next to it is the amount to loop (starts at 0, includes written value)
window_loops = 0;                   //decides the amount of times to loop
//usage: set_window_value(attack, window, AG_WINDOW_LOOP_TIMES, #loops)

//projectile multihit
HG_PROJECTILE_MULTIHIT = 58;            //hitbox grid index, the number of times the projectile should hit
HG_PROJECTILE_HITRATE = 59;             //the delay time between multihits
HG_MULTIHIT_DAMAGE = 60;                //overwrites damage for multihits
HG_MULTIHIT_VFX = 61;                   //overwrites HG_VISUAL_EFFECT for the multihits, putting -1 will not overwrite it
HG_MULTIHIT_SFX = 62;                   //overwrites HG_HIT_SFX for multihits, putting -1 will not overwrite it
//usage example: set_hitbox_value(attack, hbox_num, HG_PROJECTILE_MULTIHIT, #amount)


//Below code from MunoPhone API.
AT_PHONE = 40;

i = 80;

// NOTE: All overrides for the frame data guide should be strings. Any non-applicable (N/A) values should be entered as "-"

// General Attack Indexes
AG_MUNO_ATTACK_EXCLUDE = i; i++;		// Set to 1 to exclude this move from the list of moves
AG_MUNO_ATTACK_REFRESH = i; i++;		// Set to 1 to refresh this move's data every frame while the frame data guide is open
AG_MUNO_ATTACK_NAME = i; i++;			// Enter a string to override move name
AG_MUNO_ATTACK_FAF = i; i++;			// Enter a string to override FAF
AG_MUNO_ATTACK_ENDLAG = i; i++;			// Enter a string to override endlag
AG_MUNO_ATTACK_LANDING_LAG = i; i++;	// Enter a string to override landing lag
AG_MUNO_ATTACK_MISC = i; i++;			// Enter a string to OVERRIDE the move's "Notes" section, which automatically includes the Cooldown System and Misc. Window Traits found below
AG_MUNO_ATTACK_MISC_ADD = i; i++;		// Enter a string to ADD TO the move's "Notes" section (preceded by the auto-generated one, then a line break)

// Adding Notes to a move is good for if a move requires a long explanation of the data, or if a move overall has certain behavior that should be listed such as a manually coded cancel window

// General Window Indexes
AG_MUNO_WINDOW_EXCLUDE = i; i++;		// 0: include window in timeline (default)    1: exclude window from timeline    2: exclude window from timeline, only for the on-hit time    3: exclude window from timeline, only for the on-whiff time
AG_MUNO_WINDOW_ROLE = i; i++;			// 0: none (acts identically to AG_MUNO_WINDOW_EXCLUDE = 1)   1: startup   2: active (or BETWEEN active frames, eg between multihits)   3: endlag
AG_MUNO_ATTACK_USES_ROLES = i; i++;		// Must be set to 1 for AG_MUNO_WINDOW_ROLE to take effect

// If your move's windows are structured non-linearly, you can use AG_MUNO_WINDOW_ROLE to force the frame data system to parse the window order correctly.

// Cooldown System (do this instead of manually setting in attack_update, and cooldown/invul/armor will automatically appear in the frame data guide)
AG_MUNO_ATTACK_COOLDOWN = i; i++;		// Set this to a number, and the move's move_cooldown[] will be set to it automatically. Set it to any negative number and it will refresh when landing, getting hit, or walljumping. (gets converted to positive when applied)
AG_MUNO_ATTACK_CD_SPECIAL = i; i++;		// Set various cooldown effects on a per-attack basis.
AG_MUNO_WINDOW_CD_SPECIAL = i; i++;		// Set various cooldown effects on a per-window basis.
AG_MUNO_WINDOW_INVUL = i; i++;			// -1: invulnerable    -2: super armor    above 0: that amount of soft armor

/*
 * AG_MUNO_ATTACK_CD_SPECIAL values:
 * - 1: the cooldown will use the phone_arrow_cooldown variable instead of move_cooldown[attack], causing it to display on the overhead player indicator; multiple attacks can share this cooldown.
 * - 2: the cooldown will use the phone_invis_cooldown variable instead of move_cooldown[attack], which doesn't display anywhere (unless you code your own HUD element) but does allow you to share the cooldown between moves.
 * 
 * AG_MUNO_WINDOW_CD_SPECIAL values:
 * - 1: a window will be exempted from causing cooldown. It is HIGHLY RECOMMENDED to do this for any startup windows, so that the cooldown doesn't apply if you're hit out of the move before being able to use it.
 * - 2: a window will reset the cooldown to 0.
 * - 3: a window will set cooldown only if the has_hit	      variable is false, and set it to 0 if has_hit        is true.
 * - 4: a window will set cooldown only if the has_hit_player variable is false, and set it to 0 if has_hit_player is true.
 */

i = 80;

HG_MUNO_HITBOX_EXCLUDE = i; i++;		// Set to 1 to exclude this hitbox from the frame data guide
HG_MUNO_HITBOX_NAME = i; i++;			// Enter a string to override hitbox name

HG_MUNO_HITBOX_ACTIVE = i; i++;			// Enter a string to override active frames
HG_MUNO_HITBOX_DAMAGE = i; i++;			// Enter a string to override damage
HG_MUNO_HITBOX_BKB = i; i++;			// Enter a string to override base knockback
HG_MUNO_HITBOX_KBG = i; i++;			// Enter a string to override knockback growth
HG_MUNO_HITBOX_ANGLE = i; i++;			// Enter a string to override angle
HG_MUNO_HITBOX_PRIORITY = i; i++;		// Enter a string to override priority
HG_MUNO_HITBOX_GROUP = i; i++;			// Enter a string to override group
HG_MUNO_HITBOX_BHP = i; i++;			// Enter a string to override base hitpause
HG_MUNO_HITBOX_HPG = i; i++;			// Enter a string to override hitpause scaling
HG_MUNO_HITBOX_MISC = i; i++;			// Enter a string to override the auto-generated misc notes (which include misc properties like angle flipper or elemental effect)
HG_MUNO_HITBOX_MISC_ADD = i; i++;		// Enter a string to ADD TO the auto-generated misc notes, not override (line break will be auto-inserted)

// Misc. Hitbox Traits
HG_MUNO_OBJECT_LAUNCH_ANGLE = i; i++;	// Override the on-hit launch direction of compatible Workshop objects, typically ones without gravity. For example, Otto uses this for the ball rehit angles. Feel free to code this into your attacks, AND to support it for your own hittable articles.

/* Set the obj launch angle to:
 * - -1 to send horizontally away (simulates flipper 3, angle 0)
 * - -2 to send radially away (simulates flipper 8)
 */

//#endregion


//#region Character Variables
//Reaper's Impulse
impulse_active = false;
impulse_can_activate = true;
impulse_points = 0;
impulse_points_max = 1;

impulse_points_hud = 0;
impulse_fill_hud = 0;
impulse_hud_state = 0;
impulse_hud_state_timer = 0;

impulse_timer = 0;
impulse_ko = false;
impulse_idle_change = false;
impulse_glow_alpha = 0;

//Multipliers
impulse_damage_adj = 1.3;
impulse_walk_speed_adj = 1.1;
impulse_initial_dash_speed_adj = 1.2;
impulse_dash_speed_adj = 1.2;
impulse_ground_friction_adj = 1.3;
impulse_air_accel_adj = 1.15;
impulse_air_friction_adj = 1.05;
impulse_grav_adj = 1.03;
impulse_fall_speed_adj = 1.05;

impulse_points_damage_adj = 0.3;

walk_speed_def = walk_speed;
walk_accel_def = walk_accel;
initial_dash_speed_def = initial_dash_speed;
dash_speed_def = dash_speed;
ground_friction_def = ground_friction;
air_accel_def = air_accel;
air_friction_def = air_friction;
air_max_speed_def = air_max_speed;
gravity_speed_def = gravity_speed;
max_fall_def = max_fall;
fast_fall_def = fast_fall;

//Animation
dashstop_anim_frames = 18;
dashstop_anim_timer = 0;
uspecial_portal_x = 0;
uspecial_portal_y = 0;
uspecial_portal_angle = 0;
uspecial_portal_distance = -1;
dspecial_countered = noone;

//Fair
wall_player_x = 0;
wall_player_xoffset = 0;
fair_wall_times = 0;
fair_wall_times_max = 2;
fair_wall_timer = 0;
fair_wall_timer_max = 120;

//FSpecial stacks
fspecial_marks_max = 5;
fspecial_time_max = 420;
uspec_times = 0;
//VFX
fx_install_part = hit_fx_create(sprite_get("fx_install_part"), 24);
fx_install_act_fg = hit_fx_create(sprite_get("fx_install_act_fg"), 60);
fx_install_act_bg = hit_fx_create(sprite_get("fx_install_act_bg"), 60);
fx_install_de_fg = hit_fx_create(sprite_get("fx_install_de_fg"), 60);
fx_install_de_bg = hit_fx_create(sprite_get("fx_install_de_bg"), 60);

hfx_small = hit_fx_create(sprite_get("hfx_small"), 24);
hfx_small_down = hit_fx_create(sprite_get("hfx_small_down"), 18);
hfx_small_up = hit_fx_create(sprite_get("hfx_small_up"), 18);
hfx_large_down = hit_fx_create(sprite_get("hfx_large_down"), 18);
hfx_large_up = hit_fx_create(sprite_get("hfx_large_up"), 18);
hfx_sweetspot = hit_fx_create(sprite_get("hfx_sweetspot"), 32);

set_victory_theme(sound_get("sfx_victory"));
set_victory_bg(sprite_get("victory_bg"));

mamizou_transform_spr = sprite_get("mamizou");
//#endregion
