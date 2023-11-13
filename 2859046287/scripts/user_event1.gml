//user_event1.gml
//user_event scripts are essencially whatever we want them to include, they are custom scripts we can use to help us send information between scripts
//aswell as not flood other scripts if a lot should go into them
//to call user events in other scripts we put user_event(#);, with # being a number between 0 to 15 depending the script you need

//this script in tester's case is used for workshop compatibilities, as well as links to any useful information on the compatibility itself
//note: usually sprite offsets are in load.gml, but for ease of use they are here instead

//Greenwood Town cheering characters on kills
greenwood_cheer = 0;
/*
    greenwood town cheering compatibility is used to set which character in the background will cheer for you

    https://steamcommunity.com/sharedfiles/filedetails/?id=2601840872
    0: Player slot dependent
    1: Venus
    2: Liav
    3: Roy
    4: Asra
*/

//Chao buddy
chao_type = 3;
/*
    determines the type of chao the buddy will give to the character

    https://steamcommunity.com/workshop/filedetails/discussion/3065149273/3877095833490115457/
    0: Neutral chao
    1: Hero chao
    2: Dark chao
    3: Omochao
    4: SSL chao 
    5: Custom chao - set by you, check the link above for more info
*/

//Kirby copy ability (2022 version)
TCG_Kirby_Copy = 12;
/*
    decides which ability the dreams collection version of kirby (uploaded by spamite) will be given

    0: No Ability
    1: Fire
    2: Beam
    3: Ranger
    4: Fighter
    5: Sword
    6: Water
    7: Leaf
    8: Ice
    9: Tornado
    10: Bomb
    11: Mike
    12: Abyss
    13: ESP
    14: Drill
    15: Spark
*/

//BoTW Link spear drops
link_spear_drop = 4;
/*
    desides which spear link gets from hitting your character

    0: Random spear (Default)
    1: Traveler's Spear
    2: Knight's Halberd
    3: Wooden Mop
    4: Spiked Boko Spear
    5: Flamespear
    6: Frostspear
    7: Thunderspear
    8: Guardian Spear
*/

//Steve death message
steve_death_message = "Steve succumbed to the wrath of '-'";

//Soulbound Conflict flavor text
battle_text = "Lorem ipsum dolor sit amet.";

//Dedede Stadium character title
arena_title = "Template... Man?";
arena_short_name = "Tester"; //this text is used to shorten the names of characters if they are too long

//Sonic Rainbow Ring trick
sprite_change_offset("wsc_sonictrick", 24, 47, true); //make sure you specify the sprites in the wsc_sonictrick.gml if you change it
sonic_rainbowring_atk = 46; //the value corresponds to an attack index, make sure it's unused by your character
/*
    this compatibility lets characters strike a pose when touching a friendly sonic's (Bar-Kun) rainbow ring

    used scripts:
        - sonic_trick.gml
        - attack_update.gml
    used sprites:
        - wsc_sonictrick
        - wsc_sonictrick_hurt
*/

//Mamizou animal transformation
sprite_change_offset("wsc_mamizoutransform", 22, 42);
mamizou_transform_spr = sprite_get("wsc_mamizoutransform");

//Po and Gumbo dish
pot_compat_variable = sprite_get("wsc_pumbodish");
pot_compat_text = "Rice"; //reffers to the name of the dish that appears

//Pokemon stadium
pkmn_stadium_front_img = sprite_get("wsc_pokemon_f");
pkmn_stadium_back_img = sprite_get("wsc_pokemon_b");
pkmn_stadium_name_override = "Tester"; //this text is used to shorten the names of characters if they are too long

//Miiverse posts
miiverse_post = sprite_get("wsc_miiverse");

//The Last Resort painting
sprite_change_offset("wsc_lrpainting", 27, 39);
resort_portrait = sprite_get("wsc_lrpainting");

//Green Flower Zone signpost
sprite_change_offset("wsc_gfzsign", 18, 41);
gfzsignspr = sprite_get("wsc_gfzsign"); //to edit the sprite to be your character you can use the [ wsc_gfzsign_empty ] sprite

//The Trial/Killing Grounds
sprite_change_offset("wsc_trialground", 31, 0);
guiltySprite  = sprite_get("wsc_trialground");

//Boris intro voiceline
boris_intro_sfx = sound_get("wsc_borisvoiceline"); //got to https://readloud.net/english/american/3-male-voice-eric.html to make your own voiceline
boris_intro_loop = 16; //every loop is 30 frames long, so multiply the time of the voiceline by 2 (in tester's case the voiceline is 8 seconds long)

//Final Smash
sprite_change_offset("wsc_finalsmash", 24, 47, true); //make sure you specify the sprites in the wsc_finalsmash.gml if you change it
sprite_change_offset("wsc_finalsmash_proj", 160, 96);
fs_char_chosen_final_smash = "custom"; //would usually stay as "custom", but the string can also take names of most of basecast if you want to use their final smashes
fs_char_attack_index = 49; //the value corresponds to an attack index, make sure it's unused by your character (note: if you don't have the variable it will default to 49, but it's useful to have it here too as you can detect this value too more easily)
fs_char_portrait_y = 90; //y offset for portrait that appears when using the final smash
/*
    allows your character to have a final smash attack, using the final smash buddy

    used scripts:
        - wsc_finalsmash.gml
        - init.gml
        - attack_update.gml
        - hitbox_update.gml

    used sprites:
        - wsc_finalsmash
        - wsc_finalsmash_hurt
        - wsc_finalsmash_proj

    general balance info:
        - damage: 35-40%
        - base knockback: 10-11
        - knockback scaling: 1.3-1.5

    balance info for projectiles:
        - transcendent (HG_PROJECTILE_IS_TRANSCENDENT)
        - bypass clairen's field (HG_PROJECTILE_PLASMA_SAFE)
        - prevent ori from bashing it (HG_PROJECTILE_UNBASHABLE)

    ///////////////////////////////
    other final smash buddy variables tester doesn't use:
        - fs_portrait_x: shifts portrait that appears when using the final smash left and right
        - fs_char_portrait_override: overwrite the portrait used by the final smash buddy (by default it checks for portrait.png in the main folder)
        - fs_char_chosen_trigger: by default it just checks for nspecial to activate fnal smash ("ori" trigger checks for the nspecial input, "custom" lets you create your own trigger)

        - fs_force_fs: if true and [ fs_char_chosen_trigger ] is "custom", it will force the final smash to play out
        - fs_attack_index: allows for multiple final smashes, set this to the attack index of the final smash you want to set to
        - fs_char_is_attack_grid: if false, it will not activate an attack and needs to be stopped manually, this is used for final smashes that are like a powered up state
        - fs_using_final_smash: if true, it will count the player as using the final smash and will prevent them from getting more meter

        - fs_charge: the amount of meter filled on the final smash, if it's 200 or over it counts as a ready final smash
        - fs_charge_mult: the charge rate of the final smash based on the calculations of the buddy (1.3 by default, set it to 0 if you're doing your own thing)
        - fs_go_to_hud: if true it will put the smashball that follows the character next to the hud instead, and you can toggle it on and off as you please
        - fs_ball_offset_x: the horizontal offset of the smashball that follows the character, keep in mind to multiply the value with spr_dir so it's consistent across both facing directions
        - fs_ball_offset_y: the vertical offset of the smashball that follows the character
        - fs_hide_ball: makes the smashball invisible

        - fs_meter_x: the horizontal offset of the final smash meter
        - fs_meter_y: the vertical offset of the final smash meter
        - fs_meter_on_player: places meter above the player
        - fs_hide_meter: should hide the meter but currently does not do anything

        - fs_ai_attempt_use: if true, the AI of the player will try to use their final smash (would be used in ai_update.gml)
*/

//Dracula dialouge
dracula_portrait = sprite_get("wsc_dracula");
dracula_portrait2 = asset_get("empty_sprite");
//dracula_portrait3 can also be used if you need it, but dracula_portrait2 is mandatory
dracula_speaker = []; //array that checks which character speaks
dracula_text = []; //array that checks what the character speaks

set_dracula_text(0, "I don't think in my many years of living I've encountered a being such as you, yet a sense a very strong aura from you. What is your business in my castle?");
set_dracula_text(1, "...");
set_dracula_text(0, "...?");
set_dracula_text(0, "Nothing?");
set_dracula_text(0, "You will just stand there and say nothing to Count[shake] Dracula Vlad Tepes?!");
set_dracula_text(0, "Fine,[glass] have it your way then!");
set_dracula_text(1, "'-'[taunt]");
/*
    lets your character banter against dracula before his bossfight
    the function [ set_dracula_text ] is a shortcut to make the compatibility easier to manage

    to make dracula or your character do certain actions, you must put the action's name in [] like the example above, as long as it's after at least 1 word it will work
    [shake]: shakes the camera
    [glass]: makes dracula throw the glass, he can only do that once
    [taunt]: makes your character taunt
*/

#define set_dracula_text(new_speaker, new_text)
{
    array_push(dracula_speaker, new_speaker);
    array_push(dracula_text, new_text);
}