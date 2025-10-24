hurtbox_spr = sprite_get("beegguy_hurt");
crouchbox_spr = sprite_get("beegguycrouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//default stats
    default_idle_anim_speed = .12;    
    default_walk_anim_speed = .14;
    default_dash_anim_speed = .4;	
	
    default_walk_speed = 3;
    default_initial_dash_speed = 6.5;
    default_dash_speed = 6;
	
    default_jump_speed = 12;
    default_short_hop_speed = 7.5;
    default_djump_speed = 10.5;
    default_air_max_speed = 4;
    default_walljump_vsp = 8;
    default_max_fall = 11;
    default_fast_fall = 16;
    default_gravity_speed = .6;
    default_knockback_adj = .9;
    default_wave_land_adj = 1.2;
    default_air_accel = .3;	
	
	default_hitstun_grav = .52;
	default_air_friction = .05;
    default_knockback_adj = .9;


char_height = 64;
idle_anim_speed = default_idle_anim_speed;
crouch_anim_speed = .1;
walk_anim_speed = default_walk_anim_speed;
dash_anim_speed = default_dash_anim_speed;
pratfall_anim_speed = .25;

walk_speed = default_walk_speed;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 16;
initial_dash_speed = default_initial_dash_speed;
dash_speed = default_dash_speed;
dash_turn_time = 11;
dash_turn_accel = 1;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .45;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = default_jump_speed;		
short_hop_speed = default_short_hop_speed;
djump_speed = default_djump_speed;
leave_ground_max = 6;							//the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; 								//the maximum hsp you can have when jumping from the ground
air_max_speed = default_air_max_speed;		 	//the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; 								//maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = default_air_accel;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = default_walljump_vsp;
walljump_time = 32;
max_fall = default_max_fall; //maximum fall speed without fastfalling
fast_fall = default_fast_fall; //fast fall speed
gravity_speed = default_gravity_speed;
hitstun_grav = default_hitstun_grav;
knockback_adj = default_knockback_adj;		//the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = default_wave_land_adj;	//the multiplier to your initial hsp when wavelanding. Usually greater than 1
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

//Spin charge rune
spincharge = 30;
spincool = 0;

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

diag_portrait=sprite_get("diagportrait");
///agent n codec
nname = "Big Yoshi"
ncode1 = "An organism from the Mushroom World. Enjoys Yoshi Cookies."
ncode2 = ""
ncode3 = "404"

//adventure
pronouns = ["he","him","his","is"];
am_is_verbal = false;
am_is_noob = true;
am_is_big = true; 
am_is_clothed = false;