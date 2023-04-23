//#region base character stuff
hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 32;
idle_anim_speed = 0.15;
crouch_anim_speed = 0.1;
walk_anim_speed = 0.125;
dash_anim_speed = 0.25;
pratfall_anim_speed = 0.25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 7.5;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 5.5;
djump_speed = 8;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.15;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = 0.02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 8.5;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = 0.4;
hitstun_grav = 0.5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.05; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 1;
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
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = asset_get("sfx_quick_dodge");

small_sprites = 1;

vfx_explosion = hit_fx_create(sprite_get("vfx_utilt_explosion"),28);
vfx_explosion_smol = hit_fx_create(sprite_get("vfx_utilt_explosion_small"),15);
vfx_ftilt_energy_hit = hit_fx_create(sprite_get("vfx_ftilt_hit"),26);
vfx_nair_energy_hit = hit_fx_create(sprite_get("vfx_nair_hit"),26);
vfx_panbg_energy_hit = hit_fx_create(sprite_get("fx_pan_hit_bg"),32);
vfx_fstrongbg_energy_hit = hit_fx_create(sprite_get("fx_fstrong_hit_bg"),32);
small_wood_hfx = hit_fx_create(sprite_get("hfx_wood_small"), 18);
large_wood_hfx = hit_fx_create(sprite_get("hfx_wood_large"), 21);
xlarge_wood_hfx = hit_fx_create(sprite_get("hfx_wood_xlarge"), 28);
small_leaf_hfx = hit_fx_create(sprite_get("hfx_leaf_small"), 12);
xlarge_leaf_hfx = hit_fx_create(sprite_get("hfx_leaf_xlarge"), 28);

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

set_victory_theme(sound_get("VictoryFloweyNoises"));
set_victory_bg(sprite_get("victorybg"));
//#endregion

//uspecial
flowey_save = instance_create(x, y, "obj_article1");
sound_stop(sound_get("snd_save"));
vfx_star = hit_fx_create(sprite_get("vfx_star"), 24);
instance_destroy(flowey_save);

fs_char_chosen_final_smash = "custom";
fs_portrait_x = 36;
fs_char_portrait_y = 120;
if get_player_color(player) = 0{
    fs_char_portrait_override = sprite_get("_fs_portrait");
}

// AGE's rainbow code
hue_offset = 0;
hue_speed = 1.5; //change this to change the speed of the hueshift
particles = [];
prev_spr_dir = spr_dir;

//fspecial
flowey_vine = noone;
flowey_vineCheck = noone;
flowey_grapples_used = 0;
has_grab = 0;
grabp = noone;
enemy_pos = [];

flowey_ustrong_quick_grab = noone;

//uspc_atkFall = 0; // time in which if you attack you will not fall

flowey_morefloweys = 0;

// Runes
if has_rune("G"){
    rune_pellet1 = create_hitbox(AT_NSPECIAL, 1, x + 36 * spr_dir, y);
    rune_pellet2 = create_hitbox(AT_NSPECIAL, 1, x + 36 * spr_dir, y);
    instance_destroy(rune_pellet1);
    instance_destroy(rune_pellet2);
}
flowey_saves_max = has_rune("A")? 2:1;
flowey_savejump = 0;

flowey_specialeffects = 1;

flowey_last_grunt = 180;

//#region compatability

//Pokemon Stadium
pkmn_stadium_back_img = sprite_get("Flowey_back_sprite");

pkmn_stadium_front_img = sprite_get("flowey_front_sprite");
//mt ddd
arena_title = "Your Best Friend";

//soulbound conflict
battle_text = "* It's your best friend, Flowey the Flower!";

//Boxing arena

boxing_title = "Devilish 
Flower";

//Snake interigations

sna_interrogated_line_01 = "Gah, my stem!";
sna_interrogated_line_02 = "I'm gonna tear your SOUL apart for this!";
sna_interrogated_line_03 = "Do you know the meaning of this world?";

//Henry Stickmin fail

has_fail = true;
fail_text = "[insert determination quote]";

//unregistered HyperCam quotes

uhc_victory_quote = "Undrtel 2 leek :0!!!";

//Wall-E Taunt

walle_taunt_sound = sound_get("Your_best_friend")
walle_taunt_type = 1

//Chaos emeralds buddy
super_form_transform_sound = sound_get("Flowey_chaos_sound")
super_form_music = sound_get("Chaos_Flowey");

//Your Best Nightmare / Finale - Metal Cover || RichaadEB

//steve-compatiblity

steve_death_message = "Steve lost his SOUL privileges."

// Green flower hill zone

gfzsignspr = sprite_get("FloweyBoard")

gfzsignsfx = sound_get("Flowey_ding")

//wily castle
 wily_robotmaster_img = sprite_get("Flowey_Megaman");

//Kirby Fighters

kf_custom_icon = sprite_get("Flowey2_kirby_Fighters")

//Hikaru title

Hikaru_Title = "Soulless"; 

//Yooka Laylee
laylee_win_quote = "HEY, DON'T FEEL BAD. AT LEAST YOUR SOUL IS AT... OH, RIGHT."

//Dracula support
dracula_portrait = sprite_get("Flowey1");
dracula_portrait2 = sprite_get("Flowey2");
dracula_portrait3 = sprite_get("Flowey3");
dracula_portrait4 = sprite_get("Flowey4");
dracula_portrait5 = sprite_get("Flowey5");
dracula_portrait6 = sprite_get("Flowey6");
dracula_portrait7 = sprite_get("Flowey7");
var page = 0;

//Page 0
dracula_speaker[0] = 1;
dracula_text[0] = "Howdy! I’m Flowey. Flowey the Flower!";
page++;

//Page 1
dracula_speaker[1] = 0;
dracula_text[1] = "...";
page++;

//page 2

dracula_speaker[2] = 1;
dracula_text[2] = "Golly, I seem to have gotten lost. Could you tell me wher-";
page++;

//Page 3
dracula_speaker[3] = 0;
dracula_text[3] = "Do you take me for a fool?";
page++;

//Page 4
dracula_speaker[4] = 5;
dracula_text[4] = "!";
page++;

//Page 5
dracula_speaker[5] = 0;
dracula_text[5] = "I recognize evil when I see it, plant, so spare me your deceit and state your purpose here.";
page++;

//Page 6
dracula_speaker[6] = 2;
dracula_text[6] = "Well, aren’t you clever?";
page++;

//Page 7
dracula_speaker[7] = 7;
dracula_text[7] = "My purpose is to take your power, old fool!";
page++;

//Page 8
dracula_speaker[8] = 7;
dracula_text[8] = "With it, I could control everything and everyone!";
page++;

//Page 9
dracula_speaker[9] = 0;
dracula_text[9] = "And how, pray tell, would you take that power?";
page++;

//Page 10
dracula_speaker[10] = 3;
dracula_text[10] = "Why golly, how about I just show you?";
page++;

//Page 11
dracula_speaker[11] = 4;
dracula_text[11] = "Tell me; do you know the true nature of this world?";
page++;

//Page 12
dracula_speaker[12] = 0;
dracula_text[12] = "Indeed I do.[glass] In this world, it's kill-";
page++;

//Page 13
dracula_speaker[13] = 6;
dracula_text[13] = "-Or be killed! [taunt]";
page++;