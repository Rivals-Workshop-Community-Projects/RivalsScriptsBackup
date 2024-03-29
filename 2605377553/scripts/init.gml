malsick_immune = false;

//thank u for reading this have a nice day
//thanks you too :)

//simple compats
steve_death_message = "Steve was slain by Mallory70942794";
pkmn_stadium_front_img = sprite_get("pkmn_sprite1");
pkmn_stadium_back_img = sprite_get("pkmn_sprite2");
arena_title = "Heir of Miasma";
spam_ad = sprite_get("mal_ad")
miiverse_post = sprite_get("miiverse"); 

//fx
sword = hit_fx_create( sprite_get( "hfx_sword" ), 30 );
bigsmoke = hit_fx_create( sprite_get( "hfx_bigsmoke" ), 30 );
midsmoke = hit_fx_create( sprite_get( "hfx_midsmoke" ), 30 );
smokeball = hit_fx_create( sprite_get( "hfx_smokeball" ), 15 );
nothing = hit_fx_create( sprite_get( "nothing" ), 25 );
hexspark_alt1 = hit_fx_create( sprite_get( "fx_hex_alt1" ), 15 );
hexspark_alt2 = hit_fx_create( sprite_get( "fx_hex_alt2" ), 15 );
set_hit_particle_sprite( 1, sprite_get( "particle_1" ) );
set_hit_particle_sprite( 2, sprite_get( "particle_2" ) );
set_hit_particle_sprite( 3, sprite_get( "nothing" ) );
fspecdie = hit_fx_create( sprite_get( "fspec_die" ), 30 );

//extra alts
extra_col = 0;
extra_col_key = 0;

hurtbox_spr = sprite_get("1");
crouchbox_spr = sprite_get("2");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 58;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6.5;
dash_speed = 5.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .63;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9.99;
short_hop_speed = 6;
djump_speed = 10.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .36;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .42;
hitstun_grav = .5;
knockback_adj = 1.00; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 9;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 4;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
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
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 1;
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

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//plat
respawnPlatSprite = sprite_get("platbehind");

//sick
malsick = false;

//sick consume
malsick_consumed = false;

//smoke shit
maxSmoke = 4;
smokeAmount = maxSmoke;
smokeList = []//this is going to hold all the smoke we have spawned.
spr_smokeShade = sprite_get("smokeshade");
spr_smoke = sprite_get("smoke");
spr_smokeBack = sprite_get("smokeback");

//Set the below sprites in order to activate stencil masks
//set it back to -1 for any reason if u want to turn it off (goes back to regular drawing
smokeStencilSprite = -1;
smokeStencilAnimSpeed = 0.1;// <- change this if u want to adjust the speed of the animated sprite, see below

//Example on how to change the sprite based on the alt
switch(get_player_color( player ))
{
	case 9://celeste
	{
		smokeStencilSprite = sprite_get("galaxy");
		smokeStencilAnimSpeed = 0.1;
	}break;
	case 10://omori
	{
		smokeStencilSprite = sprite_get("omorispace");
	}break;
	case 23://genesis
	{
		smokeStencilSprite = sprite_get("genesis");
	}
}

//this spawns in the outline drawer thingy specifically for stenciled stuff
smokeShaderDrawer = instance_create(x,y,"obj_article3");
smokeShaderDrawer.sprite_index = sprite_get("empty");
smokeShaderDrawer.depth = depth+10;

//uspec
uspeccancel = false;
uspechassmogboosted = false;
turnonsuperwavedash = false;

//nspec
nspecObj = noone;
nspecTimer = 0;
nspecTimerMax = 18;

///dair grab
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

//enhanced strong
markConsumed = false;
sickAfterGraceMax = 0;
sickAfterGrace = 0;//How many frames the opponent is invincible from getting sick again after recovering from sickness

//bair 
bairused = false;

//dair
dairboost = false;


//random ass timers
galaxy_timer = 0;
statuslog_timer = 0;

statustexttrigger = false;
resetOutline = false;

//afterimages
after_image = array_create(10, -1);
after_image_timer = -1;

bluehairandpronouns = false;

pot_compat_variable = sprite_get("pumbo_compat");
pot_compat_text = "Authentic Canadian Poutine"

//tas alt
hue_offset=0;
hue_speed=1; //change this to change the speed of the hueshift

//sweet victory
//Quote
mal_victory_quote = "Was that Cel again? Those clones of hers are getting borderline lifelike...";
mal_handled_victory_quote = false;
victoryicon_subimg = 0;