hurtbox_spr = sprite_get("hurtbox");
sprite_change_offset( "hurtbox", 50, 118);
crouchbox_spr = sprite_get("crouchhurt");
sprite_change_offset( "crouchhurt", 50, 118);
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 40;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .4;
pratfall_anim_speed = .25;
doublejump_anim_speed = .5;

walk_speed = 4;
walk_accel = .3;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 8;
dash_speed = 7.25;
dash_turn_time = 10;
dash_turn_accel = 2;
dash_stop_time = 5;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .3;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .45;
knockback_adj = 1.3; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 10;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 3;
dodge_active_frames = 1;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 2;
techroll_recovery_frames = 3;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme(sound_get("victory"));
set_victory_bg(sprite_get("victorybg"));
alt = get_player_color(player);

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

amMudkip = true;
upb = false;
upbtimer = 0;
upb_hitbox = noone;
upb_hit_sprite1 = sprite_get("uspecial_hit1");
upb_hit_sprite2 = sprite_get("uspecial_hit2");
upb_hit_sprite3 = sprite_get("uspecial_hit3");
upb_hit_sprite4 = sprite_get("uspecial_hit4");
nspecialcharge = 0;
nspec_multiplier = 1;
nspecialcharge2 = 0;
fspecialcooldown = false;
dspecialtime = 0;
dspec_mud = noone;
dtiltmud = false;
crit = false;
outline_timer = 0;
outline_rev = false;
pokeball_sprite = sprite_get("pokeball");
intro = (state == PS_SPAWN);
introspeed = 0.2;
windowtiming = 0;
lookuptime = 0;
loaded = false;
trainingmode = false;
playtesting = (object_index == oTestPlayer);
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = false;

//runeF = true;runesUpdated = true;

toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo2 = sprite_get("toonlink_photo_TL");
toonlink_randomizephoto = false;
//feri_costume = sprite_get("feri_costume");
//miiverse_post = sprite_get("miiverse_post");
//guiltySprite = sprite_get("trialgrounds");
//resort_portrait = sprite_get("lastresort");
battle_text = "* A wild Mudkip appeared!";
//tcoart = sprite_get("tcoart");
//pkmn_stadium_front_img = sprite_get("pkmnstadium");
//pkmn_stadium_back_img = sprite_get("pkmnstadium_back");
pkmn_stadium_name_override = "Mudkip";
//gfzsignspr = sprite_get("greenflowerzone");
//gfzsignsfx = sound_get("taunt");
arena_title = "Mud Fish Pokemon";
boxing_title = "Mud Fish Pokemon";
//nname = "character name"
//ncode1 = "";
//ncode2 = "";
//ncode3 = "";

fx_bubbles = hit_fx_create(sprite_get("fx_bubbles"), 30);
fx_bubbles_fast = hit_fx_create(sprite_get("fx_bubbles"), 15);
fx_watersplash = hit_fx_create(sprite_get("fx_watersplash"), 15);
fx_watersplash_verysmall = hit_fx_create(sprite_get("fx_watersplash_verysmall"), 15);
fx_mudsplash = hit_fx_create(sprite_get("fx_mudsplash"), 20);
fx_mudtrail = hit_fx_create(sprite_get("fx_mudtrail"), 15);
fx_eruption_small_fast = hit_fx_create(sprite_get("eruption_small_fast"), 40);
fx_pokeball = hit_fx_create(sprite_get("fx_pokeball"), 20);
fx_pokeball_orb = hit_fx_create(sprite_get("fx_pokeball_orb"), 12);
fx_starhit = hit_fx_create(sprite_get("fx_starhit"), 25);
fx_starhit_med = hit_fx_create(sprite_get("fx_starhit_med"), 25);
fx_starhit_big = hit_fx_create(sprite_get("fx_starhit_big"), 25);
fx_star_trail = hit_fx_create(sprite_get("star_trail"), 30);
fx_star_trail2 = hit_fx_create(sprite_get("star_trail2"), 10);
fx_dust_sharp_big = hit_fx_create(sprite_get("dust_sharp_big"), 20);
fx_dust_sharp_big_fast = hit_fx_create(sprite_get("dust_sharp_big"), 10);
fx_dust_sharp = hit_fx_create(sprite_get("dust_sharp"), 20);
fx_shine_small = hit_fx_create(sprite_get("shine_small"), 20);
fx_shine_smallfast = hit_fx_create(sprite_get("shine_small"), 10);
fx_shine_smallfast2 = hit_fx_create(sprite_get("shine_small"), 5);
fx_empty = hit_fx_create(sprite_get("emptysprite"), 1);

//swap some effects on alts
if(alt != 0){
	pokeball_sprite = sprite_get("pokeball_mudkip");
}

muno_event_type = 0;
user_event(14);