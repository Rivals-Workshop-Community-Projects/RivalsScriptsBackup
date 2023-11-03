hurtbox_spr = sprite_get("hurtbox_creep");
crouchbox_spr = sprite_get("crouchbox_creep");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56;
idle_anim_speed = .15;
crouch_anim_speed = .2;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = 0.1;

walk_speed = 3.7;
walk_accel = 0.22;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6.5;
dash_speed = 6;
dash_turn_time = 16;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10.4;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6.5;
walljump_vsp = 12;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 13.7; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 11;
wave_land_time = 8;
wave_land_adj = 1.4; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.55; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 7.5;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 2;
air_dodge_speed = 9;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 7.5; //roll speed
roll_backward_max = 7.5;

land_sound = sound_get("stone2");
landing_lag_sound = sound_get("stone5");
waveland_sound = sound_get("grass3");
jump_sound = sound_get("sand4");
djump_sound = sound_get("grass3");
air_dodge_sound = sound_get("portal2");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

set_victory_theme(sound_get("creepervictory"));

//so many variables owie
grabbedid = noone;
enderman = 0;
upbrng = 0;
endermoving = 0;
grabvisibility = true;
djumptimer = 0;
dairtimer = 0;
dairland = 0;
skeletoncooldown = 0;
skeletonmany = 1;
killarticles = false;
skeletonhere = 0;
skeletoncooldown2 = 0;
spawneggplaced = 0;
crit_effect = hit_fx_create(sprite_get("hit"),20);
arrow_effect = hit_fx_create(sprite_get("arrowboom"),20);
explosion_effect = hit_fx_create(sprite_get("firechargeboom"),20);
snow_effect = hit_fx_create(sprite_get("snowboom"),20);
damage = get_player_damage(oPlayer);
teleparticles = 0;
teleparticles2 = 0;
teleparticles3 = 0;
skeletonrecharge = 0;
endermany = 1;
enderrecharge = 0;
enderfinished = 0;
enderdone = 0;
opponentdamage = 0;
landlagtimer = 0;
landlagtimer2 = 0;
tntout = false;
tntalive = 0;
tntreal = 0;
endertnt = 0;
tnthold = false;
grabtimer = 0;
enderman = 0;
firechargelife = 30;
mustimer = 0;
skeletonout = false;
endertnt2 = false;
tntrecharge = 0;
tntcooldown = 0;
skeleton_return = 0;
//particles
upbparticles_effect = hit_fx_create(sprite_get("upbparticles"),20);
teleport_effect = hit_fx_create(sprite_get("teleparticles"),40);
teleport_effect2 = hit_fx_create(sprite_get("teleparticles2"),40);
teleport2_effect = hit_fx_create(sprite_get("rollparticles"),20);
smoke_effect = hit_fx_create(sprite_get("smoke"),30);
smoke2_effect = hit_fx_create(sprite_get("smoke2"),30);

//tdude was here!!!!!!!!!
refreshed_djump = false;

//intro
introTimer = -4;
introTimer2 = 0;
introTimer3 = 0;

//other
kirbyability = 16;
swallowed = 0;
Hikaru_Title = "Vengeful Explosive";
tcoart = sprite_get("creepertco");
otto_bobblehead_sprite = sprite_get("creeperbobble");

trummelcodecneeded = false;
trummelcodec_id = noone;

//plat
respawnPlatBehindSprite = sprite_get("plat_behind");
respawnPlatFrontSprite = sprite_get("plat_front");
respawnPlatAnimStripLength = 1;
respawnPlatAnimTimer = 0;
respawnPlatAnimSpeed = 0.25;

//special alt stuff (thanks muno love you bro)

useskins = false;

//Ground
spr_tunes = sprite_get("specialtunes");
spr_idle = sprite_get("idle");
spr_crouch = sprite_get("crouch");
spr_walk = sprite_get("walk");
spr_walkturn = sprite_get("walkturn");
spr_dash = sprite_get("dash");
spr_dashstart = sprite_get("dashstart");
spr_dashstop = sprite_get("dashstop");
spr_dashturn = sprite_get("dashturn");

//Air
spr_jumpstart = sprite_get("jumpstart");
spr_jump = sprite_get("jump");
spr_doublejump = sprite_get("doublejump");
spr_walljump = sprite_get("walljump");
spr_pratfall = sprite_get("pratfall");
spr_land = sprite_get("land");
spr_landinglag = sprite_get("landinglag");

//Dodge
spr_parry = sprite_get("parry");
spr_roll_forward = sprite_get("roll_forward");
spr_roll_backward = sprite_get("roll_backward");
spr_airdodge = sprite_get("airdodge");
spr_airdodge_waveland = sprite_get("waveland");
spr_tech = sprite_get("tech");

//Hurt
spr_hurt = sprite_get("hurt");
spr_bighurt = sprite_get("bighurt");
spr_hurtground = sprite_get("hurtground");
spr_uphurt = sprite_get("uphurt");
spr_downhurt = sprite_get("downhurt");
spr_bouncehurt = sprite_get("bouncehurt");
spr_spinhurt = sprite_get("spinhurt");

//Attack
spr_jab = sprite_get("jab");
spr_dattack = sprite_get("dattack");
spr_ftilt = sprite_get("ftilt");
spr_dtilt = sprite_get("dtilt");
spr_utilt = sprite_get("utilt");
spr_nair = sprite_get("nair");
spr_fair = sprite_get("fair");
spr_bair = sprite_get("bair");
spr_uair = sprite_get("uair");
spr_dair = sprite_get("dair");
spr_fstrong = sprite_get("fstrong");
spr_ustrong = sprite_get("ustrong");
spr_dstrong = sprite_get("dstrong");
spr_nspecial = sprite_get("nspecial");
spr_fspecial = sprite_get("fspecial");
spr_uspecial = sprite_get("uspecial");
spr_dspecial = sprite_get("dspecial");
spr_taunt = sprite_get("taunt");

//Respawn
spr_plat = sprite_get("plat");

miiverse_post = sprite_get("miiverse_post");
sprite_change_offset("miiverse_post", 60, 30);
miiverse_post = sprite_get("miiverse_post2");
sprite_change_offset("miiverse_post2", 60, 30);
miiverse_post = sprite_get("miiverse_post3");
sprite_change_offset("miiverse_post3", 60, 30);

smoketimer = 0;
blazesmoke = hit_fx_create(sprite_get("blazesmoke"),54);

//Alts
switch(get_player_color(player)){
    case 1: //Skin Slot 2
        //Ground
        spr_tunes = sprite_get("specialtunesDJ");
        spr_idle = sprite_get("idleDJ");
        spr_intro = sprite_get("introDJ");
        spr_crouch = sprite_get("crouchDJ");
        spr_walk = sprite_get("walkDJ");
        spr_walkturn = sprite_get("walkturnDJ");
        spr_dash = sprite_get("dashDJ");
        spr_dashstart = sprite_get("dashstartDJ");
        spr_dashstop = sprite_get("dashstopDJ");
        spr_dashturn = sprite_get("dashturnDJ");

        //Air
        spr_jumpstart = sprite_get("jumpstartDJ");
        spr_jump = sprite_get("jumpDJ");
        spr_doublejump = sprite_get("doublejumpDJ");
        spr_walljump = sprite_get("walljumpDJ");
        spr_pratfall = sprite_get("pratfallDJ");
        spr_land = sprite_get("landDJ");
        spr_landinglag = sprite_get("landinglagDJ");

        //Dodge
        spr_parry = sprite_get("parryDJ");
        spr_roll_forward = sprite_get("roll_forwardDJ");
        spr_roll_backward = sprite_get("roll_backwardDJ");
        spr_airdodge = sprite_get("airdodgeDJ");
        spr_airdodge_waveland = sprite_get("wavelandDJ");
        spr_tech = sprite_get("techDJ");

        //Hurt
        spr_hurt = sprite_get("hurtDJ");
        spr_bighurt = sprite_get("bighurtDJ");
        spr_hurtground = sprite_get("hurtgroundDJ");
        spr_uphurt = sprite_get("uphurtDJ");
        spr_downhurt = sprite_get("downhurtDJ");
        spr_bouncehurt = sprite_get("bouncehurtDJ");
        spr_spinhurt = sprite_get("spinhurtDJ");

        //Attack
        spr_jab = sprite_get("jabDJ");
        spr_dattack = sprite_get("dattackDJ");
        spr_ftilt = sprite_get("ftiltDJ");
        spr_dtilt = sprite_get("dtiltDJ");
        spr_utilt = sprite_get("utiltDJ");
        spr_nair = sprite_get("nairDJ");
        spr_fair = sprite_get("fairDJ");
        spr_bair = sprite_get("bairDJ");
        spr_uair = sprite_get("uairDJ");
        spr_dair = sprite_get("dairDJ");
        spr_fstrong = sprite_get("fstrongDJ");
        spr_ustrong = sprite_get("ustrongDJ");
        spr_dstrong = sprite_get("dstrongDJ");
        spr_nspecial = sprite_get("nspecialDJ");
        spr_fspecial = sprite_get("fspecialDJ");
        spr_uspecial = sprite_get("uspecialDJ");
        spr_dspecial = sprite_get("dspecialDJ");
        spr_taunt = sprite_get("tauntDJ");
        useskins = true;
        break;
}


//hrgh

timertimertimertimer = 0;
skelevalue = 0;
runetnt = false;
tntboom = 0;
upbloop = 0;
jtimeer = 0;
djtimeer = 0;
wjtimeer = 0;
runejump = 0;
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
abyssMods[@ runes.A] = [3, "All dodges travel further."];
abyssMods[@ runes.B] = [3, "Skeleton's arrows have increased knockback."];
abyssMods[@ runes.C] = [3, "NAIR is restored to its former two-hit glory."];
abyssMods[@ runes.D] = [3, "UAIR landing lag and startup reduced."];
abyssMods[@ runes.E] = [3, "Gain an additional midair jump."];
abyssMods[@ runes.F] = [3, "USPECIAL travels further."];
abyssMods[@ runes.G] = [3, "Enderman's grab range is larger."];
abyssMods[@ runes.H] = [1, "FAIR fires five snowballs."];
abyssMods[@ runes.I] = [0, "TNT multiplies."];
abyssMods[@ runes.J] = [3, "DAIR is a spike throughout the entire attack."];
abyssMods[@ runes.K] = [3, "Enderman cooldown reduced."];
abyssMods[@ runes.L] = [0, "Create an explosion every time you jump."];
abyssMods[@ runes.M] = [2, "Enderman's launching hit now inflicts stun."];
abyssMods[@ runes.N] = [1, "Three Skeletons can be active at once."];
abyssMods[@ runes.O] = [0, "USPECIAL rains down a volley of snowballs."];
///
runeA = has_rune("A");
runeB = has_rune("B");
runeC = has_rune("C");
runeD = has_rune("D");
runeE = has_rune("E");
runeF = has_rune("F");
runeG = has_rune("G");
runeH = has_rune("H");
runeI = has_rune("I");
runeJ = has_rune("J");
runeK = has_rune("K");
runeL = has_rune("L");
runeM = has_rune("M");
runeN = has_rune("N");
runeO = has_rune("O");
