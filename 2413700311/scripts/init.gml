hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .3;
dash_anim_speed = .5;
pratfall_anim_speed = .5;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 8;
initial_dash_time = 8;
initial_dash_speed = 7;
dash_speed = 6.0;
dash_turn_time = 13;
dash_turn_accel = 0.5;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 8;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 21; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 7;
walljump_time = 27;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 4;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 3;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 2;

//tech roll animation frames//updateで管理
techroll_startup_frames = 8;
techroll_active_frames = 1;
techroll_recovery_frames = 7;
techroll_speed = 10;

//airdodge animation frames//updateで管理
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames//updateで管理
roll_forward_startup_frames = 8;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 7;
roll_back_startup_frames = 8;
roll_back_active_frames = 1;
roll_back_recovery_frames = 7;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;



//MOTION BLUR CODE
blur = array_create(4);



//Intro
introTimer = -6; //これを-4に設定すると、アニメーションの最初の数フレームが画面が開くことでブロックされるのを防ぐことができます。
introTimer2 = 0;

//random_intro = random_func( 0, 1, true );
random_intro = 0;

introstart = false;
introend = false;

//待機変化
rand_idle = 0;

//NBチャージ
//NBcharge = 0;
//NBチャージの最大
//chargeMAX = 20;
//chargeMAXend = 23;


NB_cast = false;
NBalive = 0;
NBmuki = 1;

NB_charge2 = 0;
NB_length2 = 0;

//nairコンボ
nair_combo = 0;

//FB用
//FBcharge = 0;

//キャストオフ判定
bodyless = false;

//合体用
fusion = false;

//体爆発用
body_explo = false;

//死んだときの体用
headdie = false;

//体が落ちたとき用
bodyloss = false;

//下スマのジャンプ
dstr_jump = -6;

//スマッシュで体を出す時のチャージ量
bodyshot = 20;

//蓋ジャンプ用
ex3cooltime = 0;
hutahit = false;
hutahit2 = false;
hutahit3 = false;

huta_life = 3;//蓋の体力
blurcolor = c_orange; //ブラーの色

//下必殺で蓋に当たったとき用
hutaSP = false;

//Dspe上用
dsp_up = false;


//音とか
land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");


//fx作成
doppio_Fx = hit_fx_create( sprite_get( "doppio" ), 8 );
bair_Fx = hit_fx_create( sprite_get( "bair_eff" ), 18 );

light_Fx = hit_fx_create( sprite_get( "ef_light" ), 10 );

portal1 = hit_fx_create( sprite_get( "portal1" ), 9 );
portal2 = hit_fx_create( sprite_get( "portal2" ), 14 );

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


//デバッグ用
//misodebug = true;
misodebug = false;

//final smash------------------------------

fs_char_portrait_y = 96;
fs_char_chosen_final_smash = "custom";
fs_char_attack_index = 49;
fs_meter_x = 30;

grabbedid = noone;

FS_alpha = 0;

fog_start = false;
fog_timer = 0;

jmp_start = false;
jmp_timer = 0;
jmp_y = 0;

break_start = false;
break_timer = 0;

fs_hit_scale = 10;
fs_hit_y = 0;

fs_shake_x = 0;
fs_shake_y = 0;
fs_shake_r = 0;

fs_dmg = 1;//ダメージ量

fs_loop_count = 0;

enemy_x = 470;
enemy_y = 370;

atk_start = false;
atk_sub[0] = 0;
atk_x[0] = 0;
atk_y[0] = 0;
atk_xs[0] = 1;
atk_ys[0] = 1;
atk_rot[0] = 0;
atk_alpha[0] = 1;

atk_sub[1] = 0;
atk_x[1] = 0;
atk_y[1] = 0;
atk_xs[1] = 1;
atk_ys[1] = 1;
atk_rot[1] = 0;
atk_alpha[1] = 1;

do_sub[0] = 0;
do_x[0] = 0;
do_y[0] = 0;
do_alpha[0] = 1;

do_sub[1] = 0;
do_x[1] = 0;
do_y[1] = 0;
do_alpha[1] = 1;

hit_sub[0] = 0;
hit_x[0] = 0;
hit_y[0] = 0;
hit_xs[0] = 1;
hit_ys[0] = 1;
hit_rot[0] = 0;
hit_alpha[0] = 1;

hit_sub[1] = 0;
hit_x[1] = 0;
hit_y[1] = 0;
hit_xs[1] = 1;
hit_ys[1] = 1;
hit_rot[1] = 0;
hit_alpha[1] = 1;

hit_sub[2] = 0;
hit_x[2] = 0;
hit_y[2] = 0;
hit_xs[2] = 1;
hit_ys[2] = 1;
hit_rot[2] = 0;
hit_alpha[2] = 1;

shine_start = 0;
shine_sub = 0;
shine_xs = 3;
shine_ys = 3;
shine_rot = 0;

blo_timer = 0;//血
blo_x = 0;
blo_y = 0;
blo_alpha = 0;

pot_rot = 0;
fs_r2 = 0;
fs_camera_y = 0;

//character support------------------------------

//char: tco art
tcoart = sprite_get("tcoart");

//stage support------------------------------

//stage: Dedede Stadium
arena_title = 'Mysterious Creature';

//stage: miiverse
miiverse_post = sprite_get("miiverse_post");

//stage: pokemon stadium
pkmn_stadium_front_img = sprite_get("pokestadiumfront");
pkmn_stadium_back_img = sprite_get("pokestadiumback");

//stage: wily castle
wily_robotmaster_img = sprite_get("mega");

