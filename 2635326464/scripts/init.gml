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
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1;		// 0.1  -  2
dash_stop_time      = 5;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.35;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 5;		// 4    -  8
max_jump_hsp        = 8;		// 4    -  8
air_max_speed       = 8;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.45;		// 0.2  -  0.4
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
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("Victory")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_ran"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = sound_get("Feather");
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

idle_state_timer = 0;

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
ramp_timer = 0;
ramp_index = 0;
uspecial_x = 0;
uspecial_y = 0;
ramp_start = 0;
ramp_spr_dir = 1;
djump_lock_timer_default = 30;
djump_lock_timer = 30;
djump_lock_start = 0;

//Dspecial banana_stuff;
banana_present = 0;
banana_cooldown_start = 0;

if has_rune("B") {
	disable_banana_cooldown = 1
} else disable_banana_cooldown = 0

//Land timer
land_timer = 8;
default_land_timer = 8;
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

//Spiny shell config
winner = false;
winner_x = 0;
winner_y = 0;
spiny_launched = 0;
winner_exists = 0;

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

//Kirby
swallowed = 0;
kirbyability = 1;
enemykirby = undefined;
kart_swallowed = 0;

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

// Muno template: (don't change)

	muno_event_type = 0;
	user_event(14);