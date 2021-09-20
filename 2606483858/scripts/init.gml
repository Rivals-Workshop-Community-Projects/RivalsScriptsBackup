hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

// Physical size
char_height         = 56;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1;		// 0.9  -  1.2
// Ground movement
walk_speed          = 3.28;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 14;		// 8    -  16
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 6.5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 5.2;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
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
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
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

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
//a
voice = false;
sick_timer = 0;
sick_fx = hit_fx_create(sprite_get("sick"), 25);
sick_existance = noone;
//gf
hotbabe = noone;
killarticles = false;

//NSpecial Note
note_cont = 0;
note_counting = 0;

//DSpecial Stuff
babe_counting = false;
babe_cont = 0;


//FSpecial Mic
mic_counting = false;
mic_cont = 0;
mic_grab = false;
mic_grab_pull = false;
mic_timer = 0;
mic_pos = noone;

//USpecial Arrow stuff
arrow = noone;
arrow_myself = 0;
arrow_hitbox_num = 0;
arrow_off = false;
arrow_cooldown = 0;
stored_player = 0;
arrow_hit = 0;
arrow_hud = 0; //If you want to showcase the cooldown on the HUD
ArrowWallJump = 0;

note_1 = hit_fx_create( sprite_get( "fx_note_hit_up" ), 25 );
note_2 = hit_fx_create( sprite_get( "fx_note_hit_left" ), 25 );
note_3 = hit_fx_create( sprite_get( "fx_note_hit_down" ), 25 );


//Character Support
arena_title = "Beep Bo Bopp-er";
Hikaru_Title = "Rapstar";
miiverse_post = sprite_get("bf_miiverse");
tcoart = sprite_get("bf_tco") 
toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo2 = 6;
steve_death_message = "Steve got blue balled";
walle_taunt_sound = sound_get("bf_walle")
battle_text = "* It's about to get funky";
sorry_art = sprite_get("sorryart_bf");
childsupport = 1;
boxing_title = "Beep Bo Bopp-er";
has_fail = true;
fail_text = "Sadly for you, this wasn't Vs. Stickmin 2";

//Daroach support
daroach_portrait = sprite_get("daroach_portrait");
daroach_portrait2 = sprite_get("daroach_portrait");
var page = 0;

//Page 0
daroach_speaker[page] = 0;
daroach_text[page] = "Another uninvited guest?";
page++;

//Page 1
daroach_speaker[page] = 1;
daroach_text[page] = "Beep Bo Bopp";
page++;

//Page 2
daroach_speaker[page] = 0;
daroach_text[page] = "What?";
page++;

//Page 3
daroach_speaker[page] = 1;
daroach_text[page] = "Beep Bo Bopp";
page++;

//Page 4
daroach_speaker[page] = 0;
daroach_text[page] = "How dare you!";
page++;

//Page 5
daroach_speaker[page] = 1;
daroach_text[page] = "Beep Bo Bopp!";
page++;

//Page 6
daroach_speaker[page] = 0;
daroach_text[page] = "Bring it on you uncultured swine!";
page++;

//Dracula support
dracula_portrait = sprite_get("drac_portrait");
dracula_portrait2 = sprite_get("drac_portrait");
var page = 0;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "Beep";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = "Whom are you?";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "Beep Bo.";
page++;

//Page 3
dracula_speaker[page] = 0;
dracula_text[page] = "I asked for your real name!";
page++;

//Page 4
dracula_speaker[page] = 1;
dracula_text[page] = "Beep Boop";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "[shake] So that's really your true name? A name suited for a foolish mortal indeed. Have at you!";
page++;
