hurtbox_spr = sprite_get("aaa_hurtbox");
crouchbox_spr = sprite_get("aaa_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 61;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .1;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7.0;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7;
djump_speed = 11.5;
leave_ground_max = 5.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling. It's not 19 anymore.
fast_fall = 14; //fast fall speed
gravity_speed = .60;
hitstun_grav = .5;
knockback_adj = 1.10; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 17;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .11; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 8.5;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 8.5; //roll speed
roll_backward_max = 8.5;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


small_sprites = 1;

//my stuff
dir_held = 0;                       //1 for right, -1 for left.
multihit = noone;                   //multihit help variable
can_b_reverse = false;              //used to allow Smash-style B-reversing on certain moves
has_fjump = true;                   //Certain special moves can only be used once before touching the ground
has_suplex = true;
ultupper = 0;                       //Ultimate Uppercut charge
ultupperflash = -1;                 //(gonna be honest i dont remember what this one does but its probably important)
shinetimer = 0;                     //used for when the player glows when they have Ult Upper charged fully
shovel_knight_exists = false;       //see no evil
if(get_training_cpu_action() == CPU_FIGHT){
    practice = false;               //whether or not you're in training mode
}else{
    practice = true;
}
if(get_player_color(player) == 11){
    classic = true;
}else{
    classic = false;
}
if (get_player_color(player) == 5 || get_player_color(player) == 8){
    hud_menu = sprite_get("hud_menu2");     //Due to color purposes, a different menu sprite is used for Alt 6.
}else{
    hud_menu = sprite_get("hud_menu");
}

//menu variables
specialnums = [0, 0, 0, 0];         //add 1 to each number for the special number, i.e. 0211 = specs 1322
if(classic){
    specialnums = [0, 2, 1, 1];     //sets moveset for Classic skin
}
menu_open = false;
menu_confirm = true;
menu_close = false;                 //used to reset all variables at once when the menu is closed
close_timer = -1;                   //used for menu vfx when closing
if(!practice && !classic){
    menu_timer = 126;               //menu closes when this equals -1
}else{
    menu_timer = -1;
}
menu_dir = -1;                      //returns 0 for up, 1 for right, 2 for down, and -1 for left and idle
prev_dir = -1;                      //used for input lockout so you pressing a direction once doesn't register every frame
active_col = 0;                     //used for player selection
for(var i = 0; i <= 3; i++){
    for(var j = 0; j <= 2; j++){
        specs_chosen[i, j] = true;  //determines what icons are drawn on the menu
    }
}

//making special names nicer
AT_NSPECIAL_3 = AT_NSPECIAL_AIR;
AT_FSPECIAL_1 = AT_FSPECIAL_AIR;
AT_USPECIAL_3 = AT_USPECIAL_2;
AT_USPECIAL_1 = AT_USPECIAL_GROUND;
AT_DSPECIAL_1 = AT_DSPECIAL_AIR;
AT_DSPECIAL_3 = AT_DSPECIAL_2;
//he comes
AT_UNCHAINED = AT_EXTRA_1;

//supports
toonlink_photo = sprite_get("spirit_photo");
toonlink_photo2 = 4;
miiverse_post = sprite_get("miiverse");
arena_title = "Brawler of Many Faces";
tcoart = sprite_get("miibrawler_tcoart");
kirbyability = 16;
swallowed = 0;


//Rune Support
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false;
runesUpdated = false;
ab_hud_x = 0;
ab_hud_y = 0;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Not Implemented."]);
abyssMods[@ runes.A] = [3, "TAUNT can acess the special menu outside of training mode."];
abyssMods[@ runes.B] = [2, "ONSLAUGHT has knockback that scales with your percent."];
abyssMods[@ runes.C] = [1, "SHOTPUT has more hitpause and less ending lag."];
abyssMods[@ runes.D] = [3, "fishy Mar 25 @ 3:09pm  Make him fall faster"];
abyssMods[@ runes.E] = [2, "HEAD-ON-ASSAULT has a multihit drop."];
abyssMods[@ runes.F] = [2, "Makes late hit of NAIR untechable."];
abyssMods[@ runes.G] = [3, "Triple Jump."];
abyssMods[@ runes.H] = [2, "Hitting with the first part of SOARING AXE KICK will not put you in pratfall."];
abyssMods[@ runes.L] = [1, "SHOTPUT slowly floats through the air."];
abyssMods[@ runes.O] = [3, "he comes with great wrath..."];

var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];

for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}

if(get_match_setting(SET_RUNES)){
    runesBuiltIn = true;
}else{
    runesBuiltIn = false;
}