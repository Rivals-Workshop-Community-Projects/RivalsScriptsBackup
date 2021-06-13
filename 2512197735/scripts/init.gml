/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The ATTACKS are still in their overpowered form in this
 * template, so be sure to make the ones for your character weaker.
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

// Physical size
char_height         = 52;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = .95;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.30;		// 3    -  4.5
walk_accel          = 0.3;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 10;		// 8    -  16
initial_dash_speed  = 5.2;		// 4    -  9
dash_speed          = 5.6;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6
dash_stop_percent   = 0.36;		// 0.25 -  0.5
ground_friction     = 0.6;		// 0.3  -  1
moonwalk_accel      = 1.4;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 7;		// 4    -  8
air_max_speed       = 4.3;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.4;		// 0.2  -  0.4
prat_fall_accel     = 0.83;		// 0.25 -  1.5
air_friction        = 0.03;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 15;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10.5;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6.5;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 8;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 8;        // 9    -  11
roll_backward_max   = 8;        // 9    -  11       always the same as forward
wave_land_time      = 7;		// 6    -  12
wave_land_adj       = 1.4;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.3;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_example = sound_get("example"); // sounds/example.ogg

// VFX
vfx_example = hit_fx_create(spr_example, 54);

// Variables
rainbow_color = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.13;
crouch_anim_speed   = 0.2;
walk_anim_speed     = 0.175;
dash_anim_speed     = 0.25;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames = 3;
dodge_active_frames = 3;
dodge_recovery_frames = 4;

// Tech
tech_active_frames      = 1;
tech_recovery_frames    = 2;

// Tech roll
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 4;
techroll_speed = 10;

// Airdodge
air_dodge_startup_frames = 1;
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

// Roll
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 4;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

// Crouch
crouch_startup_frames = 4;
crouch_active_frames = 1;
crouch_recovery_frames = 3;

bash_afterimage = hit_fx_create( sprite_get( "fspecial_afterimage" ), 15);

bashair_afterimage = hit_fx_create( sprite_get( "fspecial_jet_afterimage" ), 15);

jet_afterimage = hit_fx_create( sprite_get( "fspecial_jet_afterimage" ), 15);

dspecial_afterimage = hit_fx_create( sprite_get( "dspecial_afterimage" ), 8);

waluigi_afterimage = hit_fx_create( sprite_get( "waluigi_projectile_trail" ), 6);

/*

Muno's Words of Wisdom: Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation. Dan Moment

*/



// Hurtbox sprites
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Movement SFX
land_sound = sound_get("land");
landing_lag_sound = sound_get("land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("jump");
djump_sound = sound_get("djump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//MOTION BLUR CODE
blur = array_create(20);

//footstep
footstep = 0;

introTimer = -2;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;
war_has_played_sound = false;
//voice clips
sound_played = false;
voice = false; // so wario get's his amazing voice clips
//Mix
mix_clip[0] = sound_get("voice_grunt");
mix_clip[1] = sound_get("voice_grunt2");
mix_clip[2] = sound_get("voice_grunt3");
mix_clip[3] = sound_get("voice_hah1");
mix_clip[4] = sound_get("voice_hah2");
mix_clip[5] = sound_get("voice_hah3");
mix_clip[6] = sound_get("voice_tduh1");
mix_clip[7] = sound_get("voice_tduh2");
mix_voice_sfx = 0;
window_to_play_sound_on = 1;
mix_sound = 0;
//Tduh
Tduh_clip[0] = sound_get("voice_tduh1");
Tduh_clip[1] = sound_get("voice_tduh2");
Tduh_voice_sfx = 0;
//grab
wario_grab = false;
grab_dir = 0;
grab_timer = 0;
war_grab_target = noone; //the grabbed target
war_grabbed_article = false; // if you have grabbed an article
//Sound should play
war_sfx_should_play = 0;
//crawl
is_crawling = false;
//Taunt3
AT_TAUNT_3 = 42;

arena_title = "The Microgame Master";
Hikaru_Title = "Bad Mario";
feri_costume = sprite_get("feri_costume_wario");
gfzsignspr = sprite_get("sign")
miiverse_post = sprite_get("wario_miiverse");
tcoart = sprite_get("tco") 
steve_death_message = "Steve was robbed"
walle_taunt_sound = sound_get("wario_walle")
battle_text = "* The smell of garlic wisks in the air";
sorry_art = sprite_get("sorryart_w");
resort_portrait = sprite_get("portrait_wario")
childsupport = 1;
boxing_title = "Gold-Hungry Fiend";
has_fail = true;
fail_text = "Something about days being rotten";
pkmn_stadium_front_img = sprite_get("pokemonstadium1");
pkmn_stadium_back_img = sprite_get("pokemonstadium2");

fspecialblur = hit_fx_create( sprite_get( "fspecial_blur" ), 20 );
//Dspecial
war_sound_played = false;
//Rainbow Skin
hue_offset=0;
hue_speed=1; //change this to change the speed of the hueshift

// Muno template: (don't change)

user_event(14); // General init

//Daroach support
daroach_portrait = sprite_get("daroach_portrait");
daroach_portrait2 = sprite_get("daroach_portrait2");
var page = 0;

//Page 0
daroach_speaker[page] = 0;
daroach_text[page] = "Hmm? Did our pipes get clogged again, who let a plumber aboard our ship?";
page++;

//Page 1
daroach_speaker[page] = 1;
daroach_text[page] = "I'm taking your gold now, as well as everything else.";
page++;

//Page 2
daroach_speaker[page] = 0;
daroach_text[page] = "Excuse me? We haven't even stolen a pipe yet, not sure why you're even daring to attack us.";
page++;

//Page 3
daroach_speaker[page] = 2;
daroach_text[page] = "Simple really, I like gold, you have gold, I want your gold.";
page++;

//Page 4
daroach_speaker[page] = 0;
daroach_text[page] = "How dare you! Stealing from thiefs, how low of you!";
page++;

//Page 5
daroach_speaker[page] = 1;
daroach_text[page] = "Sticks and Stones may break my bones, but my punches last forever.";
page++;

//Page 6
daroach_speaker[page] = 0;
daroach_text[page] = "Then its only a matter of putting that to the test is it not? Let me show how a real thief fights!";
page++;

//Page 7
daroach_speaker[page] = 1;
daroach_text[page] = "I'ma number one, bring it on you oversized Sewer Rat!";
page++;


//Dracula support
dracula_portrait = sprite_get("drac_portrait");
dracula_portrait2 = sprite_get("drac_portrait2");
var page = 0;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "Oh joy, an oversized Minicula";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = "Did I hire a plumber today?";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "Your castle is mine.";
page++;

//Page 3
dracula_speaker[page] = 0;
dracula_text[page] = "Excuse me?";
page++;

//Page 4
dracula_speaker[page] = 2;
dracula_text[page] = "Guess someone has bad hearing over there! Anyways like I said, your castle is mine. I bet with a castle this huge, Mario will look like double the chump he already is!";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "[shake] You've got nerve pestering plumber, [glass] I'll wipe that smug look off your face in no time flat.";
page++;



//Fs
fs_char_portrait_y = 114;
fs_char_chosen_final_smash = "custom";
waluigi_target = noone;
wah_hb = noone;
waluigi_exists = false;
fs_timer = 0;
waluigi_x = x + 40;
waluigi_y = y - 40;
waluigi_explode = false;