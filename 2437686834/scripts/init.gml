hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;



char_height = 50;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.6;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.5;
dash_speed = 6.8;
dash_turn_time = 8;
dash_turn_accel = .5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .52;
moonwalk_accel = 1.4;

jump_start_time = 6;
jump_speed = 12.62;
short_hop_speed = 8;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .40;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 2;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 2;
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
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

charge_timer = 0;    //this variable will keep track of how long our charge-attack has been charged for.
current_fruit = 0;
stored_fruit = 0;
can_nspecial = true;
got_fruit = false;
bite_dir = 1;
can_switch = true;
fruit = 0;
can_toss = false;
will_toss = false;
is_up = false;
is_down = false;
is_forward = false;

is_up_ani = false;
is_down_ani = false;
is_forward_ani = false;

Retro1 = hit_fx_create( sprite_get( "RetroEffect1" ), 20 );

Explosion1 = hit_fx_create( sprite_get( "Explosion" ), 40 );

hydrant_here = false
hydrant = false

//Article animation vars
plant_idle_anim_speed = 0.1;
plant_stun_anim_speed = 0.1;
plant_taunt_anim_length = 64;

land_sound = sound_get("Land");
landing_lag_sound = sound_get("LandHard");
waveland_sound = sound_get("Land");
jump_sound = sound_get("Jump");
djump_sound = sound_get("Jump2");
air_dodge_sound = sound_get("DodgeRoll");

bomb_exists = false

sandstarred = false;

kirbyability = 16;
swallowed = 0;


//Hikaru Support

Hikaru_Title = "Hyper Hungry";



arena_title = "The Yellow Fellow";




battle_text = "* PAC-MAN hungers for battle";
//battle_text2 = "* Smells like cookie dough"
//battle_text3 = "* Sounds of a banjo float through"

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;



dracula_portrait = sprite_get("dracportrait1");
dracula_portrait2 = sprite_get("dracportrait2");
dracula_portrait3 = sprite_get("dracportrait3");
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "So, we meet once more.";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = "Rest assured my yellow adversary. I may have underestimated you before, but not again.";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = "[glass]";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = " Have at you!";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "[His head seems to be his weak spot. Better strike there...]";
page++;

sandstarred = false;


sandstar_form = sprite_get("sandstar_hurt")

miiverse_post = sprite_get("miiverse");

resort_portrait = sprite_get("luigi")

pkmn_stadium_front_img = sprite_get("pokemon_sprite_front");
pkmn_stadium_back_img = sprite_get("pokemon_sprite_back");
