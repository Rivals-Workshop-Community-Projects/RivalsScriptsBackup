hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 62;
char_height_plus = 5;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3.15;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6.5;
dash_speed = 6;
dash_turn_time = 14;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .55;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 10;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 4;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 6;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 3;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 5;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 6;
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

hue = 0;

dair_cooldown = 1 //this is for dair icon in draw hud
dair_cooldown_ground = false; //this is so u cant have multiple dairs in the air
Team_Member = 1;
Team_Cooldown = 0;
Specs_Cooldown = 20;
Headset_Cooldown = 40;
Bobblehat_Cooldown = 60;

InkTank = 100;
InkTankInc = .1;
MaxInkTank = 100;
MinInkTank = 0;
PrevInkTank = InkTank;

//sound stuff
outofink = false
outofbomb = false

shown_meter_var = 100;
shown_old_meter_var = shown_meter_var;
InkBombMax = 30;
has_bounced = false;
dtilt_max_speed = 10
PickledCritz = 0;
nspecial_angle = 0;

pantsed_status_owner = noone;
pantsed_status_timer = 0;
pantsed_status_time_set = 60;


crouching = false;
bomb_land = false;
bomb_out = false;
bomb_interacted = false;

splatbomb = noone;
big_splatter = noone;
splatter = noone;
splatsnipe = noone;
InkstrikeBomb = noone;
uspecial_drop = noone;

specs = noone;
headphones = noone;
bobblehat = noone;

Pantsed_status_owner = noone;
Pantsed_status_timer = 0;
Pantsed_status_time_set = 180;
pantsed_status_cooldown = 0


grabbedid = noone;
galaxy_timer = 0;

alt_cur = get_player_color(player);

uspecial_effect = hit_fx_create( sprite_get( "uspecial_effect" ),10);
Inkstrike = hit_fx_create( sprite_get( "Inkstrike" ),30);
super_Inkstrike_ground = hit_fx_create( sprite_get( "super_Inkstrike_ground" ),40);
Inkstrike_ground = hit_fx_create( sprite_get( "Inkstrike_ground" ),30);
Inksplode = hit_fx_create( sprite_get( "MegaSplat" ),25);
Inksploosh = hit_fx_create( sprite_get( "ground_splash" ),25);
Inksnipe = hit_fx_create( sprite_get( "SniperSplat" ),25);
SniperShot = hit_fx_create( sprite_get( "SniperShot" ),15);
Inkdeath = hit_fx_create( sprite_get( "Inkdeath" ),30);
uspecial_proj = hit_fx_create( sprite_get( "uspecial_proj" ),30);
Inksplat = hit_fx_create( sprite_get( "Inksplat" ),25);
Charge_Blink = hit_fx_create( sprite_get( "Charge_Blink" ),25);
pickledsplat = hit_fx_create( sprite_get( "pickledsplat" ),25);
pantsed = hit_fx_create( sprite_get( "Pansed" ),1);

smoke = hit_fx_create( sprite_get( "smoke" ),25);


Target = hit_fx_create( sprite_get( "target" ),999);


//projectile multihit
HG_PROJECTILE_MULTIHIT = 58;            //hitbox grid index, the number of times the projectile should hit
HG_PROJECTILE_HITRATE = 59;             //the delay time between multihits
HG_MULTIHIT_DAMAGE = 60;                //overwrites damage for multihits
HG_MULTIHIT_VFX = 61;                   //overwrites HG_VISUAL_EFFECT for the multihits, putting -1 will not overwrite it
HG_MULTIHIT_SFX = 62;                   //overwrites HG_HIT_SFX for multihits, putting -1 will not overwrite it

//voice



if "__syncvar" not in self __syncvar = split_synced_var(1,1,1);

if (__syncvar[0] == 1) {
	voice_enabled = true;
}else{
	voice_enabled = false;
}


//funny sounds

    hit[0] = "VoiceMdamage03";
    hit[1] = "VoiceMdamage05";
    hit[2] = "VoiceMdamage06";
    hit[3] = "VoiceMdamage07";
    hit[4] = "VoiceMDead00";
    hit[5] = "VoiceMDead01";
    hit[6] = "VoiceMDead02";
    hit[7] = "VoiceMDead03";


    die[0] = "VoiceMSoul01";
    die[1] = "VoiceMSoul02";
    die[2] = "VoiceMSoul03";
    
    happy[0] = "VoiceMJet00";
    happy[1] = "VoiceMJet01";
    happy[2] = "VoiceMJet02";
    happy[3] = "VoiceMJet03";
    
    strike[0] = "VoiceMDefeat01";
    strike[1] = "VoiceMDefeat02";
    strike[2] = "VoiceMDefeat03";
    strike[3] = "VoiceMDefeat04";
    strike[4] = "VoiceMDefeat06";
    strike[5] = "VoiceMDefeat08";
    strike[6] = "VoiceMDefeat09";
    strike[7] = "VoiceMDefeat11";
    strike[7] = "VoiceMDefeat13";
    strike[8] = "VoiceMDefeat14";
    
    chance[0] = "VoiceMChance00";
    chance[1] = "VoiceMChance01";
    chance[2] = "VoiceMChance02";
    chance[4] = "VoiceMChance03";









// ============================================================================
// Compatibility shit everyone bugs me to implement


//assist
assistAttack = AT_DSPECIAL; //The attack to use as the assist
assistOffsetX = 0; //The horizontal distance they spawn from the player
assistOffsetY = 0; //The vertical distance they spawn from the player
assistGroundOnly = true; //Whether or not they are forced to the ground
assistFloat = false; //Whether or not they stay in place vertically



// As usual, #defines all go at the bottom of the script.
#define player_tag_palettes
///(user_event, ?arg)
__ssnk_tagpal_scr = script_get_name(1);
__ssnk_tagpal_arg = argument_count > 1 ? argument[1] : 0;
user_event(argument[0]);
return "__ssnk_tagpal_res" in self ? __ssnk_tagpal_res : 0;

// https://github.com/SupersonicNK/roa-workshop-templates/tree/master/generate-synced-var 
#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var player = (room == 113) ? 0 : self.player;
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
print(chunk_arr);
return chunk_arr;
