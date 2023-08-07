hurtbox_spr = sprite_get("hurts");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 40;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
base_dash_anim_speed = .2;
mod_dash_anim_speed = .1;

pratfall_anim_speed = .25;

base_walk_speed = 2; //default walk speed
mod_walk_speed = 0.25; //amount to change by during adrenaline
walk_speed = base_walk_speed;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 15;
initial_dash_speed = 7;
base_init_dash = 7; //default init dash speed
mod_init_dash = 1.5; //amount to change by during adrenaline
initial_dash_speed = base_init_dash;
base_dash_speed = 6.0; //default dash speed
mod_dash_speed = 2; //amount to change by during adrenaline
dash_speed = base_dash_speed;
dash_turn_time = 14;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
base_ground_friction = .45; //default ground friction
mod_ground_friction = -.05; //amount to change by during adrenaline
ground_friction = base_ground_friction;
moonwalk_accel = 1.4;
set_victory_bg(CH_KRAGG);
jump_start_time = 5;
jump_speed = 10.99;
short_hop_speed = 6;
djump_speed = 10;
base_leave_ground_max = 7;
leave_ground_max = base_leave_ground_max; //the maximum hsp you can have when you go from grounded to aerial without jumping
base_max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
mod_max_jump_hsp = 1; //for adrenaline, additive
max_jump_hsp = base_max_jump_hsp;

base_air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
mod_air_max_speed = 2; //the maximum hsp you can accelerate to when in a normal aerial state

jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
base_air_accel = .20;
mod_air_accel = .25
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .51;
base_knockback_adj = .98; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
mod_knockback_adj = .17
land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
base_wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
mod_wave_land_adj = .25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1

base_wave_friction = .13; //default grounded deceleration when wavelanding
mod_wave_friction = -0.3; //amount to change by during adrenaline
wave_friction = base_wave_friction;

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 8;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
dynspark = hit_fx_create( sprite_get("dyn_spark"), 10 )
//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

//adrenaline params
adrenaline_timer = 0;
adrenaline_max = 200;
grinding = false; // used for resetting values on grind end

gold_obj = noone;

//afterimage management
//afterimage_list = ds_list_create();

//sparkle management
sparkle_list = ds_list_create();


set_ui_element(UI_HUD_ICON, sprite_get("hud")) 
set_ui_element(UI_HUDHURT_ICON, sprite_get("hurtd"))

switch (get_player_color( player )) {
    case 2: {
        set_ui_element(UI_HUD_ICON, sprite_get("hud_sand")) 
        set_ui_element(UI_HUDHURT_ICON, sprite_get("hurt_sand"))
    }
    break;
    case 21: {
        set_ui_element(UI_HUD_ICON, sprite_get("hud_water")) 
        set_ui_element(UI_HUDHURT_ICON, sprite_get("hurt_water"))
    }
    break;

    case 10: {
        outline_color = [42, 90, 63]
    }
    break;
}
init_shader();
babysound = 0
babysoundtimer = 0
babypitch = 1
pot_compat_text = "Stone Soup"
pot_compat_variable = sprite_get("soup");
mamizou_transform_spr = sprite_get("florp"); //Replace "X" with your sprite.
has_fail = true;
fail_text = "You got rocked.";
grindir = 0

vfx_sparkle_s = hit_fx_create( sprite_get("sparkle_s"), 16);
vfx_sparkle_m1 = hit_fx_create( sprite_get("sparkle_m1"), 20);
vfx_sparkle_m2 = hit_fx_create( sprite_get("sparkle_m2"), 24);
//ty to sai for these
vfx_l = hit_fx_create( sprite_get("vfx_sai_l"), 30)
vfx_m = hit_fx_create( sprite_get("vfx_sai_m"), 30)
vfx_b = hit_fx_create( sprite_get("vfx_sai_b"), 30)
//ty delta
if get_player_color( player ) == 20 {
  vfx_d = hit_fx_create( sprite_get("vfx_explosion_arc"), 30)
  vfx_ds = hit_fx_create( sprite_get("vfx_explosionsmall_arc"), 30)
} else { 
  vfx_d = hit_fx_create( sprite_get("vfx_explosion"), 30)
  vfx_ds = hit_fx_create( sprite_get("vfx_explosionsmall"), 30)
}

if get_player_color(player) == 16 {
  set_article_color_slot( 16, 3, 166, 133, 0 ); //pickdark
  set_article_color_slot( 16, 4, 252, 202, 0 ); //pickmid
  set_article_color_slot( 16, 5, 255, 255, 255 ); //picklight
}
switch (get_match_setting(SET_SEASON)) {
  case 1: // valentines
    set_color_profile_slot( 19, 0, 51, 95, 255 ); //bodydark
    set_color_profile_slot( 19, 1, 112, 143, 255 ); //bodylight
    set_color_profile_slot( 19, 2, 112, 143, 255 ); //bodyshine
    set_color_profile_slot( 19, 3, 219, 144, 161 ); //pickdark
    set_color_profile_slot( 19, 4, 255, 255, 255 ); //pickmid
    set_color_profile_slot( 19, 5, 255, 255, 255 ); //picklight
    set_color_profile_slot( 19, 6, 161, 145, 12 ); //feet
    set_color_profile_slot( 19, 7, 227, 206, 25 ); //feetlight
    break;
  case 2: // summer
// Creamsicle
    set_color_profile_slot( 19, 0, 214, 103, 31 ); //bodydark
    set_color_profile_slot( 19, 1, 246, 151, 61 ); //bodylight
    set_color_profile_slot( 19, 2, 246, 216, 187 ); //bodyshine
    set_color_profile_slot( 19, 3, 184, 151, 83 ); //pickdark
    set_color_profile_slot( 19, 4, 245, 218, 164 ); //pickmid
    set_color_profile_slot( 19, 5, 245, 218, 164 ); //picklight
    set_color_profile_slot( 19, 6, 184, 169, 136 ); //feet
    set_color_profile_slot( 19, 7, 245, 236, 218 ); //feetlight
    break;
  case 3: // halloween   
    // Caramel
    set_color_profile_slot( 19, 0, 150, 45, 45 ); //bodydark
    set_color_profile_slot( 19, 1, 212, 62, 62 ); //bodylight
    set_color_profile_slot( 19, 2, 212, 62, 62 ); //bodyshine
    set_color_profile_slot( 19, 3, 133, 96, 57 ); //pickdark
    set_color_profile_slot( 19, 4, 240, 120, 56 ); //pickmid
    set_color_profile_slot( 19, 5, 247, 173, 99 ); //picklight
    set_color_profile_slot( 19, 6, 138, 97, 58 ); //feet
    set_color_profile_slot( 19, 7, 240, 127, 56 ); //feetlight
    break;
  case 4: // christmas
    // Minted
    set_color_profile_slot( 19, 0, 131, 166, 194 ); //bodydark
    set_color_profile_slot( 19, 1, 212, 235, 255 ); //bodylight
    set_color_profile_slot( 19, 2, 212, 235, 255 ); //bodyshine
    set_color_profile_slot( 19, 3, 209, 23, 23 ); //pickdark
    set_color_profile_slot( 19, 4, 230, 67, 67 ); //pickmid
    set_color_profile_slot( 19, 5, 230, 184, 184 ); //picklight
    set_color_profile_slot( 19, 6, 209, 23, 23 ); //feet
    set_color_profile_slot( 19, 7, 230, 67, 67 ); //feetlight
    break;
}



if get_player_color(player) == 16 {
  //set_hitbox_value( AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("ed_idle") )
  //set_hitbox_value( AT_DSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("ed_idle") )
  //set_hitbox_value( AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 0 )
  //set_hitbox_value( AT_DSPECIAL_AIR, 3, HG_PROJECTILE_DESTROY_EFFECT, 0 )

}
uspec_bomb = 0
arcadeswitch = 1

altReal =0 

// The current alt palette, with a fix for the online CSS.
var alt_cur = get_player_color((room == 113 && object_index != oTestPlayer) ? 0 : player);

// Split the synced var. For more info on this function, see:
// https://github.com/SupersonicNK/roa-workshop-templates/tree/master/generate-synced-var 
if "__syncvar" not in self __syncvar = split_synced_var(1);
var tag_pal_value = __syncvar[0]; //change the 0 to the synced var index for the tag palette.
// IMPORTANT: The 12 (first argument) in this function should be the same number as the user event.
var tag_pal = player_tag_palettes(12, tag_pal_value);

// This is your final alt value, which is the current alt palette the player has selected.
var real_alt = tag_pal != -1 ? tag_pal : alt_cur;


if real_alt == 30 {
    altReal = 1
}

// As usual, #defines all go at the bottom of the script.
#define player_tag_palettes
///(user_event, ?arg)
__ssnk_tagpal_scr = script_get_name(1);
__ssnk_tagpal_arg = argument_count > 1 ? argument[1] : 0;
user_event(argument[0]);
return "__ssnk_tagpal_res" in self ? __ssnk_tagpal_res : 0;

// https://github.com/SupersonicNK/roa-workshop-templates/tree/master/generate-synced-var 
#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var player = (room == 113) ? 0 : self.player;
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}

