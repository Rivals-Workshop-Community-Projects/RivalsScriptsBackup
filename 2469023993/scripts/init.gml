hurtbox_spr = sprite_get("noxhurtbox");
crouchbox_spr = sprite_get("noxcrouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

blur = array_create(7);

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .3;
pratfall_anim_speed = .25;
can_wall_cling = true;

walk_speed = 3.5;
walk_accel = 0.5;
walk_turn_time = 4;
initial_dash_time = 6;
initial_dash_speed = 8.25;
dash_speed = 7.75;
dash_turn_time = 10;
dash_turn_accel = 1.3;
dash_stop_time = 6;
dash_stop_percent = .3; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.5;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6;
djump_speed = 9.5;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.3;
prat_fall_accel = .3; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 54; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 8;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 2;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_fors");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

used_fspecial = false;
can_swift = true;
swift_mode = false;
swift_timer = 0;
training = get_training_cpu_action() != CPU_FIGHT;

radio = 0;

kirbyability = 16;
swallowed = 0;
enemykirby = undefined;

walle_taunt_sound = sound_get("walle");
walle_taunt_type = 1;

Hikaru_Title = "Shadow Trickster";

arena_title = "The Shadow Trickster";

boxing_title = "Numbra's Darkness";

tcoart = sprite_get("noxtcodraw");

miiverse_post = sprite_get("noxmiis");

gfzsignspr = sprite_get("noxgoalpost");

steve_death_message = "Steve fell to darkness";

fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 115;
fs_portrait_x = 50;

has_fail = true;
fail_text = "Now you're but
a shadow of your
former self.";

plushForAmber = sprite_get("plushForAmber");

amber_herObj = noone; //The object ID of Amber when she hugs. Amber's own script will set this when the hug is inititated
amber_thisHugSprite = sprite_get("nox_hug");
amber_herHugSprite = sprite_get("amber_hug");
amber_startHug = false; //This variable is set true from Amber's scripts
amber_thisSpriteInFront = true; //When true, this character's sprite is rendered over Amber's sprite
amber_autoTurnToHer = true; //This character will automatically face towards Amber upon hug activatation when true

amber_hugStartPos[0] = 42; //The x target offset point (from Amber's pos) where the player should hug Amber at. 
amber_hugStartPos[1] = 0; //The y target offset point. Recommended to keep this at 0 for grounded interaction

amber_hugExitPos[0] = 42; //The x target offset point (from Amber's pos) where the player stands at when exiting hug state.
amber_hugExitPos[1] = 0; //The y target offset point.

//The x target offset positions will inherit the character's spr_dir when this is true.
//Set this to true for character interactions that face toward each other such as hugging
//Set this to false for centered interaction animations
amber_useSprDirOffset = true; 

amber_hugExitTimer = 30; //How many frames should pass before either player can exit the hug window loop
amber_hugExitWindow = 3; //The window to jump to when either player presses a button to exit hug loop

if (get_player_color( player ) == 26){
	set_victory_theme(sound_get("bowservictory"));
}

if (get_player_color( player ) == 18){
	set_victory_theme(sound_get("pepsivictory"));
}

if (get_player_color( player ) ==27){
	set_victory_theme(sound_get("z3ke"));
}

if (get_player_color( player ) == 21){
	set_victory_theme(sound_get("hollow"));
}

if (get_player_color( player ) == 20){
	set_victory_theme(sound_get("halland"));
}

if (get_player_color( player ) == 28){
	set_victory_theme(sound_get("yoyoyo"));
}

if (get_player_color( player ) == 19){
	set_victory_theme(sound_get("geometryvictory"));
}

if (get_player_color( player ) == 22){
	set_victory_theme(sound_get("meatvictory2"));
}

if (get_player_color( player ) == 23){
	set_victory_theme(sound_get("saltvictory"));
}

if (get_player_color( player ) == 25){
	set_victory_theme(sound_get("catvictory"));
}

if (get_player_color( player ) == 24){
	set_victory_theme(sound_get("mousevictory"));
}

else if (get_player_color( player ) != 18 && get_player_color( player ) != 19 && get_player_color( player ) != 20 && get_player_color( player ) != 21 && get_player_color( player ) != 22 && get_player_color( player ) != 23 && get_player_color( player ) != 24 && get_player_color( player ) != 25 && get_player_color( player ) != 26 && get_player_color( player ) != 27 && get_player_color( player ) != 28){
	set_victory_theme(sound_get("nox_victory"));
}