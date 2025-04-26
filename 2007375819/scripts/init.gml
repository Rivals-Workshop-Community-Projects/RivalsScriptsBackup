hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = sprite_get("crouchb");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 70;
idle_anim_speed = .25;
crouch_anim_speed = .25;
walk_anim_speed = .2;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.35;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.25;
dash_speed = 5.65;
dash_turn_time = 16;
dash_turn_accel = 1.75;
dash_stop_time = 6;
dash_stop_percent = .4; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .8;
moonwalk_accel = 1.2749;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 20; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 20;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .55;
hitstun_grav = .51;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 5; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 9;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
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

//Wait sprites
wait_time = 448;
wait_length = 180;
wait_sprite = sprite_get("idle_wait");


land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_med2");
waveland_sound = asset_get("sfx_waveland_abs");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

randomFunny = 0;
funnyfish = 0;
minion = 0;
minionOut = false;
HOut = false;
HCharge = 0;
burnerFuel = 100;
randomTaunt = 0;
tauntpic = sprite_get("blueybottaunt");
arena_title = "The Blue Mememachine";
tcoart = sprite_get("blueybottcoart");
otto_bobblehead_sprite = sprite_get("hudbobblehead");
otto_bobblehead_body_sprite = sprite_get("hudbobblebody");
bofa = false;
chungus = false;
DennisHeadOut = hit_fx_create( sprite_get( "dennisheadout" ),32);
dennis = 0;
diag_portrait= sprite_get("portrait_old");
AppearBruh = hit_fx_create( sprite_get( "appear" ),15);
TeeVeeBruh = hit_fx_create( sprite_get( "tv" ),13);
stupidThings = 0;
funnySound = 0;
copyright = 0;      //if set to true, disables nintendo-related sfx and fstrong pictures
FStrongPictureSprite = sprite_get("tauntpics");

hMoveSprite = sprite_get("h_move");
hFallSprite = sprite_get("h_fall");
hTurnSprite = sprite_get("h_turn");
pizzaMoveSprite = sprite_get("pizzadino_move");
pizzaFallSprite = sprite_get("pizzadino_fall");
pizzaTurnSprite = sprite_get("pizzadino_turn");


//Dracula Support
dracula_portrait = sprite_get("dracportrait1");
dracula_portrait2 = sprite_get("dracportrait2");
var page = 0;
dracula_speaker[page] = 0;
dracula_text[page] = "...What in the world is this? Is this even a living being?";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "> h";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "...Hmph. A piece of machinery built in the image and intelligence of humans... As if they weren't vain enough creatures.";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "> hey drac do you like this picture [taunt]";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "What...";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "> . . .";
page++;
dracula_speaker[page] = 2;
dracula_text[page] = "> oh this joke doesn't work anymore because of my new forward strong";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "...";
page++;
dracula_speaker[page] = 2;
dracula_text[page] = "> i miss my twitter account. i miss it a lot";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "Enough![glass] Nothing that you say makes sense AT ALL! I, Dracula, shall reduce you to scrap metal!";
page++;
dracula_speaker[page] = 2;
dracula_text[page] = "> you STILL got problems bucko";
page++;

//
blueybot_victory_quote = "> follow blueybot.bsky.social on bluesky";
blueybot_handled_victory_quote = false;
blueybot_victory_icon = 0;