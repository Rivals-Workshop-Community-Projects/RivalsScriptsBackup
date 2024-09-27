hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("churtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.5;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 5;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 29; //the number of frames to play the djump animation. Can't be less than 31. (Erm don't care lol -Inf1n1te)
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .08; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

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
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
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

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

set_victory_theme(sound_get("victory"));
//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//variables robo added
shine_invince_timer = 0;
heal_outline = 0;

//variables
STOPHITTINGME = 0;

multihit = 0;
multihit_timer = 24;

echosound = 0;
echosound_timer = 120;

absorbvortexsound = 0;
absorbvortexsound_timer = 120;

cblast_timer = 0;
cblast_charged = false;
cblast_charging = false;
cblast_flash = 0;
brainsnotworking = 0;

grenade_freq = 5; //just read the comment for fpillar_freq for this one. the two moves pretty much work the exact same way. Nspec projectile 2 is used to control this one's speed/lifetime.
grenade_dis = hit_fx_create( sprite_get( "grenadedis" ), 25 );
grenade_smoke = hit_fx_create( sprite_get( "grenadesmoke" ), 20 );

fpillar_freq = 5; //how frequently flame pillar makes a hitbox. you can change this one, but it might not line up perfectly with the anim,
                  //unless you change Fspec projectile 3's lifetime/anim speed
fpillar_dis = hit_fx_create( sprite_get( "flamepillar_dis" ), 20 );

cjkair = hit_fx_create( sprite_get( "cjkexplosion" ), 20 ); 
cjkgrnd = hit_fx_create( sprite_get( "cjkexplosiongrnd" ), 20 );

arocket_speed = 12; //travel speed of arm rocket. you can change this one.
arocket_turn_speed = 4; //degrees that arm rocket can turn per frame. you can change this one.
arocket_angle = 90; //current angle arm rocket is travelling in
arocket_target_angle = 90; //current angle arm rocket is trying to turn towards
//arocket_can_land = true; //if the current arm rocket can land by riding into the ground. ended up unused.
arsmoke = hit_fx_create( sprite_get( "armrocketsmoke" ), 24 );

can_b_reverse = false;

if(get_training_cpu_action() == CPU_FIGHT){
    practice = false;               //whether or not you're in training mode
}else{
    practice = true;
}

//menu variables
specialnums = [0, 0, 0, 0];         //add 1 to each number for the special number, i.e. 0211 = specs 1322

hud_menu = sprite_get("hud_menu");
menu_open = false;
menu_confirm = true;
menu_close = false;                 //used to reset all variables at once when the menu is closed
close_timer = -1;                   //used for menu vfx when closing

menu_timer = -1;

menu_dir = -1;                      //returns 0 for up, 1 for right, 2 for down, and -1 for left and idle
prev_dir = -1;                      //used for input lockout so you pressing a direction once doesn't register every frame
active_col = 0;                     //used for player selection
for(var i = 0; i <= 3; i++){
    for(var j = 0; j <= 2; j++){
        specs_chosen[i, j] = true;  //determines what icons are drawn on the menu
    }
}

//Stealth Burst
SburstProjAnim = hit_fx_create(sprite_get("stealthburstexplode"), 20);
Sburst_x = 0; //storing the coordinates of the stealth burst explosion
Sburst_y = 0; //doing this lets me wait a second to spawn the explosion later

//Bomb Drop
KILL = false; //very good variable names if I do say so myself
DIE = 0;

//Making special move names nicer.
//You can use either name to refer to them in their own attack scripts, I think.
AT_NSPECIAL_3 = AT_NSPECIAL_AIR;
AT_FSPECIAL_3 = AT_FSPECIAL_AIR;
AT_USPECIAL_3 = AT_USPECIAL_GROUND;
AT_DSPECIAL_3 = AT_DSPECIAL_AIR;


//SPECIAL SYNCED_VAR CODE BY SUPERSONIC-----------------------------------------
var tmp_specials = get_synced_var(player);
//read specials from synced var
for (var i = 0; i <= 3; i++) {
    var shift = (i*2);
    //print(`${i} = ${tmp_specials >> shift & 3}`); //whee debug print
    specialnums[i] = tmp_specials >> shift & 3;
    specialnums[i]--;
}
//------------------------------------------------------------------------------