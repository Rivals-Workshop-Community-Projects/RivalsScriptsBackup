hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = sprite_get("float_hurt");
hitstun_hurtbox_spr = -1;

platback_spr = sprite_get("plat_back");
platfront_spr = sprite_get("plat_front");

char_height = 52;
idle_anim_speed = .13;
crouch_anim_speed = .13;
walk_anim_speed = .15;
dash_anim_speed = .25;
pratfall_anim_speed = .15;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 6.25;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9; //9
short_hop_speed = 4.5; //4.5
djump_speed = 7.5; //8


leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state was 5.5
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4; //was .3
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .35; //30
hitstun_grav = .45;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 6;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .0; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 12;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
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
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 1;
roll_forward_max = 7; //roll speed
roll_backward_max = 7;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
piano_sound = sound_get("piano_g");

set_victory_theme( sound_get( "pomme_victory" ) );

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//float stuff
floating = 0;
floatTimer = 0;
floatMax = 120;
floatAnimTimer = 0;
floatMoveSpeed = 2;
freeFloat = 0;
freeFloatStop = 0;
floatCancel = 0;
floatDriftSpeed = 0;
floatRestore = 0;

floateffectAnimStripLength = 14;
floateffectAnimTimer = 0;
floateffectAnimSpeed = 0.25;



downBuffer = 0;

otherPomme_id = noone;

//Hit FX
note_hfx1_spr = sprite_get("hfx1");
note_hfx1 = hit_fx_create(note_hfx1_spr, 21);
shout_hfx1_spr = sprite_get("hfx2");
shout_hfx1 = hit_fx_create(shout_hfx1_spr, 35);
shout_hfx2_spr = sprite_get("hfx3");
shout_hfx2 = hit_fx_create(shout_hfx2_spr, 35);
notefade1_spr = sprite_get("hfx4");
notefade1 = hit_fx_create(notefade1_spr, 15);
notefade2_spr = sprite_get("hfx5");
notefade2 = hit_fx_create(notefade2_spr, 15);

//song field stuff
songAir = 0; //limits one song field per airtime
in_songfield = 0;

//music note stuff
singsfxCounter = 0;
hasNote = 0;

//grab stuff
grabbed_id = noone;

//voice stuff
voiceEnabled = 0;

//Trummel stuff
trummelcodecneeded = false;
trummelcodec_id = noone;

//Otto stuff
otto_bobblehead_sprite = sprite_get("my_bobblehead_sprite");

//Rivals RC
kart_sprite = sprite_get("kart");
kart_frames = 1;
kart_drift_spr = 1;
kart_engine_sound = 1;


//Beach Skin
/*
beachprops = sprite_get("taunt2_beachprops");
beachpropsAnimStripLength = 26;
beachpropsAnimTimer = 0;
beachpropsAnimSpeed = 0.25;

useskins = false;

spr_idle = sprite_get("idle");
spr_crouch = sprite_get("crouch");
spr_walk = sprite_get("walk");
spr_walkturn = sprite_get("walkturn");
spr_dash = sprite_get("dash");
spr_dashstart = sprite_get("dashstart");
spr_dashstop = sprite_get("dashstop");
spr_dashturn = sprite_get("dashturn");

spr_jumpstart = sprite_get("jumpstart");
spr_jump = sprite_get("jump");
spr_doublejump = sprite_get("doublejump");
spr_walljump = sprite_get("walljump");
spr_pratfall = sprite_get("pratfall");
spr_land = sprite_get("land");
spr_landinglag = sprite_get("landinglag");

spr_parry = sprite_get("parry");
spr_roll_forward = sprite_get("roll_forward");
spr_roll_backward = sprite_get("roll_backward");
spr_airdodge = sprite_get("airdodge");
spr_airdodge_waveland = sprite_get("waveland");
spr_tech = sprite_get("tech");

spr_hurt = sprite_get("hurt");
spr_bighurt = sprite_get("bighurt");
spr_hurtground = sprite_get("hurtground");
spr_uphurt = sprite_get("uphurt");
spr_downhurt = sprite_get("downhurt");
spr_bouncehurt = sprite_get("bouncehurt");
spr_spinhurt = sprite_get("spinhurt");

spr_jab = sprite_get("jab");
spr_dattack = sprite_get("dattack");
spr_dattacktwo = sprite_get("dattacktwo");
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
spr_nspecial_2 = sprite_get("nspecial_2");
spr_fspecial = sprite_get("fspecial");
spr_uspecial = sprite_get("uspecial");
spr_dspecial = sprite_get("dspecial");
spr_taunt = sprite_get("taunt");

spr_plat = sprite_get("plat");

spr_float = sprite_get("float");

set_victory_portrait(sprite_get("portrait"));
set_victory_sidebar(sprite_get("result_small"));*/

//Alts
/*
switch(get_player_color(player)){
    case 13: //Beach
        
        break;
    case 14: //Kimono
        break;
        
}*/

//Miiverse

miiverse_post = sprite_get("miiversepost");




//Mt. Dedede

arena_title = "The Superstar Songstress";

//dracula
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = asset_get("empty_sprite")
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "It seems I have quite the esteemed guest tonight. Make yourself at home, Superstar Songstress.";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "Hey, asshole! I was having the perfect evening until your UGLY castle ruined the view outside my penthouse suite!";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "Why... the pettiness of this one. We have a lot in common, you and I.";
page++;

//Page 3
dracula_speaker[page] = 0;
dracula_text[page] = "Why don't we come to an agreement? Join my army and I'll move my castle wherever you ask, Miss Pomme.";
page++;

//Page 4
dracula_speaker[page] = 1;
dracula_text[page] = "EWWW. I'm getting sick at the thought of joining a dusty old guy like you. I can smell the old person from here.";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "EXCUSE ME? [shake] My remains are well preserved!";
page++;

//Page 6
dracula_speaker[page] = 1;
dracula_text[page] = "Oh, my god. You're boring me. By the way, Neo Julesvale has kind of erupted into chaos thanks to your minions so just get out of my hometown already.";
page++;

//Page 7
dracula_speaker[page] = 0;
dracula_text[page] = "I will not suffer such insolence in my court. [glass] Die, wench!";
page++;


//Daroach Support
daroach_portrait = sprite_get("dracula_portrait");
daroach_portrait2 = asset_get("empty_sprite")
var page = 0;

//Page 0
daroach_speaker[page] = 1;
daroach_text[page] = "Ugh... Where am I? An airship?";
page++;

//Page 1
daroach_speaker[page] = 0;
daroach_text[page] = "Why indeed. Welcome aboard the airship of the Squeak Squad, Miss Pomme! Glad to see you're finally awake.";
page++;

//Page 2
daroach_speaker[page] = 1;
daroach_text[page] = "I-I was performing at a concert... and I remember a bright light. What happened?";
page++;

//Page 3
daroach_speaker[page] = 0;
daroach_text[page] = "Yes, yes! I was among the crowd. Pleasure to finally meet you. I'm Daroach and I'm a huge fan. Could you sign my tophat please?";
page++;

//Page 4
daroach_speaker[page] = 1;
daroach_text[page] = "You didn't answer my question but sure, I suppose. *scribble scribble*";
page++;

//Page 5
daroach_speaker[page] = 0;
daroach_text[page] = "Oh, by the way. Would you be interested in joining our Squeak Squad, Miss Pomme?";
page++;

//Page 6
daroach_speaker[page] = 0;
daroach_text[page] = "We're a rather dashing gang of rogues. A fellow rodent like yourself would fit right in!";
page++;

//Page 7
daroach_speaker[page] = 1;
daroach_text[page] = "Um... Thanks but no thanks? Roguish isn't really my style. Can I go home now?";
page++;

//Page 8
daroach_speaker[page] = 0;
daroach_text[page] = "Why of course, Miss Pomme. Next stop: Neo Julesva--";
page++;

//Page 9
daroach_speaker[page] = 1;
daroach_text[page] = "[shake] HEY! Are those fake tickets to my SOLD-OUT concert you're printing?";
page++;

//Page 10
daroach_speaker[page] = 0;
daroach_text[page] = "Well... there's a good explanation for that actua--";
page++;

//Page 11
daroach_speaker[page] = 1;
daroach_text[page] = "How dare you try to swindle my adoring fans!";
page++;

//Page 12
daroach_speaker[page] = 0;
daroach_text[page] = "But I'M your adoring fan.";
page++;

//Page 13
daroach_speaker[page] = 1;
daroach_text[page] = "[shake]Not. Any. More.";
page++;
