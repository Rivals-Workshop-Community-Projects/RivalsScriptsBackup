

// I'll put some rune ideas here
// more than 1 active / spawns 3 at the time

/*
1.15.16 Patch notes:
-CUSTOM RUNES!! You can add custom Abyss Runes to your characters! To enable a rune on your character, go to their config.ini file and add these lines:
rune A type="1"
rune A desc="put your description here"

You can repeat that for every rune, from A to O.
-The type of the rune affects the displayed color and signifies what type of rune it is; "O"/"1" is for Hit mods, "R"/"2" is for Ranged mods, "H"/"3" is for Object mods, and "A"/"4" are Ability mods. This doesn't affect anything in actual gameplay so don't worry too much about it.
-New function: has_rune(string)! You can use this to check if the specified rune is equipped. As an example: if has_rune("G") will only be true if they have the G rune equipped. With this, you can make runes do whatever the heck you want with them.
-get_match_setting() now has the SET_RUNES macro, to detect if abyss runes are enabled.
-get_char_info() now has the INFO_SIDEBAR macro, for the results_small.png sprite that appears on the results screen.
-Players and stages now have the script  unload.gml, called when the player/stage is deleted (like on match end or when quitting playtest). If you're using any data structures or otherwise anything that might cause memory leaks, you can delete them using this script.

*/

set_victory_theme(sound_get("victory_tf"));

hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = 12 / 60;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 7;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6.5;
djump_speed = 10;
leave_ground_max = 5.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6.0; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 46; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 50;
max_fall = 10; max_fall_ref = max_fall; max_fall_nspe2 = 4;//maximum fall speed without fastfalling 
fast_fall = 13; //fast fall speed
gravity_speed = .40;
hitstun_grav = .45;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .12; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
if (!has_rune("J"))
{
    air_dodge_speed = 7.5;
}
else
{
    air_dodge_speed = 13.5;
}

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = sound_get("airdodge1");


//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

wall_frames = 2;



has_used_uspecial = false // true when already used uspecial. Reset when touching the ground
has_used_dspecial = false // similar to the above, but for dspecial instead
has_runeg_uspecial = false;

uspe_cooldown = 0; // cooldown to wait for another uspecial no matter what
uspe_cooldown_ref = 10;
//using_uspecial_timer = 0;
//using_uspecial = false; //


//omni_uspecial = false; // true when starting uspecial while holding special
// nspecial 2
nspecial2_timer = 0;
nspe2_rot = 0; // angle to reapplie to nspecial
arrow_col = get_player_hud_color(player); //for nspec2 arrow

//dspecial trail variable
//replace the '22' with how long you want the hit effect to last for this function

trail_sparkle = hit_fx_create(sprite_get("sparkle"), 22);

// OLD dspecial (no longer used)
/*dspe_list = ds_list_create(); // liste keeping the dspe article

if (!has_rune("C"))
{
    max_dspe_card = 1;
}
else
{
    max_dspe_card = 3;
}
*/

// The Chosen One Support

tcoart = sprite_get("2huhijaklol");

effect_nothing = hit_fx_create( sprite_get("nothing"), 2); // effect used for projectile when destroyed (it's just nothing, to avoid the ugly default smoke thing)


// DASHING EFFECT
dash_effect_front = hit_fx_create( sprite_get("dash_front"), 20);
dash_effect_down = hit_fx_create( sprite_get("dash_down"), 20);
dash_effect_up = hit_fx_create( sprite_get("dash_up"), 20);
dash_effect_upfront = hit_fx_create( sprite_get("dash_upfront"), 20);
dash_effect_downfront = hit_fx_create( sprite_get("dash_downfront"), 20);

dash_to_use = dash_effect_front;

//Hikaru Support

Hikaru_Title = "Maiden of Paradise";

//Soulbound Conflict Support

battle_text = "* Welcome to hell! Bullet hell, that is."

//Mt. DeDeDe Support

arena_title = "Eternal Shrine Maiden"

arena_short_name = "Reimu"

// Trummel
trummelcodecneeded = false;
trummelcodec_id = noone;

// Agent N

ncode1 = "Miko of the Hakurei Shrine."
ncode2 = "Source of abilities unknown. Capable of floating"
ncode3 = "outside reality. Exercise extreme caution."

// pokemon stadium
pkmn_stadium_front_img = sprite_get("pokemon_sprite_front");
pkmn_stadium_back_img = sprite_get("pokemon_sprite_back");

// KIRBY (Custom Ability)
kirbyability = 16;
enemykirby = noone; // by doing this it will stop _my side_ from spamming error messages to the log
swallowed = 0; // changed swallowed implementation to fix error message as well

// Po & Gumbo

pot_compat_variable = sprite_get("sakeplate");
pot_compat_text = "Saké";

// entrance
 has_enter = false;
 
// IDEK

is_reimu_a = true;
type_selection_a = true;

// Power Meter

grazeMeter = 2; // used for the number of fspecial cards

createGrazeBox = 3;
grazeBox = noone;


fspe_extra_to_shot = 3;
fspe_is_charged = false;

charge_plus = 3; // how many shots charging add

ofuda_destroy = hit_fx_create( sprite_get("ofuda_destroy"), 16);
fspe_charge_effect = hit_fx_create(sprite_get("charge"), 16);

// Article Type

type = 0 
    // May be redundant, keeping just in case for now
    
// Fantasy Seal effect (Unused)

eff_x = ds_list_create();
eff_y = ds_list_create();

eff_x_acc = ds_list_create();
eff_y_acc = ds_list_create();

eff_scale = ds_list_create();
eff_col = ds_list_create();
eff_alpha = ds_list_create();

eff_life = ds_list_create();



// Default uspecial at the very start
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -6);

dash_to_use = dash_effect_upfront;


dspe_stall = 0;
fspe_stall = 0;


// FUMO (april fools mode)
is_fumo = false;

if (is_fumo)
{
    for (var att = 0; att < 38; att += 1)
        {
            for (var ind = 0; ind < 8 ind += 1)
            {
                set_window_value(att, ind, AG_WINDOW_SFX, sound_get("fumo"))
                land_sound = sound_get("fumo");
                landing_lag_sound =sound_get("fumo");
                waveland_sound = sound_get("fumo");
                jump_sound = sound_get("fumo");
                djump_sound = sound_get("fumo");
                air_dodge_sound = sound_get("fumo");
            }
        }
}


trainingMode = 0;

// Final Smash Buddy
AT_FINAL_SMASH = 49;
fs_char_portrait_y = 81;
fs_char_chosen_final_smash = "custom";
fs_char_attack_index = AT_FINAL_SMASH;
//fs_force_fs = true;

//Fantasy Nature - Built off of JPEG's Danmakubert---------------------------------------------------
//constants for the first rotation
angle_adjust = 0; //used for accelerating rotation
emit_center = [0, -25];
length = 30; //distance from the center to spawn at

emit_angle = -4.5; //angle to spawn at
emit_angle_add = 6; //adds angle_adjust every frame
emit_point = [length, emit_center[1]]; //point to spawn at


//constants for the second rotaiton
angle_adjust2 = 0;
emit_center2 = [0, -25];
length2 = 30;

emit_angle2 = -4.5;
emit_angle_add2 = -8;
emit_point2 = [length2, emit_center2[1]];

hfx_spawn = hit_fx_create( sprite_get( "nothing" ), 6 );
