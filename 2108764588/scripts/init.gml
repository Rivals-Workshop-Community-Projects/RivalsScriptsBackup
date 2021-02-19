//this var makes f5 not break the buddy if developing with more than one
//workshop character or buddy in the match
//abyss_devmode = true;
//
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
ab_hud_x = 0;
ab_hud_y = 0;
//initialize mod variable array. overshoot by one, 0 is never used because
//it's easier this way.
//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod
// 1 - ranged mod
// 2 - hit mod
// 3 - ability boost
abyssMods = array_create(16,[-1,"Not Implemented."]);
//example rune definition:
abyssMods[@ runes.A] = [3,"Dash speed is faster."]; //imp hmm
abyssMods[@ runes.B] = [0,"Ice lasts longer."]; //imp
abyssMods[@ runes.C] = [2,"USPECIAL goes higher at greater speeds."]; //imp
abyssMods[@ runes.D] = [2,"Reduced startup on DAIR."]; //imp
abyssMods[@ runes.E] = [2,"FSTRONG has a faster speed boost."]; //imp
abyssMods[@ runes.F] = [3,"Initial dash is shorter."]; //imp

abyssMods[@ runes.G] = [2,"FSPECIAL and NSPECIAL have no speed cap."]; //imp
abyssMods[@ runes.H] = [2,"DSPECIAL kick travels faster."]; //imp
abyssMods[@ runes.I] = [2,"DSPECIAL is jump-cancellable."]; //imp
abyssMods[@ runes.J] = [2,"You can attack/special cancel USPECIAL at the peak."]; //imp
abyssMods[@ runes.K] = [3,"Power boost from speed is stronger."]; //imp

abyssMods[@ runes.L] = [3,"Dash speed on ice is doubled."]; //imp
abyssMods[@ runes.M] = [3,"Everything is ledge-cancellable on hit."]; //imp
abyssMods[@ runes.N] = [3,"Every ice move gets the strong boost."]; //imp
abyssMods[@ runes.O] = [3,"You have a passive hitbox if going fast enough."]; //imp
runeA=false;
runeB=false;
runeC=false;
runeD=false;
runeE=false;
runeF=false;

runeG=false;
runeH=false;
runeI=false;
runeJ=false;
runeK=false;

runeL=false;
runeM=false;
runeN=false;
runeO=false;
//abyss init code over

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .22;
dash_anim_speed = .29;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 0;
dash_speed = 8;
ice_dash_speed = 9.5;
reg_dash_speed = 6;
dash_turn_time = 24;
dash_turn_accel = dash_speed*2/(dash_turn_time-10);
dash_stop_time = 10;
dash_stop_percent = 1; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .06;
moonwalk_accel = 0.95;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 7.5;
djump_speed = 10;
leave_ground_max = 15; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 10;
fast_fall = 15;
gravity_speed = .55;
hitstun_grav = .50;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 8;
wave_land_time = 8;
wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .00; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 5;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 1;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 1;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

wall_frames=2;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_eta");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 0;

//custom
buffer_hsp=0;
previous_hsp1=0;
previous_hsp2=0;
rainbows=180;
var temp_color=make_color_hsv(rainbows*255/360, 80*255/100, 255);
set_color_profile_slot(10, 0, colour_get_red(temp_color), colour_get_green(temp_color), colour_get_blue(temp_color));
var temp_color=make_color_hsv(rainbows*255/360, 8*255/100, 30*255/100);
set_color_profile_slot(10, 1, colour_get_red(temp_color), colour_get_green(temp_color), colour_get_blue(temp_color));

dspecial_initial_hsp=0;
target_hsp=0;
strong_boost=false;
special_boost=false;
eating_ice=false;
dspecial_charge=0;
prev_dspecial_charge=0;
window_pl=0;
dspec_timer=0;
ice_to_eat = 30;
heavytimer=0;
buffered_dtilt2 = false;
taunt_times=0;
taunt_infinite=false;
anitimer=0;
hitpause_hsp=0;
fspecial_charge=0;
fspecial_max_charge=450;
fspec_actionable_timer=0;
fspec_actionable_time=10;
fspec_full_charge_delay=8;
fspec_full_charge_delay_timer=0;
fspec_shield_buffer=false;
fspec_special_buffer=false;
fspec_effect_spawned=false;
fspec_skip=false;
check=0;

tracking_dash_high=0;
tracking_dash_low=0;
dash_previous=0;
dash_change_timer=0;
dash_change_target=0;
//0 - high
//1 - low

zerra_iced=false;
zerra_iced_id=noone;

strong_boost_indication_type=1;
//0 - old
//1 - new
strong_boost_indication_x=0;
strong_boost_indication_y=0;
strong_boost_indication_timer=0;

//for spedometer
show_spedometer=true;
sped_active=false;
sped_angle=0;
temping=0;

//for guide
secret=true;//true for enabled

guide_active=false;
guide_timer=0;
guide_state=0;
guide_frame=0;

guide_head_active=false;
guide_head_timer=0;
guide_head_state=0;
guide_head_frame=0;
guide_head_talking=false;

guide_menu_state=0;
guide_menu_timer=0;
guide_menu_alpha=0;
guide_menu_selected=0;
guide_menu_hold_delay=0;
guide_menu_hold_delay2=0;

guide_text_active=false;

guide_textbox=0;

for(var i=15;i>=0;i--){
    guide_writetext[i]="";
    guide_readtext[i]="";
}
/*guide_writetext[7]="";
guide_writetext[6]="";
guide_writetext[5]="";
guide_writetext[4]="";
guide_writetext[3]="";
guide_writetext[2]="";
guide_writetext[1]="";
guide_writetext[0]="";

guide_readtext[7]="";
guide_readtext[6]="";
guide_readtext[5]="";
guide_readtext[4]="";
guide_readtext[3]="";
guide_readtext[2]="";
guide_readtext[1]="";
guide_readtext[0]="";//*/

guide_fd_active=false;

for(var i=9;i>=0;i--){
    for(var j=2;j>=0;j--;){
        guide_fd_grid[i,j]="";
    }
}

guide_fd_f_h_start[2]=0;
guide_fd_f_h_start[1]=0;
guide_fd_f_h_start[0]=0;

//ice_check_offset=0;

//ending stat
total_speed=0;
average_speed=0;
speed_frames=0;
no_timer=false;

//Whether you are in Practice Mode (from otto)
playtest = (object_index == oTestPlayer);
practice = false;				

//checking game end (from valkyrie)
gameEnded=false;

meleetarget=noone;

walkturn_taunt_timer=0;

//custom state (deprecated. will be removed later)
PS_GRINDING=366;
grind_speed=0;
grind_length=0;

//the rail object (deprecated. will be removed later)
grind_rail=0;//instance_create(-1000,-1000,"obj_article1");

can_uspecial=true;

blinktimer=30;
anim_c_timer=0;

wearing_hat = get_player_color(player) == 8;

bair_iceplosion = hit_fx_create( sprite_get( "bair_new_proj_test" ), 12 );
strong_boost_indicator = hit_fx_create( sprite_get( "strong_boost_indicator" ), 18 );

//custom hit effects
ice_slash_uff = hit_fx_create( sprite_get( "ice_slash_fair" ), 15 );
ice_slash_general = hit_fx_create( sprite_get( "ice_slash_general" ), 15 );
//ice_slash_general = hit_fx_create( sprite_get( "ice_slash_general_new" ), 15 );
ice_slash_strong = hit_fx_create( sprite_get( "ice_slash_strong" ), 20 );
//ice_slash_strong = hit_fx_create( sprite_get( "ice_slash_strong_new" ), 20 );
strong_boost_hit = hit_fx_create( sprite_get( "strong_boost_hitfx" ), 28 );
fspecial_explosion = hit_fx_create( sprite_get( "fspecial_explosion" ), 25 );
fspecial_explosion_late = hit_fx_create( sprite_get( "fspecial_explosion_2" ), 20 );
ice_pole_break = hit_fx_create( sprite_get( "ice_pole_break" ), 18 );

//trummel stuff
trummelcodecneeded = false;
trummelcodec_id = noone;

//TCO support
tcoart = sprite_get("tcoart");

//feri costume
feri_costume = sprite_get("feri_costume_zerra");

//otto bobble
otto_bobblehead_sprite = sprite_get("bobblehead");

//amber plush
plushForAmber = sprite_get("smol");

//Amber hug interaction variables
amber_herObj = noone; //The object ID of Amber when she hugs. Amber's own script will set this when the hug is inititated
amber_thisHugSprite = sprite_get("zerra_hug");
amber_herHugSprite = sprite_get("amber_hug");
amber_startHug = false; //This variable is set true from Amber's scripts
amber_thisSpriteInFront = true; //When true, this character's sprite is rendered over Amber's sprite
amber_autoTurnToHer = true; //This character will automatically face towards Amber upon hug activatation when true

amber_hugStartPos[0] = 40; //The x target offset point (from Amber's pos) where the player should hug Amber at. 
amber_hugStartPos[1] = 0; //The y target offset point. Recommended to keep this at 0 for grounded interaction

amber_hugExitPos[0] = 40; //The x target offset point (from Amber's pos) where the player stands at when exiting hug state.
amber_hugExitPos[1] = 0; //The y target offset point.

//The x target offset positions will inherit the character's spr_dir when this is true.
//Set this to true for character interactions that face toward each other such as hugging
//Set this to false for centered interaction animations
amber_useSprDirOffset = true; 

amber_hugExitTimer = 9001; //How many frames should pass before either player can exit the hug window loop
amber_hugExitWindow = 0; //The window to jump to when either player presses a button to exit hug loop