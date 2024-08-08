/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The ATTACKS are still in their overpowered form in this
 * template, so be sure to make the ones for your character weaker.
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

// Physical size
char_height         = 52;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.9;		// 0.9  -  1.2

// Ground movement
if has_rune("A") {
	walk_speed          = 4.5;		// 3    -  4.5
	walk_accel          = 0.3;		// 0.2  -  0.5
	dash_speed          = 9;		// 5    -  9
} else {
	walk_speed          = 6;		// 3    -  4.5
	walk_accel          = 0.4;		// 0.2  -  0.5
	dash_speed          = 11;		// 5    -  9
}

	default_walk_speed = walk_speed;
	default_walk_accel = walk_accel;
	default_dash_speed = dash_speed;	

walk_turn_time      = 6;	    // 6
initial_dash_time   = 5;		// 8    -  16
initial_dash_speed  = 8;		// 4    -  9
dash_turn_time      = 16;		// 8    -  20
dash_turn_accel     = 0.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6
dash_stop_percent   = 0.25;		// 0.25 -  0.5
ground_friction     = 0.3;		// 0.3  -  1
moonwalk_accel      = 1.2;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 5;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 8;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 1;		// 0.25 -  1.5
air_friction        = 0.03;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 16;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 9;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 4;		// 4    -  7.4
djump_speed         = 9;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 0;		// 4    -  7
walljump_vsp        = 15;		// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 24;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.04;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 12;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11



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
idle_anim_speed     = 0.3;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.4;
dash_anim_speed     = 0.6;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 4;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 4;
air_dodge_active_frames     = 2;
air_dodge_recovery_frames   = 5;

// Roll
roll_forward_startup_frames     = 4;
roll_forward_active_frames      = 8;
roll_forward_recovery_frames    = 4;
roll_back_startup_frames        = 8;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 4;

// Crouch
crouch_startup_frames   = 3;
crouch_active_frames    = 1;
crouch_recovery_frames  = 3;

/*

Muno's Words of Wisdom: Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation. Dan Moment

*/

//Intro timer
intro_timer = 0;

// Hurtbox sprites
if has_rune("L") {
	walk_speed = walk_speed * 1.3;
	walk_accel = walk_accel * 1.3;
	dash_speed = dash_speed	* 1.3;
	hurtbox_spr         = sprite_get("hurtbox_big");
	crouchbox_spr       = sprite_get("hurtboxcrouch_big");
} else {
	hurtbox_spr         = sprite_get("hurtbox");
	crouchbox_spr       = sprite_get("hurtboxcrouch");
}
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victorybg"));
set_victory_theme(sound_get("Victory"));

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_ran"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_bird_sidespecial_start");
air_dodge_sound     = sound_get("Boo");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

///////////////////////////////////////// New Stuff ///////////////////////////////////////////////////////////

/*
with(oPlayer){
//ftilt debuff
painted = false;
debuff_timer_default = 180;
debuff_timer = debuff_timer_default;

default_air_max_speed = air_max_speed;
default_walk_speed = walk_speed;
default_dash_speed = dash_speed;
default_roll_forward_max = roll_forward_max; 
default_roll_backward_max = roll_forward_max;

//bomb spr_dir
bomb_spr_dir = 0;

//you got bananed
bananed = false;
bananed_timer_default = 30;
bananed_timer = bananed_timer_default;
default_friction = ground_friction;
}
*/

initIndexes()
small_sprites = 1;
idle_state_timer = 0;

air_speed = 0;

//engine sfx
engine_timer = 0; 

//bomb spr_dir
bomb_spr_dir = 0;

//you got bananed
bananed = false;

if has_rune("H") {
	bananed_timer_default = 60;
} else bananed_timer_default = 30;

bananed_timer = bananed_timer_default;
default_friction = ground_friction;

land = sprite_get("land");

//spawn
spawn_index = 0;
start_lakitu = 0;
has_charged_countdown = 0;
charged_number = 0;

//respawn

lakitu_sfx_allowed = 0;
lakitu_spr_dir = 1;

//Victory portrait
if (get_player_color(player) == 19) {
	set_victory_portrait(sprite_get("kart_portrait"));
	set_victory_sidebar(sprite_get("kart_result_small"));
} else if (get_player_color(player) == 20) {
	set_victory_portrait(sprite_get("kart_portrait"));
	set_victory_sidebar(sprite_get("kart_result_small"));
} else {
	set_victory_portrait(sprite_get("portrait")); //there's two portraits, one of which outside the sprites folder
	set_victory_sidebar(sprite_get("result_small")); //same here
}

//Dtilt speed
dtilt_hsp = 8;

//Nair speed boost and trick
has_tricked = 0;
next_trick = 1;

//Fair use (ha)
fair_uses = 0;

//Uair lightning;
lighting_index = 0;
lightning_timer_start = 0;
lightning_recharge = 90;
lightning_timer = lightning_recharge;
lightning_cooldown_active = 0;

lightning_hud_timer_active = 0;
lightning_hud_timer_default = 10;
lightning_hud_timer = 10;

//Fstrong check
shell_spawned = 0;

//Ustrong explosion
start_explosion = 0;
bob_omb_explosion = hit_fx_create( sprite_get( "boom" ), 14);
bob_omb_x = 0;
bob_omb_y = 0;
bomb_spr_dir = 0;

//Spiny shell explosion
start_blue_explosion = 0;
blue_explosion = hit_fx_create( sprite_get( "blue_boom" ), 14);
blue_x = 0;
blue_y = 0;
stop_checking = false;
spiny_shell_death = 0;

//Nspecial drift stuff
drift = 0;
drift_timer = 0;
total_drift_timer = 0;
charge = 0;
drift_increment = 0;
golden_charge = 0;
golden_index = 0;
drift_1 = 0;
drift_2 = 1;

//Nspecial Trail
blur2 = array_create(8);

//Fspecial Trail
blur = array_create(10);

//Uspecial
djump_lock_timer_default = 30;
djump_lock_timer = 30;
djump_lock_start = 0;

//Dspecial banana_stuff;
//maybe putting it here solves stuff
banana_present = 0;
banana_cooldown_start = 0;

banana_hud_timer_active = 0;
banana_hud_timer_default = lightning_hud_timer_default;
banana_hud_timer = lightning_hud_timer
banana_cooldown_active = 0;

if has_rune("B") {
	disable_banana_cooldown = 1
} else disable_banana_cooldown = 0

//Land timer
land_timer = 10;
default_land_timer = 10;
land_timer_start = 0;

//Lakitu respawn
summon_lakitu = 0;
lakitu_ascent = 0;
lakitu_x = -500;
lakitu_y = 0;
lakitu_spr_dir = 1;

//Taunt fix
air_taunt = 0;

//Sonic boom
sonic_boom = hit_fx_create(sprite_get("sonic_boom" ), 12);

//Shell Destroy
shell_destroy = hit_fx_create(sprite_get("shell_destroy"), 9);
spiny_shell_destroy = hit_fx_create(sprite_get("spiny_shell_destroy"), 9);

//Chain Chomp Vanish stuff
chain_gone = hit_fx_create(sprite_get("chain_gone"), 9);
chomp_x = 0;
chomp_y = 0;

//Ramp vfx
ramp = hit_fx_create(sprite_get("uspecial_ramp"), 36);
ramp_x = 0;
ramp_y = 0;
ramp_dir = 1;

//Spiny shell config
winner = false;
winner_x = 0;
winner_y = 0;
spiny_launched = 0;
winner_exists = 0;

sploosh_x = 0;
sploosh_y = 0;

//Super move
superTrue = 0;

//Final smash
fs_char_portrait_y = 130;
fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "ori";
fs_ball_offset_x = -50;
fs_ball_offset_y = -32;
starman_timer = 0;
starman_start = 0;
default_walk_speed = walk_speed;
default_dash_speed = dash_speed;

///// Compatibility starts here /////

//Trial Grounds
guiltySprite = sprite_get("guilty_kart")

//Dracula Dialogue
dracula_portrait = sprite_get("dracula_portrait_1");
dracula_portrait2 = asset_get("empty_sprite");
dracula_portrait3 = asset_get("empty_sprite");
var page = 0;

//Hypercam
uhc_victory_quote = "dont worry mr kart, if you keep falling youll eventualy find the ultra shortcut :)";

//Agent N
ncodec1 = "A vehicle with combat capabilities.";
ncodec2 = "It has experience in many types of battlefied.";
ncodec3 = "Beware of his items, don't question where they're stored.";

//Mt. Dedede
arena_title = "The wheeled menace";
arena_short_name = "Mario Kart";

//Soulbound Conflict
battle_text = "* You pray not to get Mario Karted";
battle_text2 = "* Something tells you it won't work";

//Pokémon Stadium
pkmn_stadium_front_img = sprite_get("pkmn_kart_front");
pkmn_stadium_back_img = sprite_get("pkmn_kart_back");
pkmn_stadium_name_override = "MarioKart";

//Luigi's Mansion
resort_portrait = sprite_get("kart_painting");

//Green Flower Zone sign
gfzsignspr = sprite_get("sign_kart");

//Kirbys
swallowed = 0;
kirbyability = 1;
enemykirby = undefined;
kart_swallowed = 0;
roulette_start = 0;
roulette_stop = 0;
TCG_Kirby_Copy = -1;
kirby_sfx_stop_timer = 0;

//Toon Link
toonlink_photo = sprite_get("toon_link_pic");
toonlink_photo2 = 2;

//TCO
tcoart = sprite_get("tco_art");

//Henry Stickmin
has_fail = true;
fail_text = "Henry got Mario Karted";

//Hikaru
Hikaru_Title = "Wheeled Menace";

//Rivals RC

if ((get_player_color(player) == 19) || (get_player_color(player) == 20)) {
	kart_sprite = sprite_get("tiny_kart");
} else kart_sprite = sprite_get("tiny_kart_with_sg");

kart_frames = 1;
kart_anim_speed = 1;
kart_anim_speed_scaling = 1;
kart_engine_sound = 2;
kart_drift_spr = 1;
kart_inside = false;

//Otto Bobblehead
otto_bobblehead_sprite = sprite_get("bobble_head");

// Steve death message.
steve_death_message = "Mario Kart failed the ultra shortcut";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 7;

//Yooka & Laylee
laylee_win_quote = "You used items and still lost? Should've stayed in your own genre!";

//Princess Shroob
princess_shroob_compat_dialogue = ["Where are you going with such haste?","Those tires and bananas of yours left quite a mess around here.","CLEAN IT OR PERISH!"]

//Miiverse
 miiverse_post = sprite_get("miiverse");

dracula_speaker[page] = 0;
dracula_text[page] = "Who is it that dares to enter the unholy realm of...";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "Wait a second, is that an automobile...";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "...Inside MY castle?";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "Damn it! Look at all those tire marks on my beautiful floor. And I know you left more on your way up here!";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "What makes you invade someone else's property, only to disgrace its magnificence with such wretched dirt? Is running through castles just another friday night for you?";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "Did you honestly think that someone else would clean all that mess for you? That your actions have no consequences?";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "[taunt]";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "[shake]THAT'S IT. YOU'LL CLEAN YOUR MESS, THEN YOU'RE GOING TO HELL WHERE YOU BELONG.";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "[glass]AND YOU'LL CLEAN THIS GLASS TOO.";
page++;

//Daroach

daroach_portrait = sprite_get("dracula_portrait_1");
daroach_portrait2 = asset_get("empty_sprite");
daroach_portrait3 = asset_get("empty_sprite");
var page = 0;

daroach_speaker[page] = 0;
daroach_text[page] = "There you are!";
page++;

daroach_speaker[page] = 0;
daroach_text[page] = "I knew my stack of coins was getting smaller!";
page++;

daroach_speaker[page] = 0;
daroach_text[page] = "And I knew Doc wouldn't leave all those tire marks on the airship! He has something called 'manners'.";
page++;

daroach_speaker[page] = 0;
daroach_text[page] = "But it appears you don't.";
page++;

daroach_speaker[page] = 1;
daroach_text[page] = "[taunt][taunt]";
page++;

//Palutena's Guidance
user_event(7);

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