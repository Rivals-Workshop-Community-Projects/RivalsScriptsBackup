hubox_spr = sprite_get("idle_hurt");
hurtbox_spr = hubox_spr;
crouchbox_spr = asset_get("ex_guy_crouch_box");
last_hurtbox = hurtbox_spr;
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;


//Custom Vars

is_ou = 0;
Ou = noone;
is_clutch = 0;
can_be_grounded = true;
old_dmg = 0;
new_dmg = 0;
uspec_angle = 0;
uspec_speed = 15;
uspec_cooldown = 0;
fspec_cooldown = 0;
dspec_cooldown = 0;
dair_hit = 0;
utilt_hit = 0;
grabbed = noone;
spr_dir2 = 0;
ftilt_hit = 0;
code1 = 0; //Debug Info Attack & Shield
code2 = 0; //Traditional desyncs
chuckVsp = -7;
chuckHsp = 15;
chuck_sound = asset_get("sfx_ori_glide_featherout");
recall_sound = asset_get("sfx_may_wrap1");
floot = sound_get("floot");
playing_floot = false;
ou_respawn_time = 120;
respawned = false;
jab_parried = 0;

mounted = false;
mounted_old = false;
mounted_sprite = sprite_index;
mounted_index = image_index;
mounted_offset = -14;
mounted_xoffset = 52;
mounted_yoffset = 102;
mount_range = 64;
hitbox_y = 0;
mount_dmg = 0;
mount_break_dmg = 0;
mount_break_limit = 40;
//break_limit = 12;
//Move Stats
uspec_vsp = 8;
hfx_note = hit_fx_create(sprite_get("music_note"),60);
hfx_note_quarter = hit_fx_create(sprite_get("music_note_quarter"),60);
ou_arrow = sprite_get("OuArrow");
//set_victory_theme(sound_get("aeiouV"));
//


//Extra Sprites
spr_custom = 0;
ride_spr = sprite_get("ride");
hudfull = sprite_get("hudfull");

//
// Tutorial Support
tutorial_on = false;
list_window = ds_list_create();
open_scene_id = 1;
cur_scene = 0;
cur_scene_time = 0;
cur_scene_time_end = 0;
cur_scene_complete = false;
array_scene_data = array_create(0);
array_scene_ID = array_create(0);
array_scene_triggers = array_create(0);
_x_init = 0;
_y_init = 0;
window_num = 0;
move_timer = 0;
taunt_held = 0;
target_id = 0;
cpu_hit_full = false;
practice = false;
//

//
tutorial_target = noone;
tutorial_default_scroll = 240;
tutorial_default_text_speed = 2;
tutorial_text_dump = [
    "Hello, and welcome to the Aei&Ou tutorial!",
    "This character is quite complex, so I'll have to give a bit of an info dump before we practice. I hope you are ready!",
    "Aei is the main character, the shrew. Ou is his bug assistant.",
    "Aei responds to your inputs in real time like any other character. Ou is delayed a bit for reasons that will be made clear soon.",
    "Ou can be directly controlled when close enough to Aei or when Aei is committed to an option. Otherwise, the AI takes over.",
    "They have different percents and different character stats. They essentially act as two separate entities, with Aei holding the stocks.",
    "Unfortunately, Ou is only an approximation of a player, so some interactions will behave differently with her.",
    "Now that that's over with, let's get into how to play the character!",
    "You input attacks for Ou by holding shield+attack while Aei is attacking. Hit the target with an attack from Ou.",
    "Nice!",
    "It's a bit tricky to get used to, so spend some time labbing it out until it feels natural.",
    "You can freely control Ou while charging strong attacks, try hitting the target with Ou while charging a strong.",
    "Excellent!",
    "Why don't you try jumping up with Ou and hitting a target while charging a strong? (Claw grip best grip)",
    "Good stuff!",
    "Aei has a few command grabs, ftilt and utilt. Let's try comboing a grab into an Ou followup. (Use the CPU; Ftilt is much easier)",
    "-Someone's going to figure out a wobble with that...-",
    "Play around with the normals a bit and getting Ou where you want them. Again, it's pretty different so it'll take some time to get used to.",
    "Now, let's get into the specials..",
    "We'll do fspecial first. When Ou is here, it'll throw her forward when she's near and recall her when she's far.",
    "Aei also throws a rock, so it has some use even when Ou isn't here.",
    "Uspecial is a standard tether to Ou. She can attack durring it, so she's not completely helpless. If she isn't here, it gives a small vertical boost.", //20
    "Dspecial is how you get Ou back after she gets KO'd. It has a hitbox on the umbrella, and is canceled by a roll/parry.",
    "Nspecial lets Aei mount Ou. They temporarily become 1 character with Aei's moveset and become a heavy.",
    "It also redirects all damage taken to Ou. After Ou takes some percent, dismount is forced.",
    "Pressing shield *at any time* will also force a dismount. Even in the middle of attacks!",
    "That is very important to understand - you can get some crazy followups out of dismounting on hit.",
    "Now that we've talked basics, lets get into some stratagem!",
    "Since Ou acts after Aei, it's good to plan to use Ou as setup for Aei followups. For this, Ou dair, Ou nair, Ou utilt, and Ou jab are great tools.",
    "Ou can reach quite far and kill with uair. If she's above Aei with an opponent heading there, go for the Ou uair!",
    "Ou can be a bit slide-y. Combined with fair/bair speed increases you can cover a lot of horizonal air space.",
    "And with that, such ends the Aei&Ou tutorial! Of course, I'm not going to tell everything; just enough to get you started. Time to put in practice!", //30
    "Thank you for staying until the end! If you have a bug report, need any tips, or want to show some cool stuff feel free to DM me on Discord -Archytas.",
    "Recovery is a bit tough, as is tradition. Ou will try to stay on stage for easy upspecials, and can help greatly with reducing pressure.", 
    "Nspecial after a high upspecial to land with a high weight is a good option when returning to stage.",
    
];
//

//Trummel Support
trummelcodecneeded = false;
trummelcodec_id = noone;

char_height = 30;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .25;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.5;
dash_speed = 5;
dash_turn_time = 10;
dash_turn_accel = 2;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 5;
djump_speed = 8;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 1.3; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 8;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 2;
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

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_syl");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;