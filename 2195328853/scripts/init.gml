hurtbox_spr = sprite_get("hurtbox");
sprite_change_offset( "hurtbox", 50, 58);
crouchbox_spr = sprite_get("crouchhurt");
sprite_change_offset( "crouchhurt", 50, 58);
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 40;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .65;
dash_anim_speed = .6;
pratfall_anim_speed = .25;
doublejump_anim_speed = .5;

walk_speed = 3.5;
walk_accel = 0.1;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 3.5;
dash_speed = 5.5;
dash_turn_time = 11;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .25;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9;
short_hop_speed = 6;
djump_speed = 7.25;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.75; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 2; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.33;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 5;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .35;
hitstun_grav = .45;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 30;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .02; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 4;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 1;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 4;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme(sound_get("victory_theme"));
set_victory_bg(sprite_get("victorybg"));
alt = get_player_color(player);
box = false;
if(alt == 27){ //cube
	box = true;
	set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_box"));
}else{
	
}

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

crawling = false;
upb = false;
upbtime = 0;
nspecialcharge = 0;
blob_ball = noone;
blob_ball2 = noone;
blob_ball3 = noone;
fspecialcharge = 0;
steam_cloud = noone;
steam_cloud2 = noone;
steam_cloud3 = noone;
steam_cloud4 = noone;
steam_cooldown = 0;
dspecialtimer = 0;
dspecialkbhsp = 0;
dspecialkbvsp = 0;
dspecialhitbox = noone;
dspecialhitbox2 = noone;
dspecialhitbox3 = noone;
fstrongloop = 0;
ustrongloop = 0;
uairloop = 0;
uairboost = 1;
tauntspeed = 0;
runeH = false;
runeI = false;
runeM = false;
runeO = false;
outline_timer = 0;
outline_rev = false;
KewtFriend = true;

intro = (state == PS_SPAWN);
introspeed = 0.2;

fx_bluetrail = hit_fx_create(sprite_get("bluetrail"), 20);
fx_bluetrailslow = hit_fx_create(sprite_get("bluetrail"), 40);
fx_bluetrail2 = hit_fx_create(sprite_get("bluetrail2"), 20);
fx_bluetrail2slow = hit_fx_create(sprite_get("bluetrail2"), 40);
fx_bluetrail3 = hit_fx_create(sprite_get("bluetrail3"), 30);
fx_bluetrailwhirlpool = hit_fx_create(sprite_get("bluetrailwhirlpool"), 10);
fx_bluetrailwhirlpool2 = hit_fx_create(sprite_get("bluetrailwhirlpool2"), 20);
fx_blob_ball_explosion = hit_fx_create(sprite_get("blob_ball_explosion"), 15);
fx_blob_ball_explosion2 = hit_fx_create(sprite_get("blob_ball_explosion2"), 15);
fx_star_trail = hit_fx_create(sprite_get("star_trail"), 30);
fx_empty = hit_fx_create(sprite_get("emptysprite"), 20);

damagebuff = 1;
toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo2 = sprite_get("toonlink_photo_TL");
toonlink_randomizephoto = false;
otto_bobblehead_sprite = sprite_get("otto_bobblehead");
otto_bobblehead_body_sprite = sprite_get("otto_bobblehead_body");
feri_costume = sprite_get("feri_costume");
guiltySprite = sprite_get("trialgrounds");
resort_portrait = sprite_get("lastresort");
battle_text = "A bouncy friend appeared!";
miiverse_post = sprite_get("miiverse_post");
tcoart = sprite_get("tcoart");
pkmn_stadium_front_img = sprite_get("pkmnstadium");
pkmn_stadium_back_img = sprite_get("pkmnstadium_back");
pkmn_stadium_name_override = "Blue Blob";
arena_title = "Bouncy Brawler";
boxing_title = "Bouncy Brawler";
ncode1 = "Strange Blob from a place called the Mattyverse";
ncode2 = "Friendly and bouncy, can manipulate water";
ncode3 = "Surprisingly durable, can absorb most force";
miiverse_post = sprite_get("miiverse_post");
oohEeOohAhAhTingTangWallaWallaBingBang = 1;
wily_robotmaster_img = sprite_get("Wily_Castle");

//Dracula support
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = asset_get("empty_sprite");
dracula_portrait3 = asset_get("empty_sprite");
var page = 0;
//if (get_player_color( player ) != 5){
    //Page 0
    dracula_speaker[page] = 1;
    dracula_text[page] = "...";
    page++;
    //Page 1
    dracula_speaker[page] = 0;
    dracula_text[page] = "...Really?";
    page++;
    //Page 2
    dracula_speaker[page] = 1;
    dracula_text[page] = "...";
    page++;
    //Page 3
    dracula_speaker[page] = 0;
    dracula_text[page] = "What is this pathetic creature? Surely this must be a joke.";
    page++;
    //Page 4
    dracula_speaker[page] = 1;
    dracula_text[page] = "...";
    page++;
    //Page 5
    dracula_speaker[page] = 0;
    dracula_text[page] = "Your mocking stare will not faze me, blob.";
    page++;
    //Page 6
    dracula_speaker[page] = 1;
    dracula_text[page] = "...";
    page++;
    //Page 7
    dracula_speaker[page] = 0;
    dracula_text[page] = "...";
    page++;
    //Page 8
    dracula_speaker[page] = 0;
    dracula_text[page] = "I take it you won't leave on your own?";
    page++;
    //Page 9
    dracula_speaker[page] = 1;
    dracula_text[page] = "...";
    page++;
    //Page 10
    dracula_speaker[page] = 0;
    dracula_text[page] = "Very well.[glass]";
    page++;
    //Page 11
    dracula_speaker[page] = 0;
    dracula_text[page] = "Then I'll show you the door!";
    page++;
/*}else if (get_player_color( player ) == 5){
    //Page 0
    dracula_speaker[page] = 1;
    dracula_text[page] = "Aria is very big";
    page++;
    //Page 1
    dracula_speaker[page] = 0;
    dracula_text[page] = "I agree[glass]";
    page++;
    //Page 2
    dracula_speaker[page] = 0;
    dracula_text[page] = "She be";
    page++;
}*/

muno_event_type = 0;
user_event(14);