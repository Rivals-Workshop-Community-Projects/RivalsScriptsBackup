// init.gml

// ========= custom vars start =======

// Checks which current color the player has
alt_cur = get_player_color(player);


// ========= custom vars end =========

// =======================================================================
// STAT NAME		    VALUE                   BASECAST RANGE      NOTES

// Physical size
char_height             = 56;                   //                  the height of the overhead hud - the arrow with your name and %
knockback_adj           = 1.05;		            // 0.9  -  1.2

// Ground movement
walk_speed              = 3.25;		            // 3    -  4.5
walk_accel              = 0.2;		            // 0.2  -  0.5
walk_turn_time          = 6;		            // 6
initial_dash_time       = 8;		            // 8    -  16       zetterburn's is 14
initial_dash_speed      = 6.25;		            // 4    -  9
dash_speed              = 5.75;		            // 5    -  9
dash_turn_time          = 12;		            // 8    -  20
dash_turn_accel         = 1.5;		            // 0.1  -  2
dash_stop_time          = 6;		            // 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.35;		            // 0.25 -  0.5
ground_friction         = 0.5;		            // 0.3  -  1
moonwalk_accel          = 1.3;		            // 1.2  -  1.4

// Air movement
leave_ground_max        = 6;		            // 4    -  8
max_jump_hsp            = 5.5;		            // 4    -  8
air_max_speed           = 3.5;  		            // 3    -  7
jump_change             = 3;		            // 3
air_accel               = 0.3;		            // 0.2  -  0.4
prat_fall_accel         = 0.85;		            // 0.25 -  1.5
air_friction            = 0.04;		            // 0.02 -  0.07
max_fall                = 9;		            // 6    -  11
fast_fall               = 14;		            // 11   -  16
gravity_speed           = 0.5;		            // 0.3  -  0.6
hitstun_grav            = 0.5;		            // 0.45 -  0.53

// Jumps
jump_start_time         = 5;		            // 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed              = 10.5;		            // 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 5.5;		            // 4    -  7.4
djump_speed             = 10;		            // 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = 0;		            // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time    = 0;		            //                  the amount of time that   djump_accel   is applied for
max_djumps              = 1;		            // 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp            = 7;		            // 4    -  7
walljump_vsp            = 8;		            // 7    -  10
land_time               = 4;		            // 4    -  6
prat_land_time          = 10;		            // 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate
wall_frames             = 2;					// may or may not actually work... dan pls

// Shield-button actions
wave_friction           = 0.12;		            // 0    -  0.15
wave_land_time          = 8;		            // 6    -  12
wave_land_adj           = 1.15;		            // 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 9;		            // 7    -  11
roll_backward_max       = roll_forward_max;		// 7    -  11       always the same as forward
air_dodge_speed         = 7.5;		            // 7.5  -  8
techroll_speed          = 10;		            // 8    -  11

// Hurtbox Setup
hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("gus_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

// Animation Speeds
idle_anim_speed = .175;
crouch_anim_speed = .1;
walk_anim_speed = .115;
dash_anim_speed = .225;
pratfall_anim_speed = .25;

// Jumps
double_jump_time    = 28;		// 24   -  40
walljump_time       = 24;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Crouch Animation Frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

// Parry Animation Frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

// Tech Animation Frames
tech_active_frames = 2;
tech_recovery_frames = 1;

// Tech Roll Animation Frames
techroll_startup_frames = 1
techroll_active_frames = 2;
techroll_recovery_frames = 4;
techroll_speed = 10;

// Airdodge Animation Frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

// Roll Animation Frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 4;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

// Base SFX Init
land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_gus_jump");
//djump_sound = asset_get("sfx_jumpair");
djump_sound = sound_get("sfx_plague_clothes_swipe");
air_dodge_sound = asset_get("sfx_quick_dodge");

// Custom SFX Init

//sfx_customTemp = sound_get("sfx_customTemp");


// Setting Portrait for alts that change outline color
// Resetting portrait and result_small back to normal
set_victory_portrait( sprite_get( "portrait" ));
set_victory_sidebar( sprite_get( "result_small" ));

// portrait setting depending on alt
switch (alt_cur){
	// gameboy
	case 7:
		set_victory_portrait( sprite_get( "portrait_ea" ));
		set_victory_sidebar( sprite_get( "result_small_ea" ));
		break;
	// pure gold
	case 17:
		set_victory_portrait( sprite_get( "portrait_gold" ));
		set_victory_sidebar( sprite_get( "result_small_gold" ));
		break;
}

// victory theme (placeholder until a custom one is made)
set_victory_theme(CH_SHOVEL_KNIGHT);

// idle fidget
wait_time = 256;	// time it takes in frames to start the idle fidget
wait_length = (22 * 5);	// how long the idle fidget takes, in frames. there's now way to adjust the frame rate for this
wait_sprite = sprite_get("idle_wait"); 

// Compatability (add more as needed.)
TCG_Kirby_Copy = 10; // Bomb								// Kirby (Dream Collection)
steve_death_message = "Steve blew up"; 						// Muno Steve
link_spear_drop = 2; 										// Muno Link (ima be real i dont remember what this one is and i dont feel like checking)
Hikaru_Title = "Explosive Scientist";						// Hikaru
arena_title = "The Plague of Shadows";						// Mt. Dedede Arena
boxing_title = arena_title;									// Boxing Ring
arena_short_name = "Plague Knight";
gfzsignspr = sprite_get("gfz_signpost");					// Greenflower Zone
miiverse_post = sprite_get("miiverse");						// Miiverse
user_event(7); 												// Palutena's Guidance Codec
otto_bobblehead_sprite = sprite_get("otto");				// Otto Bobblehead

knight_compat_dream = 										// The Knight (Reiga) Dream Nail Dialogue
    [
        "Hee hee hee!",
        "Oh, your essence is perfect! Hold still, in the name of science!",
        "(I wonder how Mona's doing...)"
    ]

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// sparkly
goldAlt_sparkle_fx_med = hit_fx_create(sprite_get("goldalt_sparkle_effect_med"), 24);
goldAlt_sparkle_fx_sml = hit_fx_create(sprite_get("goldalt_sparkle_effect_sml"), 24/2);

// intro stuff
intro_player_offset_num = (5 * (player - 1));
introTimer = -16 - intro_player_offset_num;
introTimer2 = 0;
introanimplaying_timer = 0;
intro_shouldgotoidle = false;

// pandemonium cloak vars
usingPandemoniumCloak = (alt_cur == 15);
pandemoniumCloakTimer = 0;
timeWhichPCChangesColor = 600;
pandemoniumFlashVisualThingy = 0;

numberOfPossiblePandemoniumCloakColors = 20;
pandemoniumCloakColors = 0;
prevCloakColors = [];

cascadeExplodeSFX = sound_get("sfx_plague_cascade_explode")
cascadeEmberSFX = sound_get("sfx_plague_cascade_ember")

determinedPandemoniumCloakColor = random_func_2(0, numberOfPossiblePandemoniumCloakColors, true);

pandemoniumCloakColors[0] = [$a4e8fc, $6ba3e8, $4d5ae8, $4d5ae8, $a4e8fc, $6ba3e8];
pandemoniumCloakColors[1] = [$fff97a, $fc8f12, $5c6055, $5c6055, $fff97a, $fcbc12];
pandemoniumCloakColors[2] = [$fc3800, $940000, $520e00, $520e00, $fc3800, $940000];
pandemoniumCloakColors[3] = [$f77bb9, $de335e, $4603ab, $4603ab, $f77bb9, $de335e];
pandemoniumCloakColors[4] = [$01cde8, $0171e8, $007a43, $007a43, $01cde8, $0171e8];
pandemoniumCloakColors[5] = [$cacaca, $898989, $525252, $525252, $cacaca, $cacaca];
pandemoniumCloakColors[6] = [$fcb800, $db5b00, $8c1800, $8c1800, $fcb800, $fcb800];
pandemoniumCloakColors[7] = [$58f89c, $22a376, $ac0028, $ac0028, $ac0028, $58f89c];
pandemoniumCloakColors[8] = [$00b800, $00731d, $4640a3, $4640a3, $00731d, $00360e];
pandemoniumCloakColors[9] = [$fcaeef, $bd5772, $633c00, $633c00, $fcaeef, $bd5772];
pandemoniumCloakColors[10] = [$f5b98e, $de7919, $d93500, $d93500, $f5b98e, $f5b98e];
pandemoniumCloakColors[11] = [$99ffdc, $00c956, $0088fc, $0088fc, $bcffe8, $bcffe8];
pandemoniumCloakColors[12] = [$f5a9b8, $e04848, $5bcefa, $5bcefa, $eeeeee, $eeeeee];
pandemoniumCloakColors[13] = [$fce762, $d99e29, $e40060, $d99e29, $d99e29, $e40060];
pandemoniumCloakColors[14] = [$9e9e5c, $855609, $41305e, $41305e, $855609, $9e9e5c];
pandemoniumCloakColors[15] = [$7f9aff, $5849ca, $3f414d, $3f414d, $7f9aff, $7f9aff];
pandemoniumCloakColors[16] = [$f8b803, $a66601, $6d4201, $6d4201, $a66601, $f8b803];
pandemoniumCloakColors[17] = [$fbb700, $999f61, $83884d, $83884d, $fbb700, $fbb700];
pandemoniumCloakColors[18] = [$00b800, $788183, $7818a1, $7818a1, $00b800, $00b800];
pandemoniumCloakColors[19] = [$ddf779, $58d858, $004a66, $004a66, $c1de63, $c1de63];

// ustrong
ustrongFadeFX = hit_fx_create(sprite_get("ustrong_fade_vfx"), 12);
bomb_explode_sound = sound_get("sfx_plague_bomb_explode_small")
ustrong_hit_fx = hit_fx_create(sprite_get("ustrong_hit_fx"), 28)

//Charged Nspecial
can_charge_nspecial = false;
charging_nspecial_buffer = 0;
is_charging_nspecial = false;
charged_nspecial_timer = 0;
charged_nspecial_max_time = 40;
charged_nspecial_should_wait = false;

fspecial_angle = 0;

fspecial_distance = 40;
fspecial_min_distance = 40;
fspecial_max_distance = 240;

fspecial_timer = 0;
fspecial_duration = 40;

fspecial_start_position = {x:0,y:0};
// Bomb Direction
bomb_direction = 0; //no direction

set_hit_particle_sprite( 1, sprite_get( "hit_particle1" ) );
set_hit_particle_sprite( 2, sprite_get( "hit_particle2" ) );

// Nspecial
bombs_thrown = 0;
bombs_thrown_max = [1, 3, 1, 1];
bomb_bounce_fx = hit_fx_create(sprite_get("bomb_bounce_fx"), 28)
datk_bomb_fx = hit_fx_create(sprite_get("bomb_bounce_large_cut_fx"), 22)
bomb_cluster_fx = hit_fx_create(sprite_get("bomb_cluster_fx"), 18)

explode_medium_fx = hit_fx_create(sprite_get("explode_medium_fx"), 28)
explode_large_fx = hit_fx_create(sprite_get("explode_large_fx"), 28)

fspecial_vfx = hit_fx_create(sprite_get("fspecial_teleport_vfx"), 28)
fspecial_cancel_vfx = hit_fx_create(sprite_get("fspecial_cancel_vfx"), 24)

fstrong_dissipation_fx = hit_fx_create(sprite_get("fstrong_dissipation_vfx"), 36)
fstrong_dissipation_info = {
	x: 0,
	y: 0
}

cascade_flames = [];
cascade_flames_2 = [];
var ii = 0;
repeat (4) {
	var flame = instance_create(-200,-200,"obj_article1")
	flame.array_position = ii;
	array_push(cascade_flames, flame)
	ii++;
}

ii = 0;
repeat (4) {
	var flame = instance_create(-200,-200,"obj_article1")
	flame.array_position = ii;
	flame.alt = true;
	array_push(cascade_flames_2, flame)
	ii++;
}

sparkler_hit_fx = hit_fx_create(sprite_get("sparkler_hit_fx"), 27);
sparkler_hit_sml_fx = hit_fx_create(sprite_get("sparkler_hit_sml_fx"), 27);

cascade_trail_vfx = hit_fx_create(sprite_get("cascade_ember_trail"), 24)
cascade_ember_explode_vfx = hit_fx_create(sprite_get("cascade_ember_explode"), 34)
dstrong_smoke_fx = hit_fx_create(sprite_get("dstrong_smoke_vfx"), 28)
bomb_destroy_fx = hit_fx_create(sprite_get("bomb_destroy"), 24)

cascade_tiny_flame_hfx = hit_fx_create(sprite_get("cascade_tiny_flame_hfx"), 28)
cascade_flame_hfx = hit_fx_create(sprite_get("cascade_flame_hfx"), 31)

empty_vfx = hit_fx_create(asset_get("empty_sprite"), 4)

set_victory_theme(sound_get("victory"))

bomb_cluster_info = {
	x:0,
	y:0,
	timer:0,
	active:false,
	fx_angle:30,
	available_angles:[],
	can_hit_self: false,
	can_hit:[]
}

nspecial_charge = 0;
nspecial_max_charge = 100;
nspecial_distance = 12;
nspecial_charged_times = 0;
nspecial_direction = -1;
direction_lock = false;
nspecial_charged_stats = {
	active : false,
	position : {
		x: 0,
		y: 0
	},
	timer : 0,
	max_timer : 12,
	angle : 90,
	separation_radius : 30,
	angle_interval : 180
}

ftilt_times = 0;

bomb_kb_adj = ds_map_create();
bomb_kb_adj[? AT_FAIR] = [13, 23];

is_gold_jump_right = false;

// nspecial
has_performed_hop = false;

// uspecial
uspecFadeBackFX = hit_fx_create(sprite_get("uspecial_afterfxback"), 15)
uspecFadeFrontFX = hit_fx_create(sprite_get("uspecial_afterfxfront"), 15)

// Dspecial
current_bomb_powder = 1;
display_timer = -1;
display_max_time = 15;
display_coords = {x:x, y:y};
display_intro = false;
display_selected = false;
bomb_powder_names = ["Cascade", "Black", "Cluster", "Sparkler"]

afterimages = ds_list_create()

initIndexes();

var col = get_player_color(player)
bb_color = /*#*/$FFFCC7;
actionline_vfx = hit_fx_create(sprite_get("actionline"), 14)
bolt_vfx = hit_fx_create(sprite_get("bolt_vfx"), 18)
uspecial_trail_vfx = hit_fx_create(sprite_get("uspecial_trail"), 24)

gb_outline_color = /*#*/$314323

looped_sound = noone;

should_spawn_special_bomb = false;

//Below code from MunoPhone API.
#define initIndexes()

// Custom indexes

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

/*