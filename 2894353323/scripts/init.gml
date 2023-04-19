//Credit goes to Bar for making the code for Tester.

////////////////////////////////////////////////////// CHARACTER GENERAL VARIABLES //////////////////////////////////////////////////////

/* STAT NOTES
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The commented-out numbers are the range of values the RoA
 * base cast has - e.g. it lists the slowest and fastest run speeds.
 * 
 * Replace Zetter's stats with whatever strengths/weaknesses your char should
 * have, e.g. change dash_speed to 8 or so if you want a fast character.
 *
 * Explanation of each stat:
 * https://rivalsofaether.com/player-variables/
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 * 
 * Base Cast Stats:
 * docs.google.com/spreadsheets/d/14JIjL_5t81JHqnJmU6BSsRosTe2JO8sFGUysM_9tDoU
*/

// STAT NAME		    VALUE                   BASECAST RANGE      NOTES

// Physical size
char_height             = 52;                   //                  the height of the overhead hud - the arrow with your name and %
knockback_adj           = 1;		            // 0.9  -  1.2

// Ground movement
walk_speed              = 3.25;		            // 3    -  4.5
walk_accel              = 0.25;		            // 0.2  -  0.5
walk_turn_time          = 6;		            // 6
initial_dash_time       = 12;		            // 8    -  16       zetterburn's is 14
initial_dash_speed      = 7.5;		            // 4    -  9
dash_speed              = 6.5;		            // 5    -  9
dash_turn_time          = 10;		            // 8    -  20
dash_turn_accel         = 1.0;		            // 0.1  -  2
dash_stop_time          = 6;		            // 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.25;		            // 0.25 -  0.5
ground_friction         = 0.4;		            // 0.3  -  1
moonwalk_accel          = 1.25;		            // 1.2  -  1.4

// Air movement
leave_ground_max        = 6;		            // 4    -  8
max_jump_hsp            = 5;		            // 4    -  8
air_max_speed           = 4.5;  		            // 3    -  7
jump_change             = 3;		            // 3
air_accel               = 0.2;		            // 0.2  -  0.4
prat_fall_accel         = 0.85;		            // 0.25 -  1.5
air_friction            = 0.04;		            // 0.02 -  0.07
max_fall                = 10;		            // 6    -  11
fast_fall               = 14;		            // 11   -  16
gravity_speed           = 0.5;		            // 0.3  -  0.6
hitstun_grav            = 0.5;		            // 0.45 -  0.53

// Jumps
jump_start_time         = 5;		            // 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed              = 11;		            // 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 6;		            // 4    -  7.4
djump_speed             = 10;		            // 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = 0;		            // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time    = 0;		            //                  the amount of time that   djump_accel   is applied for
max_djumps              = 1;		            // 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp            = 5;		            // 4    -  7
walljump_vsp            = 9;		            // 7    -  10
land_time               = 4;		            // 4    -  6
prat_land_time          = 9;		            // 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction           = 0.13;		            // 0    -  0.15
wave_land_time          = 8;		            // 6    -  12
wave_land_adj           = 1.2;		            // 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 9;		            // 7    -  11
roll_backward_max       = roll_forward_max;		// 7    -  11       always the same as forward
air_dodge_speed         = 7.5;		            // 7.5  -  8
techroll_speed          = 10;		            // 8    -  11

// Animation Info
// Misc. animation speeds
idle_anim_speed         = 0.15;
crouch_anim_speed       = 0.1;
walk_anim_speed         = 0.2;
dash_anim_speed         = 0.2;
pratfall_anim_speed     = 0.25;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 4;
crouch_recovery_frames  = 1;
//a dan moment makes it so the last frame needs to be doubled, the strip actually has 3 frames but the last 2 are the same

// Jumps
double_jump_time        = 36;		// 24   -  40
walljump_time           = 24;		// 18   -  32
wall_frames             = 1;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 4;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 2;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = roll_forward_startup_frames;
roll_back_active_frames         = roll_forward_active_frames;
roll_back_recovery_frames       = roll_forward_recovery_frames;

// Tech
tech_active_frames      = 4;
tech_recovery_frames    = 2;

// Tech roll
techroll_startup_frames     = roll_forward_startup_frames;
techroll_active_frames      = roll_forward_active_frames;
techroll_recovery_frames    = roll_forward_recovery_frames;


// Hurtbox sprites
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr


// Victory
set_victory_bg(sprite_get("victory_bg")); // sprites\winscreen.png - name doesn't matter, the size has to be 480 x 270 pixels big, usually has this puple filter on it
set_victory_theme(sound_get("mus_victory")); // sounds\mus_victory.ogg - leave some silence in the file after the victory theme finishes

// Movement SFX
land_sound          = asset_get("sfx_land");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//set this to 1 if you want to export sprites at a smaller size (only includes character sprites without hurtboxes)
//alternatively, you can set it up on config.ini
small_sprites = 1;

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

//====FXs====
fx_magic_small1 = hit_fx_create(sprite_get("fx_magic_small1"), 16);
fx_magic_medium = hit_fx_create(sprite_get("fx_magic_medium"), 24);
fx_magic_ground = hit_fx_create(sprite_get("fx_magic_ground"), 18);
fx_exp = hit_fx_create(sprite_get("fx_exp"), 32);
fx_slashproj_e = hit_fx_create(sprite_get("fx_slashproj_e"), 16);
fx_darkhit_l = hit_fx_create(asset_get("abyss_seed_explosion_spr"), 24);
fx_levelup = hit_fx_create(sprite_get("fx_levelup"), 40);
fx_levelup_fg = hit_fx_create(sprite_get("fx_levelup_fg"), 40);
fx_sparkle = hit_fx_create(sprite_get("fx_sparkle"), 16);
fx_crit = hit_fx_create(sprite_get("fx_crit"), 32);

_init = 0;

//====Moves===
attack_charge_timer = 0;
jump_cancel_times = 0;
uspecial_free = false;
dspecial_chest = noone;
taunt_obj = noone;

//====Skill Select====
skills_updated = false;
skill_points = 0;
skill_index = 0; //0 = nspec; 1 = fspec; 2 = uspec; 3 = strong
can_select_skill = false;
skill_select_buffer = 0;

skill_select[0] = [];
skill_select[1] = [];
skill_select[2] = [];
skill_select[3] = [];

skill_debug[0] = 0;
skill_debug[1] = 0;
skill_debug[2] = 0;
skill_debug[3] = 0;

skill_next[0] = undefined;
skill_next[1] = undefined;
skill_next[2] = undefined;
skill_next[3] = undefined;

skill_prev[0] = undefined;
skill_prev[1] = undefined;
skill_prev[2] = undefined;
skill_prev[3] = undefined;

//====Skill Levelling System====
skill_level = !in_battle ? 10 : 1;
skill_exp = 0;
skill_exp_smooth = 0;

skill_exp_min = 50;
skill_exp_max = 4000;
skill_level_max = 100;

//====NSpecial====

SKL_NSPEC_NORM = create_skill();
SKL_NSPEC_NORM.name = "Slash";
SKL_NSPEC_NORM.description_short = "Spawn a slashing projectile";
SKL_NSPEC_NORM.description = "Spawns a weak slashing porojectile. Has a short cooldown.";
SKL_NSPEC_NORM.level_required = 1;
SKL_NSPEC_NORM.icon = sprite_get("nspecial_icons");
SKL_NSPEC_NORM.icon_img = 0;

SKL_NSPEC_NORM.attacks[0] = create_skill_attack(AT_NSPECIAL, AT_NSPECIAL)
SKL_NSPEC_NORM.attacks[0].sprite = sprite_get("nspecial_1");
SKL_NSPEC_NORM.attacks[0].hurtbox = sprite_get("nspecial_1_hurt");
SKL_NSPEC_NORM.attacks[0].startup_windows = [1];
SKL_NSPEC_NORM.attacks[0].active_windows = [2];
SKL_NSPEC_NORM.attacks[0].recovery_windows = [3];
SKL_NSPEC_NORM.attacks[0].hitboxes = [1];

SKL_NSPEC_FIRE = create_skill();
SKL_NSPEC_FIRE.name = "Fire";
SKL_NSPEC_FIRE.description_short = "Projectile that explodes on contact";
SKL_NSPEC_FIRE.description = "Spawns a fireball that explodes upon contact with something. Does not explode on parry."
SKL_NSPEC_FIRE.level_required = 1;
SKL_NSPEC_FIRE.icon = sprite_get("nspecial_icons");
SKL_NSPEC_FIRE.icon_img = 1;

SKL_NSPEC_FIRE.attacks[0] = create_skill_attack(AT_NSPECIAL_2, AT_NSPECIAL)
SKL_NSPEC_FIRE.attacks[0].sprite = sprite_get("nspecial_2");
SKL_NSPEC_FIRE.attacks[0].hurtbox = sprite_get("nspecial_2_hurt");
SKL_NSPEC_FIRE.attacks[0].startup_windows = [1];
SKL_NSPEC_FIRE.attacks[0].active_windows = [2];
SKL_NSPEC_FIRE.attacks[0].recovery_windows = [3];
SKL_NSPEC_FIRE.attacks[0].hitboxes = [1, 2];

SKL_NSPEC_ICE = create_skill();
SKL_NSPEC_ICE.name = "Ice";
SKL_NSPEC_ICE.description_short = "Ices up when it hits the ground and walls";
SKL_NSPEC_ICE.description = "Spawns a icicle that sticks to the ground. The ice that comes out of the ground is more powerful if it hits."
SKL_NSPEC_ICE.level_required = 1;
SKL_NSPEC_ICE.icon = sprite_get("nspecial_icons");
SKL_NSPEC_ICE.icon_img = 2;

SKL_NSPEC_ICE.attacks[0] = create_skill_attack(AT_NSPECIAL_AIR, AT_NSPECIAL)
SKL_NSPEC_ICE.attacks[0].sprite = sprite_get("nspecial_3");
SKL_NSPEC_ICE.attacks[0].hurtbox = sprite_get("nspecial_3_hurt");
SKL_NSPEC_ICE.attacks[0].startup_windows = [1];
SKL_NSPEC_ICE.attacks[0].active_windows = [2];
SKL_NSPEC_ICE.attacks[0].recovery_windows = [3];
SKL_NSPEC_ICE.attacks[0].hitboxes = [1, 2];

//====FSpecial====
SKL_FSPEC_NORM = create_skill();
SKL_FSPEC_NORM.name = "Dash";
SKL_FSPEC_NORM.description_short = "Fast chargeable dash";
SKL_FSPEC_NORM.description = "A dash that can be charged. Jump Cancelable on hit.";
SKL_FSPEC_NORM.level_required = 1;
SKL_FSPEC_NORM.icon = sprite_get("fspecial_icons");
SKL_FSPEC_NORM.icon_img = 0;

SKL_FSPEC_NORM.attacks[0] = create_skill_attack(AT_FSPECIAL, AT_FSPECIAL)
SKL_FSPEC_NORM.attacks[0].sprite = sprite_get("fspecial_1");
SKL_FSPEC_NORM.attacks[0].hurtbox = sprite_get("fspecial_1_hurt");
SKL_FSPEC_NORM.attacks[0].startup_windows = [1, 3];
SKL_FSPEC_NORM.attacks[0].active_windows = [4];
SKL_FSPEC_NORM.attacks[0].recovery_windows = [5];
SKL_FSPEC_NORM.attacks[0].hitboxes = [1, 2];

SKL_FSPEC_SHIELD = create_skill();
SKL_FSPEC_SHIELD.name = "Shield Bash";
SKL_FSPEC_SHIELD.description_short = "Strong dash that blocks projectiles";
SKL_FSPEC_SHIELD.description = "A dash that can block projectiles. Slow and cannot be charged, but is jump cancelable immediately on hit.";
SKL_FSPEC_SHIELD.level_required = 1;
SKL_FSPEC_SHIELD.icon = sprite_get("fspecial_icons");
SKL_FSPEC_SHIELD.icon_img = 1;

SKL_FSPEC_SHIELD.attacks[0] = create_skill_attack(AT_FSPECIAL_2, AT_FSPECIAL)
SKL_FSPEC_SHIELD.attacks[0].sprite = sprite_get("fspecial_2");
SKL_FSPEC_SHIELD.attacks[0].hurtbox = sprite_get("fspecial_2_hurt");
SKL_FSPEC_SHIELD.attacks[0].startup_windows = [1];
SKL_FSPEC_SHIELD.attacks[0].active_windows = [2];
SKL_FSPEC_SHIELD.attacks[0].recovery_windows = [3];
SKL_FSPEC_SHIELD.attacks[0].hitboxes = [1, 2, 3];

SKL_FSPEC_CLAW = create_skill();
SKL_FSPEC_CLAW.name = "Dark Claw";
SKL_FSPEC_CLAW.description_short = "Dash and Slash";
SKL_FSPEC_CLAW.description = "A quick dash that spawns two claws that multihit. Invincible during the active frames.";
SKL_FSPEC_CLAW.level_required = 1;
SKL_FSPEC_CLAW.icon = sprite_get("fspecial_icons");
SKL_FSPEC_CLAW.icon_img = 2;

SKL_FSPEC_CLAW.attacks[0] = create_skill_attack(AT_FSPECIAL_AIR, AT_FSPECIAL)
SKL_FSPEC_CLAW.attacks[0].sprite = sprite_get("fspecial_3");
SKL_FSPEC_CLAW.attacks[0].hurtbox = sprite_get("fspecial_3_hurt");
SKL_FSPEC_CLAW.attacks[0].air_sprite = sprite_get("fspecial_3_air");
SKL_FSPEC_CLAW.attacks[0].hurtbox = sprite_get("fspecial_3_air_hurt");
SKL_FSPEC_CLAW.attacks[0].startup_windows = [1];
SKL_FSPEC_CLAW.attacks[0].active_windows = [2];
SKL_FSPEC_CLAW.attacks[0].recovery_windows = [3];
SKL_FSPEC_CLAW.attacks[0].hitboxes = [1, 2, 3];

//USpecial
SKL_USPEC_NORM = create_skill();
SKL_USPEC_NORM.name = "Hero Spin";
SKL_USPEC_NORM.description_short = "Strong on the ground, fast in the air!";
SKL_USPEC_NORM.description = "A spinning slash that knocks back hard on the ground, multihits int he air. The grounded version can be charged.";
SKL_USPEC_NORM.level_required = 1;
SKL_USPEC_NORM.icon = sprite_get("uspecial_icons");
SKL_USPEC_NORM.icon_img = 0;

SKL_USPEC_NORM.attacks[0] = create_skill_attack(AT_USPECIAL, AT_USPECIAL)
SKL_USPEC_NORM.attacks[0].sprite = sprite_get("uspecial_1_ground");
SKL_USPEC_NORM.attacks[0].hurtbox = sprite_get("uspecial_1_ground_hurt");
SKL_USPEC_NORM.attacks[0].air_sprite = sprite_get("uspecial_1");
SKL_USPEC_NORM.attacks[0].hurtbox = sprite_get("uspecial_1_hurt");
SKL_USPEC_NORM.attacks[0].startup_windows = [1, 2, 3];
SKL_USPEC_NORM.attacks[0].active_windows = [4, 5, 6];
SKL_USPEC_NORM.attacks[0].recovery_windows = [7];
SKL_USPEC_NORM.attacks[0].hitboxes = [1, 5, 10, 12, 14, 16, 18];

SKL_USPEC_WIND = create_skill();
SKL_USPEC_WIND.name = "Wind";
SKL_USPEC_WIND.description_short = "Jump from a chargeable tornado";
SKL_USPEC_WIND.description = "A jump that spawns a tornado. Can be charged for a higher jump and stronger tornado.";
SKL_USPEC_WIND.level_required = 1;
SKL_USPEC_WIND.icon = sprite_get("uspecial_icons");
SKL_USPEC_WIND.icon_img = 1;

SKL_USPEC_WIND.attacks[0] = create_skill_attack(AT_USPECIAL_2, AT_USPECIAL)
SKL_USPEC_WIND.attacks[0].sprite = sprite_get("uspecial_2");
SKL_USPEC_WIND.attacks[0].hurtbox = sprite_get("uspecial_2_hurt");
SKL_USPEC_WIND.attacks[0].startup_windows = [1];
SKL_USPEC_WIND.attacks[0].active_windows = [2];
SKL_USPEC_WIND.attacks[0].recovery_windows = [3];
SKL_USPEC_WIND.attacks[0].hitboxes = [1, 2];

SKL_USPEC_HOLY = create_skill();
SKL_USPEC_HOLY.name = "Holy Wings";
SKL_USPEC_HOLY.description_short = "Power of flight!";
SKL_USPEC_HOLY.description = "A high jump that can be angled vertically. No hitbox, but invincible breifly during the ascent.";
SKL_USPEC_HOLY.level_required = 1;
SKL_USPEC_HOLY.icon = sprite_get("uspecial_icons");
SKL_USPEC_HOLY.icon_img = 2;

SKL_USPEC_HOLY.attacks[0] = create_skill_attack(AT_USPECIAL_GROUND, AT_USPECIAL)
SKL_USPEC_HOLY.attacks[0].sprite = sprite_get("uspecial_3");
SKL_USPEC_HOLY.attacks[0].hurtbox = sprite_get("uspecial_3_hurt");
SKL_USPEC_HOLY.attacks[0].startup_windows = [1];
SKL_USPEC_HOLY.attacks[0].active_windows = [2];
SKL_USPEC_HOLY.attacks[0].recovery_windows = [3];
SKL_USPEC_HOLY.attacks[0].hitboxes = [];
//====Weapon Strongs====

//Sword
SKL_STRONG_SWORD = create_skill();
SKL_STRONG_SWORD.name = "Sword";
SKL_STRONG_SWORD.description_short = "Simple and Reliable";
SKL_STRONG_SWORD.description = "Good amount of power in exchange for endlag.";
SKL_STRONG_SWORD.level_required = 1;
SKL_STRONG_SWORD.icon = sprite_get("weapon_icons");
SKL_STRONG_SWORD.icon_img = 0;

SKL_STRONG_SWORD.attacks[0] = create_skill_attack(AT_FSTRONG, AT_FSTRONG)
SKL_STRONG_SWORD.attacks[0].sprite = sprite_get("fstrong_1");
SKL_STRONG_SWORD.attacks[0].hurtbox = sprite_get("fstrong_1_hurt");
SKL_STRONG_SWORD.attacks[0].strong_charge_window = 1;
SKL_STRONG_SWORD.attacks[0].startup_windows = [1, 2];
SKL_STRONG_SWORD.attacks[0].active_windows = [3];
SKL_STRONG_SWORD.attacks[0].recovery_windows = [4];
SKL_STRONG_SWORD.attacks[0].hitboxes = [1, 2];

SKL_STRONG_SWORD.attacks[1] = create_skill_attack(AT_USTRONG, AT_USTRONG)
SKL_STRONG_SWORD.attacks[1].sprite = sprite_get("ustrong_1");
SKL_STRONG_SWORD.attacks[1].hurtbox = sprite_get("ustrong_1_hurt");
SKL_STRONG_SWORD.attacks[1].strong_charge_window = 1;
SKL_STRONG_SWORD.attacks[1].startup_windows = [1, 2];
SKL_STRONG_SWORD.attacks[1].active_windows = [3];
SKL_STRONG_SWORD.attacks[1].recovery_windows = [4];
SKL_STRONG_SWORD.attacks[1].hitboxes = [1, 2];

SKL_STRONG_SWORD.attacks[2] = create_skill_attack(AT_DSTRONG, AT_DSTRONG)
SKL_STRONG_SWORD.attacks[2].sprite = sprite_get("dstrong_1");
SKL_STRONG_SWORD.attacks[2].hurtbox = sprite_get("dstrong_1_hurt");
SKL_STRONG_SWORD.attacks[2].strong_charge_window = 1;
SKL_STRONG_SWORD.attacks[2].startup_windows = [1, 2];
SKL_STRONG_SWORD.attacks[2].active_windows = [3, 4, 5];
SKL_STRONG_SWORD.attacks[2].recovery_windows = [6];
SKL_STRONG_SWORD.attacks[2].hitboxes = [1, 2];

//Axe
SKL_STRONG_AXE = create_skill();
SKL_STRONG_AXE.name = "Axe";
SKL_STRONG_AXE.description_short = "Powerful Swings";
SKL_STRONG_AXE.description = "Good amount of power and range in exchange for startup.";
SKL_STRONG_AXE.level_required = 1;
SKL_STRONG_AXE.icon = sprite_get("weapon_icons");
SKL_STRONG_AXE.icon_img = 1;

SKL_STRONG_AXE.attacks[0] = create_skill_attack(AT_FSTRONG, AT_FSTRONG)
SKL_STRONG_AXE.attacks[0].sprite = sprite_get("fstrong_2");
SKL_STRONG_AXE.attacks[0].hurtbox = sprite_get("fstrong_2_hurt");
SKL_STRONG_AXE.attacks[0].strong_charge_window = 5;
SKL_STRONG_AXE.attacks[0].startup_windows = [5, 6];
SKL_STRONG_AXE.attacks[0].active_windows = [7];
SKL_STRONG_AXE.attacks[0].recovery_windows = [8];
SKL_STRONG_AXE.attacks[0].hitboxes = [3, 4];

SKL_STRONG_AXE.attacks[1] = create_skill_attack(AT_USTRONG, AT_USTRONG)
SKL_STRONG_AXE.attacks[1].sprite = sprite_get("ustrong_2");
SKL_STRONG_AXE.attacks[1].hurtbox = sprite_get("ustrong_2_hurt");
SKL_STRONG_AXE.attacks[1].strong_charge_window = 5;
SKL_STRONG_AXE.attacks[1].startup_windows = [5, 6];
SKL_STRONG_AXE.attacks[1].active_windows = [7];
SKL_STRONG_AXE.attacks[1].recovery_windows = [8];
SKL_STRONG_AXE.attacks[1].hitboxes = [3, 4, 5];

SKL_STRONG_AXE.attacks[2] = create_skill_attack(AT_DSTRONG, AT_DSTRONG)
SKL_STRONG_AXE.attacks[2].sprite = sprite_get("dstrong_2");
SKL_STRONG_AXE.attacks[2].hurtbox = sprite_get("dstrong_2_hurt");
SKL_STRONG_AXE.attacks[2].strong_charge_window = 7;
SKL_STRONG_AXE.attacks[2].startup_windows = [7, 8];
SKL_STRONG_AXE.attacks[2].active_windows = [9, 10, 11];
SKL_STRONG_AXE.attacks[2].recovery_windows = [12];
SKL_STRONG_AXE.attacks[2].hitboxes = [3, 4];

//Staff
SKL_STRONG_STAFF = create_skill();
SKL_STRONG_STAFF.name = "Staff";
SKL_STRONG_STAFF.description_short = "Multi-Hit Magic";
SKL_STRONG_STAFF.description = "Multi hitting strongs in exchange for power";
SKL_STRONG_STAFF.level_required = 1;
SKL_STRONG_STAFF.icon = sprite_get("weapon_icons");
SKL_STRONG_STAFF.icon_img = 2;

SKL_STRONG_STAFF.attacks[0] = create_skill_attack(AT_FSTRONG, AT_FSTRONG)
SKL_STRONG_STAFF.attacks[0].sprite = sprite_get("fstrong_3");
SKL_STRONG_STAFF.attacks[0].hurtbox = sprite_get("fstrong_3_hurt");
SKL_STRONG_STAFF.attacks[0].strong_charge_window = 9;
SKL_STRONG_STAFF.attacks[0].startup_windows = [9, 10];
SKL_STRONG_STAFF.attacks[0].active_windows = [11, 12];
SKL_STRONG_STAFF.attacks[0].recovery_windows = [13];
SKL_STRONG_STAFF.attacks[0].hitboxes = [5, 6, 7];

SKL_STRONG_STAFF.attacks[1] = create_skill_attack(AT_USTRONG, AT_USTRONG)
SKL_STRONG_STAFF.attacks[1].sprite = sprite_get("ustrong_3");
SKL_STRONG_STAFF.attacks[1].hurtbox = sprite_get("ustrong_3_hurt");
SKL_STRONG_STAFF.attacks[1].strong_charge_window = 9;
SKL_STRONG_STAFF.attacks[1].startup_windows = [9, 10];
SKL_STRONG_STAFF.attacks[1].active_windows = [11, 12];
SKL_STRONG_STAFF.attacks[1].recovery_windows = [13];
SKL_STRONG_STAFF.attacks[1].hitboxes = [6, 7, 8, 9];

SKL_STRONG_STAFF.attacks[2] = create_skill_attack(AT_DSTRONG, AT_DSTRONG)
SKL_STRONG_STAFF.attacks[2].sprite = sprite_get("dstrong_3");
SKL_STRONG_STAFF.attacks[2].hurtbox = sprite_get("dstrong_3_hurt");
SKL_STRONG_STAFF.attacks[2].strong_charge_window = 13;
SKL_STRONG_STAFF.attacks[2].startup_windows = [13, 14];
SKL_STRONG_STAFF.attacks[2].active_windows = [15];
SKL_STRONG_STAFF.attacks[2].recovery_windows = [16];
SKL_STRONG_STAFF.attacks[2].hitboxes = [5, 6, 7, 8];

//Bow
SKL_STRONG_BOW = create_skill();
SKL_STRONG_BOW.name = "Bow";
SKL_STRONG_BOW.description_short = "Projectile Strongs";
SKL_STRONG_BOW.description = "The longer the charge, the more powerful it is.";
SKL_STRONG_BOW.level_required = 4;
SKL_STRONG_BOW.icon = sprite_get("weapon_icons");
SKL_STRONG_BOW.icon_img = 3;

SKL_STRONG_BOW.attacks[0] = create_skill_attack(AT_FSTRONG_2, AT_FSTRONG)
SKL_STRONG_BOW.attacks[0].sprite = sprite_get("fstrong_4");
SKL_STRONG_BOW.attacks[0].hurtbox = sprite_get("fstrong_4_hurt");
SKL_STRONG_BOW.attacks[0].strong_charge_window = 1;
SKL_STRONG_BOW.attacks[0].startup_windows = [1, 2];
SKL_STRONG_BOW.attacks[0].active_windows = [3];
SKL_STRONG_BOW.attacks[0].recovery_windows = [4];
SKL_STRONG_BOW.attacks[0].hitboxes = [1];

SKL_STRONG_BOW.attacks[1] = create_skill_attack(AT_USTRONG_2, AT_USTRONG)
SKL_STRONG_BOW.attacks[1].sprite = sprite_get("ustrong_4");
SKL_STRONG_BOW.attacks[1].hurtbox = sprite_get("ustrong_4_hurt");
SKL_STRONG_BOW.attacks[1].strong_charge_window = 1;
SKL_STRONG_BOW.attacks[1].startup_windows = [1, 2];
SKL_STRONG_BOW.attacks[1].active_windows = [3];
SKL_STRONG_BOW.attacks[1].recovery_windows = [4];
SKL_STRONG_BOW.attacks[1].hitboxes = [1];

SKL_STRONG_BOW.attacks[2] = create_skill_attack(AT_DSTRONG_2, AT_DSTRONG)
SKL_STRONG_BOW.attacks[2].sprite = sprite_get("dstrong_4");
SKL_STRONG_BOW.attacks[2].hurtbox = sprite_get("dstrong_4_hurt");
SKL_STRONG_BOW.attacks[2].strong_charge_window = 1;
SKL_STRONG_BOW.attacks[2].startup_windows = [1, 2];
SKL_STRONG_BOW.attacks[2].active_windows = [3];
SKL_STRONG_BOW.attacks[2].recovery_windows = [4];
SKL_STRONG_BOW.attacks[2].hitboxes = [1, 2];

//Bow
SKL_STRONG_ZWEI = create_skill();
SKL_STRONG_ZWEI.name = "Zweihander";
SKL_STRONG_ZWEI.description_short = "Extra Powerful";
SKL_STRONG_ZWEI.description = "High knockback, but very slow.";
SKL_STRONG_ZWEI.level_required = 5;
SKL_STRONG_ZWEI.icon = sprite_get("weapon_icons");
SKL_STRONG_ZWEI.icon_img = 4;

SKL_STRONG_ZWEI.attacks[0] = create_skill_attack(AT_FSTRONG_2, AT_FSTRONG)
SKL_STRONG_ZWEI.attacks[0].sprite = sprite_get("fstrong_5");
SKL_STRONG_ZWEI.attacks[0].hurtbox = sprite_get("fstrong_5_hurt");
SKL_STRONG_ZWEI.attacks[0].strong_charge_window = 6;
SKL_STRONG_ZWEI.attacks[0].startup_windows = [6, 7];
SKL_STRONG_ZWEI.attacks[0].active_windows = [8];
SKL_STRONG_ZWEI.attacks[0].recovery_windows = [9];
SKL_STRONG_ZWEI.attacks[0].hitboxes = [2, 3];

SKL_STRONG_ZWEI.attacks[1] = create_skill_attack(AT_USTRONG_2, AT_USTRONG)
SKL_STRONG_ZWEI.attacks[1].sprite = sprite_get("ustrong_5");
SKL_STRONG_ZWEI.attacks[1].hurtbox = sprite_get("ustrong_5_hurt");
SKL_STRONG_ZWEI.attacks[1].strong_charge_window = 6;
SKL_STRONG_ZWEI.attacks[1].startup_windows = [6, 7];
SKL_STRONG_ZWEI.attacks[1].active_windows = [8];
SKL_STRONG_ZWEI.attacks[1].recovery_windows = [9];
SKL_STRONG_ZWEI.attacks[1].hitboxes = [2, 3, 4];

SKL_STRONG_ZWEI.attacks[2] = create_skill_attack(AT_DSTRONG_2, AT_DSTRONG)
SKL_STRONG_ZWEI.attacks[2].sprite = sprite_get("dstrong_5");
SKL_STRONG_ZWEI.attacks[2].hurtbox = sprite_get("dstrong_5_hurt");
SKL_STRONG_ZWEI.attacks[2].strong_charge_window = 5;
SKL_STRONG_ZWEI.attacks[2].startup_windows = [5, 6];
SKL_STRONG_ZWEI.attacks[2].active_windows = [7, 8, 9];
SKL_STRONG_ZWEI.attacks[2].recovery_windows = [10];
SKL_STRONG_ZWEI.attacks[2].hitboxes = [3, 4];

skill_pool[0] = [SKL_NSPEC_NORM, SKL_NSPEC_FIRE, SKL_NSPEC_ICE]
skill_pool[1] = [SKL_FSPEC_NORM, SKL_FSPEC_SHIELD, SKL_FSPEC_CLAW]
skill_pool[2] = [SKL_USPEC_NORM, SKL_USPEC_WIND, SKL_USPEC_HOLY]
skill_pool[3] = [SKL_STRONG_SWORD, SKL_STRONG_AXE, SKL_STRONG_STAFF, SKL_STRONG_BOW, SKL_STRONG_ZWEI];

skill_current[0] = SKL_NSPEC_NORM;
skill_current[1] = SKL_FSPEC_NORM;
skill_current[2] = SKL_USPEC_NORM;
skill_current[3] = SKL_STRONG_SWORD;

//====Compatability====

//AM
hit_player_event = 0;

//Mamizou
mamizou_transform_spr = sprite_get("mamizou");

//Po Gumbo
pot_compat_variable = sprite_get("food");
pot_compat_text = "HP Potion"
 
//#endregion

#define create_skill()
var result = {
    name : "",
    description_short : "",
    description : "",
    attacks : [],
    level_required : 1,
    icon : asset_get("empty_sprite"),
    icon_s : asset_get("empty_sprite"),
    icon_img : 0
}
return result;

#define create_skill_attack(_attack, _attack_replace)
var result = {
    attack : _attack,
    attack_replace : _attack_replace,
    sprite : asset_get("empty_sprite"),
    hurtbox : asset_get("empty_sprite"),
    air_sprite : 0,
    air_hurtbox : 0,
    strong_charge_window : 0,
    startup_windows : [1, 2],
    active_windows : [3],
    recovery_windows : [4],
    hitboxes : [1, 2]
}
return result;
