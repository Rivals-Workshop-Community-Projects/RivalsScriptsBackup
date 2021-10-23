small_sprites = true;

gem_ins = noone;
gem_cancel = 0;

grabbedid = noone;

spr_fadc = sprite_get("hfx_dashcancel");
spr_fadc_back = sprite_get("hfx_dashcancel2");
spr_armor = sprite_get("hfx_armorshine");
spr_fsvfx = sprite_get("sfx_olymcharge");
spr_gembreak =  sprite_get("vfx_gembreak");

fadc_timer = 0;
fadc_back_timer = 0;
armor_timer = 0;
fsvfx_timer = 0;
g7fx_timer = 0;
gembreak_timer = 0;


fadc_dur = 20; //this value is the duration of the VFX
fadc_back_dur = 20; //this value is the duration of the VFX
armor_dur = 37; //this value is the duration of the VFX
fsvfx_dur = 35; //this value is the duration of the VFX
gembreak_dur = 10;

gem_infield_cancelling = 0;

fadc_frames = 6; //this is the number of frames in the anim, minus one
fadc_back_frames = 6; //this is the number of frames in the anim, minus one
armor_frames = 12; //this is the number of frames in the anim, minus one
fsvfx_frames = 4; //this is the number of frames in the anim, minus one
gembreak_frames = 6;

stun_sprite = sprite_get("hfx_olym_stunsparkle");
stun_time = 55;

gem_spawn_stun_cooldown = 35;
gem_spawn_dash_cooldown = 30;

uspec_is_command_grab = true;

specialskin = 0;

//Kirby Ability
kirbyability = 16;
enemykirby = noone;
swallowed = false;

//Feri Support
feri_costume = sprite_get("feri_costume_olym");

hurtbox_spr = sprite_get("olym_hurtbox");
crouchbox_spr = sprite_get("olym_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 58;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .3;
pratfall_anim_speed = .1;

walk_speed = 2.25;
walk_accel = 0.3;
walk_turn_time = 9;
initial_dash_time = 8;
initial_dash_speed = 6.5;
dash_speed = 5.5;
dash_turn_time = 8.5;
dash_turn_accel = 1;
dash_stop_time = 7.5;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.0;

jump_start_time = 5;
jump_speed = 12.45;
short_hop_speed = 7;
djump_speed = 10.75;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 38; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 20;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .51;
knockback_adj = 0.98; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 11;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .07; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 6;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 2;

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
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("olym_wavedash");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Double Up Special Code
used_uspecial = false;
used_djump = false;

//FSpecial vars
olympia_fspecial_charge_time = 0;
olympia_fspecial_can_ledge_cancel = 0;

//Special Effects
olym_spark = hit_fx_create( sprite_get( "hfx_olym_spark" ), 30 );
olym_hit = hit_fx_create ( sprite_get("hfx_olym_hitspark"), 24);

//Holiday Skin stuff
// wearing_hat = get_player_color(player) == 7;


//Intro Code
introTimer = -1;
introTimer2 = 0;

//Trummel Codec
trummelcodecneeded = false;
trummelcodec_id = noone;

//Otto Bobblehead
otto_bobblehead_sprite = sprite_get("olym_bobblehead_sprite");

// TCO Art
tcoart = sprite_get ("step2");

//Hikaru Support
Hikaru_Title = "Gemstone Battle-Ready";

//Miiverse Post Support
miiverse_post = sprite_get("olym_miiverse1");
sprite_change_offset("olym_miiverse1", 60, 30);


//Dracula Support
    dracula_portrait = sprite_get("olym_draculaportrait");
    dracula_portrait2 = asset_get("empty_sprite") ; 
    var page = 0;

    //Page 0
    dracula_speaker[page] = 1;
    dracula_text[page] = "So this is where the haunting aura was coming from. I feel mine burning in this darkness. . .";
    page++;

    //Page 1
    dracula_speaker[page] = 0;
    dracula_text[page] = "A warrior misguided by mortals and light. A poor, unfortunate soul.";
    page++;
    
    //Page 2
    dracula_speaker[page] = 1;
    dracula_text[page] = "[shake] You trying to pick a fight with me, old geezer!?";
    page++;
    
    //Page 3
    dracula_speaker[page] = 0;
    dracula_text[page] = "Your spirit gleams even here, but it is nothing compared to the power I possess. You have one last chance to--";
    page++;
    
    //Page 4
    dracula_speaker[page] = 1;
    dracula_text[page] = "Use your fists instead of your words, crusty old fart! Fight me!";
    page++;

    //Page 5
    dracula_speaker[page] = 0;
    dracula_text[page] = ". . .";
    page++;
    
    //Page 5
    dracula_speaker[page] = 1;
    dracula_text[page] = "Did I strike a nerve, or are you scared you're one punch away from turning into dust?";
    page++;

    //Page 6
    dracula_speaker[page] = 0;
    dracula_text[page] = "Very well. . .[glass]This room will be your grave. . .";
    page++;
    
//Dracula G7 Version
    // if get_palette_color (15){
    //     dracula_portrait = sprite_get("olym_draculag7a");
    //     dracula_portrait2 = sprite_get("olym_draculag7b") ; 
    //     var page = 0;
        
    //      //Page 0
    //      dracula_speaker[page] = 1;
    //     dracula_text[page] = "Okay so did it work? fuck";
    //     page++;
    // }
    

//==============================================================================
//                          Abyss Rune Variables
//==============================================================================
runesEnabled = get_match_setting(SET_RUNES);
var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
	variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}
runesUpdated = runesEnabled;

training = get_training_cpu_action() != CPU_FIGHT;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
//abyssMods = array_create(16,[-1,"Not Implemented."]);

// One Slot Runes
//abyssMods[@ runes.A] = [3, "Dash Cancel tilts, JAB2, and JAB3."];
AT_DASHCANCEL = AT_UTHROW;
AG_WINDOW_RUNE_DASHCANCELLABLE = 65;
rune_dc_input_timer = 0;
rune_dc_input = 0;
rune_dc_input_stage = 0;
rune_dc_input_dir = 0;
//abyssMods[@ runes.B] = [3, "DSPECIAL has super armor throughout the entire move."];
//abyssMods[@ runes.C] = [1, "NSPECIAL applies Brilliant Diamond stun."];
//abyssMods[@ runes.D] = [2, "Downward Angles stun once in the air to combo from air to ground."];
//abyssMods[@ runes.E] = [2, "FSPECIAL has increased KB and a more horizontal angle."];
//abyssMods[@ runes.F] = [1, "Movement Speed increased...?"];
base_moonwalk_accel = moonwalk_accel;
rune_moonwalk_accel = 2.0;
base_wave_land_adj = wave_land_adj;
rune_wave_land_adj = 1.4;
base_air_max_speed = air_max_speed;
rune_air_max_speed = 7;
//Two Slot Runes
//abyssMods[@ runes.H] = [2, "Hits within Brilliant Diamond's field have a short stun."];
runeH_stunTime = 10;
//abyssMods[@ runes.J] = [3, "Dash Cancel strongs and specials."];
//abyssMods[@ runes.I] = [2, "Kunzite Upper can cancel into aerials on hit."];
rune_uppers_max = 2;
rune_uppers = 0;
//abyssMods[@ runes.G] = [2, "Aerials can cancel into OTHER aerials and into specials or jump on hit."];
rune_fair_free = true;
rune_dair_free = true;
rune_uair_free = true;
rune_bair_free = true;
rune_nair_free = true;
rune_bounce_speed = -4;

//abyssMods[@ runes.K] = [3, "TAUNT is a revenge counter."];
rune_revengebuff = 0;
rune_hit_em = false;
HG_CONSUMES_REVENGE_RUNE = 99;
//Three Slot Runes
//abyssMods[@ runes.L] = [3, "Press Attack + Special to Superdash."];

//abyssMods[@ runes.M] = [0, "Brilliant Diamond floats towards the last player hit."];
//abyssMods[@ runes.N] = [0, "Brilliant Diamond causes the opponent to take less knockback."];
//abyssMods[@ runes.O] = [3, "Gain powerful command inputs."];
playtest = (object_index == oTestPlayer);

AG_WINDOW_CMD_CANCELLABLE = 99;
HG_HITBOX_ENABLE_COMMANDINPUT = 70;


