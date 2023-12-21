// Physical size
char_height             = 56;                   //                  the height of the overhead hud - the arrow with your name and %
knockback_adj           = 1;		            // 0.9  -  1.2

// Ground movement
walk_speed              = 3;		            // 3    -  4.5
walk_accel              = 0.2;		            // 0.2  -  0.5
walk_turn_time          = 6;		            // 6
initial_dash_time       = 8;		            // 8    -  16       zetterburn's is 14
initial_dash_speed      = 7;		            // 4    -  9
dash_speed              = 6.5;		            // 5    -  9
dash_turn_time          = 12;		            // 8    -  20
dash_turn_accel         = 1.2;		            // 0.1  -  2
dash_stop_time          = 5;		            // 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.3;		            // 0.25 -  0.5
ground_friction         = 0.7;		            // 0.3  -  1
moonwalk_accel          = 1.3;		            // 1.2  -  1.4

// Air movement
leave_ground_max        = 7;		            // 4    -  8
max_jump_hsp            = 6;		            // 4    -  8
air_max_speed           = 3.5;  		            // 3    -  7
jump_change             = 3;		            // 3
air_accel               = 0.3;		            // 0.2  -  0.4
prat_fall_accel         = 0.85;		            // 0.25 -  1.5
air_friction            = 0.04;		            // 0.02 -  0.07
max_fall                = 8.5;		            // 6    -  11
fast_fall               = 12;		            // 11   -  16
gravity_speed           = 0.45;		            // 0.3  -  0.6
hitstun_grav            = 0.5;		            // 0.45 -  0.53

// Jumps
jump_start_time         = 5;		            // 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed              = 9.5;		            // 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 6;		            // 4    -  7.4
djump_speed             = 10;		            // 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = 0;		            // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time    = 0;		            //                  the amount of time that   djump_accel   is applied for
max_djumps              = 1;		            // 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp            = 6;		            // 4    -  7
walljump_vsp            = 8;		            // 7    -  10
land_time               = 4;		            // 4    -  6
prat_land_time          = 16;		            // 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction           = 0.12;		            // 0    -  0.15
wave_land_time          = 8;		            // 6    -  12
wave_land_adj           = 1.3;		            // 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 9;		            // 7    -  11
roll_backward_max       = roll_forward_max;		// 7    -  11       always the same as forward
air_dodge_speed         = 8;		            // 7.5  -  8
techroll_speed          = 10;		            // 8    -  11



// Animation Info
// Misc. animation speeds
idle_anim_speed         = 0.15;
crouch_anim_speed       = 0.15;
walk_anim_speed         = 0.3;
dash_anim_speed         = 0.2;
pratfall_anim_speed     = 0.33;

// Crouch
crouch_startup_frames   = 3;
crouch_active_frames    = 11;
crouch_recovery_frames  = 3;
//a dan moment makes it so the last frame needs to be doubled, the strip actually has 3 frames but the last 2 are the same

// Jumps
double_jump_time        = 30;		// 24   -  40
walljump_time           = 32;		// 18   -  32
wall_frames             = 1;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 4;

// Airdodge
air_dodge_startup_frames    = 2;
air_dodge_active_frames     = 5;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = roll_forward_startup_frames;
roll_back_active_frames         = roll_forward_active_frames;
roll_back_recovery_frames       = roll_forward_recovery_frames;

// Tech
tech_active_frames      = 4;
tech_recovery_frames    = 3;

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
set_victory_bg(sprite_get("winscreen")); // sprites\winscreen.png - name doesn't matter, the size has to be 480 x 270 pixels big, usually has this puple filter on it
set_victory_theme(sound_get("bhadra_victory")); // sounds\mus_victory.ogg - leave some silence in the file after the victory theme finishes

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES ////////////////////////////////////////////////////////

debug_display = 0;
practice = get_match_setting(SET_PRACTICE);
// debug_display = get_match_setting(SET_PRACTICE); //0 = no display | 1 = draw_hud display (will display in practice mode by default with this setup)
hbox_view = get_match_setting(SET_HITBOX_VIS);
attack_names = [ //has the names of all the attacks
    "0",
    "AT_JAB",
    "2 (custom intro default)",
    "3",
    "AT_FTILT",
    "AT_DTILT",
    "AT_UTILT",
    "AT_FSTRONG",
    "AT_DSTRONG",
    "AT_USTRONG",
    "AT_DATTACK",
    "AT_FAIR",
    "AT_BAIR",
    "AT_DAIR",
    "AT_UAIR",
    "AT_NAIR",
    "AT_FSPECIAL",
    "AT_DSPECIAL",
    "AT_USPECIAL",
    "AT_NSPECIAL",
    "AT_FSTRONG_2",
    "AT_DSTRONG_2",
    "AT_USTRONG_2",
    "AT_USPECIAL_GROUND",
    "AT_USPECIAL_2",
    "AT_FSPECIAL_2",
    "AT_FTHROW",
    "AT_UTHROW",
    "AT_DTHROW",
    "AT_NTHROW",
    "AT_DSPECIAL_2",
    "AT_EXTRA_1",
    "AT_DSPECIAL_AIR",
    "AT_NSPECIAL_2",
    "AT_FSPECIAL_AIR",
    "AT_TAUNT",
    "AT_TAUNT_2",
    "AT_EXTRA_2",
    "AT_EXTRA_3",
    "39",
    "40 (munophone default)",
    "AT_NSPECIAL_AIR",
    "42",
    "43",
    "44",
    "45",
    "46",
    "47",
    "48",
    "49 (final strong default)"
];

window_end = 0; //the last frame (including whifflag if it's there)
window_last = 0; //AG_NUM_WINDOWS
window_cancel_time = 0; //AG_WINDOW_CANCEL_FRAME

alt_cur = get_player_color(player);

solids = asset_get("par_block");
plats = asset_get("par_jumpthrough")

//Command grab template
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

playtest_active = false;
with (oTestPlayer) playtest_active = true;

is_dodging = false;
attacking = false;
game_time = 0; //checks get_gameplay_time() so we don't need to call the function all the time

//custom intro
AT_INTRO = 2; //the attack index the intro uses, 2 doesn't overwrite any other attack
has_intro = true; //change to false if you don't have one/don't want it active

//projectile with melee hitbox behaviour
HG_PROJECTILE_MELEE = 65;               //if true, it makes it so the projectile applies hitpause and sets off hit player flags


////////////////////////////////////////////////////// CHARACTER SPECIFIC VARIABLES //////////////////////////////////////////////////////

bd_has_custom_rail_grind_sprite = true;
bd_rail_grind_forward_spr = sprite_get("rail_grind_forward");
bd_rail_grind_backwards_spr = sprite_get("rail_grind_backwards");
bd_rail_grind_startup_frames = 2;
bd_rail_grind_active_frames = 5;
bd_rail_grind_endlag_frames = 2;
bd_rail_grind_anim_speed = 0.15;

jump_dir = 0;
jump_forward_spr = sprite_get("jump_forward");
jump_back_spr = sprite_get("jump");
walkturn_counter = 0;

used_cuts = 0;
used_mf_air = 0;
used_mf_air_vboost = 0;
used_mf_dash_ground = 0;
used_mf_dash_air = 0;
next_window = 0;

fspecial_air_lvl2_fx_spr = sprite_get("fspecial_air_lvl2_fx");
fspecial_ground_lvl2_fx_spr = sprite_get("fspecial_ground_lvl2_fx");

fspecial_lvl2_anim_speed = 0.2;
fspecial_lvl3_anim_speed = 0.33;

fspecial_lvl3_fx_spr = sprite_get("fspecial_lvl3_fx");
fspecial_hud_spr = sprite_get("level_hud");
fspecial_hud_timer = 0;
fspecial_hud_time = 30;

//POS -> 0 = up forward, 1 = forward, 2 = down forward 
// mist_pos_x = [[150, 300, 450], [75, 150, 300], [150, 300, 450]];
// mist_pos_y = [[-30, -35, -40], [-30, -35, -40], [-30, -35, -40]];
mist_angles = [35, 0, -35];

//DIST -> PER LEVEL 1, 2, 3;
mist_distance = [120, 300, 450];

lvl = 1;
grind_article = noone;
bd_waveland_sprite = sprite_get("waveland");

coins_in_bag = 5;
max_coins_in_bag = 9;

coin_atk = AT_NSPECIAL;

coins_hud_spr = sprite_get("coins_hud");
coin_fade_in_timer = 0;
coin_fade_in_time = 15;

cool_state = false;
cool_state_timer = 0;

slash_height = 28;
slash_width = 263;
_init = true;

hat_falling = noone;
hat_fall_hfx = hit_fx_create(sprite_get("hat_fall"), 60)

fstrong_hfx = hit_fx_create(sprite_get("fstrong_hfx"), 18)
fstrong_hfx_id = noone
fstrong_hfx_spawned = false
fstrong_sound_played = false

fstrong_explosion_hfx = hit_fx_create(sprite_get("fstrong_explosion_hfx"), 32);
dstrong_explosion_hfx = hit_fx_create(sprite_get("dstrong_explosion_hfx"), 28);

dair_fx = hit_fx_create(sprite_get("dair_fx"), 18);
dair_fx_id = noone;
dair_fx_spawned = false;

bag_hfx = hit_fx_create(sprite_get("bag_hfx"), 30);

grind_hfx = hit_fx_create(sprite_get("grind_fx"), 35);
bd_grind_fx = noone;

slash_break_hfx = hit_fx_create(sprite_get("slash_break_fx"), 20);
slash_break_fx = noone;

taunt_bird_hfx = hit_fx_create(sprite_get("taunt_bird_fx"), 20);
taunt_bird_fx = noone;

gold_speckles_0_hfx = hit_fx_create(sprite_get("gold_speckles_0"), 20);
gold_speckles_1_hfx = hit_fx_create(sprite_get("gold_speckles_1"), 20);
gold_speckles_2_hfx = hit_fx_create(sprite_get("gold_speckles_2"), 20);
gold_speckles_3_hfx = hit_fx_create(sprite_get("gold_speckles_3"), 20);
gold_speckles_4_hfx = hit_fx_create(sprite_get("gold_speckles_4"), 20);
gold_speckles = [gold_speckles_0_hfx, gold_speckles_1_hfx, gold_speckles_2_hfx, gold_speckles_3_hfx, gold_speckles_4_hfx];

sparkle_fx_hfx = hit_fx_create(sprite_get("sparkle_fx"), 20);
coin_gain_fx_hfx = hit_fx_create(sprite_get("coin_gain_fx"), 60);
//////////////////////////////////////////////////////// WORKSHOP COMPATIBILIES ////////////////////////////////////////////////////////
