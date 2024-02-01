hurtbox_spr = sprite_get("hurtbox");
sprite_change_offset( "hurtbox", 50,98);
crouchbox_spr = sprite_get("crouchhurt");
sprite_change_offset( "crouchhurt", 50,98);
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 70;
idle_anim_speed = 0.115;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .4;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 1;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 6.5;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 2; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.27;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .45;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 10;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .08; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 3;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme(sound_get("monopoly win2"));
set_victory_bg(sprite_get("victorybg"));

dice_sprite1 = sprite_get("nspecial_dice");
dice_sprite2 = sprite_get("nspecial_dice_yellow");
dice_sprite3 = sprite_get("nspecial_dice_red");
dspec_sprite1 = sprite_get("dspecial");
dspec_sprite2 = sprite_get("dspecial_hotel");
dspec_sprite3 = sprite_get("dspecial_bank");

alt = get_player_color(player);
kewtmode = 0;
if(alt != 0){
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("tokens_golden_alts"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("property_alts"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("property_alts"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("property_alts"));
	dspec_sprite1 = sprite_get("dspecial_alts");
	dspec_sprite2 = sprite_get("dspecial_hotel_alts");
	dspec_sprite3 = sprite_get("dspecial_bank_alts");
}
if(alt == 12 || alt == 13 || alt == 17){ //matthew, TL, katie
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_planet"));
	dice_sprite1 = sprite_get("nspecial_dice_planet");
	dice_sprite2 = sprite_get("nspecial_dice_planet2");
	dice_sprite3 = sprite_get("nspecial_dice_planet3");
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("tokens_kewt"));
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("tokens_kewt_golden_alts"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("property_oarly"));set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("property_oarly"));set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("property_oarly"));
	dspec_sprite1 = sprite_get("dspecial_oarly");
	dspec_sprite2 = sprite_get("dspecial_hotel_oarly");
	dspec_sprite3 = sprite_get("dspecial_bank_oarly");
	kewtmode = 2;
}else if(alt == 14 || alt == 15 || alt == 16){ //oarly, oarluis, pasino
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("tokens_kewt"));
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("tokens_kewt_golden_alts"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("property_oarly"));set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("property_oarly"));set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("property_oarly"));
	dspec_sprite1 = sprite_get("dspecial_oarly");
	dspec_sprite2 = sprite_get("dspecial_hotel_oarly");
	dspec_sprite3 = sprite_get("dspecial_bank_oarly");
}else if(alt == 20){ //morshu
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_bomb"));
	dice_sprite1 = sprite_get("nspecial_dice_bomb");
	dice_sprite2 = sprite_get("nspecial_dice_bomb2");
	dice_sprite3 = sprite_get("nspecial_dice_bomb3");
	//set_victory_theme(sound_get("morshu_win"));
}else if(alt == 19 || alt == 25 || alt == 26 || alt == 27){ //wario, mario, toadsworth, cranky
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_mario"));
	dice_sprite1 = sprite_get("nspecial_dice_mario");
	dice_sprite2 = sprite_get("nspecial_dice_mario2");
	dice_sprite3 = sprite_get("nspecial_dice_mario3");
	if(alt == 25){
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("tokens_mario"));
		set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("tokens_mario_golden"));
	}else{
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("tokens_mario_alts"));
		set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("tokens_mario_golden_alts"));
	}
}else if(alt == 24 || alt == 30){ //ice king, snow miser
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_ice"));
	dice_sprite1 = sprite_get("nspecial_dice_ice");
	dice_sprite2 = sprite_get("nspecial_dice_ice2");
	dice_sprite3 = sprite_get("nspecial_dice_ice3");
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("tokens_ice"));
	set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_ice"));set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("jail_ice"));
	set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack_ice"));set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_SPRITE, sprite_get("choochoo_ice"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("property_ice"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("property_ice"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("property_ice"));
	dspec_sprite1 = sprite_get("dspecial_ice");
	dspec_sprite2 = sprite_get("dspecial_hotel_ice");
	dspec_sprite3 = sprite_get("dspecial_bank_ice");
}else if(alt == 29){ //dbzr
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_dbz"));
	dice_sprite1 = sprite_get("nspecial_dice_dbz");
	dice_sprite2 = sprite_get("nspecial_dice_dbz2");
	dice_sprite3 = sprite_get("nspecial_dice_dbz3");
}
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, dice_sprite1);
if(alt == 5 || alt == 18 || alt == 23 /*|| alt == 23*/){ //alts that need special dice for visibility
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_dice_alts"));
}

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

is_KOB = true;
loaded = false;
muted = false;
attacking = false;
voice = noone;voicepitch = 1.0;
thedice1 = noone;
thedice2 = noone;
previousdice = -1;
fspec_charge = 0;
dicecooldown = 0;
tokencooldown = 0;
thetoken = noone;
uspecnum = 0;
uspec_speed = 1;
uspectarget = noone;
uspectime = 0;
uspec_mask = false;
property = noone;
dspec_charge = 0;
jaildice1 = 0;
jaildice2 = 0;
jaildicetimer = 0;
jaildiceattempts = 0;
jailcost = 0;
jailcard = false;
jailpropertymoney = 0;
diceluck = 0;
dattackhitbox = noone;
dattacknum = 0;
dattacktimer = 0;
takearideontherailroad = false;
dattackboost =  false;
sfx_rest = sound_get("rest_hit");
sfx_dice1 = sound_get("dice 1");
moneysfx1 = sound_get("money_pickup2");
moneysfx2 = sound_get("money_pickup3");
moneybaghitsfx = sound_get("moneybag_hit");
moneybaghitsfx2 = sound_get("moneybag_hit2");
moneybagsfx = sound_get("moneybag_money");
soldsfx = sound_get("soldsfx");
upb = false;
dairhitbox = noone;
DairBounce = 0;
DairBounceHits = 0;
BAir_cooldown = 0;
VerySkillful = true;
current_money = 15000;
current_money2 = 15000;
income_boost = 1;
discount = 1;
discount_stocks = 0;
tauntmoney = 0;
notmuchtimeleft = 0;
diedienow = 0;
diedienowP1 = false;
diedienowP2 = false;
diedienowP3 = false;
diedienowP4 = false;
playercount = 0;
lookuptime = 0;

drawtime = 0;
prev_alt = 0;

fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 100;
fs_meter_x = 0;
fs_meter_y = -26;
finalsmashnum = 0;
finalsmashtimer = 0;

runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = false;
//runeK = true;runesUpdated = true;
crit = false;
runesUpdated2 = false;

toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo2 = 7;
toonlink_randomizephoto = false;
miiverse_post = sprite_get("miiverse_post");
wily_robotmaster_img = sprite_get("Wily_Castle");
//guiltySprite = sprite_get("trialgrounds");
//tcoart = sprite_get("tcoart");
gfzsignspr = sprite_get("greenflowerzone");
gfzsignsfx = sound_get("very skillful");
//nname = "character name"
ncode1 = "The richest man in the world!";
ncode2 = "He's feeling very lucky today. Very skillful!";
ncode3 = "Bye bye now!";
pkmn_stadium_name_override = "Monopoly";
arena_title = "Millionaire";
boxing_title = "Millionaire";
Toadie_Ability = -1;
TCG_Kirby_Copy = -1;

if(string_lower(get_player_name(player)) == "felixblobdev" || string_lower(get_player_name(player)) == "felix" || string_lower(get_player_name(player)) == "don"){
	kewtmode = 1;
}
detish_alt = false;
if(alt == 17 && string_lower(get_player_name(player)) == "don")detish_alt = true;
sketish_alt = false;
if(alt == 17 && string_lower(get_player_name(player)) == "sky")sketish_alt = true;

fx_dust_sharp_big = hit_fx_create(sprite_get("dust_sharp_big"), 20);
fx_dust_sharp = hit_fx_create(sprite_get("dust_sharp"), 20);
fx_dust = hit_fx_create(sprite_get("dust_effect"), 20);
fx_fire = hit_fx_create(sprite_get("fire"), 30);
fx_fire2 = hit_fx_create(sprite_get("fx_fire"), 20);
fx_sparks = hit_fx_create(sprite_get("sparks"), 15);
fx_feathers = hit_fx_create(sprite_get("feathers"), 90);
fx_explosion = hit_fx_create(sprite_get("explosion"), 40);
fx_explosionfast = hit_fx_create(sprite_get("explosion"), 20);
fx_explosionfast2 = hit_fx_create(sprite_get("explosion"), 10);
fx_explosionslow = hit_fx_create(sprite_get("explosion"), 80);
fx_explosion_big = hit_fx_create(sprite_get("explosion_big"), 40);
fx_explosion_huge = hit_fx_create(sprite_get("explosion_huge"), 40);
fx_explosion_huge_slow = hit_fx_create(sprite_get("explosion_huge"), 80);
fx_explosion_nuke = hit_fx_create(sprite_get("explosion_nuke"), 60);
fx_shine_small = hit_fx_create(sprite_get("shine_small"), 10);

muno_event_type = 0;
	user_event(14);