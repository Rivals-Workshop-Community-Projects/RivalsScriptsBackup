hurtbox_spr = sprite_get("idle_hitbox")
sprite_change_offset( "idle_hitbox", 32, 116 );
crouchbox_spr = sprite_get("crouch_hitbox")
sprite_change_offset( "crouch_hitbox", 32, 116 );
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 100;
idle_anim_speed = .9;
crouch_anim_speed = 1;
walk_anim_speed = .08;
dash_anim_speed = 1;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.5;
walk_turn_time = 2;
initial_dash_time = 5;
initial_dash_speed = 10;
dash_speed = 12;
dash_turn_time = 5;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 14;
short_hop_speed = 8;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 2;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 6;
dodge_active_frames = 6;
dodge_recovery_frames = 6;

//tech animation frames
tech_active_frames = 6;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 1;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("land");
landing_lag_sound = sound_get("land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("jump");
djump_sound = sound_get("jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//custom hitsparks
hitsparklight =  hit_fx_create( sprite_get( "hitsparklight" ), 11);
sprite_change_offset("hitsparklight", 29, 36);
hitsparkmedium =  hit_fx_create( sprite_get( "hitsparkmedium" ), 16);
sprite_change_offset("hitsparkmedium", 47, 63);
hitsparkheavy =  hit_fx_create( sprite_get( "hitsparkheavy" ), 16);
sprite_change_offset("hitsparkheavy", 95, 83);
hitsparksuper =  hit_fx_create( sprite_get( "hitsparksuper" ), 12);
sprite_change_offset("hitsparksuper", 106, 80);
hitsparkprojectile =  hit_fx_create( sprite_get( "hitsparkprojectile" ), 12);
sprite_change_offset("hitsparkprojectile", 45, 45);

super = 0
supertimer = 0
combo = 0
uspecialuses = 0
has_apple = true
has_shake = true
golden = false
is_ai = false
shaketimer = 0
screechtimer = 0
explodetimer = 0
exploded = false
goldenexplode = false
deadx = 0
deady = 0
awakening = false
afakening = false
deathcounter = false
instakill = false
dracula = false
airdash_x = 0
airdash_y = 0
taunt_summon = ""
soul_points = 0 // The points you get from hitting Soul Siphons, originally called "Level of Understanding" lol
soul_flash_timer = 0
time_frozen = false
time_freeze_ticks = 0
za_warudo = false

ai_debug = false // Display debug information for AI Ronald

//===========================================================================================================================================================================================================
// Golden code

// Golden trigger
if get_player_color(player) >= 11{
    golden = true
    
    set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 9999);
    set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 9999);
}

// ============================================================================
// Abyss runes 

// Set rune variables, taken from Fancy Pants
var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune("O") or golden or has_rune(rune_letters[rune_num]));
}

// Rune initialization stuff
if (runeE){
    set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("cheese_large"));
    set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 180);
}

if (runeJ){
    set_num_hitboxes(AT_NSPECIAL, 6);
    set_window_value(AT_NSPECIAL, 12, AG_WINDOW_LENGTH, 10);
}

// ============================================================================
// Compatibility stuff everyone bugs me to implement

// Miiverse post
miiverse_post = sprite_get("miiverse_post");
sprite_change_offset("miiverse_post", 60, 30);

// Trummel codec init code
trummelcodecneeded = false;
trummelcodec_id = noone;

// Dracula intro dialogue
if (get_stage_data( SD_ID ) == "t\383980\2132275518"){ // Why is the stage URL this random string of characters and not the stage URL? No idea! Too bad!
    dracula = true; // Set this value so when Ronald taunts he actually screeches, because Dracula's move lockout requires me to do poopy workarounds
}

dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = sprite_get("dracula_portrait2");
var page = 0;

dracula_speaker[page] = 0;
dracula_text[page] = "A clown? You dare approach my throne in stripes? How would a piece of mould like you be able make it to my throne unscathed?";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "Listen here pal, Only one of us is going to be consuming the world by the end of this fight.";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "Consume the world? Hah! You are but a jester! How-";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "[taunt]";
page++;

dracula_speaker[page] = 2;
dracula_text[page] = "[shake]Enough games! I will consume you for the insect you are, and then I will consume the rest of the universe!";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "Gah! You are more than you seem, clown! Very well, let's settle this![glass] Demon versus demon, to the death!";
page++;
