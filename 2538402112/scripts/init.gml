set_victory_theme(sound_get("Victory"));
set_victory_bg(sprite_get("victory_background"));

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.35;
walk_turn_time = 6;
initial_dash_time = 7;
initial_dash_speed = 8;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .80; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6.5;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .025;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .55;
hitstun_grav = .48;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 3;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 1;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_may");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Custom vars
grov_pouncex = 0;
grov_pouncey = 0;
grov_pounce_foe = false;
grov_pounce_foe_id = null;
grov_digdir = 1;
grov_wandangle = 0;
grov_dspecial_loops = 0;
grov_fspecial_cooldown = 0;
grov_fspecial_airuse = false;
grov_emeratimer = 0;
grov_emera_land = false;
grov_gen3 = false;
grov_hasruneO = false; // Added to prevent draw_hud from crashing when f5ing with runes on.

//workshop support
plushForAmber = sprite_get("plushForAmber");
battle_text = "* Time stands still.";
wily_robotmaster_img = sprite_get("WilyCastle"); // And redraw this
has_fail = true;
fail_text = "That was a Reviser Seed, try checking your items next time.";
resort_portrait = sprite_get("grov_lastresort01");
resort_portrait2 = sprite_get("grov_lastresort02");
if get_player_color(player) == 13 resort_portrait = resort_portrait2;
arena_title = "Temporal Escapee";
boxing_title = "Temporal Escapee";
steve_death_message = "Steve fainted!";
feri_costume = sprite_get("feri_costume_grovyle");
gfzsignspr = sprite_get("GFZ_Grovyle");
miiverse_post = sprite_get("miiverse_grovyle");
pkmn_stadium_front_img = sprite_get("gen1_grovyle");
pkmn_stadium_back_img = sprite_get("gen1_grovyle_back");
link_spear_drop = 6;
copy_ability_id = 48; //Leaf
kf_custom_icon = sprite_get("kf_ability_icon");
mamizou_transform_spr = get_player_color(player) == 0 ? sprite_get("mamizou_transform_default"):sprite_get("mamizou_transform");
Hikaru_Title = "Time Gear Theif";
pot_compat_variable = sprite_get("po_gumbo_dish");
pot_compat_text = "Four-Leaf Cookie";
wiimote_compat_sprite = sprite_get("wiimote");
greenwood_cheer = 2;

//Amber interaction variables
amber_herObj = noone; //The object ID of Amber when she hugs. Amber's own script will set this when the hug is inititated
amber_thisHugSprite = get_player_color(player) == 0 ? sprite_get("grovyle_cheer_alt0"):sprite_get("grovyle_cheer");
amber_herHugSprite = sprite_get("amber_cheer");
amber_startHug = false; //This variable is set true from Amber's scripts
amber_thisSpriteInFront = true; //When true, this character's sprite is rendered over Amber's sprite
amber_autoTurnToHer = true; //This character will automatically face towards Amber upon hug activatation when true
amber_hugStartPos[0] = 25*2; //The x target offset point (from Amber's pos) where the player should hug Amber at. 
amber_hugStartPos[1] = 0; //The y target offset point. Recommended to keep this at 0 for grounded interaction
amber_hugExitPos[0] = 25*2; //The x target offset point (from Amber's pos) where the player stands at when exiting hug state.
amber_hugExitPos[1] = 0; //The y target offset point.
//The x target offset positions will inherit the character's spr_dir when this is true.
//Set this to true for character interactions that face toward each other such as hugging
//Set this to false for centered interaction animations
amber_useSprDirOffset = true; 
amber_hugExitTimer = 30; //How many frames should pass before either player can exit the hug window loop
amber_hugExitWindow = 3; //The window to jump to when either player presses a button to exit hug loop

//RUNES
if has_rune("A"){
    walk_speed = 5;
    walk_accel = 0.35;
    initial_dash_speed = 10;
    dash_speed = 10;
    air_max_speed = 9; //the maximum hsp you can accelerate to when in a normal aerial state
    jump_change = 5; //maximum hsp when double jumping. If already going faster, it will not slow you down
    air_accel = .45;
}
if has_rune("E"){
    roll_forward_max = 13; //roll speed
    roll_backward_max = 13;
    air_dodge_speed = 11;
}
if has_rune("O") grov_hasruneO = true;