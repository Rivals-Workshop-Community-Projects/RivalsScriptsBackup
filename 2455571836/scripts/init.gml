//The Last Resort
resort_portrait = sprite_get("sal_portrait")

//King Dedede's Arena
arena_title = "The Cold Adventurer";

//Pokemon Stadium //Thanks TheBlackHex for the front graphic
pkmn_stadium_front_img = sprite_get("glace_stadiumfront");
pkmn_stadium_back_img = sprite_get("glace_stadiumback");
pkmn_stadium_name_override = "Glace";

//Miiverse
miiverse_post = sprite_get("glacemv");

//Wily Castle
wily_robotmaster_img = sprite_get("glace_robotmaster");

//Green Flower
gfzsignspr = sprite_get("glace_signpost");

//Soulbound Conflict
battle_text = "* Nya.";

//Trial Grounds
guiltySprite = sprite_get("glacedr")

//Toon Link
toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo2 = 4;

//PAC-MAN
Namco_Taunt = sprite_get("glace_namco")
Namco_Taunt_Sound = sound_get("glace_appeal")

//Steve
steve_death_message = "Steve was scratched by Glace.";

//Agent N
nname = "Glace"

ncode1 = "An ice-type cat who likes to adventure."
ncode2 = "Capable of using ice powers and her scarf for attacks."
ncode3 = "Doesn't like wearing clothing...?"

//The Chosen One
tcoart = sprite_get("glacetcoart");

//Feri
feri_costume = sprite_get("feri_costume_glace");

//Hikaru
Hikaru_Title = "Hikaru, the clothed furry!";

set_victory_theme( sound_get( "glace_victory" ) );
set_victory_bg( sprite_get( "glace_victory_bg" ));

hurtbox_spr = sprite_get("glace_hurt_box");
crouchbox_spr = sprite_get("glace_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .125;
walk_anim_speed = .11;
dash_anim_speed = .15;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 10;
initial_dash_time = 0;
initial_dash_speed = 10;
dash_speed = 5.5;
dash_turn_time = 20;
dash_turn_accel = 1.5;
dash_stop_time = 20;
dash_stop_percent = .02; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .2;
moonwalk_accel = 2;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 8;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .72;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

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
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("glace_land");
landing_lag_sound = sound_get("glace_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("glace_jump");
djump_sound = sound_get("glace_double_jump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
