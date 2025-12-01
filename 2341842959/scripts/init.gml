hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("hurtbox_crouching");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .140;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 8.3;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 12;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
wall_frames = 1;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 10;
crouch_recovery_frames = 3 ;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

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
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

gas_djumpx = 0;
gas_djumpy = 0;

introTimer = -30;
//setting it to -4 should prevent the first few frames of the animation 
//from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;
//jestermode = floor(get_synced_var(player) / 10);
//shadelessmode = get_synced_var(player) % 10;
jestermode = get_synced_var(player);
hidetokens = false;

//ftilt_back = false;

gas_dtilt_posx = 0;
gas_dtilt_posy = 0;
gas_dtilt_cont = 0;
gas_ustrong_posx = 0;
gas_ustrong_posy = 0;
gas_ustrong_cont = 0;
gas_fair_posx = 0;
gas_fair_posy = 0;
gas_fair_cont = 0;
gas_dair_posx = 0;
gas_dair_posy = 0;
gas_dair_cont = 0;
gas_bair_posx = 0;
gas_bair_posy = 0;
gas_bair_cont = 0;
gas_nspecial_posx = 0;
gas_nspecial_posy = 0;
gas_nspecial_cont = 0;
gas_djump = 0;
gas_djump_cont = 0;
dattack_cont1 = 0;
dattack_cont2 = 0;
gas_dir = spr_dir;
cloud = noone;
explosion_cont = 0;
levei_parry = false;

uspecial_rot = 0;
uspecial_charge = 0;

fspecial_cloud = 1;

shot_fired = false;
fspecial_dir = 1;
ring_rot = 0;
ring_x = 0;
ring_y = 0;

tokens = 0;
tokens_hud = 0;

poison_exposure = 0;
poison_exposure_frame = get_gameplay_time();

cor_dir = 1;
corR = 255;
corG = 0;
corB = 0;

claw_effect = hit_fx_create( sprite_get( "claw_effect" ), 20 );
zetter_effect = hit_fx_create( sprite_get( "zetter_hit2" ), 20 );

// Victory
set_victory_bg(sprite_get("acridimnotgonnadabunlessyourecord")); // sprites\winscreen.png - name doesn't matter, the size has to be 480 x 270 pixels big, usually has this puple filter on it
set_victory_theme( sound_get( "music_win_stink" ));

//Compaaaatablitiesilies

//Hikaru Title, da fox
Hikaru_Title = "Last Breath";

//Miiverse
miiverse_post = sprite_get("miiverse1");

//Soulbound Conflict
battle_text = "* Smells like trouble.";

//Dedede Stadium
arena_title = "Lazy Gassassin";

///Agent N codec
ncode1 = "A race of skunks hailing from the world of Samsara."
ncode2 = "Their bodies produce a wide variety of gases with"
ncode3 = "unpredictable properties. Proceed with caution."

//The Chosen One drawing
tcoart = sprite_get("tcoskunk");

//Toon Link photo
toonlink_photo = sprite_get("tinkphoto");
toonlink_photo2 = 2;

//Reiga's The Knight
knight_compat_dream = 
    [
        "This is such a pain...",
        "What is this thing anyway?",
        "Could be sleeping right now..."
    ]

buddy_starko_sfx = sound_get("buddy_starko");
buddy_screenko_sprite = sprite_get("buddy_screenko");
// buddy_screenko_sfx = sound_get("buddy_screenko");
// buddy_screenko_voice_sfx = sound_get("buddy_screenko_voice");
// buddy_starko_sprite = sprite_get("buddy_starko");

//Dracula support (yadda yadda you don't belong in this world)
{
dracula_portrait = sprite_get("draculaportrait");
dracula_portrait2 = sprite_get("draculaportrait2");
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Ugh, I knew I smelled something foul. Begone, and take your sour scent with you!"
page++;

//Page 1
dracula_speaker[page] = 2;
dracula_text[page] = "Rude way to greet a guest.";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "No guest of mine enters my domain uninvited. You're nothing more than an intruder who carries a suffocating odor like the rest of your kind.";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "Thanks.";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "Tell me, what business do you have here? What would compel you to carelessly venture towards your demise?";
page++;

//Page 5
dracula_speaker[page] = 1;
dracula_text[page] = "I dunno.";
page++;

//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "I figured as much. Perhaps this stench emits from your brain rotting inside your skull.";
page++;


//Page 7
dracula_speaker[page] = 0;
dracula_text[page] = "Regardless,[glass] it's time to clear the air.";
page++;
}

//Daroach support, squeak squeak
{
daroach_portrait = sprite_get("draculaportrait");
daroach_portrait2 = sprite_get("draculaportrait2");
daroach_portrait3 = asset_get("empty_sprite");
var page = 0;

//Page 0
daroach_speaker[page] = 1;
daroach_text[page] = "Hello.";
page++;

//Page 1
daroach_speaker[page] = 0;
daroach_text[page] = "What the-? How and when did you get in here!?";
page++;

//Page 2
daroach_speaker[page] = 1;
daroach_text[page] = "Window. Five minutes ago.";
page++;

//Page 3
daroach_speaker[page] = 0;
daroach_text[page] = "We've been airborne for hours...";
page++;

//Page 4
daroach_speaker[page] = 1;
daroach_text[page] = "I'd like to join your group of thieves.";
page++;

//Page 5
daroach_speaker[page] = 0;
daroach_text[page] = "Pardon?";
page++;

//Page 6
daroach_speaker[page] = 1;
daroach_text[page] = "I'd like to become a Squeak.";
page++;

//Page 7
daroach_speaker[page] = 0;
daroach_text[page] = "We...aren't really accepting applications.";
page++;

//Page 8
daroach_speaker[page] = 2;
daroach_text[page] = "Disappointing.";
page++;

//Page 9
daroach_speaker[page] = 1;
daroach_text[page] = "Perhaps you would change your mind if I bested you in combat?";
page++;

//Page 10
daroach_speaker[page] = 0;
daroach_text[page] = "Combat? I admire your determination but the Squeaks are no slouches in combat.";
page++;

//Page 11
daroach_speaker[page] = 1;
daroach_text[page] = "I'm aware.";
page++;

//Page 12
daroach_speaker[page] = 0;
daroach_text[page] = "Hm. Very well! I'll test you on one condition...";
page++;

//Page 13
daroach_speaker[page] = 1;
daroach_text[page] = "Which is?";
page++;

//Page 14
daroach_speaker[page] = 0;
daroach_text[page] = "Would you please try to keep your gaseous outbursts to a minimum?[laugh] We're low on air freshener.";
page++;
}