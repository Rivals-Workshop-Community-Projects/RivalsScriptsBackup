//Phone Junk

hurtbox_spr = sprite_get("peacock_hurtbox");
crouchbox_spr = sprite_get("peacock_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 74;
idle_anim_speed = .22;
crouch_anim_speed = .2;
walk_anim_speed = .3;
dash_anim_speed = .40;
pratfall_anim_speed = .25;

walk_speed = 2;
walk_accel = 0.2;
walk_turn_time = 8;
initial_dash_time = 8;
initial_dash_speed = 5;
dash_speed = 5.4;
dash_turn_time = 16;
dash_turn_accel = 1.2;
dash_stop_time = 4;
dash_stop_percent = .1; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.5;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 5.5;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 12; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .50;
hitstun_grav = .45;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 5;
crouch_active_frames = 12;
crouch_recovery_frames = 4;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 4;

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
air_dodge_active_frames = 10;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 5;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = sound_get("djump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//hfx
bigboom = hit_fx_create(sprite_get("bigboom_hfx"), 50);
boom = hit_fx_create(sprite_get("boom_hfx"), 40);
bigpow = hit_fx_create(sprite_get("bigpow_hfx"), 40);
pow = hit_fx_create(sprite_get("pow_hfx"), 15);

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 0;


//peacock-specific
peacock_consecutive_cancelled_attacks = 0;

peacock_has_airdash = 1;
peacock_airdash_button_main_buffer = 0; // 6 or -6;
peacock_airdash_press_recorded = 0; //1, -1, 0
peacock_airdash_forward_dash_buffer = 0;
peacock_airdash_backward_dash_buffer = 0;
peacock_free_on_previous_frame = free;

peacock_coyote_timer = 0;

peacock_fspecial_shots = 3;

peacock_dattack_early_hit_connected = 0;

peacock_used_nair = 0;

peacock_article_doom_id = noone;

peacock_fx_fspecial_blast = hit_fx_create(sprite_get("fspecial_blast"), 12);
peacock_fx_fair_shot = hit_fx_create(sprite_get("fair_shot"), 24);
peacock_fx_airdash_puff = hit_fx_create(sprite_get("airdash_puff"), 16);
peacock_fx_fsmash_beam = hit_fx_create(sprite_get("fsmash_laser"), 16);
peacock_fx_fsmash_shot = hit_fx_create(sprite_get("fsmash_proj_shot"), 16);
peacock_fx_uspecial_hole = hit_fx_create(sprite_get("uspecial_hole"), 6);

last_sprite = noone;
last_sprite_ticks = 0;

//codec
ncode1 = "The Cartoon Elemental Anti-Skullgirl Unit crafted"
ncode2 = "from Lab 8 somewhere in New Meridian. She utilizes"
ncode3 = "a wide variety of projectiles and being obnoxius."

arena_title = "The Murder-Go-Round";

battle_text = "* Peacock and her gang blocks the path!";

gfzsignspr = sprite_get("gfz_pea");

steve_death_message = "Steve couldn't parry.";

Hikaru_Title = "Cartoon Elemental";

easter_egg_timer = 0;
easter_egg_set = false;
voice_activated = false;
cancelled_voice = true;
voiced_peacock = false;
peacock_player = self

//Kirb Support
enemykirby = undefined;
swallowed = undefined;
kirbyability = 16;
kirb_used = 0;

//Dracula support
dracula_portrait = sprite_get("peacock_portrait");
dracula_portrait2 = sprite_get("peacock_portrait2");
var page = 0;

//Page 0
dracula_speaker[page] = 2;
dracula_text[page] = "And then there were 2!";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = "So the rumors were true. Those flesh-lings are experimenting on children. And people call me freakish.";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "Can it Grandpa! I've been itchin' for a battle all day, your stooges couldn't even get me outta their way!";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "Now, i'm gettin' reeeal tired. I'm missin' my stories and I need my beauty sleep!";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "Hmph! [glass]";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "Then let me insist on tucking you in for your final bedtime.";
page++;

//Page 6
dracula_speaker[page] = 2;
dracula_text[page] = "Good luck trying to shut this toon up!";
page++;

miiverse_post = sprite_get("miiverse_post_peacock");

got_hit_ticks = 0;
got_hit_num = 0;

//Final Smash
fs_char_portrait_y = 120;
fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "custom";
fs_chosen_final_smash = "custom";
fs_go_to_hud = false;
fs_force_fs = false;

time_frozen = false
time_freeze_ticks = 0

uspecial_free_start = false;
uspecial_x_start = 0;
uspecial_y_start = 0;

uair_borb = noone;

had_airdodge_pre_dash = false;

list_of_dots = ds_list_create();

last_hit = noone;

dash_toggle = get_synced_var(player);

char_half_width = noone;
char_width_set_timer = 0;

// taunt = 0, normal is 1

//Runes

/*
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = true;
ab_hud_x = 0;
ab_hud_y = 0;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
//abyssMods = array_create(16,[-1,"no"]);

// Level 1
abyssMods[@ runes.A] = [-1, "Locked."];
abyssMods[@ runes.B] = [-1, "Locked."];
abyssMods[@ runes.C] = [-1, "Locked."];
abyssMods[@ runes.D] = [-1, "Locked."];

// Level 2
abyssMods[@ runes.G] = [3, "Pecock can airdash twice in the air instead of once."];
abyssMods[@ runes.H] = [-1, "Locked."];
abyssMods[@ runes.I] = [-1, "Locked."];
abyssMods[@ runes.J] = [-1, "Locked."];

// Level 3
abyssMods[@ runes.L] = [-1, "Locked."];
abyssMods[@ runes.M] = [-1, "Locked."];
abyssMods[@ runes.N] = [-1, "Locked."];
abyssMods[@ runes.O] = [-1, "Locked."];



//Sprites

//Ground
spr_idle = sprite_get("idle");
spr_crouch = sprite_get("crouch");
spr_walk = sprite_get("walk");
spr_walkturn = sprite_get("walkturn");
spr_dash = sprite_get("dash");
spr_dashstart = sprite_get("dashstart");
spr_dashstop = sprite_get("dashstop");
spr_dashturn = sprite_get("dashturn");

//Air
spr_jumpstart = sprite_get("jumpstart");
spr_jump = sprite_get("jump");
spr_doublejump = sprite_get("doublejump");
spr_walljump = sprite_get("walljump");
spr_pratfall = sprite_get("pratfall");
spr_land = sprite_get("land");
spr_landinglag = sprite_get("landinglag");

//Dodge
spr_parry = sprite_get("parry");
spr_roll_forward = sprite_get("roll_forward");
spr_roll_backward = sprite_get("roll_backward");
spr_airdodge = sprite_get("airdodge");
spr_airdodge_waveland = sprite_get("waveland");
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
spr_fsmash = sprite_get("fsmash");
spr_taunt = sprite_get("taunt");

//Respawn
spr_plat = sprite_get("plat");

//Projectile
spr_ftilt_proj = sprite_get("ftilt_proj");
spr_dair_proj = sprite_get("dair_proj");
spr_fair_shot = sprite_get("fair_shot");
spr_uair_proj = sprite_get("uair_proj");
spr_bomb_walk = sprite_get("bomb_walk");
spr_bullet1 = sprite_get("bullet1");
spr_bullet2 = sprite_get("bullet2");
spr_bullet3 = sprite_get("bullet3");
spr_fspecial_blast = sprite_get("fspecial_blast");
spr_dspecial_roadroller = sprite_get("dspecial_roadroller");
spr_dspecial_avery = sprite_get("dspecial_avery");
spr_spring = sprite_get("spring");
spr_fsmash_proj = sprite_get("fsmash_proj");
spr_fsmash_shot = sprite_get("fsmash_shot");
spr_fsmash_laser = sprite_get("fsmash_laser");

//Item Drop

//Lv 1
spr_dspecial_lv1_0_falling = sprite_get("dspecial_block_lv1_0_falling");
spr_dspecial_lv1_0_ground = sprite_get("dspecial_block_lv1_0_ground");
spr_dspecial_lv1_0_die = sprite_get("dspecial_block_lv1_0_die");

spr_dspecial_lv1_1_falling = sprite_get("dspecial_block_lv1_1_falling");
spr_dspecial_lv1_1_ground = sprite_get("dspecial_block_lv1_1_ground");
spr_dspecial_lv1_1_die = sprite_get("dspecial_block_lv1_1_die");

spr_dspecial_lv1_2_falling = sprite_get("dspecial_block_lv1_2_falling");
spr_dspecial_lv1_2_ground = sprite_get("dspecial_block_lv1_2_ground");
spr_dspecial_lv1_2_die = sprite_get("dspecial_block_lv1_2_die");

spr_dspecial_lv1_3_falling = sprite_get("dspecial_block_lv1_3_falling");
spr_dspecial_lv1_3_ground = sprite_get("dspecia_blockl_lv1_3_ground");
spr_dspecial_lv1_3_die = sprite_get("dspecial_block_lv1_3_die");

spr_dspecial_lv1_4_falling = sprite_get("dspecial_block_lv1_4_falling");
spr_dspecial_lv1_4_ground = sprite_get("dspecial_block_lv1_4_ground");
spr_dspecial_lv1_4_die = sprite_get("dspecial_block_lv1_4_die");

spr_dspecial_lv1_5_falling = sprite_get("dspecial_block_lv1_5_falling");
spr_dspecial_lv1_5_ground = sprite_get("dspecial_block_lv1_5_ground");
spr_dspecial_lv1_5_die = sprite_get("dspecial_block_lv1_5_die");

spr_dspecial_lv1_6_falling = sprite_get("dspecial_block_lv1_6_falling");
spr_dspecial_lv1_6_ground = sprite_get("dspecial_block_lv1_6_ground");
spr_dspecial_lv1_6_die = sprite_get("dspecial_block_lv1_6_die");

//Lv 2
spr_dspecial_lv2_0_falling = sprite_get("dspecial_block_lv2_0_falling");
spr_dspecial_lv2_0_ground = sprite_get("dspecial_block_lv2_0_ground");
spr_dspecial_lv2_0_die = sprite_get("dspecial_block_lv2_0_die");

spr_dspecial_lv2_1_falling = sprite_get("dspecial_block_lv2_1_falling");
spr_dspecial_lv2_1_ground = sprite_get("dspecial_block_lv2_1_ground");
spr_dspecial_lv2_1_die = sprite_get("dspecial_block_lv2_1_die");

spr_dspecial_lv2_2_falling = sprite_get("dspecial_block_lv2_2_falling");
spr_dspecial_lv2_2_ground = sprite_get("dspecial_block_lv2_2_ground");
spr_dspecial_lv2_2_die = sprite_get("dspecial_block_lv2_2_die");

spr_dspecial_lv2_3_falling = sprite_get("dspecial_block_lv2_3_falling");
spr_dspecial_lv2_3_ground = sprite_get("dspecia_blockl_lv2_3_ground");
spr_dspecial_lv2_3_die = sprite_get("dspecial_block_lv2_3_die");

spr_dspecial_lv2_4_falling = sprite_get("dspecial_block_lv2_4_falling");
spr_dspecial_lv2_4_ground = sprite_get("dspecial_block_lv2_4_ground");
spr_dspecial_lv2_4_die = sprite_get("dspecial_block_lv2_4_die");

spr_dspecial_lv2_5_falling = sprite_get("dspecial_block_lv2_5_falling");
spr_dspecial_lv2_5_ground = sprite_get("dspecial_block_lv2_5_ground");
spr_dspecial_lv2_5_die = sprite_get("dspecial_block_lv2_5_die");

spr_dspecial_lv2_6_falling = sprite_get("dspecial_block_lv2_6_falling");
spr_dspecial_lv2_6_ground = sprite_get("dspecial_block_lv2_6_ground");
spr_dspecial_lv2_6_die = sprite_get("dspecial_block_lv2_6_die");

spr_dspecial_lv2_7_falling = sprite_get("dspecial_block_lv2_7_falling");
spr_dspecial_lv2_7_ground = sprite_get("dspecial_block_lv2_7_ground");
spr_dspecial_lv2_7_die = sprite_get("dspecial_block_lv2_7_die");

spr_dspecial_lv2_8_falling = sprite_get("dspecial_block_lv2_8_falling");
spr_dspecial_lv2_8_ground = sprite_get("dspecial_block_lv2_8_ground");
spr_dspecial_lv2_8_die = sprite_get("dspecial_block_lv2_8_die");

//Lv 3
spr_dspecial_lv1_1_falling = sprite_get("dspecial_block_lv3_1_falling");
spr_dspecial_lv1_1_ground = sprite_get("dspecial_block_lv3_1_ground");
spr_dspecial_lv1_1_die = sprite_get("dspecial_block_lv3_1_die");

spr_dspecial_lv1_2_falling = sprite_get("dspecial_block_lv3_2_falling");
spr_dspecial_lv1_2_ground = sprite_get("dspecial_block_lv3_2_ground");
spr_dspecial_lv1_2_die = sprite_get("dspecial_block_lv3_2_die");

spr_dspecial_lv1_3_falling = sprite_get("dspecial_block_lv3_3_falling");
spr_dspecial_lv1_3_ground = sprite_get("dspecial_block_lv3_3_ground");
spr_dspecial_lv1_3_die = sprite_get("dspecial_block_lv3_3_die");

spr_dspecial_lv1_4_falling = sprite_get("dspecial_block_lv3_4_falling");
spr_dspecial_lv1_4_ground = sprite_get("dspecia_blockl_lv3_4_ground");
spr_dspecial_lv1_4_die = sprite_get("dspecial_block_lv3_4_die");

spr_dspecial_lv1_5_falling = sprite_get("dspecial_block_lv4_5_falling");
spr_dspecial_lv1_5_ground = sprite_get("dspecial_block_lv4_5_ground");
spr_dspecial_lv1_5_die = sprite_get("dspecial_block_lv4_5_die");

//ROADA ROLLA DA
spr_dspecial_roadroller = sprite_get("dspecial_roadroller");

//Misc
spr_charselect = sprite_get("charselect");
spr_hud = sprite_get("hud");
spr_hurt = sprite_get("hurt");
spr_offscreen = sprite_get("offscreen");
spr_portrait = sprite_get("portrait");
spr_result_small = sprite_get("result_small");

switch(get_player_color(player)){
    case 9: //Beach
        spr_idle = sprite_get("01_idle");
        
        
        useskins = true;
        
        break;
    case 14: //Kimono
        break;
        
}
*/

user_event(14); // General init <- CHUNGUS!