//Also patch in css draw

//also

//update adams picks u idiot

patch_ver = "1.6";
patch_day = "17";
patch_month = "JUN";
patch_date = "17 Jun, 2020";

tourney_safe = false; //disables mid-match codecs.

experimenting = false; 
experimental_1 = true; //ball dthrow, rehit change, wall rehit



instance_create(room_width/2, -300, "obj_article3"); //load hecking buttloads of text

i_am_otto_the_billiard_biker = true;


alt_cur = get_player_color(player);



//Rune Support
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = false;
ab_hud_x = 0;
ab_hud_y = 0;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Not Implemented."]);

abyssMods[@ runes.A] = [1, "NSPECIAL solids are stronger and faster."];
abyssMods[@ runes.B] = [1, "NSPECIAL stripes are stronger and faster."];
abyssMods[@ runes.C] = [1, "NSPECIAL Cue Ball and 8-Ball are stronger and faster."];
abyssMods[@ runes.D] = [2, "DTILT travels further and hits more powerfully."];
abyssMods[@ runes.E] = [2, "FAIR and BAIR travel further, hit more powerfully, and do not decay."];
abyssMods[@ runes.F] = [2, "DATTACK lunges farther and hits more powerfully."];

abyssMods[@ runes.G] = [3, "USPECIAL can be used two times in a row."];
abyssMods[@ runes.H] = [2, "DSPECIAL charges much faster, moves faster, and allows djumping."];
abyssMods[@ runes.I] = [0, "USPECIAL bike hop has a hitbox."];
abyssMods[@ runes.J] = [3, "DAIR bounces when hitting the ground."];
abyssMods[@ runes.K] = [3, "FSPECIAL goes further and has no limit on its use."];

abyssMods[@ runes.L] = [0, "All moves launch the bike more powerfully."];
abyssMods[@ runes.M] = [1, "USTRONG rapid-fires more billiard balls the higher your ball charge."];
abyssMods[@ runes.N] = [3, "Default movement speed matches bike movement speed."];
abyssMods[@ runes.O] = [3, "Melee attacks ALWAYS hit the bike."];



//Trummel codec
trummelcodecneeded = false;
trummelcodec_id = noone;

//TCO
tcoart = sprite_get("tco");

//kirbo
anguish = true;
if anguish swallowed = 0;
kirbyability = 16;

//Otto bobblehead
otto_bobblehead_sprite = sprite_get("bobble_own");

//Misc
playtest = (object_index == oTestPlayer);
practice = false;				//Whether you are in Practice Mode
fix_jumpsquat = false;          //Fixes stupid thing with bike jumpsquat animation
dattack_pre_draw_timer = 0;		//Timer for drawing opponent sprite during dattack grab
airdodge_effect_timer = 0;		//Timer for ring created from airdodge
airdodge_effect_max = 15;		//Max value of the above
prev_attack = 0;				//prev_state but for attack
introtimer = 0;					//Intro anim timer
introframe = 0;					//Intro anim sprite frame
introframelength = 6;			//Length of each intro frame
introdur = 9 * introframelength;//Duration of intro
taunt_held_time = 0;			//Tracks how long taunt has been held
taunt_trigger = false;			//Set to true if you hold taunt long enough
god_mode_updated = false;		//Update rune stuff if you change godmodes

codec_id = noone;				//ID of the player whose codec is being read
codec_forced = false;			//Whether or not the ditto codec has forced Otto's hand (1 and 2 have different behavior)

konami = 0;						//Cheat code during intro anim

//Bike
bike = false;                   //Whether or not you are on the bike
dismount = false;               //Whether to trigger dismounting the bike
mount = false;                  //Whether to trigger mounting the bike
killbike = false;               //Whether or not to kill the bike
bikeairdodge = false;           //Whether the current bike dismount was triggered by airdodge
bikeattack = false;             //Whether the current bike dismount was triggered by attack
mybike = noone;                 //The ID of the bike article
rev_timer = 0;                  //Keep the bike from spamming rev sounds
can_dtilt_own_bike = true;      //To keep dtilt from hitting bike twice
doing_bike_aerial = 0;          //To prevent from hitting own bike while hopping off bike w/ aerial

//Bike hitbox
bike_dmg = 0;					//Damage dealt by launched bike
bike_bkb = 0;					//BKB dealt by launched bike
bike_angle = 0;					//Angle dealt by launched bike

//NSPECIAL
ball_charge = 0;                //0 = has not been charged; 1-8 = charge levels
ball_cooldown = 0;              //Time left during cooldown
ball_cooldown_max = 80;         //Total cooldown duration
ball_pos = 0;                   //Location to draw ball at during nspecial
df_ball_pos_x = 0;              //De facto xpos for ball HUD relative to char
df_ball_pos_y = 0;              //De facto ypos for ball HUD relative to char
cooldown_shake_timer = 0;       //Time left during the cooldown shake
cooldown_shake_max = 12;        //Total shake duration
cooldown_x_offset = 0;          //X offset as a result of the shake
draw_nspecial_flash = false;    //Whether or not to draw the flash for when you use charged nspecial
lose_charge_timer = 0;			//Timer for losing ball charge anim
lose_charge_max = 30;			//# of frames that anim lasts
lose_charge_vsp = 0;			//Vertical speed of lost charge ball
lose_charge_vsp_init = -6;		//Initial vertical speed of lost charge ball

//USPECIAL
max_uspecials = 1;              //Max number of uspecials allowed before landing/wjumping/flinching
uspecials_used = 0;             //Uspecials that have been used
uspecial_timer = 0;				//Flash after using uspecial

//FSPECIAL
max_fspecials = 1;              //Max number of fspecials allowed before landing/wjumping/flinching
fspecials_used = 0;             //Fspecials that have been used
fspecial_cooldown = 0;			//Cooldown after each Fspecial
max_fspecial_cooldown = 15;		//Max value of the above
bike_cooldown = 0;				//Cooldown after bike destroyed by enemy
bike_cooldown_min = 10;			//Below this, cooldown is over
bike_cooldown_max = 370;		//Max cooldown
bike_cooldown_shake_timer = 0;	//Timer for shake when you try to use bike while on cooldown
bike_cooldown_shake_max = 12;	//Max value of the above

//DSPECIAL
dspecial_dmg_min = 9;			//Minimum damage of DSpecial
dspecial_dmg_max = 20;			//I'm not typing all of these out. Figure it out
dspecial_bkb_min = 7;
dspecial_bkb_max = 11;
dspecial_kbs_min = .75;
dspecial_kbs_max = 1.3;
dspecial_bhp_min = 8;
dspecial_bhp_max = 17;
dspecial_hps_min = .8;
dspecial_hps_max = 1.1;

dspecial_dmg = 0;				//Damage etc of current dspecial use
dspecial_bkb = 0;
dspecial_kbs = 0;

dspecial_charge = 0;			//Amount of frames DSpecial is charged for

//FAIR / BAIR
airdashes_used = 0;             //Fairs/bairs that have been used

//HUD
hud_alpha = 0.75;				//Opacity of black HUD backgrounds

hud_state = 0;                  //0 inactive; 1 opening; 2 active; 3 closing
hud_frame = 0;                  //Current frame of HUD animation. 0-2 opening; 3 active; 4-6 closing
speedometer_angle = 0;          //Angle of the speedometer's needle. Determined based on hsp
speedometer_offset = 0;         //Vertical offset relative to the RoA HUD for the speedometer
bobblehead_body_offset = 0;     //Vertical offset relative to the RoA HUD for the bobblehead's body
bobblehead_head_offset = 0;     //Vertical offset relative to the RoA HUD for the bobblehead's head
whole_bike_hud_offset = 0;      //Offset added to every single bike HUD element; used for DSpecial when used while frame data guide is out

taunt_menu_state = 0;			//State of taunt menu
taunt_menu_active = false;		//If it's active
taunt_menu_selected = 0;		//Selected menu item
taunt_menu_timer = 0;			//Timer (resets on state change)

textbox_state = 0;				//State of codec textbox
textbox_active = false;			//If it's active
textbox_timer = 0;				//Timer (resets on state change)
textbox_scale = 0;				//Scale (for appear/disappear anim)

text_file = 0;					//Codec being read
text_page = 0;					//Page being read
final_text = "";				//Text to be drawn
mouth_flap = false;				//Whether or not to add 1 to speaker's image_index
post_text_timer = 0;			//Starts counting up from 0 after the page is finished writing




frame_data_menu_state = 0;		//State of frame data move select
frame_data_menu_active = false;	//If it's active
frame_data_menu_selected = 0;	//Selected menu item
frame_data_menu_timer = 0;		//Timer (resets on state change)
frame_data_menu_offset = 0;		//X offset (for appear/disappear anim)

frame_data_guide_state = 0;		//State of frame data bottom display
frame_data_guide_timer = 0;		//Timer (resets on state change)
frame_data_guide_frame = 0;		//Current frame of sprite strip
frame_data_guide_char_sprite = sprite_get("idle");	//Sprite displayed of the current attack
frame_data_guide_char_frame = 0;	//Frame of the above to be drawn
frame_data_guide_move_alias = "";	//Subtitle of the current attack

frame_data_atk_name = 0;

display_mode = 0;               //0 normal / 1 disabled / 2 debug
hide_hud = false;               //Hides the hud
testing = false;                //Enables debug stuff
god_mode = 0;					//0 off / 1 cooldown disabled / 2 all abyss runes / 3 AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA



//Off Bike Stats

stat_char_height[0] = 62;
stat_knockback_adj[0] = 0.95;
stat_walk_speed[0] = 3;
stat_walk_accel[0] = 0.5;
stat_initial_dash_speed[0] = 6;
stat_dash_speed[0] = 5.5;
stat_dash_turn_accel[0] = 2;
stat_dash_stop_time[0] = 6;
stat_ground_friction[0] = 0.8;
stat_dash_stop_percent[0] = 0.35;
stat_moonwalk_accel[0] = 1.4;

stat_leave_ground_max[0] = 6;
stat_max_jump_hsp[0] = 6;
stat_air_max_speed[0] = 4;
stat_jump_change[0] = 3;
stat_air_accel[0] = .25;
stat_air_friction[0] = .03;
stat_max_fall[0] = 11;
stat_fast_fall[0] = 15;
stat_gravity_speed[0] = .6;

stat_jump_speed[0] = 11.5;
stat_short_hop_speed[0] = 7;
stat_djump_speed[0] = 10;
stat_double_jump_time[0] = 32;

stat_air_dodge_speed[0] = 7.5;
stat_wave_land_adj[0] = 1.2;
stat_wave_friction[0] = .15;

stat_hurtbox_spr[0] = asset_get("ex_guy_hurt_box");



//On Bike Stats

stat_char_height[1] = 72;
stat_knockback_adj[1] = 0.95;
stat_walk_speed[1] = 4.5;
stat_walk_accel[1] = 0.5;
stat_initial_dash_speed[1] = 10;
stat_dash_speed[1] = 9;
stat_dash_turn_accel[1] = 2;
stat_dash_stop_time[1] = 12;
stat_ground_friction[1] = .3;
stat_dash_stop_percent[1] = 0.5;
stat_moonwalk_accel[1] = 1.4;

stat_leave_ground_max[1] = 9.5;
stat_max_jump_hsp[1] = 6;
stat_air_max_speed[1] = 6;
stat_jump_change[1] = 3;
stat_air_accel[1] = .3;
stat_air_friction[1] = .03;
stat_max_fall[1] = 11;
stat_fast_fall[1] = 15;
stat_gravity_speed[1] = .6;

stat_jump_speed[1] = 12;
stat_short_hop_speed[1] = 8.5;
stat_djump_speed[1] = 8;
stat_double_jump_time[1] = 32;

stat_air_dodge_speed[1] = 8;
stat_wave_land_adj[1] = 1.5;
stat_wave_friction[1] = .15;

stat_hurtbox_spr[1] = asset_get("bug_hurtbox");



//Physical size
char_height = stat_char_height[bike];
fixed_char_height = char_height;
knockback_adj = stat_knockback_adj[bike];

//Animation speeds
idle_anim_speed = .14;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .26;
pratfall_anim_speed = .25;

//Ground movement
walk_speed = stat_walk_speed[bike];
walk_accel = stat_walk_accel[bike];
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = stat_initial_dash_speed[bike];
dash_speed = stat_dash_speed[bike];
dash_turn_time = 10;
dash_turn_accel = stat_dash_turn_accel[bike];
dash_stop_time = stat_dash_stop_time[bike];
dash_stop_percent = stat_dash_stop_percent[bike];
ground_friction = stat_ground_friction[bike];
moonwalk_accel = stat_moonwalk_accel[bike];

//Air movement
leave_ground_max = stat_leave_ground_max[bike];
max_jump_hsp = stat_max_jump_hsp[bike];
air_max_speed = stat_air_max_speed[bike];
jump_change = stat_jump_change[bike];
air_accel = stat_air_accel[bike];
prat_fall_accel = 2;
air_friction = stat_air_friction[bike];
max_fall = stat_max_fall[bike];
fast_fall = stat_fast_fall[bike];
gravity_speed = stat_gravity_speed[bike];
hitstun_grav = .525;

//Jumps
jump_start_time = 5;
jump_speed = stat_jump_speed[bike];
short_hop_speed = stat_short_hop_speed[bike];
djump_speed = stat_djump_speed[bike];
max_djumps = 1;
double_jump_time = stat_double_jump_time[bike];
walljump_hsp = 5;
walljump_vsp = 8;
walljump_time = 32;
wall_frames = 2;

//Landing and wavelanding
land_time = 4;
prat_land_time = 3; //SCREW YOU LEXICON I DO WHAT I WANT
wave_land_time = 12;
wave_land_adj = stat_wave_land_adj[bike];
wave_friction = stat_wave_friction[bike];
air_dodge_speed = stat_air_dodge_speed[bike];



//Animation Frames

//Crouch
crouch_startup_frames = 1;
crouch_active_frames = 6;
crouch_recovery_frames = 0;

//Parry
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//Tech
tech_active_frames = 3;
tech_recovery_frames = 1;

//Tech roll
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//Airdodge
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 2;

//Roll
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 7.5;
roll_backward_max = 7.5;



//Sprites

//Ground
spr_idle[0] = sprite_get("idle");
spr_crouch[0] = sprite_get("crouch");
spr_walk[0] = sprite_get("walk");
spr_walkturn[0] = sprite_get("walkturn");
spr_dash[0] = sprite_get("dash");
spr_dashstart[0] = sprite_get("dashstart");
spr_dashstop[0] = sprite_get("dashstop");
spr_dashturn[0] = sprite_get("dashturn");

//Air
spr_jumpstart[0] = sprite_get("jumpstart");
spr_jump[0] = sprite_get("jump");
spr_doublejump[0] = sprite_get("doublejump");
spr_walljump = sprite_get("walljump");
spr_pratfall = sprite_get("pratfall");
spr_land[0] = sprite_get("land");
spr_landinglag[0] = sprite_get("landinglag");

//Dodge
spr_parry = sprite_get("parry");
spr_roll_forward = sprite_get("roll_forward");
spr_roll_backward = sprite_get("roll_backward");
spr_airdodge[0] = sprite_get("airdodge");
spr_airdodge_waveland[0] = sprite_get("waveland");
spr_tech = sprite_get("tech");

//Hurt
spr_hurt = sprite_get("hurt");
spr_bighurt = sprite_get("bighurt");
spr_hurtground = sprite_get("hurtground");
spr_uphurt = sprite_get("uphurt");
spr_downhurt = sprite_get("downhurt");
spr_bouncehurt = sprite_get("bouncehurt");
spr_spinhurt = sprite_get("spinhurt");

//Attack
spr_jab = sprite_get("jab");
spr_dattack = sprite_get("dattack");
spr_ftilt = sprite_get("ftilt");
spr_dtilt = sprite_get("dtilt");
spr_utilt = sprite_get("utilt");
spr_nair = sprite_get("nair");
spr_fair = sprite_get("fair");
spr_bair = sprite_get("bair");
spr_uair = sprite_get("uair");
spr_dair = sprite_get("dair");
spr_fstrong = sprite_get("fstrong");
spr_ustrong = sprite_get("ustrong");
spr_dstrong = sprite_get("dstrong");
spr_nspecial = sprite_get("nspecial");
spr_fspecial = sprite_get("fspecial");
spr_uspecial = sprite_get("uspecial");
spr_dspecial = sprite_get("dspecial");
spr_taunt[0] = sprite_get("taunt");

//Respawn
spr_plat = sprite_get("plat");
spr_intro = sprite_get("intro");
spr_introfall = sprite_get("introfall");

//Bike
spr_idle[1] = sprite_get("bike_idle");                      //Done
spr_crouch[1] = sprite_get("bike_crouch");                  //Yeeted
spr_walk[1] = sprite_get("bike_walk");                      //Done
spr_walkturn[1] = sprite_get("bike_walkturn");              //Done
spr_dash[1] = sprite_get("bike_dash");                      //Done
spr_dashstart[1] = sprite_get("bike_dashstart");            //Done
spr_dashstop[1] = sprite_get("bike_dashstop");              //Done
spr_dashturn[1] = sprite_get("bike_dashturn");              //Done
spr_jumpstart[1] = sprite_get("bike_jumpstart");            //Done
spr_jump[1] = sprite_get("bike_jump");                      //Done
spr_doublejump[1] = sprite_get("bike_jump");                //Done
spr_land[1] = sprite_get("bike_land");                      //Done
spr_landinglag[1] = sprite_get("bike_land");                //Done
spr_airdodge[1] = sprite_get("bike_dash");                  //Done
spr_airdodge_waveland[1] = sprite_get("bike_land");         //Done
spr_taunt[1] = sprite_get("bike_taunt");

//Article Bike
spr_a_bike_idle = sprite_get("a_bike_idle");
spr_a_bike_hitpause_v = sprite_get("a_bike_hitpause_v");
spr_a_bike_hitpause_h = sprite_get("a_bike_hitpause_h");
spr_a_bike_pop_v = sprite_get("a_bike_pop_v");
spr_a_bike_pop_h = sprite_get("a_bike_pop_h");
spr_a_bike_knockback = sprite_get("a_bike_knockback");
spr_a_bike_die = sprite_get("a_bike_die");
spr_a_bike_jumpsquat = sprite_get("a_bike_jumpsquat");

//HUD
spr_hud = sprite_get("hud");
spr_hud_shake = sprite_get("hud_shake");
spr_hud_handlebars = sprite_get("hud_handlebars");
spr_hud_handlebars_shake = sprite_get("hud_handlebars_shake");
spr_speedometer = sprite_get("speedometer");
spr_hud_bobblehead = sprite_get("hud_bobblehead");
spr_hud_bobblebody = sprite_get("hud_bobblebody");

spr_hud_bobbleguest[0] =  spr_hud_bobblehead;       //Workshop
spr_hud_bobbleguest[1] =  sprite_get("bobble_zet"); //Zetterburn
spr_hud_bobbleguest[2] =  sprite_get("bobble_orc"); //Orcane
spr_hud_bobbleguest[3] =  sprite_get("bobble_wra"); //Wrastor
spr_hud_bobbleguest[4] =  sprite_get("bobble_kra"); //Kragg
spr_hud_bobbleguest[5] =  sprite_get("bobble_for"); //Forsburn
spr_hud_bobbleguest[6] =  sprite_get("bobble_may"); //Maypul
spr_hud_bobbleguest[7] =  sprite_get("bobble_abs"); //Absa
spr_hud_bobbleguest[8] =  sprite_get("bobble_eta"); //Etalus
spr_hud_bobbleguest[9] =  sprite_get("bobble_ori"); //Ori
spr_hud_bobbleguest[10] = sprite_get("bobble_ran"); //Ranno
spr_hud_bobbleguest[11] = sprite_get("bobble_cla"); //Clairen
spr_hud_bobbleguest[12] = sprite_get("bobble_syl"); //Sylvanos
spr_hud_bobbleguest[13] = sprite_get("bobble_ell"); //Elliana
spr_hud_bobbleguest[14] = sprite_get("bobble_gus"); //Shovel Knight
spr_hud_bobbleguest[15] = sprite_get("bobble_san");; //Sandbert
spr_hud_bobbleguest[16] = sprite_get("bobble_gua"); //Guadua
spr_hud_bobbleguest[17] = spr_hud_bobblehead;       //Dummy

bobblehead_sprite = spr_hud_bobblehead;
bobblebody_sprite = spr_hud_bobblebody;
bobblehead_frame = 0;
bobble_id = noone;

spr_hud_tauntmenu = sprite_get("hud_tauntmenu");
spr_hud_framedata = sprite_get("hud_framedata");
spr_hud_movelist = sprite_get("hud_movelist");
spr_hud_movetips = sprite_get("hud_movetips");
spr_hud_bike_cooldown = sprite_get("hud_bike_cooldown");
spr_hud_textbox = sprite_get("hud_textbox");
spr_hud_coverup = sprite_get("hud_coverup");
spr_hud_cursor = sprite_get("hud_cursor");

//Misc.
spr_ball = sprite_get("ball");
spr_ball_charge = sprite_get("ball_charge");
spr_ball_cooldown = sprite_get("ball_cooldown");
spr_big_ball = sprite_get("big_ball");
spr_particle = sprite_get("particle");



//SFX

//Billiard Balls
sfx_ball_charge[1] = asset_get("sfx_ell_arc_taunt_collect");
sfx_ball_charge[2] = asset_get("sfx_coin_capture");
sfx_ball_charge[3] = asset_get("sfx_coin_collect");
sfx_ball_charge[4] = asset_get("sfx_diamond_small_collect");
sfx_ball_charge[5] = asset_get("sfx_diamond_collect");
sfx_ball_charge[6] = asset_get("sfx_gem_collect");
sfx_ball_charge[7] = asset_get("sfx_may_arc_coineat");
sfx_ball_charge[8] = asset_get("sfx_fish_collect");
sfx_ball_shoot = sound_get("ball_shoot");
sfx_ball_hit[1] = asset_get("sfx_blow_weak1");
sfx_ball_hit[2] = asset_get("sfx_blow_weak2");
sfx_ball_hit[3] = asset_get("sfx_blow_medium1");
sfx_ball_hit[4] = asset_get("sfx_blow_medium2");
sfx_ball_hit[5] = asset_get("sfx_blow_medium3");
sfx_ball_hit[6] = asset_get("sfx_blow_medium2");
sfx_ball_hit[7] = asset_get("sfx_blow_heavy2");
sfx_ball_hit[8] = asset_get("sfx_blow_heavy2");
sfx_ball_hit_added = sound_get("ball_hit");

//Cooldown
sfx_cooldown_start = sound_get("cooldown_start");
sfx_cooldown_end = sound_get("cooldown_end");
sfx_cooldown_click = sound_get("cooldown_click");

//Bike
sfx_rev[0] = sound_get("rev0");
sfx_rev[1] = sound_get("rev1");
sfx_rev[2] = sound_get("rev2");

//Menu
sfx_hud_chatter[0] = sound_get("hud_chatter0");
sfx_hud_chatter[1] = sound_get("hud_chatter1");
sfx_hud_chatter[2] = sound_get("hud_chatter2");
sfx_hud_chatter_skip = sound_get("hud_chatter_skip");
sfx_hud_close1 = sound_get("hud_close1");
sfx_hud_close2 = sound_get("hud_close2");
sfx_hud_move = sound_get("hud_move");
sfx_hud_open1 = sound_get("hud_open1");
sfx_hud_open2 = sound_get("hud_open2");
sfx_hud_select1 = sound_get("hud_select1");
sfx_hud_select2 = sound_get("hud_select2");

//Guest Codec
sfx_guest_rouxls_kaard = sound_get("guest_rouxls_kaard");
sfx_guest_shy_guy = sound_get("guest_shy_guy");

//Bass
sfx_bass1 = sound_get("bass1");
sfx_bass2 = sound_get("bass2");



//Misc.

//VFX init
vfx_dtilt_spark = hit_fx_create(sprite_get("dtilt_spark"), 12);
vfx_smoke[1] = hit_fx_create(sprite_get("a_bike_smoke1"), 24);
vfx_dash_blast = hit_fx_create(sprite_get("dash_blast"), 15);
vfx_dash_trail = hit_fx_create(sprite_get("dash_trail"), 15);
vfx_v_dash_blast = hit_fx_create(sprite_get("v_dash_blast"), 15);
vfx_v_dash_trail = hit_fx_create(sprite_get("v_dash_trail"), 10);
vfx_sweetspot = 157;
vfx_hit_big = hit_fx_create(sprite_get("hfx_big"), 40);
vfx_hit_big_white = hit_fx_create(sprite_get("hfx_big_white"), 40);
vfx_hit_big_black = hit_fx_create(sprite_get("hfx_big_black"), 80);
vfx_hit_big_black_fast = hit_fx_create(sprite_get("hfx_big_black"), 40);
vfx_hit_small = hit_fx_create(sprite_get("hfx_small"), 30);
vfx_hit_small_blue = hit_fx_create(sprite_get("hfx_small_blue"), 30);
vfx_hit_small_brown = hit_fx_create(sprite_get("hfx_small_brown"), 30);
vfx_hit_small_white = hit_fx_create(sprite_get("hfx_small_white"), 30);
vfx_hit_small_black = hit_fx_create(sprite_get("hfx_small_black"), 30);
vfx_hit_med = hit_fx_create(sprite_get("hfx_med"), 30);
vfx_hit_med_brown = hit_fx_create(sprite_get("hfx_med_brown"), 30);
vfx_hit_tiny = hit_fx_create(sprite_get("hfx_tiny"), 24);
vfx_hit_tiny_blue = hit_fx_create(sprite_get("hfx_tiny_blue"), 24);

vfx_ball_hit[1] = vfx_hit_small;
vfx_ball_hit[2] = vfx_hit_small;
vfx_ball_hit[3] = vfx_hit_small_blue;
vfx_ball_hit[4] = vfx_hit_small_blue;
vfx_ball_hit[5] = vfx_hit_med_brown;
vfx_ball_hit[6] = vfx_hit_med_brown;
vfx_ball_hit[7] = vfx_hit_big_white;
vfx_ball_hit[8] = vfx_hit_big_black;

vfx_ball_charge[1] = vfx_hit_tiny;
vfx_ball_charge[2] = vfx_hit_tiny;
vfx_ball_charge[3] = vfx_hit_tiny_blue;
vfx_ball_charge[4] = vfx_hit_tiny_blue;
vfx_ball_charge[5] = vfx_hit_small_brown;
vfx_ball_charge[6] = vfx_hit_small_brown;
vfx_ball_charge[7] = vfx_hit_small_white;
vfx_ball_charge[8] = vfx_hit_small_black;

spr_ball_charge_vfx[1] = sprite_get("hfx_tiny");
spr_ball_charge_vfx[2] = sprite_get("hfx_tiny");
spr_ball_charge_vfx[3] = sprite_get("hfx_tiny_blue");
spr_ball_charge_vfx[4] = sprite_get("hfx_tiny_blue");
spr_ball_charge_vfx[5] = sprite_get("hfx_small_brown");
spr_ball_charge_vfx[6] = sprite_get("hfx_small_brown");
spr_ball_charge_vfx[7] = sprite_get("hfx_small_white");
spr_ball_charge_vfx[8] = sprite_get("hfx_small_black");

//Hurtbox sprites
hurtbox_spr = stat_hurtbox_spr[bike];
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//Victory
set_victory_bg(sprite_get("victory_bg"));
set_victory_theme(sound_get("otto_victory"));

//SFX
land_sound = asset_get("sfx_land_med2");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_fors");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;