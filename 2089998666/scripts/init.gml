hurtbox_spr = sprite_get("beegguy_hurt");
crouchbox_spr = sprite_get("beegguycrouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

bossmode = 0
///Boss variable
yosword = 0
bsta = 100
bdefeat = -1
bscore = 1000
fparry = 0
fheal = 0
fphase = 0
///

char_height = 64;
idle_anim_speed = .12;
crouch_anim_speed = .1;
walk_anim_speed = .14;	//.14
dash_anim_speed = .4;	//.4
pratfall_anim_speed = .25;

walk_speed = 3;			//3
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 16;
initial_dash_speed = 6.75;		//6.75
dash_speed = 6; 		//6
dash_turn_time = 11;
dash_turn_accel = 1;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .45;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;		//12
short_hop_speed = 7.5;
djump_speed = 10.5;		//10.5
leave_ground_max = 7; 	//5		//the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; 		//6		//the maximum hsp you can have when jumping from the ground
air_max_speed = 4;		//4	 	//the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;		//6
walljump_vsp = 7;		//8
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 17; //fast fall speed
gravity_speed = .6;	//.6
hitstun_grav = .52;
knockback_adj = .9;		//.9 //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.2;	//1.2 //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 11;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 7;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 4;
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

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_med");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Flutter kick
flutterTimer = 50;
flutterAttack = 0;

//Glow thing
glowAnim = 0;

//Egg Things
eggcharge = 0;
eggcharge2 = 0;
eggBreak = hit_fx_create(sprite_get("eggbreak"), 15);
eggBreak2 = hit_fx_create(sprite_get("eggbreak2"), 10);
eggrising = 1;

//Cookie Aid
cookieAid = 0;
cookieTimer = 0;
cookieMeter = 3;
cookieRestore = hit_fx_create(sprite_get("cookierestore"), 15);
sax = 1;

set_victory_theme(sound_get("victory_bigyoster"));

//this has nothing to do with the GTA character
beegsmokeL = hit_fx_create(sprite_get("smoke_l"), 23);
beegsmokeR = hit_fx_create(sprite_get("smoke_r"), 23);

//Character support variables
kirbyability = 11;
Hikaru_Title = "Gluttonous Omnivore";
arena_title = "Gluttonous Omnivore";
tcoart = sprite_get("bigyoshitcoart");
otto_bobblehead_sprite = sprite_get("hudbobblehead");
otto_bobblehead_body_sprite = sprite_get("hudbobblebody");
miiverse_post = sprite_get("miiverse");


bosswin = hit_fx_create( sprite_get( "bosswin" ), 10);
warning = hit_fx_create( sprite_get( "arrow2" ), 60);
warning2 = hit_fx_create( sprite_get( "arrow2" ), 50);
warning3 = hit_fx_create( sprite_get( "arrow2" ), 40);

bparry = hit_fx_create( sprite_get( "bparry" ), 24);
bpparry = hit_fx_create( sprite_get( "bpparry" ), 40);
bheal = hit_fx_create( sprite_get( "bheal" ), 24);

bparry2 = hit_fx_create( sprite_get( "bparry2" ), 24);
bpparry2 = hit_fx_create( sprite_get( "bpparry2" ), 40);
bheal2 = hit_fx_create( sprite_get( "bheal2" ), 24);

tauntpar2 = hit_fx_create( sprite_get( "tauntpar2" ), 20);
sprite_change_offset("tauntpar2", 30, 30);

///agent n codec
nname = "Big Yoshi"
ncode1 = "An organism from the Mushroom World. Enjoys Yoshi Cookies."
ncode2 = ""
ncode3 = "404"

user_event(14);