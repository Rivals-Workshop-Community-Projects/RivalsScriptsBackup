//Rainbow
hue_offset=0;
hue_speed=0.4; //change this to change the speed of the hueshift

//Soundbound Conflict 

battle_text = "* Samson flutters in!";
battle_text2 = "* The smell of honey is unbearable...";

//Amber interaction variables
amber_herObj = noone; //The object ID of Amber when she hugs. Amber's own script will set this when the hug is inititated
if get_player_color(player) > 0 
{
amber_thisHugSprite = sprite_get("samson_hug");
}
else {
amber_thisHugSprite = sprite_get("df_samson_hug");
};
amber_herHugSprite = sprite_get("amber_hug");
amber_startHug = false; //This variable is set true from Amber's scripts
amber_thisSpriteInFront = false; //When true, this character's sprite is rendered over Amber's sprite
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

//TCO
tcoart = sprite_get("samsontcoart");

//King Dedede Stadium
arena_title = "The Blissful Bugbear;";

//Kirby
kirbyability = 16;
swallowed = 0



hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.0;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time   = 12;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 5;		// 4    -  9
dash_speed          = 6.25;		// 5    -  9
dash_turn_time      = 15;		// 8    -  20
dash_turn_accel     = 1;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.30;		// 0.25 -  0.5
ground_friction = .30;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.99;
short_hop_speed = 6;
djump_speed = 10.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 7;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .50;
hitstun_grav = .5;
knockback_adj = 1.10; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 13;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .12; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 3;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 1;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

nspecial_cool = 0;
bair_cool = 0;
plungerboom = 0;
//Thanks to GoldenEpsilon for the Peach Float Code!
floating = 0;
floatTimer = 0;
jumpTimer = 0;
floatMax = 60; //MODIFIABLE
jumpMax = 5; //MODIFIABLE
gravSet = -1; //MODIFIABLE
vspSet = has_rune("E")? -2.5:-1.3; //MODIFIABLE
hspSet = -1; //MODIFIABLE

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//FX stuff

introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

sweetdon_fx = hit_fx_create( sprite_get( "sweetdon" ), 30 );
spotlight_fx = hit_fx_create( sprite_get("spotlight"), 24 );
yummy_fx = hit_fx_create( sprite_get("yummy"), 32 );

donutbreak_fx = hit_fx_create( sprite_get( "donutbreak" ), 30 );
kirbyboom = hit_fx_create( sprite_get( "kirbyboom" ), 30 );
honeyshockdestroy = hit_fx_create( sprite_get( "honeydissapate" ), 25 );
honeyshockdestroy_small = hit_fx_create( sprite_get( "honeydissapatesmall" ), 25 );

//Slash FX
slash_ul = hit_fx_create( sprite_get( "slashFXupleft" ), 18 );
slash_ur = hit_fx_create( sprite_get( "slashFXupright" ), 18 );
slash_small = slash_ur = hit_fx_create( sprite_get( "smallslash" ), 18 );

//Honeyed-Sprite
honeyed_sprite = sprite_get( "samson_honeyed" );

plungerboom = false;
fspecial_recovery = false;
blushing = false;
fatblunt = false;
changetimer = 60;
jar_is_out = false;
ustrongtimer = false;

intro_animation = noone;
intro_duration = 0
intro_time = 0
intro_type = noone;

//init.gml
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

upspecial_used = 0;
sugar_rush = 0;


//Killing Grounds
guiltySprite = sprite_get("DRSamson"); //SAMSON DIES



//Assist Buddy
assistAttack = AT_FSPECIAL; //The attack to use as the assist
assistOffsetX = 32; //The horizontal distance they spawn from the player
assistOffsetY = 0; //The vertical distance they spawn from the player
assistVelX = 0; //The horizontal velocity applied when the assist is called
assistVelY = 0; //The vertical velocity applied when the assist is called
assistGroundOnly = true; //Whether or not they are forced to the ground
assistFloat = false; //Whether or not they stay in place vertically
assistCool = 120; //The time it takes for the assist to recharge

//Pokemon Stadium 
pkmn_stadium_front_img = sprite_get("pkmnsamsonFRONT");
pkmn_stadium_back_img = sprite_get("pkmnsamsonBACK");

//honey stuff
samson_honeyed = false;

//Loadent
ltweet = sprite_get( "ltweet" );

//Hikaru
Hikaru_Title = "Freak of Nature";

//Guidance
user_event(7);

//Feri
feri_costume = sprite_get("feri_costume_samson");

//Bailey Kinnikubuster Sprites

if get_player_color(player) > 0 
{
    kinniku_behind = sprite_get("Kinniku_Behind");
    kinniku_front = sprite_get("Kinniku_Front");
}
else {
    kinniku_behind = sprite_get("defaultKinniku_Behind");
    kinniku_front = sprite_get("defaultKinniku_Front");
};

//Munophone
	muno_event_type = 0;
	user_event(14);



//Henry Stickmin
    has_fail = true;
    fail_text = "You don't look so well, honey.";

//Steve
steve_death_message = "Steve couldn't bear it.";

//Kirby Fighters
copy_ability_id = 55
kf_hud_offset = -20;

//Samson turns into a plush and dies
mamizou_transform_spr = sprite_get("plushsamson"); //Replace "X" with your sprite.

//Samson gets cooked alive and dies
pot_compat_variable = sprite_get("loukoumades");
pot_compat_text = "Greek Honey Doughnuts"

//Miiverse
miiverse_post = sprite_get("samsonMiiverse");

//Final Smash
if get_player_color(player) == 0
{
    fs_char_portrait_override = sprite_get("colored");
}
fs_char_portrait_y = 95;
fs_char_chosen_final_smash = "custom";
grabbedid = noone;

secret_code = [up_pressed, down_pressed, up_pressed, down_pressed, attack_pressed, taunt_pressed];
secret_code_pointer = 0;
secret_code_input = false;
sugarcoat = 0;
