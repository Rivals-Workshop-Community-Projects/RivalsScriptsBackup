var current_alt = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);
shauntSans = true;
// sans kirby
swallowed = 0;

kirbyability = 16;
newicon = 0;

//trummel & alto
trummelcodecneeded = false;
trummelcodec_id = noone;
sans_speech = 0;

// -------------- sans variables -------------- 
trolled = false;
gasterBlaster = noone;
soul_id = noone;
blue_bone = true;
walkFade = 0;

dattack_back_bound = [0, 0, -88, -84, -76, -64, -64, -64, -64, -64, -64, -64, -60, -36, 0, 0];
dattack_front_bound = [0, 0, -66, -28, 38, 50, 50, 50, 50, 50, 50, 50, 52, 22, 0, 0];
dattack_height = [0, 0, -8, -12, -14, -10, -12, -12, -12, -12, -12, -12, -8, -4, 0, 0];
dattack_lead = 16;
dattack_trail = 16;

dstrong_bones = 2; //how many bones the attack produces. increase for some fun things like runes if you'd like!
dstrong_distances = [50, 32]; //the position each set of bones starts at. add more values to the array if you want to add more bones.
dstrong_speeds = [1, 0.6]; //how much of the movement speed each set of bones gets. add more values to the array if you want to add more bones.
dstrong_positions = []; //array for bone positioning uses by the attack

//fspecial_select_timer = 0;
snd_blaster_charge = [sound_get("sfx_blaster_charge"), sound_get("sfx_lazar_charge")];
spr_bone = [sprite_get("bone_spin"), sprite_get("bone_spin_blue"), sprite_get("bone_spin_orange")];
var sleepy = 40;
var missty = 40;
vfx_miss = hit_fx_create(sprite_get("vfx_miss"), missty); //funny
vfx_sleep = hit_fx_create(sprite_get("vfx_sleep"), sleepy);
missActive = false;
dspecAngle = 90;
dspecJoyDir = 90;
dspecTimer = 0;
fspecCharge = 0;
fspecChargeMax = 30;
fspecStored = false;
fspecStopThat = false;
intro_length = 23;
intro_frame = 0;
blackout_on = false;
blackout_timer = 0;

blue_outline = [get_color_profile_slot_r(get_player_color(player), 4)/4,
                get_color_profile_slot_g(get_player_color(player), 4)/4,
                get_color_profile_slot_b(get_player_color(player), 4)/4];
outline_base = [0, 0, 0];

//print_debug("[" + string(blue_outline[0]) + ", " + string(blue_outline[1]) + ", " + string(blue_outline[2]) + "]");
orig_mask_index = mask_index;

HG_KARMA = 98;

// DELTA STUFF
dattack_sound = noone


// -------------- final smash -------------- 
sansFS_box_x = 0;
sansFS_box_y = 0;
sansFS_box_orig_width = 100;
sansFS_box_width = sansFS_box_orig_width;
sansFS_blast_array = [];
sansFS_blast_prev_dir = 0;
sansFS_blast_cooldown = 0;
sansFS_blast_combo_cooldown = 0;
sansFS_blast_rotate = 0;
sansFS_blast_pattern = 0;
sansFS_throw_box_state_array = [16, 16, 12, 60];
sansFS_throw_box_state = -1;
sansFS_throw_box_state_timer = 0;
sansFS_throw_box_dir = 0;
sansFS_throw_box_offset = 100;
sansFS_teleport_cooldown = 0;

// -------------- compatibility -------------- 
tcoart = sprite_get("sanstcoart"); //tco
feri_costume = sprite_get("sansferi"); //feri
otto_bobblehead_sprite = sprite_get("sans_bobble"); //otto
miiverse_post = sprite_get("sans_miiverse1"); //miiverse 1/2
sprite_change_offset("sans_miiverse1", 60, 30);
miiverse_post2 = sprite_get("sans_miiverse2"); //miiverse 2/2
sprite_change_offset("sans_miiverse2", 60, 30);
arena_title = "The Karmic Authority"; //dedede that's the name you should know
guiltySprite = sprite_get("sansganronpa"); //d-d-danganronpa
resort_portrait = sprite_get("portrait_sans"); //last resort
walle_taunt_sound = sound_get("jitterbug"); //waaaalllllll-eeeee
walle_taunt_type = 1;
plushForAmber = sprite_get("plushSans"); //amber :)
pkmn_stadium_front_img = sprite_get("sans_front"); //pokemon
pkmn_stadium_back_img = sprite_get("sans_back");
gfzsignspr = sprite_get("signsans"); //greenflower
knight_compat_dream = //dream nail
[
    "don't forget.",
    "you'll never see them again.",
    "gave up a long time ago."
];

//final smash
fs_portrait_x = 148;
fs_char_portrait_y = 80;
fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "custom";
fs_char_attack_index = 49;
fs_charge_mult = 1;
fs_portrait_updated = false;

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_hurt_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

normal_height = char_height;
char_height = 44;
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .175;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

//including basecast ranges for future reference

// Ground movement
walk_speed              = 3;		            // 3    -  4.5
walk_accel              = 0.2;		            // 0.2  -  0.5
walk_turn_time          = 6;		            // 6
initial_dash_time       = 8;		            // 8    -  16       zetterburn's is 14
initial_dash_speed      = 7;		            // 4    -  9
dash_speed              = 6;		            // 5    -  9
dash_turn_time          = 10;		            // 8    -  20
dash_turn_accel         = 2;		            // 0.1  -  2
dash_stop_time          = 4;		            // 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.35;		            // 0.25 -  0.5
ground_friction         = 0.4;		            // 0.3  -  1
moonwalk_accel          = 1.4;		            // 1.2  -  1.4

// Air movement
leave_ground_max        = 4;		            // 4    -  8
max_jump_hsp            = 5;		            // 4    -  8
air_max_speed           = 5;  		            // 3    -  7
jump_change             = 3;		            // 3
air_accel               = 0.4;		            // 0.2  -  0.4
prat_fall_accel         = 0.85;		            // 0.25 -  1.5
air_friction            = 0.04;		            // 0.02 -  0.07
max_fall                = 8;		            // 6    -  11
fast_fall               = 12;		            // 11   -  16
gravity_speed           = 0.5;		            // 0.3  -  0.6
hitstun_grav            = 0.5;		            // 0.45 -  0.53
knockback_adj           = 1.2;                  // this was missing for most of development. oops!

// Jumps
jump_start_time         = 5;		            // 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed              = 10;		            // 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 6;		            // 4    -  7.4
djump_speed             = -1;		            // 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = -1.75;		            // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_start_time    = 4;		            //                  the amount of time that   djump_accel   is applied for
djump_accel_end_time    = 15;		            //                  the amount of time that   djump_accel   is applied for
max_djumps              = 1;		            // 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp            = 7;		            // 4    -  7
walljump_vsp            = 10;		            // 7    -  10
land_time               = 4;		            // 4    -  6
prat_land_time          = 16;		            // 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction           = 0.05;		            // 0    -  0.15
wave_land_time          = 8;		            // 6    -  12
wave_land_adj           = 1.2;		            // 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 9;		            // 7    -  11
roll_backward_max       = roll_forward_max;		// 7    -  11       always the same as forward
air_dodge_speed         = 7.5;		            // 7.5  -  8
techroll_speed          = 10;		            // 8    -  11

//general anim speeds
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .175;
dash_anim_speed = .22;
pratfall_anim_speed = .25;

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//jump animation frames
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_time = 20;
wall_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 2;
techroll_recovery_frames = 2;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = roll_forward_startup_frames;
roll_back_active_frames = roll_forward_active_frames;
roll_back_recovery_frames = roll_forward_recovery_frames;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

set_victory_theme(sound_get("mus_win_sans"));

wsleep_compat_custom_anim = false; //if true, skip sleep_id setting the sleep sprite and handle it on your character.
//allows for fancier and more flexible anims at the cost of some more hands-on setup.
//it's basically just a tag for "hey im going to handle this in my own animation.gml", it's up to you how to code the anim itself.
//this will also skip colour overlay, please add it back in yourself!
wsleep_compat_spr = sprite_get("sleep"); //custom sprite for sleeping on the cold hard ground
wsleep_compat_animspd = 0.075; //anim speed for sleeping on the cold hard ground
wsleep_compat_air_spr = sprite_get("pratfall"); //sprite to use when put to sleep in the air. don't feel obligated to make a custom one!
wsleep_compat_air_animspd = 0; //anim speed for sleeping in the air
//air anim can just be spinhurt or bighurt or whatever suits it, a custom air sleep anim is above and beyond. but you can!

hfx_smallboned = hit_fx_create(sprite_get("hfx_smallboned"), 24);
hfx_bigboned = hit_fx_create(sprite_get("hfx_bigboned"), 36);

hfx_smallboned_blue = hit_fx_create(sprite_get("hfx_smallboned_blue"), 24);

hfx_karma = hit_fx_create(sprite_get("hfx_karma"), 32);
hfx_karma_big = hit_fx_create(sprite_get("hfx_karma_big"), 32);
uspecial_vfx = hit_fx_create(sprite_get("uspecial_vfx"), 21);