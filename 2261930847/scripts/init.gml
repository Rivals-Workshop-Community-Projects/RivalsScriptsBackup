
hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 46;
idle_anim_speed = .1;
crouch_anim_speed = .6;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 5.5;
dash_turn_time = 8;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 6.5;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .7; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 33; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 7; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = .95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 1;
crouch_recovery_frames = 0.5;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 2;

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
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_orc");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

//gimmick code
moist_rn = 0;           //this one handles the meter amount that's changed
moist_max = 300;        //maximum meter amount
moist_level = 1;        //for handling meter level
moist_anim = 0;         //sub-image variable for meter animation
moist_prev = 1;         //variable for handling previous level of moist meter
moist_gained = false;
mud_gained = false;     //Variable on whether or not the player has gained dspecial meter, allows for gaining it if you fall into puddle from aerial dspecial


//articles
killarticles = false;

mud = noone;            //specify the mud article when it's spawned
//puddle_hitbox = noone;

on_mud = false;         //variable to change moves/affect meter when quagsire is on top of the mud

//training mode mud debug
mud_training_level = 0;

nyoom = false; //for mud dash speed up

bonk = false; //for bonk shenans

AT_UTILT_2 = 49;

mud_hit_fx1 = hit_fx_create( sprite_get( "mud_hit" ), 16 );
mud_hit_fx2 = hit_fx_create( sprite_get( "mud_hit2" ), 25 );
bonk_hit_fx1 = hit_fx_create( sprite_get( "bonk_hit"), 27 );
bonk_hit_fx2 = hit_fx_create( sprite_get( "bonk_reverse_hit"), 27 );

//others
set_victory_theme( sound_get( "sfx_victory" ));

arena_title = "The Slippery Slouch"

resort_portrait = sprite_get("last_resort_portrait")

otto_bobblehead_sprite = sprite_get("bobble_quag");

miiverse_post = sprite_get("miiverse_post");

battle_text = "Quagsire doesn't seem interested..."


guiltySprite = sprite_get("trial_grounds")

fire_taunt = sprite_get("firequagsupport");
fire_taunt_duration = 58;
fire_taunt_frames = 1;
fire_taunt_sound = sound_get("sfx_fire");
fire_taunt_sound_frame = 5;

walle_taunt_sound = sound_get("sfx_victory")
walle_taunt_type = 2

feri_costume = sprite_get("costume_quagsire");

Hikaru_Title = "Water Fish";

childsupport = 1;

kirbyability = 16;
swallowed = 0 
enemykirby = noone;


nname = "Quagsire"

ncode1 = "The Water Fish Pokemon,"
ncode2 = "He rolls around in mud to gain power."
ncode3 = "He doesn't like anime, so be wary."

pkmn_stadium_front_img = sprite_get("pokemonstadium1");
pkmn_stadium_back_img = sprite_get("pokemonstadium2");

plushForAmber = sprite_get("marketablequagplushie");

gfzsignspr = sprite_get("flower_zone");

trummelcodecneeded = false;
trummelcodec_id = noone;

//Daroach support
daroachstage = false;
daroach_portrait = sprite_get("dracula_portrait");
daroach_portrait2 = asset_get("empty_sprite");
daroach_portrait3 = asset_get("empty_sprite");
var page = 0;
//Page 0
daroach_speaker[page] = 1;
daroach_text[page] = "Houuh!";
page++;
//Page 1
daroach_speaker[page] = 0;
daroach_text[page] = "I'll assume you are complimenting my airship, and congratulating me on my treasure stash.";
page++;
//Page 2
daroach_speaker[page] = 1;
daroach_text[page] = "Houuh?  HOUUH!";
page++;
//Page 3
daroach_speaker[page] = 0;
daroach_text[page] = "Excuse me? [shake] Did you just tell me to return this treasure to it's 'rightful owners?'";
page++;
//Page 4
daroach_speaker[page] = 1;
daroach_text[page] = "[taunt]";
page++;
//Page 5
daroach_speaker[page] = 0;
daroach_text[page] = "[shake] Are you even paying attention?!?! I won't tolerate such insolence! [laugh] Let's see how you like this!";
page++;

//Dracula support
draculastage = false;
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = asset_get("empty_sprite");
dracula_portrait3 = asset_get("empty_sprite");
var page = 0;
//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Hmm? Who dares come to my castle?";
page++;
//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "Houuh!";
page++;
//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "What is a Mon, a miserable little pile of stats!";
page++;
//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "Houuh!";
page++;
//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "But enough talk, ha-";
page++;
//Page 5
dracula_speaker[page] = 1;
dracula_text[page] = "[taunt]";
page++;
//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "[shake]I said have at-";
page++;
//Page 7
dracula_speaker[page] = 1;
dracula_text[page] = "[taunt]";
page++;
//Page 8
dracula_speaker[page] = 0;
dracula_text[page] = "Oh shut up. Have at you![glass]";
page++;


/*
//Date Girl Support. Generated using McDucky's Date Girl Generator! 
Chatting = true;
DG_portrait = sprite_get("DG_portrait");
var DG_page = 0;

//Page 0
DG_page = 0;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = true;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Testing
Hello
Yes"

DG_options[DG_page] = 
"

"
			
DG_answers[DG_page] = [0,0,0];


//Page 1
DG_page = 1;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = true;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Testing
Hello
Yes"

DG_options[DG_page] = 
"

"
			
DG_answers[DG_page] = [0,0,0];

*/