//Spaghetti Bolognese
/*
-----Ingredients - Serves 4 Adults-----
450g / 1lb of lean mince beef
1 medium onion finely chopped
1 beef stock cube
275ml / ½ pint of water
1 dessertspoon of tomato sauce
1 dessertspoon of plain flour
1 x 400g / 14 oz. tin of chopped tomatoes
6 mushrooms, chopped
1 red or green pepper, diced
90g / 3 oz. of chopped broccoli
1 x 200g / 7 oz. can of sweetcorn
1 large carrot, peeled and diced
225g / 8 oz. of spaghetti
Salt and pepper to taste
-----Method--------
1. Cook the mince beef, onions and mushrooms on a low heat using a dry pan for 15 minutes
2. Add flour and stir well
3. Add the water and before it comes to the boil add the crushed beef stock cube, tin of tomatoes, tomato sauce, the rest of the vegetables and season to taste
4. Cook gently for 45 minutes
5. Cook the spaghetti for 10 to 15 minutes in boiling salted water, then strain
6. Serve the spaghetti with the Bolognese sauce on top
*/

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 14;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 4;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = 0.9; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1;

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 5;
crouch_active_frames = 3;
crouch_recovery_frames = 4;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 9;

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
roll_forward_max = 7.5; //roll speed
roll_backward_max = 7.5;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

my_table = noone;
my_table_plat = noone;
attacking = false
grabbedID = noone;
nspec_charge = 0
tabley = 0
tablex = 0
tablehsp = 0
tablehealth = 0
maketable = 0
debug = 0
boarded = 0
hsptobe = 0
tableproj = noone
count = 0
kirbyability = 16
enemykirby = noone;
swallowed = 0 //Forgive me for my sins.
flash = 0
madetable = 0
stagger = 0

cancook = 1

if (get_player_color(player) == 9) or (get_player_color(player) == 1) or (get_player_color(player) == 3) set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_ground_alt"));

//Rune Support
abyssEnabled = false;
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = false;