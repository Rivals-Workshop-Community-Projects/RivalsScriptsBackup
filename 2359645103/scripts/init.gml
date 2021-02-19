hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_hurt_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .15;
crouch_anim_speed = .15;
walk_anim_speed = .14;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2; 
walk_turn_time = 6; 
initial_dash_time = 12; 
initial_dash_speed = 6; 
dash_speed = 6;
dash_turn_time = 20;
dash_turn_accel = 0.5;
dash_stop_time = 8;
dash_stop_percent = .4; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6; 
moonwalk_accel = 1.4; 

jump_start_time = 5; //should be 5 universally, the manual is wrong. 
jump_speed = 11;
short_hop_speed = 6; 
djump_speed = 11;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state 
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .15;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 8.5; 
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed. 
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 1.2;

land_time = 6; //normal landing frames // almost universally 4 except on heavies which is 6. 
prat_land_time = 15; 
wave_land_time = 12;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .15;

//crouch animation frames
crouch_startup_frames = 0;
crouch_active_frames = 4;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 2; // universally 2. Sandbert is a bad template character
dodge_active_frames = 8; //universally 8. Sandbert is a bad template character
dodge_recovery_frames = 20; //universally 20. Sandbert is a bad template character

//tech animation frames
tech_active_frames = 14; //universally 14. Sandbert is a bad template character
tech_recovery_frames = 4; //universally 4. Sandbert is a bad template character

//tech roll animation frames
techroll_startup_frames = 8; // this value is universally 8. Sandbert is a bad Template character
techroll_active_frames = 4; // this value is universally 4. Sandbert is a bad Template character
techroll_recovery_frames = 14; // this value is universally 14. Sandbert is a bad Template character
techroll_speed = 9; 

//airdodge animation frames
air_dodge_startup_frames = 2; // this is a universal value of 2. Sandbert is a bad template character
air_dodge_active_frames = 12; // this is a universal value of 12. Sandbert is a bad template character
air_dodge_recovery_frames = 12; // this is a universal value of 12. Sandbert is a bad template character
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 3; // universally 3. Sandbert is a bad template character
roll_forward_active_frames = 14; // universally 14. Sandbert is a bad template character
roll_forward_recovery_frames = 12; //universally 12. Sandbert is a bad template character
roll_back_startup_frames = 3; // same as forward
roll_back_active_frames = 14; // same as forward
roll_back_recovery_frames = 12; // same as forward
roll_forward_max = 6; //roll speed
roll_backward_max = 6;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

kk_in_upB = false;
kk_dashed = false;
kk_bounced = 0;
kk_hits = 0;
kk_rotations = 0;
kk_rat = noone;
kk_heart = noone;
kk_crouch_timer = 0;
kk_bubble_timer = 0;
kk_hitcount = 0;
kk_combotimer = 0;
rattimer = 0;
heart_active = false;

AT_TAUNT_3 = AT_UTHROW;

//Mt Dedede Support
arena_title = "The Decadent Dandy!";
//Soulbound Support
battle_text = "*He's dressed to the nines."
//Steve Support
steve_death_message = "Steve was royally trounced.";
//Legacy T&A Support
trummelcodecneeded = false;
trummelcodec_id = noone;
//Hikaru Support
Hikaru_Title = "Decadent Dandy";
//Rat Support
personaQuips[10] = "Not so lustrous anymore!";
//Agent N Support
ncode1 = "Dawdles and plays at nobility. Pros:";
ncode2 = "Commanding presence, charismatic, snappy";
ncode3 = "dresser. Cons: Not actually a king.";
//Amber Support
plushForAmber = sprite_get("plushie");

//Daroach support
daroach_portrait = sprite_get("dracula_portrait");
daroach_portrait2 = asset_get("empty_sprite");
daroach_portrait3 = asset_get("empty_sprite");
var page = 0;
//Page 0
daroach_speaker[page] = 1;
daroach_text[page] = "Hear Ye, Hear Ye!";
page++;
//Page 1
daroach_speaker[page] = 0;
daroach_text[page] = "Eh?";
page++;
//Page 2
daroach_speaker[page] = 1;
daroach_text[page] = "My Kingdom spreads far beyond the walls of Pridemoor Keep! Prepare to be thrashed!";
page++;
//Page 3
daroach_speaker[page] = 0;
daroach_text[page] = "Tomfoolery! The noble Squeaks shan't fall to a child in a costume!";
page++;
//Page 4
daroach_speaker[page] = 1;
daroach_text[page] = "NONSENSE!";
page++;
//Page 5
daroach_speaker[page] = 1;
daroach_text[page] = "Bask in the glimmering grace... [taunt]of a true monarch!";
page++;
//Page 6
daroach_speaker[page] = 0;
daroach_text[page] = "[laugh]";
page++;
//Page 7
daroach_speaker[page] = 0;
daroach_text[page] = "This is ridiculous! Leave my ship at once!";
page++;
//Page 8
daroach_speaker[page] = 1;
daroach_text[page] = "[shake]As the embodiment of opulence, I demand tribute!!";
page++;

//Dracula support
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = asset_get("empty_sprite");
dracula_portrait3 = asset_get("empty_sprite");
var page = 0;
//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "What glittering fool dares enter my abode?";
//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "Yeesh. You're even creepier than that sniveling servant, Specter Knight.";
//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "Mortal, you know not of that which you speak. Go from this place or I may be forced to kill you!";
//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "Oh no! Whatever shall I do? I may as well grab a shovel and start digging now.";
//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "[shake]SILENCE!";
//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "[glass]I will not stand to be mocked in my own castle!";
//Page 6
dracula_speaker[page] = 1;
dracula_text[page] = "You call this a castle?[taunt] Pridemoor's dungeon has more glamour than this dump!";
//Page 7
dracula_speaker[page] = 0;
dracula_text[page] = "That's it! Have at you!";
//Page 8
dracula_speaker[page] = 1;
dracula_text[page] = "What ho! Let's get royal!";



//CODED BY HOWEAL TANKAA
//TAKE INSPIRATION FREELY

//FINISHED AND UPDATED BY JACKSON REED
