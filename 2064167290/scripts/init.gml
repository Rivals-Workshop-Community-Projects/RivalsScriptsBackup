step = 0;

hurtbox_spr = sprite_get("hana_hurtbox");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = sprite_get("hana_hurtbox");
hitstun_hurtbox_spr = sprite_get("hurt_hurt");

char_height = 62; char_height_ref = char_height; char_height_cd = 90;
idle_anim_speed = 8 / 60;
crouch_anim_speed = .1;
walk_anim_speed = 13 / 60;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.75; walk_speed_ref = walk_speed ; walk_speed_spd = 5;
walk_accel = 0.15; walk_accel_ref = walk_accel; walk_accel_spd = 0.22;
walk_turn_time = 7;
initial_dash_time = 14;

initial_dash_speed = 7; initial_dash_speed_ref = initial_dash_speed; //<----
dash_speed = 6; dash_speed_ref = dash_speed; //<----

dash_turn_time = 16;
dash_turn_accel = 1.3; dash_turn_accel_ref = dash_turn_accel; dash_turn_accel_spd = 0.5;
dash_stop_time = 5; dash_stop_time_ref = dash_stop_time; dash_stop_time_spd = 14;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5; ground_friction_ref = ground_friction; ground_friction_spd = 0.2;
moonwalk_accel = 1.3; moonwalk_accel_ref = moonwalk_accel; moonwalk_accel_spd = 2;

jump_start_time = 5;
jump_speed = 9; jump_speed_ref = jump_speed; jump_speed_spd = 7; jump_speed_jmp = 12; jump_speed_shld = 8;
short_hop_speed = 6; short_hop_speed_ref = short_hop_speed; short_hop_speed_spd = 4.5; short_hop_speed_jmp = 9; short_hop_speed_shld = 6;
djump_speed = 7.8; djump_speed_ref = djump_speed; djump_speed_spd = 7; djump_speed_jmp = 10.5; djump_speed_shld = 7.5;
leave_ground_max = 7.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; air_max_speed_ref = air_max_speed; air_max_speed_runeD = 7; //the maximum hsp you can accelerate to when in a normal aerial state  <----
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25; air_accel_ref = air_accel; air_accel_runeD = 0.35;   //<-----
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 2; max_djumps_ref = max_djumps; max_djumps_turn = 0; max_djumps_runeJ = 3;
double_jump_time = 44;// 48 //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9; walljump_vsp_ref = walljump_vsp ; walljump_vsp_jmp = 11; walljump_vsp_spd = 7;
walljump_time = 34;
max_fall = 10; max_fall_ref = max_fall; max_fall_jmp = 17;//maximum fall speed without fastfalling
fast_fall = 13; fast_fall_ref = fast_fall; fast_fall_jmp = 19;//fast fall speed
gravity_speed = 0.4; gravity_speed_ref = gravity_speed; gravity_speed_jmp = 0.45; gravity_speed_shld = 0.4;
hitstun_grav = .45;
knockback_adj = 1.2; knockback_adj_ref = knockback_adj; knockback_adj_shld = 0.8;//the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.2; wave_land_adj_ref = wave_land_adj; wave_land_adj_spd = 1.6; wave_land_adj_shld = 1.15;//the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .035; wave_friction_ref = wave_friction; wave_friction_spd = 0.015; wave_friction_shld = 0.1; wave_friction_jmp = 0.4;//grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
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
air_dodge_startup_frames = 0;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8.5; air_dodge_speed_ref = air_dodge_speed ; air_dodge_speed_jmp = 10.2; air_dodge_speed_shld = 6.5;

has_really_airdodge = false;
has_really_walljump = false;


//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 8.5;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = sound_get("land");
waveland_sound = sound_get("waveland")//asset_get("sfx_waveland_zet");
jump_sound = sound_get("jump")//asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = asset_get("sfx_quick_dodge");


prat_land_time	= 10;

can_uspecial = true; // 
can_fspecial = true;



can_uspecial_combo = false;

is_winged = false;
airborn = false;

doppel_x = x;
doppel_y = y;
uspecial_doppel = false;
doppel_timer = 0;
doppel_dir = 1;


ustrong_pale = false;

pale_x = x;
pale_y = y;
pale_dir = 1;
pale_timer = 0;
pale_sweetspot = false;

timer_before_swipe = 0; // Pale leaving quick doge sfx
leaving_effect = hit_fx_create( sprite_get("ustrong_pale_leaving"), 20 );
leaving_effect_mirror = hit_fx_create( sprite_get("ustrong_pale_leaving_mirror"), 20 );
// Specials

holding_turntable = false;



// 0: jump
// 1: speed
// 2: Shield
// 3: Buster
// 4: Smash
///boosted_update = false;

//cd_des_red = hit_fx_create( cd_red, 40 ) 
effect_nothing = hit_fx_create( sprite_get("nothing"), 2);

cdestroy_black = hit_fx_create( sprite_get("cdestroy_black"), 16);
cdestroy_blue = hit_fx_create( sprite_get("cdestroy_blue"), 16);
cdestroy_green = hit_fx_create( sprite_get("cdestroy_green"), 16);
cdestroy_yellow = hit_fx_create( sprite_get("cdestroy_yellow"), 16);
cdestroy_orange = hit_fx_create( sprite_get("cdestroy_orange"), 16);
cdestroy_red = hit_fx_create( sprite_get("cdestroy_red"), 16);
cdestroy_purple = hit_fx_create( sprite_get("cdestroy_purple"), 16);


cd_charge_blue = hit_fx_create( sprite_get("eff_charge_blue"), 20);
cd_charge_green = hit_fx_create( sprite_get("eff_charge_green"), 20);
cd_charge_yellow = hit_fx_create( sprite_get("eff_charge_yellow"), 20);
cd_charge_orange = hit_fx_create( sprite_get("eff_charge_orange"), 20);
cd_charge_red = hit_fx_create( sprite_get("eff_charge_red"), 20);
cd_charge_purple = hit_fx_create( sprite_get("eff_charge_purple"), 40);




cd_level = 0;
cd_level_max = 6; // 0 = black 

cd_charge = 0;
cd_charge_floor = 23; cd_charge_floor_ref = cd_charge_floor; cd_charge_floor_runeL = 17;

cd_charge_offset = 0;
cd_charge_offset_timer = 0;

cd_image = 0;
cd_spd = 0.2;


cd_height = 90;

cd_rel_lvl = 0;



selected = -1;
cd_image = 0;
cd_spd = 0.2;

cd_dis = 40;

// yellow cd
ycd_spawn_timer = 0;
ycd_id = noone;


/*
cd_pos = ds_list_create();
ds_list_add(cd_pos,0,1,2,3,4)

for (var i = 0; i < 5; i += 1)
{
    menu[i] = false;
}
menu[0] = true;


cd_col = ds_list_create();
ds_list_add(cd_col,sprite_get("cd_green"),sprite_get("cd_blue"),sprite_get("cd_yellow"),sprite_get("cd_purple"),sprite_get("cd_red"))
*/



// Codec
trummelcodecneeded = false;
trummelcodec_id = noone;

// TCO
    

    tcoart = sprite_get("forherneutralspecialshewieldsagun_tcoart")
    tcoart = sprite_get("doppel_tcoart");
    


//visual offsets for when you're in Ranno's bubble
bubble_x = -4;
bubble_y = 6;

// entrance animation
has_enter = false;


// songs
sound[0] = sound_get("midnight")
sound[1] = sound_get("cuphead")
sound[2] = sound_get("veryfunny")
//sound[3] = sound_get("yee")

lenght[0] = 230;
lenght[1] = 190;
lenght[2] = 140;
//lenght[3] = 230;



// particule





// hud
is_hcd = false;
hcd_step = 0;

hcd_x = 0;
hcd_y = 0;
hcd_spd = 1.5;

hcd_image = 0;



dest_x = ds_list_create();
dest_y = ds_list_create();
dest_inst = ds_list_create();




// kirby

kirbyability = 16;
enemykirby = noone; // by doing this it will stop _my side_ from spamming error messages to the log
swallowed = 0; // changed swallowed implementation to fix error message as well




//Rune Support
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = false;
ab_hud_x = 0;
ab_hud_y = 0;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Not Implemented."]);


// tier 1
abyssMods[@ runes.A] = [2, "Enhanced aerials"];
abyssMods[@ runes.B] = [1, "Enhanced NSPECIAL Discs."];
abyssMods[@ runes.C] = [2, "Landing on an opponent with FSPECIAL will spike them."];
abyssMods[@ runes.D] = [3, "Greater air speed and air acceleration."];
abyssMods[@ runes.E] = [0, "Turntables have more HP."];

abyssMods[@ runes.F] = [3, "Random discs."];

// tier 2
abyssMods[@ runes.G] = [3, "One USPECIAL2 free before landing."]; runeG_can_uspecial = true;
abyssMods[@ runes.H] = [3, "USPECIAL3 can be cancel with an airdodge."];
abyssMods[@ runes.I] = [0, "The Turntable's hitbox is still active after touching an opponent and after USPECIAL3."];
abyssMods[@ runes.J] = [3, "3 Djumps max."];
abyssMods[@ runes.K] = [2, "DAIR, DTILT and FSPECIAL bounces are faster and FSPECIAL2 has more knocback."];

 // tier 3
abyssMods[@ runes.L] = [3, "NSPECIAL charge faster (Less cooldown if used with Rune F.)."];
abyssMods[@ runes.M] = [0, "Air speed, air accel, dash and initial dash buff relative level active Turntable."];
abyssMods[@ runes.N] = [0, "P.A.L.E stay after USTRONG, knocking out opponent if they are in hitstun.USTR cancelable."];
abyssMods[@ runes.O] = [3, "Grab Turntable anywere."];



//Sets the variables runeA, runeB, etc according to whether or not that rune was selected
 
var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}
 


wall_frames = 2;



sprite_change_offset("miiverse1", 60, 30);
miiverse_post = sprite_get("miiverse1");

sprite_change_offset("miiverse2", 60, 30);
miiverse_post2 = sprite_get("miiverse2");

sprite_change_offset("miiverse3", 60, 30);
miiverse_post3 = sprite_get("miiverse3");




