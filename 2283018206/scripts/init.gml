blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);





//Bike
bike = (get_gameplay_time() < 60);	                //Whether or not you are on the bike
prev_bike = false;
rev_timer = 0;                  //Keep the bike from spamming rev sounds
bike_vfx_time = 0;
bike_vfx_time_max = 15;
fix_ball_spawn = false;



//Ball
ball = noone;
ball_time = 0;

ball_sounds = [
    asset_get("sfx_diamond_collect"),
    asset_get("sfx_coin_capture"),
    asset_get("sfx_gem_collect")
	];
	
afterimg_timer = 0;
afterimg_timer_max = 20;

afterimg_x = 0;      //x
afterimg_y = 0;      //y
afterimg_sprite = sprite_get("idle"); //sprite_index
afterimg_frame = 0;  //image_index
afterimg_angle = 0;  //image_angle
afterimg_dir = 0;    //spr_dir
afterimg_col = make_color_rgb(
	get_color_profile_slot_r(get_player_color(player), 0),
	get_color_profile_slot_g(get_player_color(player), 0),
	get_color_profile_slot_b(get_player_color(player), 0)
	);



nspecial_buffer = 0;

has_uspecialed = false;



//Bike HUD

hud_state = 0;                  //0 inactive; 1 opening; 2 active; 3 closing
hud_frame = 0;                  //Current frame of HUD animation. 0-2 opening; 3 active; 4-6 closing
speedometer_angle = 0;          //Angle of the speedometer's needle. Determined based on hsp
speedometer_offset = 0;         //Vertical offset relative to the RoA HUD for the speedometer
bobblehead_body_offset = 0;     //Vertical offset relative to the RoA HUD for the bobblehead's body
bobblehead_head_offset = 0;     //Vertical offset relative to the RoA HUD for the bobblehead's head
whole_bike_hud_offset = 0;      //Offset added to every single bike HUD element; used for DSpecial when used while frame data guide is out



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
// stat_djump_speed[0] = 10;
// stat_double_jump_time[0] = 32;

stat_djump_speed[0] = -7;
stat_djump_accel[0] = -1.7;
stat_djump_accel_end_time[0] = 18;
stat_double_jump_time[0] = 25;
stat_djump_sound[0] = asset_get("sfx_ell_nair");

stat_air_dodge_speed[0] = 8;
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
stat_moonwalk_accel[1] = 2;

stat_leave_ground_max[1] = 9.5;
stat_max_jump_hsp[1] = 9;
stat_air_max_speed[1] = 6;
stat_jump_change[1] = 3;
stat_air_accel[1] = .3;
stat_air_friction[1] = .03;
stat_max_fall[1] = 11;
stat_fast_fall[1] = 15;
stat_gravity_speed[1] = .6;

stat_jump_speed[1] = 11;
stat_short_hop_speed[1] = 7;
stat_djump_speed[1] = 11;
stat_double_jump_time[1] = 32;

stat_djump_accel[1] = 0;
stat_djump_accel_end_time[1] = 0;
// stat_double_jump_time[0] = 25;
stat_djump_sound[1] = asset_get("sfx_jumpair");

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
crouch_anim_speed = .12;
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
djump_accel = stat_djump_accel[bike];
djump_accel_end_time = stat_djump_accel_end_time[bike];
walljump_hsp = 5;
walljump_vsp = 8;
walljump_time = 18;
wall_frames = 2;

//Landing and wavelanding
land_time = 4;
prat_land_time = 20;
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
techroll_startup_frames = 1;
techroll_active_frames = 2;
techroll_recovery_frames = 3;
techroll_speed = 10;

//Airdodge
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;

//Roll
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 7.5;
roll_backward_max = 7.5;

//HUD
spr_hud = sprite_get("hud");
spr_hud_shake = sprite_get("hud_shake");
spr_hud_handlebars = sprite_get("hud_handlebars");
spr_hud_handlebars_shake = sprite_get("hud_handlebars_shake");
spr_hud_speedometer = sprite_get("hud_speedometer");
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
spr_hud_bobbleguest[15] = sprite_get("bobble_san"); //Sandbert
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

//Ball
spr_ball_idle = [
	sprite_get("ball_idle_triangle"),
	sprite_get("ball_idle"),
	sprite_get("ball_idle_square")
	];
spr_ball_expand = sprite_get("ball_expand");
spr_ball_compress = sprite_get("ball_compress");
spr_ball_moving = [
	sprite_get("ball_moving_triangle"),
	sprite_get("ball_moving"),
	sprite_get("ball_moving_square")
	];
spr_ball_bounce = [
	sprite_get("ball_bounce_triangle"),
	sprite_get("ball_bounce"),
	sprite_get("ball_bounce_square")
	];

// sprite_change_collision_mask("ball_idle", true, 1, 0, 0, 0, 0, 0);
sprite_change_collision_mask("ball_moving", true, 1, 0, 0, 0, 0, 0);
sprite_change_collision_mask("ball_bounce", true, 1, 0, 0, 0, 0, 0);

//Misc.
spr_airdodge_overlay = sprite_get("airdodge_overlay");
spr_airdodge_overlay_invul = sprite_get("airdodge_overlay_invul");



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
vfx_dtilt_spark = hit_fx_create(sprite_get("vfx_dtilt_spark"), 12);
vfx_smoke = hit_fx_create(sprite_get("vfx_smoke"), 24);
vfx_hit_big = hit_fx_create(sprite_get("vfx_big"), 32);
vfx_hit_med = hit_fx_create(sprite_get("vfx_med"), 24);
vfx_hit_small = hit_fx_create(sprite_get("vfx_small"), 24);
vfx_hit_tiny = hit_fx_create(sprite_get("vfx_tiny"), 24);
vfx_spin_u = hit_fx_create(sprite_get("vfx_spin_u"), 15);
vfx_spin_d = hit_fx_create(sprite_get("vfx_spin_d"), 15);

//Hurtbox sprites
hurtbox_spr = stat_hurtbox_spr[bike];
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//Victory
set_victory_bg(sprite_get("victory"));
set_victory_theme(sound_get("win_otto"));

//SFX
land_sound = asset_get("sfx_land_med2");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_fors");
jump_sound = asset_get("sfx_jumpground");
djump_sound = stat_djump_sound[bike];
air_dodge_sound = asset_get("sfx_quick_dodge");

//Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;



user_event(14);



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
spr_walljump[0] = sprite_get("walljump");
spr_pratfall[0] = sprite_get("pratfall");
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
spr_airdodge[1] = sprite_get("bike_airdodge");                  //Done
spr_airdodge_waveland[1] = sprite_get("bike_land");         //Done
spr_taunt[1] = sprite_get("bike_taunt");
spr_walljump[1] = sprite_get("bike_walljump");
spr_pratfall[1] = sprite_get("bike_pratfall");