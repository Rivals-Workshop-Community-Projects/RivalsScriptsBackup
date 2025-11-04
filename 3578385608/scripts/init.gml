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

// STAT NAME		    VALUE       BASECAST RANGE      NOTES

// Physical size
char_height             = 68;       //                  the height of the overhead hud - the arrow with your name and %
knockback_adj           = 1.1;		// 0.9  -  1.2

// Ground movement
walk_speed              = 3;		// 3    -  4.5
walk_accel              = 0.2;		// 0.2  -  0.5
walk_turn_time          = 6;		// 6
initial_dash_time       = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed      = 7.5;		// 4    -  9
dash_speed              = 6.5;		// 5    -  9
dash_turn_time          = 12;		// 8    -  20
dash_turn_accel         = 1;		// 0.1  -  2
dash_stop_time          = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.4;		// 0.25 -  0.5
ground_friction         = 0.65;		// 0.3  -  1
moonwalk_accel          = 1.3;		// 1.2  -  1.4

// Air movement
leave_ground_max        = 6;		// 4    -  8
max_jump_hsp            = 7;		// 4    -  8
air_max_speed           = 4.5;  		// 3    -  7
jump_change             = 3;		// 3
air_accel               = 0.3;		// 0.2  -  0.4
prat_fall_accel         = 0.9;		// 0.25 -  1.5
air_friction            = 0.05;		// 0.02 -  0.07
max_fall                = 10;		// 6    -  11
fast_fall               = 15;		// 11   -  16
gravity_speed           = 0.5;		// 0.3  -  0.6
hitstun_grav            = 0.5;		// 0.45 -  0.53

og_air_max_speed	=	air_max_speed;
og_prat_fall_accel	=	prat_fall_accel;
og_air_friction		=	air_friction;
og_max_fall			=	max_fall;
og_fast_fall		=	fast_fall;
og_gravity_speed	=	gravity_speed;

og_walk_speed			=	walk_speed;
og_walk_accel			=	walk_accel;
og_initial_dash_speed	=	initial_dash_speed;
og_dash_speed			=	dash_speed;
og_dash_turn_accel		=	dash_turn_accel;
og_dash_stop_percent	=	dash_stop_percent;
og_ground_friction		=	ground_friction;

// Jumps
jump_start_time         = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed              = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 6.5;		// 4    -  7.4
djump_speed             = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time    = 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps              = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp            = 7;		// 4    -  7
walljump_vsp            = 9;		// 7    -  10
land_time               = 4;		// 4    -  6
prat_land_time          = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction           = 0.10;		// 0    -  0.15
wave_land_time          = 8;		// 6    -  12
wave_land_adj           = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 9;		// 9    -  11
roll_backward_max       = 9;		// 9    -  11       always the same as forward
air_dodge_speed         = 7.5;		// 7.5  -  8
techroll_speed          = 10;		// 8    -  11



// Animation Info
// Misc. animation speeds
idle_anim_speed         = 0.14;
crouch_anim_speed       = 0.1;
walk_anim_speed         = 0.17;
dash_anim_speed         = 0.2;
pratfall_anim_speed     = 0.25;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 1;
//a dan moment makes it so the last frame needs to be doubled, the strip actually has 3 frames but the last 2 are the same

// Jumps
double_jump_time        = 28;		// 24   -  40
walljump_time           = 15;		// 18   -  32
wall_frames             = 1;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 4;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 1;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = roll_forward_startup_frames;
roll_back_active_frames         = roll_forward_active_frames;
roll_back_recovery_frames       = roll_forward_recovery_frames;

// Tech
tech_active_frames      = 1;
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
set_victory_bg(sprite_get("win_bg")); // sprites\winscreen.png - name doesn't matter, the size has to be 480 x 270 pixels big, usually has this puple filter on it
set_victory_theme(sound_get("mus_victory")); // sounds\mus_victory.ogg - leave some silence in the file after the victory theme finishes



//alt dependent
var alt_cur = get_player_color(player);
if alt_cur != 0{
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small"));
	set_ui_element(UI_CHARSELECT, sprite_get("charselect"));
	set_ui_element(UI_HUD_ICON, sprite_get("hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_hurt"));
	set_ui_element(UI_OFFSCREEN, sprite_get("offscreen"));
}else{
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("corr_portrait"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("corr_result_small"));
	set_ui_element(UI_CHARSELECT, sprite_get("corr_charselect"));
	set_ui_element(UI_HUD_ICON, sprite_get("corr_hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("corr_hud_hurt"));
	set_ui_element(UI_OFFSCREEN, sprite_get("corr_offscreen"));
}


//fspecial
car = noone;
set_armor = 0;

//dspecial
table = noone;
cooking = 0;
lab_ui_alpha = 0;
lab_ui_act = 0;
lab_ui_pos = [0, 0];
materials = [0, 0, 0];
stored_recipe = "000"
recipes_index = ["000", "300", "210", "120", "201", "102", "111", "030", "021", "012", "003"];
drinkable_index = ["210", "102", "021", "012"];
throwable_index = ["300", "120", "201", "111", "030", "003"];
recipes_name = ["", "Liquid Nitrogen", "Relaxants", "Lily of the Valley", "Superheated Water", "Grain Alcohol", "Hydrofluoric Acid", "Phosphine", "Painkillers", "Coffee", "Fulminated Mercury"];
recipes_col = [0, c_fuchsia, c_lime, c_fuchsia, c_red, c_lime, c_red, c_red, c_lime, c_lime, c_red];
recipes_desc = ["", "Freeze your enemies", "I feel light", "A slow and deadly medicine", "Don't step on it", "Less pain, more power", "Melts through everything", "Highly volatile", "Painkiller, become immovable", "I feel energetic", "handle with care"];
concoction_id = 0;
flavour_text = 0;
concoction_name = [0, 0, 0, 0];
meth_cook_time = 400;
cook_fx = [hit_fx_create(sprite_get("partc_dspecial_quasine"), 40), hit_fx_create(sprite_get("partc_dspecial_wexon"), 40), hit_fx_create(sprite_get("partc_dspecial_exortium"), 40)];

nair_fx = hit_fx_create(sprite_get("nair_fx"), 15);
dstrong_fx = hit_fx_create(sprite_get("partc_dstrong"), 24);
dair_fx = hit_fx_create(sprite_get("partc_dair"), 18);
acidbubbbles = hit_fx_create(sprite_get("partc_acidbubbles"), 33);
water_steampulse = hit_fx_create(sprite_get("partc_water_steampulse"), 10);
dattack_fx = hit_fx_create(sprite_get("partc_dattack"), 13);
egocollect_fx = hit_fx_create(sprite_get("partc_egocollected"), 93);
hit_vfx = noone;

//buffs
ego_boost = 0;
weed_boost = 0;
alcohol_boost = 0;
morphene_boost = 0;
coffee_boost = 0;
partcs = [hit_fx_create(sprite_get("partc_nitrogen"), 40), hit_fx_create(sprite_get("partc_weed"), 30), hit_fx_create(sprite_get("partc_lily"), 39), hit_fx_create(sprite_get("partc_alcohol"), 12), hit_fx_create(sprite_get("partc_morphine"), 21), hit_fx_create(sprite_get("partc_coffee"), 12), hit_fx_create(sprite_get("partc_meth_pos"), 60), hit_fx_create(sprite_get("partc_meth_neg"), 60), hit_fx_create(sprite_get("partc_ego1"), 40)];
base_damage_scaling = damage_scaling;


//cyan, purple, orange
/* recipes
Cyan -         Mixture 20-4F         - A concoction that has strong heat-absorption capabilities and is an environmental toxin.
Red -     Compound 300D 10.5     - A concoction that has a distinct luminescent glow and has a high radiation level.
Orange -     Component 255165    - A concoction that has high heat production and is prone to detonation.

"300" Liquid Nitrogen		T
"210" Weed Infusion			D
"120" Lily of the Valley	T
"201" Superheated Water		T*
"102" Grain Alcohol			D
"111" Hydrofluoric Acid		T*
"030" Phosphene				T*
"021" Morphene				D
"012" Coffee				D
"003" Fulminated Mercury	T

CCC - Liquid Nitrogen
    - Walt concocts a vial of pure cold.  Throwing it an an opponent causes them to get periodically frozen in place (0.5s freezes once every 3 seconds) and are stuck in hitpause for longer amounts of time if hit.
    Medium range projectile.
CCM - Weed Infusion
    - Walt concocts a chemical that he can ingest, making him floatier and jump higher.
    Self-cast.
CMM - Lily of the Valley
    - Walt concocts a highly potent poison that he can throw at opponents.  Opponents take damage over time when hit by it.
    Short range projectile.
CCO -  Superheated Water *
    - Walt concocts a vial of unstable water that can be thrown down into a puddle that, when touched by an opponent, violently explodes into steam.
    Stage trap.
COO - Grain Alcohol
    - Walt concocts a chemical that he can inject into himself for a small defensive buff and higher attack damage.
    Self-cast.
CMO - Hydrofluoric Acid *
    - Walt concocts a highly potent acid that he can splash in front of himself.  Opponents caught by the initial splash will take a high amount of damage.  The puddle left behind eats through stage platforms, so anyone attempting to use them will fall straight through.
    Stage trap.
MMM - Phosphene *
    - Walt concocts a chemical that, when thrown to the ground, puffs up in a gas of poison that floats upward, damage anyone touching the cloud.
    Stage trap.
MMO - Morphene
    - Walt concocts a chemical that strongly reduces all incoming damage and makes him heavier and harder to knock back.
    Self-cast.
MOO - Coffee 
    - Walt brews a cup of coffee that he can ingest, increasing his attack + movement speed and cuts Strong charging in half.
    Stage trap.
OOO - Fulminated Mercury *
    - Walt concocts a grenade that he can lob at opponents.  High firepower, high damage.
    High range projectile.

*/

//ascension joke
sparkle = hit_fx_create(sprite_get("vfx_sparkle"), 20);
draw_jesse = 0;

//steve interaction
steve_enabled = -2;
steve_cooking = 0;
stevepotion = 0;
steveid = noone;
steve_potlvl = [0, 3, 2, 1, 2, 2, 3, 1, 3, 1, 2];
steve_pots = ["", "strength", "speed", "jump_boost", "regeneration", "resistance", "instant_damage", "weakness", "poison", "glowing", "slowness"];
steve_potnames = ["", "potion of strength", "potion of speed", "potion of jump boost", "potion of regeneration", "potion of resistance", "splash potion of instant damage", "splash potion of weakness", "lingering potion of poison", "lingering potion of glowing", "lingering potion of slowness"]
steve_desc = ["", "Has a very strong taste", "Has a very acre taste", "Has a very light taste", "Tastes sweet", "Tastes pretty bland", "It smells awful", "The smell makes my nose numb", "Makes me wanna puke", "Smells like lemons", "It odorless"];
steve_bottle = noone;
steve_overlay = noone;
steve_color = noone;


//parry interaction
breaking_bad_handler = noone;
breaking_bad_nitrogen = 0;
breaking_bad_lily = 0;
breaking_bad_meth_stack = 0;
breaking_bad_meth_pos_timer = 0;
breaking_bad_meth_neg_timer = 0;
breaking_bad_old_damage = 0;
breaking_bad_walt_fall = 0;
breaking_bad_freezable = 0;
breaking_bad_freezable_times = 0;
breaking_bad_acid_pratland = 0;
breaking_bad_acid_initial_pratland = 0;