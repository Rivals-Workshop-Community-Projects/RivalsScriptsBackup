//
//AR
//
//surprised you're reading this.
//i thought this'd be just a drop in the rain.
//just a number, not a name.
//but here you are reading the code,
//perhaps you sense something special in this?
//
//i doubt that, but i guess it's up for others
//to judge these things.
//
//in the codes, you'll find my struggles as i
//try to code the more complicated parts of
//of this character.
//
//i've chosen the "lone wolf" way,
//not checking what was ever going on in the
//workshop nor discord as i've worked on this
//for two months.
//alas most of the code here was largely
//based on what i could find in guadua and
//the official modding manual.
//you can find a lot of leftovers from the
//"empty workshop character template" as well.
//
//most of these two months were taken by the
//3d reference/spriting step.
//i was not confident in my ability to sprite
//the animations head-first, so i first tried
//to animate a model in 3d first to get myself
//some reference frames.
//
//i was pleasantly surprised by how easy it is
//to implement simple, normal attacks.
//even a simple recovery move would have been
//easy as well.
//however some of the more slightly complicated
//parts of few moves have shown themselves to
//be quite difficult, especially for ones such
//as me who are not experienced in coding.
//but honestly? that's very fair.
//this is even officially considered *modding*,
//after all. it isn't supposed to be super easy.
//
//however, i've managed it.
//i don't know how my creation fares against
//the others in the workshop. but by finishing
//this i've finally set myself the line of
//"what i am capable of".
//now that i've finished this, i can finally
//browse everything in peace, without my
//inferiority complex kicking in.
//
//to you who are somehow, and for some reason
//reading this,
//
//thank you so much a-for-to playing my character!
//
//may heaven grant you fortune,
//hyuponia halfmirage

//100% respects for mister supersonic. below pasted code;

//this var makes f5 not break the buddy if developing with more than one
//workshop character or buddy in the match
//abyss_devmode = true;
//
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = get_match_setting(SET_RUNES);
ab_hud_x = 0;
ab_hud_y = 0;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Not Implemented."]);
//example rune definition:
//abyssMods[@ runes.A] = [3,"Ground speed is faster."];

//1 slot
abyssMods[@ runes.A] = [2,"Up Air's main hitbox always launches opponent backwards."];
abyssMods[@ runes.B] = [2,"Down Tilt flinches opponents."];
abyssMods[@ runes.C] = [3,"Side Special is now invincibility instead of super armor."];
abyssMods[@ runes.D] = [0,"Acid rain damage occurs as twice as often."];
abyssMods[@ runes.E] = [1,"Applies Madotsuki skin's special sprites for select few anims using the sword."];
abyssMods[@ runes.F] = [1,"Ware wa messiah nari without Omega skin. Could have put it on the O rune instead."];
//2 slots
abyssMods[@ runes.G] = [2,"Turns Forward Tilt into Back Air somehow. Now it is truly kurekijin."];
abyssMods[@ runes.H] = [2,"Turns Jab 3rd phase into Dash Attack somehow. Va'fan?"];
abyssMods[@ runes.I] = [3,"Just slide, from left to right. Just slide, yourself enlight."];
abyssMods[@ runes.J] = [2,"Searing sword. Sword so hot it fry an egg. Applies burn."];
abyssMods[@ runes.K] = [0,"Enables any aerial to charge the raincloud fully with 1 hit."];
//3 slots
abyssMods[@ runes.L] = [0,"Enables you to place 2 acid rainclouds at once."];
abyssMods[@ runes.M] = [3,"Side special can now be used out of any attack instantly. Power made flesh."];
abyssMods[@ runes.N] = [3,"Side special will be cancelled when you let go of special. Also shortens cooldown."];
abyssMods[@ runes.O] = [3,"AR channels a bit more of her JIS power and makes Dashstart super fast."];

//rune buddy to official rune conversion code by muno!
//check it: https://pastebin.com/FRqTTAvW

var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}

//abyss init code over

//asset_get("ex_guy_hurt_box");
//asset_get("ex_guy_crouch_box");
hurtbox_spr = sprite_get("ar_hurtbox");
crouchbox_spr = sprite_get("ar_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = asset_get("ex_guy_hurt_box");

char_height = 52; //def=52
idle_anim_speed = .05;
crouch_anim_speed = .1;
walk_anim_speed = .15;
walkturn_anim_speed = .04;
dash_anim_speed = .18;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.2;
walk_turn_time = 2;
initial_dash_time = 7;
initial_dash_speed = 8.9;
dash_speed = 8;//8.5
dash_turn_time = 14;
dash_turn_accel = 1.5;
dash_stop_time = 6; //6
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 13;
short_hop_speed = 9;
djump_speed = 12;
leave_ground_max = 7;//7.2 //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7;//7.5//8 //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 13;//16 //fast fall speed
gravity_speed = .7;
hitstun_grav = .45;//0.5
knockback_adj = 1.11; //the multiplier to KB dealt to you. 1 = default, larger than 1 = lighter, smaller than 1 = heavier 

land_time = 4; //normal landing frames
prat_land_time = 5;
wave_land_time = 12;//7;
wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .03; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 0;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 2;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames //131
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
roll_forward_max = 7.5; //roll speed
roll_backward_max = 7.5;

wall_frames = 2;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("ARWave_v2");//("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

rainhit = hit_fx_create( sprite_get( "rainhit" ), 6 );
//jischarge = hit_fx_create( sprite_get( "jis_hit_test" ), 18 );

//top 35
//left 27
//right 86
//bottom 66
	// 58 (center) - 27 (left) = 31
	// 86 (right) - 58 (center) = 28
	// l=29=29
	// r=87=29
	//
	//change: 32

//sprite_change_collision_mask( "acidraincloud", false, 2, 35, 27, 86, 66, 0 );
sprite_change_collision_mask( "acidraincloud", false, 2, 35, 26, 90, 66, 0 );
sprite_change_collision_mask( "acidraincloud_jis", false, 2, 35, 26, 90, 66, 0 );

//experimental
//sprite_change_collision_mask( "doublejump", true, 0, 0, 0, 0, 0, 1 );

kirbyability = 16;
enemykirby = noone; // by doing this it will stop _my side_ from spamming error messages to the log
swallowed = 0; // changed swallowed implementation to fix error message as well

arc_active = false; // for AI purposes
ar_rain = 0; // for ditto purposes. i put it to my enemies anyway, why not put it to myself?
ar_rain_max = 6;
ar_rain_immune = false;
jiseffect = 0;

AT_TAUNT_3 = 37;

ardev = false;

trummelcodecneeded = false;
tcoart = asset_get("empty_sprite"); //changes it later at update.gml
Hikaru_Title = "Temporary Title"; //changes it later at update.gml
feri_costume = sprite_get("feri_costume_AR"); //i coded this!
otto_bobblehead_sprite = asset_get("empty_sprite"); //changes it later at update.gml
// (you don't have to write anything, i just put it for fun)
arena_title = "?";
arena_short_name = "A.R.";
battle_text = "*           approaches.";

ncode1 = "Faceless hooded figure with a red blade."
ncode2 = "Not detected by mechanical automatic detection."
ncode3 = "Don't think. Feel and you'll be"

steve_death_message = "Steve was slain by z_ARainbows using XaaaCi";

set_victory_theme( sound_get( "ARVictory" ));//Twilight v2 by Zuhzau
set_victory_bg( sprite_get( "ar_victorybg" ));

I_would_not_like_Sephiroth_to_impale_my_character = true; //this aint my character dawg i cant just let u stab someone else's character

//pre-emptive dracula
dracula_portrait = sprite_get("ar_portrait_dracula");
dracula_portrait2 = asset_get("empty_sprite");
var page = 0;
//0 = dracula
//1 = AR
/*
dracula_speaker[page] = 0;
dracula_text[page] = "a";
page++;
*/


dracula_speaker[page] = 0;
dracula_text[page] = "What is - No, who is this I perceive with my eyes?";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "... ... ...";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "A human. Though seems too lightly equipped to step into my throne room, let alone my very castle.";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "... ... ...";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "Something feels off with YOU, however... Perhaps illusory in nature.";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "I have no doubts you ARE human, but not of any usual of the kin. Have you any amount of knowledge to speak?";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "... ... ...";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "Hm... yes... I am not quite mute. Although I'd hoped my silence would be intimidating, you are probably beyond any sort of fear.";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "And well.[taunt] I am indeed here to stop your reign.";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "[glass]You've quite a confidence in you, child. Do you hope to sever me with your crimson blade?";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "Such mundane, physical weaponry will not scar me at any scale. Try as you might...";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "Enough talk... have at you.";
page++;

user_event(14);





