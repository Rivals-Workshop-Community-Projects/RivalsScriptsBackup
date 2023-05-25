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
char_height         = 44;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.98;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 4;		// 4    -  9
dash_speed          = 8;		// 5    -  9
dash_turn_time      = 16;		// 8    -  20
dash_turn_accel     = 0.7;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.5;		// 0.25 -  0.5
ground_friction     = 0.4;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 7;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.2;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.02;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 16;		// 11   -  16
gravity_speed       = 0.65;		// 0.3  -  0.6
hitstun_grav        = 0.53;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11.5;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 11.5;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time = 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.55;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 12;		// 6    -  12
wave_land_adj       = 1.2;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0.01;
walk_anim_speed     = 0.2;
dash_anim_speed     = 0.5;
pratfall_anim_speed = 0.25;

//Wait
wait_sprite = sprite_get("wait");
wait_time = 160;
wait_length = 56;

// Jumps
double_jump_time    = 24;		// 24   -  40
walljump_time       = 18;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 12;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 7;
techroll_recovery_frames    = 3;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 2;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 7;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 7;
roll_back_recovery_frames       = 3;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;

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
set_victory_bg(sprite_get("winbg")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_med");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = sound_get("64_wavedash"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = sound_get("sm64_warp");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Character-specific assets init ===========================================================================

// VFX
hfx_fire_1 = hit_fx_create(sprite_get("hfx_fire_1"), 18);
fx_fire_kil = hit_fx_create(sprite_get("hfx_fire_destroy"), 6);
fx_fire_trail = hit_fx_create(sprite_get("nspecial_proj_trail"), 24);
funnyhit = hit_fx_create( sprite_get( "ustrong_sweetspotfx" ), 24 );
smoke_trail = hit_fx_create( sprite_get( "smoke_trail" ), 18 );
dattack_fx = hit_fx_create( sprite_get( "dattack_fx" ), 10 );
dspecial_fx = hit_fx_create( sprite_get( "dspecial_fx" ), 15 );
fspecial_bonk_fx = hit_fx_create( sprite_get( "fspecial_wall_fx" ), 10 );

empty_fx = hit_fx_create( asset_get( "empty_sprite" ), 1 );

// Variables ================================================================================================

//BURN COLOURS}

alt = get_player_color(player);
if alt = -1 alt = 31;

switch alt {
    case 1:
    case 4:
    case 8:
    case 18:
    case 30:
        bully_burn_colour = 1;
	break;
	case 2:
	case 13:
	case 26:
        bully_burn_colour = 2;
	break;
	case 7:
	case 21:
	case 24:
        bully_burn_colour = 3;
	break;
	case 9:
	case 12:
	case 17:
	case 27:
        bully_burn_colour = 4;
	break;
	case 5:
	case 6:
	case 11:
	case 14:
	case 16:
	case 19:
        bully_burn_colour = 5;
	break;
	default:
	    bully_burn_colour = 0;
	break;
}

switch alt { 
    default:
	    taunt_type = 0;
	break;
	case 17:
	    taunt_type = 1;
	break;
	case 30:
	    taunt_type = 2;
	break;
	case 28: //these are in the order i made them lol
	    taunt_type = 3;
	break;
	case 23:
	    taunt_type = 4;
	break;
	case 24:
	    taunt_type = 5;
	break;
	case 25:
	    taunt_type = 6;
	break;
	case 7:
	    taunt_type = 7;
	break;
	case 29:
	    taunt_type = 8;
	break;
	case 14:
	    taunt_type = 9;
		set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("taunt_flag_pride"));
	break;
	case 15:
	    taunt_type = 9;
		set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("taunt_flag_trans"));
	break;
	case 16:
	    taunt_type = 9;
		set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("taunt_flag_nb"));
	break;
}

introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

plat_x = 0;
plat_y = 0;
plat_y_offset = 0;
plat_y_offset2 = 0;
plat_on = 0;
plat_dir = 0;

if alt = 0 || alt = 31 { plat_sprite = sprite_get("plat_real"); } else if alt = 17 { plat_sprite = sprite_get("plat_san"); } else { plat_sprite = sprite_get("plat_alt"); }

fstrong_aim = 0;

n_charged = 0;
n_charge_stored = 0;
wow_hitbox_group = 0;

u_angle = 0;

dspec_bounce = false;
annoying_dspec_vsp_buffer_variable_fuck_you_dan = 0;

//COMPATABILITY
//Dialogue Buddy
diag_portrait = sprite_get("portrait"); // This will allow you to put any custom portrait onto the dialogue buddy!
Hikaru_Title = "Bully";
tcoart = sprite_get("comp_bully_tcoart");
walle_taunt_sound = sound_get("prince_bully"); walle_taunt_type = 2;
childsupport = true; // this is so sad
miiverse_post = sprite_get("comp_bully_miiverse");
arena_title = "The Boiling Hothead";
battle_text = "* Bully isn't even mad, it just looks like that.";
resort_portrait = sprite_get("comp_luigi_lore");
pkmn_stadium_front_img = sprite_get("comp_pkmn_battlefort_front");
pkmn_stadium_back_img = sprite_get("comp_pkmn_battlefort_back");
TCG_Kirby_Copy = 1;


nspecial_glow_colour = c_red;

switch alt {
    case 0:
	case 31:
	    nspecial_glow_colour = $0707D5;
	break;
	case 1:
	    nspecial_glow_colour = $CF4932;
	break;
	case 2:
	    nspecial_glow_colour = $7422CC;
	break;
	case 3:
	    nspecial_glow_colour = $0088F8;
	break;
	case 4:
	    nspecial_glow_colour = $FF2112;
	break;
	case 5:
	    nspecial_glow_colour = $E83A9D;
	break;
	case 6:
	    nspecial_glow_colour = $CE3B92;
	break;
	case 7:
	    nspecial_glow_colour = $9AE2D3;
	break;
	case 8:
	    nspecial_glow_colour = $FFEA37;
	break;
	case 9:
	    nspecial_glow_colour = $ADA1A4;
	break;
	case 10:
	    nspecial_glow_colour = $1175FF;
	break;
	case 11:
	    nspecial_glow_colour = $FF69E3;
	break;
	case 12:
	    nspecial_glow_colour = $869335;
	break;
	case 13:
	    nspecial_glow_colour = $6028F8;
	break;
	case 14:
	    nspecial_glow_colour = $;
	break;
	case 15:
	    nspecial_glow_colour = $FF40D2;
	break;
	case 16:
	    nspecial_glow_colour = $0089EB;
	break;
	case 17:
	    nspecial_glow_colour = $F2FF84;
	break;
	case 18:
	    nspecial_glow_colour = $FFC265;
	break;
	case 19:
	    nspecial_glow_colour = $C73D00;
	break;
	case 20:
	    nspecial_glow_colour = $84E1FB;
	break;
	case 21:
	    nspecial_glow_colour = $20C541;
	break;
	case 22:
	    nspecial_glow_colour = $F07800;
	break;
	case 23:
	    nspecial_glow_colour = $ABBCFB;
	break;
	case 24:
	    nspecial_glow_colour = $00E000;
	break;
	case 25:
	case 26:
	    nspecial_glow_colour = c_red;
	break;
	case 27:
	    nspecial_glow_colour = $00ECFF;
	break;
	case 28:
	    nspecial_glow_colour = $845AFF;
	break;
	case 29:
	    nspecial_glow_colour = $4849C9;
	break;
	case 30:
	    nspecial_glow_colour = $C04E3D;
	break;
}

switch alt {
    case 1:
	    set_ui_element( UI_CHARSELECT, sprite_get( "_css_chill" ));
	    set_ui_element( UI_WIN_PORTRAIT, sprite_get( "_portrait_chill" ));
		set_ui_element( UI_WIN_SIDEBAR, sprite_get( "_results_chill" ));
	    set_ui_element( UI_HUD_ICON, sprite_get( "_hud_chill" ));
	    set_ui_element( UI_HUDHURT_ICON, sprite_get( "_hud_hurt_chill" ));
		set_ui_element( UI_OFFSCREEN, sprite_get( "_offscreen_chill" ));
	break;
    case 2:
	    set_ui_element( UI_CHARSELECT, sprite_get( "_css_scuttle" ));
	    set_ui_element( UI_WIN_PORTRAIT, sprite_get( "_portrait_scuttle" ));
		set_ui_element( UI_WIN_SIDEBAR, sprite_get( "_results_scuttle" ));
	    set_ui_element( UI_HUD_ICON, sprite_get( "_hud_scuttle" ));
	    set_ui_element( UI_HUDHURT_ICON, sprite_get( "_hud_hurt_scuttle" ));
		set_ui_element( UI_OFFSCREEN, sprite_get( "_offscreen_scuttle" ));
	break;
	case 3:
	    set_ui_element( UI_CHARSELECT, sprite_get( "_css_galoomber" ));
	    set_ui_element( UI_WIN_PORTRAIT, sprite_get( "_portrait_galoomber" ));
		set_ui_element( UI_WIN_SIDEBAR, sprite_get( "_results" ));
	    set_ui_element( UI_HUD_ICON, sprite_get( "_hud_galoomber" ));
	    set_ui_element( UI_HUDHURT_ICON, sprite_get( "_hud_hurt_galoomber" ));
		set_ui_element( UI_OFFSCREEN, sprite_get( "_offscreen_galoomber" ));
	break;
    case 12:
	    set_ui_element( UI_CHARSELECT, sprite_get( "_css_bandage" ));
	    set_ui_element( UI_WIN_PORTRAIT, sprite_get( "_portrait_bandage" ));
		set_ui_element( UI_WIN_SIDEBAR, sprite_get( "_results_bandage" ));
	    set_ui_element( UI_HUD_ICON, sprite_get( "_hud_bandage" ));
	    set_ui_element( UI_HUDHURT_ICON, sprite_get( "_hud_hurt_bandage" ));
		set_ui_element( UI_OFFSCREEN, sprite_get( "_offscreen_bandage" ));
	break;
	case 13:
	    set_ui_element( UI_CHARSELECT, sprite_get( "_css_puffer" ));
	    set_ui_element( UI_WIN_PORTRAIT, sprite_get( "_portrait_puffer" ));
		set_ui_element( UI_WIN_SIDEBAR, sprite_get( "_results_puffer" ));
	    set_ui_element( UI_HUD_ICON, sprite_get( "_hud_puffer" ));
	    set_ui_element( UI_HUDHURT_ICON, sprite_get( "_hud_hurt_puffer" ));
		set_ui_element( UI_OFFSCREEN, sprite_get( "_offscreen_puffer" ));
	break;
	case 14:
	default:
	    set_ui_element( UI_CHARSELECT, sprite_get( "_css" ));
	    set_ui_element( UI_WIN_PORTRAIT, sprite_get( "_portrait" ));
	    set_ui_element( UI_WIN_SIDEBAR, sprite_get( "_results" ));
	    set_ui_element( UI_HUD_ICON, sprite_get( "_hud" ));
		set_ui_element( UI_HUDHURT_ICON, sprite_get( "_hud_hurt" ));
		set_ui_element( UI_OFFSCREEN, sprite_get( "_offscreen" ));
	break;
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);
