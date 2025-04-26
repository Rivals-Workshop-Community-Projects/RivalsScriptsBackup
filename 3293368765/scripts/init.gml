hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

for(var i = 0; i < 50; i++){
    for(var j = 0; j <= 15; j++){
        if(get_hitbox_value(i, j, HG_DRIFT_MULTIPLIER) == 0) set_hitbox_value(i, j, HG_DRIFT_MULTIPLIER, 1);
    }
}

char_height = 58;
idle_anim_speed = .21543;
crouch_anim_speed = .1507;
walk_anim_speed = .16;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.5;
walk_turn_time = 8;
initial_dash_time = 12;
initial_dash_speed = 8;
dash_speed = 7.5;
dash_turn_time = 8;
dash_turn_accel = 2;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.6;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 7.5;
djump_speed = 11.5;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 18;
wave_land_time = 8;
wave_land_adj = 1.4; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 7;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 6;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 3
techroll_active_frames = 2;
techroll_recovery_frames = 3;
techroll_speed = 7;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 8.5; //roll speed
roll_backward_max = 8.5;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Intro Animation
intro_anim = sprite_get ("intro")
intro_duration = 90

//HUD Animation 
hud_timer = 0
hud_frame = 0

nturn = false;

//USPEC shenanigans
can_uspec = false;
uspec_uses_max = 2;
uspec_uses = uspec_uses_max;
uspec_extra_used = false;

hit_timer = 0;      //Lockout Timer for Charge Applied to Hitstop
will_charge = 0;    //Charge Amount. Builds over time.
will_max = 1200;    //Charge Max. For Meter Gain.
will_lvl = 0;       //Charge Level. 1 is half, 2 is full.
will_cancel = 0;    //Window for Will Cancels
will_gain = will_max/4;  // Will gained per hit
has_gained_will = false; // Will given on hit for an attack

spring_charge_level = 0;
spring_cooldown = 120;

uspec_refresh = false;

dspec_cancel = false;

tn_afterimage_ledger = ds_list_create();    //Structure for keeping track of all afterimages.
tn_max_afterimages = 8;                     //Maximum number of afterimages for dspecial.
tn_full_charge_afterimages = 2;             //Maximum number of afterimages for full charge.
tn_afterimage_spacing = 1;                  //Number of frames between each afterimage.

tn_nspec_will_charge = false;               //Determines if will charge is used this nspecial.
tn_nspec_will_mult = 1.5;                   //Knockback multiplier on will charged nspecial.

fx_will_cancel = hit_fx_create(sprite_get("fx_cancel"), 14)
fx_tn_fsp_hi = hit_fx_create(sprite_get("fsp_orb_hi"), 14);
fx_tn_fsp_mid = hit_fx_create(sprite_get("fsp_orb_mid"), 14);
fx_tn_fsp_low = hit_fx_create(sprite_get("fsp_orb_low"), 14);
fx_cat = hit_fx_create(sprite_get("catooken_end"), 18);

//Grab
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

//will cancel afterimages
afterimage_array = 0;


//FX
fx_burst = hit_fx_create(sprite_get("fx_burst"), 20)
fx_angle = hit_fx_create(sprite_get("fx_angle"), 25)
fx_swirl = hit_fx_create(sprite_get("fx_swirl"), 20)
fx_special = hit_fx_create(sprite_get("fx_special"), 35)

/* GUIDE TO MAKING HIT FX
Step 1: use the hit_fx_create() function to create a hit effect and save it as a variable
*************************************sprite name v****************************************************
epic_hit_fx = hit_fx_create(sprite_get("hit_sprite"), 20)
***************************************************** ^ hit fx animation length (in frames)***********
Step 2: set the hit effect of the hitbox you want using the set_hitbox_value() functions
******************************************************************************************************
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, epic_hit_fx)
******************************************************************************************************
And uh that's all */



// COMPAT

miiverse_post = sprite_get("miiverse"); 
plushForAmber = sprite_get("plush")

//Amber interaction variables
amber_herObj = noone; //The object ID of Amber when she hugs. Amber's own script will set this when the hug is inititated
amber_thisHugSprite = sprite_get("hug_teenah");
amber_herHugSprite = sprite_get("hug_amber");
amber_startHug = false; //This variable is set true from Amber's scripts
amber_thisSpriteInFront = false; //When true, this character's sprite is rendered over Amber's sprite
amber_autoTurnToHer = true; //This character will automatically face towards Amber upon hug activatation when true

amber_hugStartPos[0] = 50; //The x target offset point (from Amber's pos) where the player should hug Amber at. 
amber_hugStartPos[1] = 0; //The y target offset point. Recommended to keep this at 0 for grounded interaction

amber_hugExitPos[0] = 50; //The x target offset point (from Amber's pos) where the player stands at when exiting hug state.
amber_hugExitPos[1] = 0; //The y target offset point.

//The x target offset positions will inherit the character's spr_dir when this is true.
//Set this to true for character interactions that face toward each other such as hugging
//Set this to false for centered interaction animations
amber_useSprDirOffset = true; 

amber_hugExitTimer = 30; //How many frames should pass before either player can exit the hug window loop
amber_hugExitWindow = 3; //The window to jump to when either player presses a button to exit hug loop


//Dracula support
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = sprite_get("dracula_portrait_2");
dracula_portrait3 = asset_get("empty_sprite");
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "It would seem that yet another rodent has wriggled it's way into my home.";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "You live here? A rustic old place like this might be even older than I am.";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "Is that so? You speak as if you too have lived for centuries.";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "Six or seven, give or take. Slept through most of it, though.";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "Ha ha ha! Interesting, quite interesting. Even so, an animal is an animal. ";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "[glass]";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "And such filth serves no purpose other than to be CRUSHED BENEATH MY HEEL!";
page++;

//Page 6
dracula_speaker[page] = 2;
dracula_text[page] = "You can try.";
page++;

dracula_speaker[page] = 2;
dracula_text[page] = "[taunt]";
page++;

// SCOOP
scoop_personalized_flavour_name = "Blueberry Storm";
scoop_personalized_flavour_sprite = sprite_get("ice_cream");

// Kirbo
TCG_Kirby_Copy = 15;

// Miiverse
miiverse_post = sprite_get("miiverse");