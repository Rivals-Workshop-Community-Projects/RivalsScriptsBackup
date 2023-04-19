/*
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

// STAT NAME		VALUE       BASECAST RANGE   NOTES

// Physical size
char_height         = 58;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.9;		// 0.9  -  1.2
small_sprites       = 1;

// Ground movement
walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 10;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 5;		// 4    -  9
dash_speed          = 6;		// 5    -  9
dash_turn_time      = 12;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.8;		// 0.3  -  1
moonwalk_accel      = 1.4;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.03;		// 0.02 -  0.07
max_fall            = 11;		// 6    -  11
fast_fall           = 16;		// 11   -  16
gravity_speed       = 0.55;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10.5;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 7;		// 4    -  7.4
djump_speed         = 10.5;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 11;		// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 24;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.04;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.35;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Character-specific assets init

//Sprites

// SFX
sm64_fuse = sound_get("sm64_fuse");
heaveho_whir = sound_get("heaveho_whir");

// VFX
bomb_explode = hit_fx_create( sprite_get( "fspecial_bombproj_blast" ), 19 );
bullybomb_explode = hit_fx_create( sprite_get( "fspecial_bullyproj_blast" ), 19 );
bomb_hit = hit_fx_create( sprite_get( "fspecial_bombhit" ), 14 );
bomb_bounce = hit_fx_create( sprite_get( "bouncefx" ), 8 );
bomb_pop = hit_fx_create( sprite_get( "fspecial_pop" ), 15 );

whomp_explode = hit_fx_create( sprite_get( "fstrong_whomp_destroyed" ), 19 );
thwomp_explode = hit_fx_create( sprite_get( "dstrong_thwomp_destroyed" ), 19 );
thwomp_hit1 = hit_fx_create( sprite_get( "thwomp_hfx_1" ), 32 );
thwomp_hit2 = hit_fx_create( sprite_get( "thwomp_hfx_2" ), 20 );
whomp_hit1 = hit_fx_create( sprite_get( "whomp_hfx_1" ), 32 );
whomp_hit2 = hit_fx_create( sprite_get( "whomp_hfx_2" ), 20 );

crystal_hit1 = hit_fx_create( sprite_get( "crystal_hfx_1" ), 32 );
crystal_hit2 = hit_fx_create( sprite_get( "crystal_hfx_2" ), 20 );
starune = hit_fx_create( sprite_get( "ustrong_rune_fx" ), 18 );

cannon_base = hit_fx_create( sprite_get( "uspecial_base_strip1" ), 1 );
launchblast = hit_fx_create( sprite_get( "uspecial_blast_fx" ), 22 );
cannonball = hit_fx_create( sprite_get( "cannonball_hfx" ), 18 );

funnyhit = hit_fx_create( sprite_get( "dair_sweetspotfx" ), 24 );

taunt_double = hit_fx_create( sprite_get( "taunt_self_double" ), 16 );

empty_fx = hit_fx_create( asset_get( "empty_sprite" ), 1 );

// Variables
fspeshold = 0; //FSpecial buffer for holding the bomb
bomb_numbering = 0; //Starting point for the bomb throwing visuals

cannon_dir = 0; //When turning in the cannon
cannon_charge = 0;
cannon_move_sound = noone;

whomp_id = 0;
thwomp_id = 0;

dashcount = 0; //DAttack looping cap
idleState = 0; //Idle anims
cling = 0; //Wallcling animation tracker
hoot_trigger = false; //When dropping from plat
spawn_still = true; //Seasonal alt movement check
introTimer = -4; //setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;
chosen_idle = 0;

bomb_exists = noone;

//GRAB
nspecial_grabbed_player = noone;
nspecial_grab_timer = 0;
nspecial_grab_max_time = 60;

throw_offset = 0; //Raise tracking height for projectiles/articles
grab_radius = 50; //distance check for projectiles/articles

prev_dir = 1; //BThrow
stickbthrow = false; //BThrow also

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.18;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.2;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 24;		// 24   -  40
walljump_time       = 32;		// 18   -  32
can_wall_cling      = true;
wall_frames         = 4;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 11;

// Tech
tech_active_frames      = 6;
tech_recovery_frames    = 6;

// Tech roll
techroll_startup_frames     = 2;
techroll_active_frames      = 8;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 2;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 3;
roll_forward_active_frames      = 8;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 2;
roll_back_active_frames         = 8;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 3;
crouch_active_frames    = 8;
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



// Hurtbox sprites
hurtbox_spr         = sprite_get("hurtbox");
crouchbox_spr       = sprite_get("crouchbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg( sprite_get("winbg") ); // victory_background.png
set_victory_theme(sound_get("victory")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_heavy");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = sound_get("sm64_slide"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = sound_get("sm64_warp");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//COMPATABILITY
//Dialogue Buddy
diag_portrait = sprite_get("comp_portrait"); // This will allow you to put any custom portrait onto the dialogue buddy!
feri_costume = sprite_get("comp_feri_costume_chuckya");
Hikaru_Title = "Chuckster";
tcoart = sprite_get("comp_chuckya_tcoart");
abyssHime_deathspr = sprite_get("comp_a_hime_death");
walle_taunt_sound = sound_get("chuckyanoise_megalo"); walle_taunt_type = 2;
childsupport = true; // this is so sad
miiverse_post = sprite_get("comp_chuchya_miiverse");
arena_title = "The Clockwork Catapult";
battle_text = "* Smells like a good yeeting.";
guiltySprite = sprite_get("comp_chuchya_guilty");
resort_portrait = sprite_get("comp_im_deaaaad");
pkmn_stadium_front_img = sprite_get("comp_pkmn_battlefort_front");
pkmn_stadium_back_img = sprite_get("comp_pkmn_battlefort_back");

//dramcoola
		dracula_portrait = sprite_get("comp_drachuchya_portrait");
		dracula_portrait2 = asset_get("empty_sprite");
		dracula_portrait3 = asset_get("empty_sprite");
		var page = 0;
		
		// Page 0
		dracula_speaker[page] = 0;
		dracula_text[page] = "Fantastic. I'm being graced by the presence of the world record holder for largest gumball. How very lucky of me.";
		page++;
		
		// Page 1
		dracula_speaker[page] = 1;
		dracula_text[page] = "EE OING[taunt]";
		page++;
		
		// Page 2
		dracula_speaker[page] = 0;
		dracula_text[page] = "...What?";
		page++;
		
		// Page 3
		dracula_speaker[page] = 1;
		dracula_text[page] = "EE OING[taunt]";
		page++;
	
		// Page 4
		dracula_speaker[page] = 0;
		dracula_text[page] = "[shake]Is that the only noise you can make, you wretched automaton?";
		page++;
		
		// Page 5
		dracula_speaker[page] = 1;
		dracula_text[page] = "EE OING[taunt]";
		page++;	
	
		// Page 6
		dracula_speaker[page] = 0;
		dracula_text[page] = "Enough with your incessant racket![glass] I shall deal with you myself!";
		page++;
		
		// Page 7
		dracula_speaker[page] = 1;
		dracula_text[page] = "";
		page++;	
		
		// Page 8
		dracula_speaker[page] = 1;
    	dracula_text[page] = "EE OING[taunt]";
		page++;	

//FS
fs_char_portrait_y = 164;
fs_char_chosen_final_smash = "custom";
fs_char_attack_index = 49;
fs_hit = hit_fx_create( sprite_get( "fs_hit" ), 24 );

//ALT STUFF
alt = get_player_color(player);
lgbt_music = sound_get("trans_rights"); //prevent error messages if not using an lgbt alt
switch (alt) {
case 8:
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_8bit"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 96);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 97);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 124);
plat_taunt = sprite_get("plat_taunt_sml2");
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("8bit_warp"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("chuckyanoise_gb"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("8bit_warp"));
break;
case 26:
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("funny_sans_move"));
plat_taunt = sprite_get("plat_taunt_sans");
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_sans"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("chuckyanoise_megalo"));
break;
case 27:
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_8bit"));
plat_taunt = sprite_get("plat_taunt_smb1");
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("8bit_warp"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("chuckyanoise_smb1"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("8bit_warp"));
break;
case 28:
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_8bit"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 60);
plat_taunt = sprite_get("plat_taunt_smb2");
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("8bit_warp"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("chuckyanoise_smb2"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("8bit_warp"));
break;
case 29:
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_smb3"));
plat_taunt = sprite_get("plat_taunt_8bit");
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 64);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 65);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 92);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("8bit_warp"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("chuckyanoise_smb3"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("8bit_warp"));
break;

case 23:
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_lgbt"));
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_SPRITE, sprite_get("taunt_prideflag"));
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("plat_taunt_pride"));
lgbt_music = sound_get("the_big_homo");
break;
case 24:
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_lgbt"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 24);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_SPRITE, sprite_get("taunt_enbyflag"));
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("plat_taunt_lgbt"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 12);
lgbt_music = sound_get("numerous_bees");
break;
case 25:
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_lgbt"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 36);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 37);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_SPRITE, sprite_get("taunt_transflag"));
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("plat_taunt_lgbt"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 22);
lgbt_music = sound_get("trans_rights");
break;
}

//ABYSS RUNES

if has_rune("A") {
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 270);
}

if has_rune("B") {
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_rune"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_rune_bomb"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("fspecial_rune_bomb"));
bomb_explode = hit_fx_create( sprite_get( "fspecial_rune_blast" ), 19 );
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 200);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 200);
}

if has_rune("D") {
set_num_hitboxes(AT_DAIR,1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 30);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
}

if has_rune("G") {
nspecial_grab_max_time = 180;
}

if has_rune("L") {
wobble_timer = 0;
wobble_timer2 = 0;
}

if has_rune("K") {
heaveho_whir = asset_get("hit1_sfx");
}

if has_rune("F") {
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 10 );
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, .4675);

set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sound_get("ssbu_cannonbody_heavy"));
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_LOCKOUT, 10);
}

if has_rune("O") {
sm64_fuse = asset_get("hit1_sfx");
}

if has_rune("J") {
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 120);
grab_radius = 100; //distance check for projectiles/articles
}

if has_rune("N") {
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("fstrong_whomp_rune"));
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 220);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 220);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 220);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 100);
whomp_hit_rune = hit_fx_create( sprite_get( "whomp_hfx_rune" ), 28 );
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, whomp_hit_rune);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, whomp_hit1);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, whomp_hit1);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_CAMERA_SHAKE, -1);
whomp_explode = hit_fx_create( sprite_get( "fstrong_whomp_rune_destroyed" ), 19 );
}

if has_rune("H") {
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UTILT, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UTILT, 2, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 2, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTILT, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTILT, 2, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_JAB, 3, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UAIR, 3, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NAIR, 2, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 2, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 10);
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);