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
knockback_adj       = 0.95;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 6;		// 4    -  9
dash_speed          = 5.5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.9;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.4;		// 0.2  -  0.4
prat_fall_accel     = 0.75;		// 0.25 -  1.5
air_friction        = 0.025;		// 0.02 -  0.07
max_fall            = 9;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.4;		// 0.3  -  0.6
hitstun_grav        = 0.53;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 5;		// 4    -  7.4
djump_speed         = 9;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 6;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
land_time           = 5;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.05;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 7;		// 6    -  12
wave_land_adj       = 1.45;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Character-specific assets init

//Sprites
fspecialtrail1 = hit_fx_create( sprite_get( "sludgebomb_particle1" ), 12 );
fspecialtrail2 = hit_fx_create( sprite_get( "sludgebomb_particle2" ), 12 );
fspecialexplosion = hit_fx_create( sprite_get( "sludgebomb_explosion" ), 22 );
fspecialhit = hit_fx_create( sprite_get( "sludgebomb_hit" ), 14 );
large_poison_hit = hit_fx_create( sprite_get( "large_poison_hfx" ), 32 );
leechseed_poison_effect = hit_fx_create( sprite_get( "leechseed_gas" ), 32 );
leechseed_despawn = hit_fx_create( sprite_get( "leechseed_parried" ), 24 );
leechseed_heal_effect = hit_fx_create( sprite_get( "leechseed_heal_effect" ), 20 );
grassknot_right_fx = hit_fx_create( sprite_get( "grassknot_travel_effect_right" ), 36 );
grassknot_left_fx = hit_fx_create( sprite_get( "grassknot_travel_effect_left" ), 36 );

fstrong_hit_fx = hit_fx_create( sprite_get( "fstrong_hfx" ), 28 );
dattack_hit_fx = hit_fx_create( sprite_get( "dattack_small_hfx" ), 12 );
dattack_hit_fx_big = hit_fx_create( sprite_get( "dattack_big_hfx" ), 20 );

// Animation Info
fspecialtrail_x_random1 = 0;
fspecialtrail_x_random2 = 0;
fspecialtrail_y_random1 = 0;
fspecialtrail_y_random2 = 0;

sludge_explode_sfx = sound_get("vileplume_sludgebomb_explode");
grassknot_travel_SFX = 0;
in_grassknot_loop = 0;

// Misc. animation speeds
idle_anim_speed     = 0.16;
crouch_anim_speed   = 0.3;
walk_anim_speed     = 0.175;
dash_anim_speed     = 0.3;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 24;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 2;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 1;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 2;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 2;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;


set_num_hitboxes(AT_EXTRA_1, 1);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 98);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 98);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 75);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy1"));
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, fspecialhit);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_X_OFFSET, -6);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_Y_OFFSET, -20);


v_psn_icon = sprite_get("psn_icon");



// Hurtbox sprites
hurtbox_spr         = sprite_get("idle_hurtbox");
crouchbox_spr       = sprite_get("crouch_hurtbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("vileplume_victorybackground")); // victory_background.png
set_victory_theme(sound_get("vileplume_victory")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_heavy");
landing_lag_sound   = asset_get("sfx_land_heavy");
waveland_sound      = asset_get("sfx_waveland_may"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

indicator_color = get_player_hud_color( player );

leechseed = 0;

vileplume_poison_effect = false;
poison_tick_sound = sound_get("vileplume_poison_tick");

grassknot_exists = 0;
spawn_y = y;
spawn_x = x;
can_spawn = false;

secret_v = 99;

fs_char_portrait_y = 198;
fs_char_chosen_final_smash = "custom";
fs_char_attack_index = 49;
fs_ball_offset_x = -50;
fs_ball_offset_y = -32;

final_blackbg_opacity = 0;
final_sunflash_opacity = 1;
finalsunfadeout = 1;

sprite_change_collision_mask( "final_hitbox", true, 0, 0, 0, 0, 0, 0 );
final_hb_sprite = sprite_get("final_hitbox");

finalsunmovement = 0;
finalsuncounter = 0;

pkmn_stadium_front_img = sprite_get("pokemonstadium1");
pkmn_stadium_back_img = sprite_get("pokemonstadium2");

miiverse_post = sprite_get("miiverse_post");

if ("superTrue" in self){
    set_hitbox_value(49, 1, HG_DAMAGE, 2);    
    set_hitbox_value(49, 2, HG_DAMAGE, 45);
}


