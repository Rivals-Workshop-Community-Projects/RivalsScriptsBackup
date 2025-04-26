hurtbox_spr = sprite_get("hurtbox");
sprite_change_offset( "hurtbox", 60, 98);
crouchbox_spr = sprite_get("crouchhurt");
sprite_change_offset( "crouchhurt", 60, 98);
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 50;
idle_anim_speed = .5;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .3;
pratfall_anim_speed = .25;
doublejump_anim_speed = 0.1;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 6.25;
dash_speed = 5.25;
dash_turn_time = 10;
dash_turn_accel = 1.75;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .06;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .45;
hitstun_grav = .45;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 12;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .03; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 4;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme(sound_get("villager win"));
set_victory_bg(sprite_get("victorybg"));
alt = get_player_color(player);
kewtmode = 0;
if(alt == 1){
    
}else if(alt >= 15 && alt <= 19){ //kewts
    kewtmode = 2;sol = true;
}

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

Villager = true;
IsKewtian = true;is_KOB = true;sol = false;silky_icon = sprite_get("icon_gip");
passivesoftarmor = 0;size_mult = 1;
big = false;mega = false;mini = false;normalsize = true;
damagebuff = 1;
canonpress = 0;canon = false;op = false;
supercanon = false;hypercanon = false;
passive_timer = 0;BossMode = false;
hyperarmor = false;hyperarmorhit = false;
attacking = false;
outline_timer = 0;outline_rev = false;
bells = 0;bellspawntimer = 0;
jump = 0;
crouching = false;
Pocket_Hitbox = noone;Pocketed_Projectile = noone;pocket_projectile = false;pocket_article = false;
pocket_projectile_sprite = asset_get("empty_sprite");pocket_projectile_sprite_imageindex = 0;
pocket_projectile_hud_sprite_original = sprite_get("nspecial_pocket_hud_icons");pocket_hud_slot = sprite_get("nspecial_pocket_hud");
pocket_projectile_hud_sprite = sprite_get("nspecial_pocket_hud_icons");pocket_projectile_hud_sprite_imageindex = 0;
pocket_projectile_hud_sprite_basic = sprite_get("nspecial_pocket_hud_icons_basic");pocket_projectile_hud_sprite_basic_imageindex = 0;
pocket_hsp = 0;pocket_vsp = 0;pocket_transcendent = 0;
pocket_grounds = 0;pocket_walls = 0;pocket_buff = false;pocket_release = 0;pocket_handle_state = false;
Lloid_Rocket = noone;
fspec_spawned = false;
Lloid_Rocket_Ride = false;
tree_chopsfx = sound_get("dspecial_tree_land");tree_fallsfx = sound_get("dspecial_tree_land");tree_landsfx = sound_get("dspecial_tree_land");
balloon1 = noone;balloon2 = noone;
uspec_fuel = 300;uspec_landed = true;uspec_landed = true;
uspec_speed = 1;uspec_speed_multiplier = 1;uspec_fall = 0;uspec_fuel_hud = sprite_get("uspecial_fuel");
sapling = noone;
tree = noone;
VillagerTreeCut = 0;
dspec_walk = 0;
villager_bury = false;villager_bury_id = 0;villager_bury_timer = 0;
villager_bury_hitpause = false;villager_bury_cooldown = 0;villager_bury_sprite = sprite_get("bury");
voice = noone;
sfx = noone;
lookuptime = 0;
upb = false;
tauntcancel = false;
loaded = false;
trainingmode = false;
playtest = (object_index == oTestPlayer);

KoBWeaknesses = 
{
    Khraosis: true,
    Miracle: false
}

AT_GRAB = AT_EXTRA_1;
grabbedtarget = noone;
grabbedtarget2 = noone;
grabbedobject = false;
grabbedarticle = false;
grabbedposX = 0;
grabbedposY = 0;
grabtimer = 0;
grabbedtargetsprite = asset_get("empty_sprite");
grabbedtargetsprite_imageindex = 0;

runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = false;

//runeC = true;runesUpdated = true;

if(string_lower(get_player_name(player)) == "felixblobdev" || string_lower(get_player_name(player)) == "felix" || string_lower(get_player_name(player)) == "don"
/*|| string_lower(get_player_name(player)) == "sky" || string_lower(get_player_name(player)) == "skycrafter1234"
|| string_count("skycrafter", string_lower(get_player_name(player))) > 0 || string_count("scrafter", string_lower(get_player_name(player))) > 0 || string_count("skycra", string_lower(get_player_name(player))) > 0*/){
	kewtmode = 1;
}

intro = (state == PS_SPAWN);
introspeed = 0.2;

fx_bowlingball_fall = hit_fx_create(sprite_get("bowlingball_fall"), 15);
fx_fireworks_blue = hit_fx_create(sprite_get("ustrong_fireworks_explosion_blue"), 15);
fx_fireworks_purple = hit_fx_create(sprite_get("ustrong_fireworks_explosion_purple"), 15);
fx_fireworks_yellow = hit_fx_create(sprite_get("ustrong_fireworks_explosion_yellow"), 15);
fx_fireworks_yellow_slow = hit_fx_create(sprite_get("ustrong_fireworks_explosion_yellow"), 20);
fx_fireworks_shot = hit_fx_create(sprite_get("ustrong_fireworks_shot"), 10);
fx_slingshot_projectile_trail = hit_fx_create(sprite_get("slingshot_projectile_trail"), 5);
fx_leaves = hit_fx_create(sprite_get("dspecial_tree_leaves"), 60);
fx_tree_fall = hit_fx_create(sprite_get("dspecial_tree_fall"), 15);
fx_bury = hit_fx_create(sprite_get("bury_effect"), 30);
fx_dust = hit_fx_create(sprite_get("dust_effect"), 20);
fx_dust_sharp = hit_fx_create(sprite_get("dust_sharp"), 20);
fx_dust_sharp_fast = hit_fx_create(sprite_get("dust_sharp"), 10);
fx_dust_sharp_big = hit_fx_create(sprite_get("dust_sharp_big"), 20);
fx_explosion = hit_fx_create(sprite_get("explosion"), 30);
fx_lightbeams_small = hit_fx_create(sprite_get("fx_lightbeams_small"), 12);
fx_lightbeams_small_fast = hit_fx_create(sprite_get("fx_lightbeams_small"), 6);
fx_star_tiny = hit_fx_create(sprite_get("star_tiny"), 20);
fx_groundcracks = hit_fx_create(sprite_get("groundcracks"), 20);
fx_groundcracks2 = hit_fx_create(sprite_get("groundcracks2"), 20);
fx_sharphit = hit_fx_create(sprite_get("fx_sharphit"), 15);
fx_sharphit_big = hit_fx_create(sprite_get("fx_sharphitbig"), 15);
fx_sharphit_big2 = hit_fx_create(sprite_get("fx_sharphitbig2"), 15);

toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo2 = sprite_get("toonlink_photo_TL");
toad_mushrooms_ignore_moves = true;
miiverse_post = sprite_get("miiverse_post");
gfzsignspr = sprite_get("greenflowerzone");
gfzsignsfx = sound_get("fspecial_spawn");
arena_title = "Mayor of Smashville";
boxing_title = "Mayor of Smashville";
//guiltySprite = sprite_get("trialgrounds");
//resort_portrait = sprite_get("lastresort");
//pkmn_stadium_front_img = sprite_get("pkmnstadium");
//pkmn_stadium_back_img = sprite_get("pkmnstadium_back");
pkmn_stadium_name_override = "Villager";
wily_robotmaster_img = sprite_get("Wily_Castle");
ncode1 = "Mayor of a small town";
ncode2 = "Seemingly has endless pockets";
ncode3 = "Whatever you do, don't turn your back to him";
wiimote_compat_sprite = sprite_get("wiimote");if(kewtmode>=1)wiimote_compat_sprite = sprite_get("wiimote_kewt");

TCG_Kirby_Copy = 7;

muno_event_type = 0;
user_event(14);