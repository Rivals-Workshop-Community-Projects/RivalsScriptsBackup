//extra alts
extra_col = 0;

hurtbox_spr = sprite_get("1");
crouchbox_spr =  sprite_get("2");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 78;
idle_anim_speed = .1;
crouch_anim_speed = .05;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.00;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 4;
dash_speed = 6.25;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 8.5;
short_hop_speed = 4.5;
djump_speed = 0;
djump_accel = -1.3;
djump_accel_start_time = 4;
djump_accel_end_time = 15;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 8;
walljump_vsp = 7;
walljump_time = 4;
max_fall = 10.5; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .30;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 0;
crouch_active_frames = 4;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 6;

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
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
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

//Potion stuff
myPotion = array_create(0);//the current potion we have on the field
potionType = 3;//for id's, see article1_update's enums
barPoints = 0;//current number of points. this is adjusted throughout the game
barAmount = 100;//amount of points per bar
barNumber = 5;//Number of bars
barRecharge = 0.8;//Amount of auto recharge per frame
barWidth = 0;

potionDrawYOffset = 0;
potionDrawYOffsetMax = 64;

//claypotionstuff
PotionCooldown = 16;

maxPotionsOnField = 1;
consumeMultiplier = 1;

//claystuff
ButtonHeldDown = 0;
highest_y_point = 0;
FSpecBounceHeight = -6.5;

hasstung = 0;

bpop = hit_fx_create( sprite_get( "bubblepop" ), 12 );
sting = hit_fx_create( sprite_get( "sting" ), 21 );
splsh = hit_fx_create( sprite_get( "splattersplash" ), 21 );
jcaul = hit_fx_create( sprite_get( "jellycauldron_explosion" ), 32 );
spawnCloneFX = hit_fx_create( sprite_get( "cauldronMorph" ), 8);
starpop = hit_fx_create( sprite_get( "cauldronStarFX" ), 20 );
splatter = hit_fx_create( sprite_get( "splatter" ), 21 );

tideDestroyEffect = hit_fx_create(sprite_get("boomTide"),30);
tideRedDestroyEffect = hit_fx_create(sprite_get("cauldronTideDissipate"),30);
tideBlueDestroyEffect = hit_fx_create(sprite_get("cauldronTideDissipate2"),30);

set_hit_particle_sprite( 1, sprite_get( "particle_1" ) );


PotionHeldDown = false;

//fspec
FSpecBounce = false;
CauldronBounce = noone;

//fuck it
myCloneOwner = noone;
myGooClone = noone;//instance_create(x,y,"oPlayer");
//myGooClone.custom_clone = true;

//intro
introTimer = -3;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;
introTimer3 = 0;

//compat
spam_ad = sprite_get("vis_ad")

//Dracula!!!
//Dracula support
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = sprite_get("dracula_portrait2"); //or asset_get("empty_sprite")
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Hello, Potion Seller, I am going into battle and I want your strongest potions.";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "My potions are too strong for you, count.";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "Potion Seller, I tell you I am going into battle, and I want only your strongest potions.";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "My potions would kill you, count. You cannot handle my potions.";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "Potion Seller, I'm telling you right now; I am going into battle and I need only your strongest potions.";
page++;

//Page 5
dracula_speaker[page] = 2;
dracula_text[page] = "You don't know what you ask, count. My strongest potions will kill a dragon let alone a man.";
page++;

//Page 5
dracula_speaker[page] = 2;
dracula_text[page] = "You need a seller that sells weaker potions, because my potions are too strong.";
page++;

//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "Bah! This is going nowhere![glass] I'll just turn you into chum, then we'll see if you'll still haggle!";
page++;

//birby
kirbyability = 10;
