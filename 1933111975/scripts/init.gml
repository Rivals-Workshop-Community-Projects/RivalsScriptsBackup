/*

Hold taunt for about seven seconds to activate Codec Conversations! (In practice mode, hold down and press taunt instead)

Trummel the snail detective and his sidekick Alto the cloud can soak foes with rain and capitalize with paralyzing hits, all while flying through the air at breakneck pace. They have light zoning elements, powerful stage control, and a mean combo game, especially with their stun.

Enter Practice Mode for a tutorial on how the character works. Hold down while performing it to access a unique Tattle / Codec Conversation for each base cast character plus any workshop characters which support the feature. In regular matches, you must instead hold taunt for a long time to access codecs.

Mod creators, go here to add a Codec to your characters: https://pastebin.com/g31b9yPq

Also, set "usesmallsoak" (short soak VFX) or "usedefaultsoak" (tall soak VFX) to true in update.gml in order to change the soak graphic used by your character. This is automatically set based on char_height, but can be modified in cases where this automatic assignment does not look good.

Merchant Slums Stage: https://steamcommunity.com/sharedfiles/filedetails/?id=1933112569

Tip Jar: https://www.patreon.com/muno

*/



dont_cooldown = false;



blue_red[0] = 65;
blue_red[1] = 65;
blue_gre[0] = 75;
blue_gre[1] = 75;
blue_blu[0] = 181;
blue_blu[1] = 181;



//Abyss Code

//this var makes f5 not break the buddy if developing with more than one workshop character or buddy in the match
//abyss_devmode = true;

//Initialise
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
ab_hud_x = 0;
ab_hud_y = 0;
abyssMods = array_create(16,[-1,"Not Implemented."]);

runeA = false;
runeB = false;
runeC = false;
runeD = false;
runeE = false;
runeF = false;
runeG = false;
runeH = false;
runeI = false;
runeJ = false;
runeK = false;
runeL = false;
runeM = false;
runeN = false;
runeO = false;
runeAny = false;
runesUpdated = false;

/*

Types
-1 - disabled
0  - object mod: Modifies a static object left behind after an attack.
1  - ranged mod: Modifies a projectile attack.
2  - hit mod: Modifies a direct physical interaction with an opponent.
3  - ability boost: Powers up a character attribute or action.

*/

//1 Cost
abyssMods[@ runes.A] = [0,"Cloud limit increased to 3."]
abyssMods[@ runes.B] = [3,"Air speed is faster."]
abyssMods[@ runes.C] = [3,"Midair jumps go higher."]
abyssMods[@ runes.D] = [2,"Down Air spikes."]
abyssMods[@ runes.E] = [3,"Gun kickback goes forward, not backward."]
abyssMods[@ runes.F] = [1,"Gun can be angled up or down."]

//2 Cost
abyssMods[@ runes.G] = [3,"Flying strongs do not cause pratfall."]
abyssMods[@ runes.H] = [3,"Rain is cancelable."]
abyssMods[@ runes.I] = [1,"Molotovs take longer to explode if they have not hit an opponent."]
abyssMods[@ runes.J] = [2,"Each fresh soak can be used twice to stun."]
abyssMods[@ runes.K] = [0,"Clouds persist after raining."]

//3 Cost
abyssMods[@ runes.L] = [2,"Gun, molotov, and saxophone always stun."]
abyssMods[@ runes.M] = [3,"Flying strongs have free movement and safer pratfall."]
abyssMods[@ runes.N] = [1,"Uspecial throws 2 molotovs consecutively."]
abyssMods[@ runes.O] = [2,"Turbo Mode if opponent is soaked."]



//TCO

tcoart = sprite_get("trummeltcoart");



//Hikaru

Hikaru_Title = "Lakitu";



//Otto

otto_bobblehead_sprite = sprite_get("bob");



//Trummel-Specific (goodness there are a lot of variables)

//Cooldown
rain_cooldown = 0;              //Remaining cooldown time for Specials. Max 190, regain use at 10
cooldown_anim = 0;              //Remaining time in the cooldown-end animation. Max 30
sideways_cooldown_timer = 0;    //Remaining time in the meter vibration if you use a Special during cooldown. Max 6
cooldown_max = 100;             //Maximum cooldown value.
cooldown_mid = 90;             //Middle cooldown value. (Values before this are used for the cooldown spawning anim)
cooldown_min = 30;              //Minimum cooldown value. (Values past this are used for the cooldown ending anim)

//Establish own dryness
soaked = false;                 //Whether or not a character is soaked. Boolean

//Make peace with Copy Ability code
swallowed = false;              //Whether or not you've been swallowed by Kirby. Boolean (anguish add this to tutorial pls)
kirbyability = 16;              //Custom ability
swallowedtrum = false;          //didn't vore self. noted
beenswallowed = false;
enemykirby = noone;

//AI and beta
is_ai = false;
beta = false;
hidehud = false;
hasrunemocked = false;
useskins = true;
parried = false;
tournament_safe = false;        //Disables ALL taunt functionality. Reduces # of rain particles.

introtimer = 0;
introframe = 0;
idleneedsreset = false;

//Passive cloud particle effect
particlex = 0;                  //The next X coord to draw a particle from Trummel.
particley = 0;                  //The next Y coord to draw a particle from Trummel.
cloudparticlex = 0;             //The next X coord to draw a particle from a rising cloud article.
cloudparticley = 0;             //The next Y coord to draw a particle from a rising cloud article.
cloudparticlevsp = 0;           //The vertical speed the particle from a cloud article should have.
molotovparticlevsp = 0;         //The vertical speed the particle from a molotov should have.
molotovparticlehsp = 0;         //The horizontal speed the particle from a molotov should have.
particlerate = 5;               //The first rate at which particles are drawn.
particlerate2 = 7;              //The second rate at which particles are drawn. (If either rate is met, draw particle)
shouldmakeparticle = false;     //Whether or not to draw a particle from Trummel.
shouldmakecloudparticle = false;    //Whether or not to draw a particle from a rising cloud article.
shouldmakemolotovparticle = false;  //Whether or not to draw a particle from a molotov cocktail.
shouldmakebulletparticle = false;   //Whether or not to yadda yadda

//RNG soaked VFX positions
soakedx = 0;                    //The X position, relative to the soaked foe, to draw water droplet 1 at.
soakedy = -50;                  //The Y position, relative to the soaked foe, to draw water droplet 1 at.
soakedx2 = 0;                   //The X position, relative to the soaked foe, to draw water droplet 2 at.
soakedy2 = -50;                 //The Y position, relative to the soaked foe, to draw water droplet 2 at.
soakedx3 = 0;                   //The X position, relative to the soaked foe, to draw water droplet 3 at.
soakedy3 = -50;                 //The Y position, relative to the soaked foe, to draw water droplet 3 at.
soakedreset = false;            //Whether or not to reroll the dice for droplet 1's coordinates (draw new droplet).
soakedreset2 = false;           //Whether or not to reroll the dice for droplet 2's coordinates (draw new droplet).
soakedreset3 = false;           //Whether or not to reroll the dice for droplet 3's coordinates (draw new droplet).
soak_blink_rate = 60;           //Rate at which soak VFX animates.

//Specific attacks
utilt_jump = false;             //Whether or not you should be allowed to jump/shield/attack out of Up Tilt / Down Air. (True on hit)
dspecialair = false;            //Whether or not the current Down Special is being performed in midair.
shouldspawnmolotov = false;     //Whether or not to spawn the 2nd part of the molotov (the article).
article = noone;                //Used during USPECIAL.
pratanim = true;                //Whether or not to animate pratland. (false if parried)
platanim = 0;                   //Image index of respawn platform.
strongstartup = 12;             //Pre-charge startup of all strongs.
nspeclock = false;              //Controls DI lock after nspec scripted hit. (normally applied to opponent)

//Clouds
shouldmakecloud = false;        //Whether or not to make a cloud article the next time it checks.
cloudoffset = 0;                //The vertical offset to give the cloud article.
fspecial = false;               //TEMPORARY value to determine FSPECIAL mimic.
var cloud = noone;              //Establish that there are no clouds.
cloudwarntime = 0;              //The animation timer for the blue arrow above the older cloud.
cloudwarneasetime = 0;          //The position-easing timer for when the arrow moves to a different cloud.
cloudwarnx = 0;                 //The current X position of the blue arrow.
cloudwarny = 0;                 //The current Y position of the blue arrow.
cloudwarnx1 = 0;                //The starting X coordinate of the blue arrow's cloud-changing ease function.
cloudwarny1 = 0;                //The starting Y coordinate of the blue arrow's cloud-changing ease function.
cloudwarnx2 = 0;                //The ultimate X coordinate of the blue arrow's cloud-changing ease function.
cloudwarny2 = 0;                //The ultimate Y coordinate of the blue arrow's cloud-changing ease function.
shouldreset = true;             //Whether or not to reset the blue arrow the next time it appears, rather than easing.
killclouds = false;             //Whether or not to kill all onscreen clouds the next time it checks.
airstrong = false;
strongcloudtrigger = false;     //Whether or not to trigger the airdodge code on next check. Used after a midair Strong.
cloudcooldown = 0;              //Cooldown which prevents 2 clouds from being made in quick succession, used to fix a bug where 2 clouds would spawn at once.
initiated = false;              //Whether or not custom stage height check 1 has been run.
initiated2 = false;             //Whether or not custom stage height check 2 has been run.
finalcloudheight = 0;           //The height that cloud articles should rise or fall to when placed.

//Text Box
practice = false;               //Whether you're in Practice Mode or not.
prompt = false;                 //Whether the player should be prompted to press taunt.
codec = false;                  //Whether the text box is being displayed.
codecprint[1] = "How'd this appear??";  //Text box line 1
codecprint[2] = "Please let me know";   //Text box line 2
codecprint[3] = "if you see this";      //Text box line 3
codecprint[4] = "text ingame.";         //Text box line 4
codec_id = noone;               //The opponent who is the source of the current text.
codec_num = 0;                  //The type of text being displayed.
textboxframe = 0;               //The frame of the text box's sprite.
codecindex = 0;                 //The page within the current codec.
maxcodecindex = 0;              //The page count of the current codec.
speaker = 0;                    //The person in the text box.
speakerframe = 0;               //The frame of the text box person's animation. (Always 0 or 1)
expression = 0;                 //The expression of the text box person.
godmode = false;                //Hold SIDE and taunt in Practice Mode to enable. Perma-soak, no cooldown, and infinite clouds.
godmodeanimtimer = 0;           //Timer for the little animation for godmode being enabled or disabled.
godmodemaxtimer = 30;           //How long that animation should take.
needscodec = false;
codec_activate_timer = 0;

//Playtest
playtest = (object_index == oTestPlayer);

if !playtest instance_create(room_width/2, -300, "obj_article_platform"); //practice check

//Self Codec
trummelcodecneeded = false;
trummelcodec_id = noone;

//Speaker Array
speakers[0] = sprite_get("munosprite");     //Muno
speakers[1] = sprite_get("altosprite");     //Alto
speakers[2] = sprite_get("trummelsprite");  //Trummel
speakers[3] = sprite_get("empty");          //Open 1
speakers[4] = sprite_get("empty");          //Open 2
speakers[5] = sprite_get("empty");          //Left blank



//Stats

//Physical size
char_height = 62;
knockback_adj = 1.2;            //Wrastor weight

//Animation speeds
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .13;
dash_anim_speed = .26;
pratfall_anim_speed = .25;

//Ground movement
walk_speed = 4.5;
walk_accel = 1;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7.5;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = .35;        //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.5;
moonwalk_accel = 1.4;

//Air movement
leave_ground_max = 7;           //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7;               //the maximum hsp you can have when jumping from the ground
air_max_speed = 7;              //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3;                //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = 2;            //multiplier of air_accel while in pratfall
air_friction = .03;
max_fall = 11;                  //maximum fall speed without fastfalling
fast_fall = 15;                 //fast fall speed
gravity_speed = .5;
hitstun_grav = .525;

//Jumps
jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 7;
djump_speed = 8;
max_djumps = 2;
double_jump_time = 32;          //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
wall_frames = 2;                //anim frames before you leave the wall

//Landing and wavelanding
land_time = 4;                  //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.35;           //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04;            //grounded deceleration when wavelanding



//Animation Frames

//Crouch
crouch_startup_frames = 2;
crouch_active_frames = 6;
crouch_recovery_frames = 1;

//Parry
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//Tech
tech_active_frames = 3;
tech_recovery_frames = 1;

//Tech roll
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//Airdodge
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 9;

//Roll
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 7.5;         //roll speed
roll_backward_max = 7.5;



//Sprites

//Ground
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
spr_fstrong_air = sprite_get("fstrong_air");
spr_ustrong = sprite_get("ustrong");
spr_ustrong_air = sprite_get("ustrong_air");
spr_dstrong = sprite_get("dstrong");
spr_nspecial = sprite_get("nspecial");
spr_fspecial = sprite_get("fspecial");
spr_uspecial = sprite_get("uspecial");
spr_dspecial = sprite_get("dspecial");
spr_taunt = sprite_get("taunt");

//Respawn
spr_plat = sprite_get("plat");
spr_plat_behind = sprite_get("plat_behind");

//Cloud
spr_cloud = sprite_get("cloud");
spr_cloudrise = sprite_get("cloud");
spr_cloudrain = sprite_get("cloudrain");
spr_cloudflash = sprite_get("cloudflash");
spr_clouddie = sprite_get("clouddie");
spr_cloudhorn = sprite_get("cloudhorn");
spr_cloudhorn2 = sprite_get("cloudhorn2");
spr_cloudwarn = sprite_get("cloudwarn");

//Soaked
spr_soaked = sprite_get("soaked");
spr_soaked_shine = sprite_get("soaked_shine");
spr_soakedshort = sprite_get("soakedshort");
spr_soakedshort_shine = sprite_get("soakedshort_shine");
spr_soak = sprite_get("soak");
spr_unsoak = sprite_get("unsoak");

//Projectile
spr_molotov = sprite_get("molotov");
spr_molotov2 = sprite_get("molotov2");
spr_explosion1 = sprite_get("explosion1");
spr_explosion2 = sprite_get("explosion2");
spr_rain = sprite_get("rain");
spr_rainchunk = sprite_get("rainchunk");
spr_rainchunkflash = sprite_get("rainchunkflash");
spr_bullet = sprite_get("bullet");
spr_bullet2 = sprite_get("bullet2");
spr_bullet3 = sprite_get("bullet3");
spr_bulletblast = sprite_get("bulletblast");
spr_bullettrail = sprite_get("bullettrail");
spr_explosion3 = sprite_get("explosion3");
spr_explosion4 = sprite_get("explosion4");

//Cooldown
spr_cooldown = sprite_get("cooldown");
spr_cooldownfill = sprite_get("cooldownfill");
spr_cooldownfillborder = sprite_get("cooldownfillborder");
spr_cooldownfail = sprite_get("cooldownfail");

//Misc.
spr_particle = sprite_get("particle");
spr_pratland = sprite_get("pratland");
spr_padlock = sprite_get("padlock");
spr_sweetspot = sprite_get("sweetspot");
spr_textbox = sprite_get("textbox");
spr_trumkirb = sprite_get("trumkirb");
spr_intro = sprite_get("intro");
spr_introfall = sprite_get("introfall");



//Alts
skin = 0;
switch(get_player_color(player)){
    case 14: //Genesis
        skin = 1;
        break;
    case 15: //Pirate
        skin = 2;
        break;
}

switch(skin){
    case 0: //Default
        useskins = false;
        break;
    case 1: //Genesis
        spr_cloudglitch = sprite_get("01cloudglitch");
        spr_cloudglitch2 = sprite_get("01cloudglitch2");
        spr_tauntglitch = sprite_get("01taunt");
        spr_tauntglitch2 = sprite_get("01taunt2");
        spr_padlock = sprite_get("01padlock");
        spr_explosion2 = sprite_get("01explosion2");
        spr_explosion4 = sprite_get("01explosion4");
        spr_intro = sprite_get("01intro");
        spr_introfall = sprite_get("01introfall");
        spr_cloudhorn2 = sprite_get("01cloudhorn2");
        spr_cooldownfail = sprite_get("01cooldownfail");
        break;
    case 2: //Pirate
        spr_padlock = sprite_get("02padlock");
        spr_idle = sprite_get("02idle");
        spr_walk = sprite_get("02walk");
        spr_walkturn = sprite_get("02walkturn");
        spr_dashstart = sprite_get("02dashstart");
        spr_dash = sprite_get("02dash");
        spr_dashstop = sprite_get("02dashstop");
        spr_dashturn = sprite_get("02dashturn");
        spr_crouch = sprite_get("02crouch");
        spr_parry = sprite_get("02parry");
        spr_roll_forward = sprite_get("02roll_forward");
        spr_roll_backward = sprite_get("02roll_backward");
        spr_jumpstart = sprite_get("02jumpstart");
        spr_jump = sprite_get("02jump");
        spr_doublejump = sprite_get("02doublejump");
        spr_land = sprite_get("02land");
        spr_landinglag = sprite_get("02landinglag");
        spr_airdodge = sprite_get("02airdodge");
        spr_airdodge_waveland = sprite_get("02waveland");
        spr_pratfall = sprite_get("02pratfall");
        spr_pratland = sprite_get("02pratland");
        spr_walljump = sprite_get("02walljump");
        spr_jab = sprite_get("02jab");
        spr_ftilt = sprite_get("02ftilt");
        spr_utilt = sprite_get("02utilt");
        spr_dtilt = sprite_get("02dtilt");
        spr_dattack = sprite_get("02dattack");
        spr_nair = sprite_get("02nair");
        spr_fair = sprite_get("02fair");
        spr_bair = sprite_get("02bair");
        spr_uair = sprite_get("02uair");
        spr_dair = sprite_get("02dair");
        spr_fstrong = sprite_get("02fstrong");
        spr_fstrong_air = sprite_get("02fstrong_air");
        spr_ustrong = sprite_get("02ustrong");
        spr_ustrong_air = sprite_get("02ustrong_air");
        spr_dstrong = sprite_get("02dstrong");
        spr_uspecial = sprite_get("02uspecial");
        spr_dspecial = sprite_get("02dspecial");
        spr_fspecial = sprite_get("02fspecial");
        spr_nspecial = sprite_get("02nspecial");
        spr_tech = sprite_get("02tech");
        
        spr_hurt = sprite_get("02hurt");
        spr_bighurt = sprite_get("02bighurt");
        spr_hurtground = sprite_get("02hurtground");
        spr_bouncehurt = sprite_get("02bouncehurt");
        spr_uphurt = sprite_get("02uphurt");
        spr_downhurt = sprite_get("02downhurt");
        spr_spinhurt = sprite_get("02spinhurt");
        
        spr_taunt = sprite_get("02taunt");
        spr_cloud = sprite_get("02cloud");
        spr_clouddie = sprite_get("02clouddie");
        spr_cloudflash = sprite_get("02cloudflash");
        spr_cloudrain = sprite_get("02cloudrain");
        break;
}



//Misc.

//VFX init
explosion1 = hit_fx_create(spr_explosion1, 25);
explosion2 = hit_fx_create(spr_explosion2, 25);
bulletblast = hit_fx_create(spr_bulletblast, 15);
bulletblast2 = hit_fx_create(spr_bulletblast, 45);
explosion3 = hit_fx_create(spr_explosion3, 25);
explosion4 = hit_fx_create(spr_explosion4, 25);
soak_fx = hit_fx_create(spr_soak, 25);
unsoak_fx = hit_fx_create(spr_unsoak, 25);
glitchtimer = 0;
glitchtimer2 = 0;
rainbreak = hit_fx_create(sprite_get("rain_destroy"), 15);

//Hurtbox sprites
hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//Victory
set_victory_bg(sprite_get("trummelwins"));
set_victory_theme(sound_get("trummel_victory"));

//SFX
land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_med");
waveland_sound = asset_get("sfx_waveland_ran");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_ice_uspecial_jump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;