hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouchhurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;
mask_index = sprite_get("mask");


char_height = 42;
idle_anim_speed = 0.2;
crouch_anim_speed = .05;
walk_anim_speed = .25;
dash_anim_speed = .4;
pratfall_anim_speed = .25;

standard_height = 42;
nspecial_height = 88;
dspecial_height = 160;
utilt_height = 72;
stored_spr_dir = 1;

walk_speed = 2.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = 6.9;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 8;
djump_speed = 14;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .06;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.35; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 30;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .09; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
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
air_dodge_active_frames = 7;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 5;
roll_back_recovery_frames = 2;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

set_victory_theme(sound_get("victory_shy_guy"));
set_victory_bg(sprite_get("shyguyvictorybg"));
land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("wave_yi");
jump_sound = sound_get("jump_smb");
djump_sound = sound_get("jump_yi1");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


//Shy Guy properties
carpet_effect = hit_fx_create(sprite_get("subcon_effect"),10);
dspecial_fx = hit_fx_create(sprite_get("dspecial_fx"),6);
flowers_fx = hit_fx_create(sprite_get("fx_flower"),40);
pogo_fx = hit_fx_create(sprite_get("uspecial_fx"),40);
jab_fx = hit_fx_create(sprite_get("fx_jab"),12);
phanto_fx = hit_fx_create(sprite_get("vfx_phanto"),20);
trail_fx = hit_fx_create(sprite_get("vfx_trail"),12);

jump_frame = -1;
superjump = false;
superjump_active = false;
mace_position = 0;
carpet = noone;
autobomb = noone;
on_autobomb = false;
autobomb_cooldown = false;
carpet_cooldown = false;
fire_shotID = noone;

grabbed_id = noone;

//Intro
introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;


//voice code STOLEN FROM VVIZARD MWWAAAAHAHAHAHAHAHAAAA
var tmp_sync_vars = get_synced_var(player);
for (var i = 0; i < 2; i++)
{
    var shift = (i*4);
    synced_vars[i] = tmp_sync_vars >> shift & 15;
}

switch (synced_vars[0])
{
	default: //SNES
	voice_attack[1] = sound_get("v_snes_light1");
	voice_attack[2] = sound_get("v_snes_light2");
	voice_attack[3] = sound_get("v_snes_light3");
	voice_attack_long[1] = sound_get("v_snes_heavy1");
	voice_attack_long[2] = sound_get("v_snes_heavy2");
	voice_hurt[1] = sound_get("v_snes_hurt");
	voice_hurt[2] = sound_get("v_snes_hurt");
	voice_hurt[3] = sound_get("v_snes_hurt");
	voice_fly[1] = sound_get("v_snes_fly");
	voice_taunt[1] = sound_get("v_snes_taunt1")
	voice_taunt[2] = sound_get("v_snes_taunt2")
	voice_die[1] = sound_get("v_snes_die")
	pipe_sprite = sprite_get("pipe_snes");
	break;
	case 1: //N64
    voice_attack[1] = sound_get("v_n64_light1");
	voice_attack[2] = sound_get("v_n64_light2");
	voice_attack[3] = sound_get("v_n64_light3");
	voice_attack_long[1] = sound_get("v_n64_heavy1");
	voice_attack_long[2] = sound_get("v_n64_heavy2");
	voice_hurt[1] = sound_get("v_n64_hurt1");
	voice_hurt[2] = sound_get("v_n64_hurt2");
	voice_hurt[3] = sound_get("v_n64_hurt3");
	voice_fly[1] = sound_get("v_n64_fly");
	voice_taunt[1] = sound_get("v_n64_taunt1")
	voice_taunt[2] = sound_get("v_n64_taunt2")
	voice_die[1] = sound_get("v_n64_die")
	pipe_sprite = sprite_get("pipe_n64");
	break;
	case 2: //GCN
    voice_attack[1] = sound_get("v_gcn_light1");
	voice_attack[2] = sound_get("v_gcn_light2");
	voice_attack[3] = sound_get("v_gcn_light3");
	voice_attack_long[1] = sound_get("v_gcn_heavy1");
	voice_attack_long[2] = sound_get("v_gcn_heavy2");
	voice_hurt[1] = sound_get("v_gcn_hurt1");
	voice_hurt[2] = sound_get("v_gcn_hurt2");
	voice_hurt[3] = sound_get("v_gcn_hurt3");
	voice_fly[1] = sound_get("v_gcn_fly");
	voice_taunt[1] = sound_get("v_gcn_taunt1")
	voice_taunt[2] = sound_get("v_gcn_taunt2")
	voice_die[1] = sound_get("v_gcn_die")
	pipe_sprite = sprite_get("pipe_gcn");
	break;
}
voice_cooldown = 0;

//Compatiblity
is_gorable = true; // If the character can bleed out and stuff. This is the variable other characters use too.
blood_col = make_colour_rgb(get_color_profile_slot_r( get_player_color(player), 0 ),
                            get_color_profile_slot_g( get_player_color(player), 0 ), 
                            get_color_profile_slot_b( get_player_color(player), 0 ));
//Retro alt palette
switch(get_player_color(player)){
	default:
		jab_sprite = sprite_get("jab")
		jab_proj_sprite = sprite_get("jab_proj")
		uair_sprite = sprite_get("uair")
		autobomb_hud = sprite_get("hud_autobomb")
		retro_alt = false;
	break;
	case 11:
		blood_col = make_color_rgb(10, 10, 10)
	case 9:
	case 13:
	case 14:
	case 15:
	case 16:
	case 17:
		jab_sprite = sprite_get("jab_alt")
		jab_proj_sprite = sprite_get("jab_proj_alt")
		uair_sprite = sprite_get("uair_alt")
		autobomb_hud = sprite_get("hud_autobomb_alt")
		retro_alt = true;
	break;
}



//Kirby
kirbyability = 16;

//Trummel
trummelcodecneeded = false;
trummelcodec_id = noone;

//TCO
tcoart = sprite_get("tco");

//Hikaru
Hikaru_Title = "Kitsune of the Year"

//Feri
feri_costume = sprite_get("feri");

//Otto
otto_bobblehead_sprite = sprite_get("otto");

//Wall-E
walle_taunt_sound = sound_get("walle_sfx")
walle_taunt_type = 2;

//Amber
plushForAmber = sprite_get("AmberPlush");

//Agent N
ncode1 = "A common soldier from the kingdom of Subcon."
ncode2 = "Is an expert in handling a surprising amount of"
ncode3 = "weapons. Don't let your guard down."

//Miiverse
miiverse_post = sprite_get("miiverse");

//Dracula
dracula_portrait = sprite_get("dracula");
dracula_portrait2 = asset_get("empty_sprite");
var page = 0;
//0 = Dracula
//1 = Shy Guy
dracula_speaker[page] = 0;
dracula_text[page] = "A minion approaches me? Are you lost, fool? This isn't the domain of that toad buffoon you serve.";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "Hahaha, perhaps you've realized you were serving the wrong Lord! Even a creature as pathetic as yourself is a welcome addition to my army!";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "Is that not your reason for your appearance before me? Then speak your damned words, mook!";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "!!![taunt]";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "Insolent cretin.[glass] That haughty dance shall be your last.";
page++;

//Mt. Dedede
arena_title = "Subcon Small Fry"

//Soulbound Conflict
battle_text = "* A masked mook approaches.";

//The Trial Grounds
guiltySprite = sprite_get("trial")

//The Last Resort
resort_portrait = sprite_get("resort")

//Daroach
daroach_portrait = sprite_get("dracula");
daroach_portrait2 = sprite_get("dracula2");
var page = 0;
daroach_speaker[page] = 0;
daroach_text[page] = "...Squeaks, do you have any idea what this is? This little creature has been following me all day, how did it even get onto the ship?";
page++;
daroach_speaker[page] = 1;
daroach_text[page] = "...";
page++;
daroach_speaker[page] = 0;
daroach_text[page] = "Er, would you kindly leave the helm, at least? I have important busine-";
page++;
daroach_speaker[page] = 2;
daroach_text[page] = "THAT'S THE CROOK, RRRRRIBBIT!!";
page++;
daroach_speaker[page] = 0;
daroach_text[page] = "Another guest? My, this day just keeps getting more and more interesting.";
page++;
daroach_speaker[page] = 2;
daroach_text[page] = "I should have expected a DIRTY RAT to steal my throne!";
page++;
daroach_speaker[page] = 0;
daroach_text[page] = "Aha, excuse me? Are you supposed to be royalty? Given the state of your quarters, I would have expected Subcon to be a ghost town by now.";
page++;
daroach_speaker[page] = 2;
daroach_text[page] = "You're one to talk, flea picnic! You stole my ENTIRE THRONE ROOM! WHO DOES THAT, RRRRRIBBIT?";
page++;
daroach_speaker[page] = 0;
daroach_text[page] = "My apologies, your highness, for assuming there might be treasure hidden in the trash.";
page++;
daroach_speaker[page] = 2;
daroach_text[page] = "THAT DOES IT! Defeat this rodent, minion! Or else you'll be rebuilding my castle brick by brick!";
page++;
daroach_speaker[page] = 1;
daroach_text[page] = "!!!";
page++;

//Pokemon Stadium
pkmn_stadium_front_img = sprite_get("pokemon_front");
pkmn_stadium_back_img = sprite_get("pokemon_back");

//Break the Targets
get_btt_data = false;

//Assist
assistAttack = AT_USPECIAL; //The attack to use as the assist
assistOffsetX = 10; //The horizontal distance they spawn from the player
assistOffsetY = -70; //The vertical distance they spawn from the player
assistGroundOnly = true; //Whether or not they are forced to the ground
assistFloat = false; //Whether or not they stay in place vertically