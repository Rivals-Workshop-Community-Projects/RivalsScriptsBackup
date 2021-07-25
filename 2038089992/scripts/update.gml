//update

//practice mode detector
if (get_training_cpu_action() != CPU_FIGHT && !playtest && !("is_ai" in self)) {
    practice = true;
}

//arcade skin
if get_player_color(player) == 17 {
    steam_vfx = sprite_get("steam_vfx_arc")
    steam_blast = sprite_get("steam_blast_arc")
    set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, steam_blast);
}

//god modes
if !(attack == AT_TAUNT_2 && state == PS_ATTACK_GROUND && taunt2Mode == "limit") && (limitBreakCharge > 0) && (!limitBreak) {
    limitBreakCharge -= 3;
}

if (limitBreakCharge < 0) {
    limitBreakCharge = 0;
}

if (limitBreak) {
    meter_water = 50;
    meter_steam = 50;
}


if (godmodeanimtimer > 0) {
    godmodeanimtimer--;
}

if !(state == PS_ATTACK_GROUND && attack == AT_DATTACK) {
    sound_stop(sound_get("steam_sfx3"));
}

//runes
if runesUpdated {
    if runeA { //Water to steam conversion rate increased.
        meterConversionRate = 5;
    } else {
        meterConversionRate = 10;
    }

    if runeB { //DSPEC projectiles travel faster.
        set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, -14);
        set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, 14);
    } else {
        reset_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED);
        reset_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED);
    }

    if runeC { //Movement speed while charging strong attacks increased.
        strongMaxHsp = 10;
        strongAccelHsp = 1;
    }

    if runeD { //DSPEC can summon up to 3 projectiles.
        dspecProjCount = 3;
    }

    if runeE { //Hover uses less steam.
        djumpSteamRate = 6;
    }

    if runeH { //Strong attacks and aerial water blast attacks use less water.
        fstrongWater = 7;
        dstrongWater = 7;
        ustrongWater = 7;
        bairWater = 4;
        fairWater = 4;
        uairWater = 4;
    }

    if runeJ { //Hover speed increased.
        djumpAcceleration = 1.3;
        djumpVspMax = -8;
    }

    if runeK { //Steam attacks have more extra hitpause.
        set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_HITPAUSE, 6);
        set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_HITPAUSE, 6);
        set_hitbox_value(AT_FTILT, 1, HG_EXTRA_HITPAUSE, 16);
        set_hitbox_value(AT_FSTRONG, 3, HG_EXTRA_HITPAUSE, 10);
        set_hitbox_value(AT_DSTRONG, 3, HG_EXTRA_HITPAUSE, 10);
        set_hitbox_value(AT_USTRONG, 3, HG_EXTRA_HITPAUSE, 10);
        set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE, 6);
    } else {
        reset_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_FTILT, 1, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_FSTRONG, 3, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_DSTRONG, 3, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_USTRONG, 3, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE);
    }

    if runeM { //Max number of puddles increased to 4.
        puddleNumMax = 4;
    }
    
    runesUpdated = false;
}

//nspecial lockout
var nspec_active = false;
with pHitBox {
    if player_id == other.id && attack == AT_NSPECIAL && !destroyed {
        nspec_active = true;
    }
}
if meter_water < nspecialWater || nspec_active {
    move_cooldown[AT_NSPECIAL] = 6;
}

//Char height adjuster (thx rainbow)
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR || (attack == AT_UAIR && window == 5) || (attack == AT_UTILT && window == 3) || (attack == AT_USTRONG && window == 4)) {
    char_height -= 10;
    char_height = clamp(char_height, 40, 100)
}
else if (attack == AT_UTILT) {
    char_height += 5;
    char_height = clamp(char_height, 40, 60);
} else if (attack == AT_USTRONG) {
    char_height += 5;
    char_height = clamp(char_height, 40, 80);
}
else if (attack == AT_UAIR){
    if (window == 4) {
        char_height += 7;
        char_height = clamp(char_height, 40, 100);
    }
}

//meter limiting
if (meter_water < 0) {
    meter_water = 0;
}

if (meter_steam < 0) {
    meter_steam = 0;
}

if (meter_steam < dattackSteam) {
    move_cooldown[AT_DATTACK] = 10000000;
} else {
    move_cooldown[AT_DATTACK] = 0;
}

//puddles
puddleNum = 0;
targetPuddleID = undefined;
submergePuddleID = undefined;
puddleDistance = 100000000;
targetPuddleSize = 0;
targetPuddleX = undefined;
targetPuddleY = undefined;
canSubmerge = false;
puddleRecent = 0;

with obj_article1 {
    if (player == other.player) {
        other.puddleNum += 1;
        var distance = point_distance(x, y, other.x, other.y);
        if (distance < other.puddleDistance) && (!steamed) {
            other.puddleDistance = distance;
            other.targetPuddleID = id;
            other.targetPuddleSize = size;
            other.targetPuddleX = x;
            other.targetPuddleY = y;

            if (x - other.x < size*3 + 20) && (x - other.x > -(size*3 + 20)) && (y - other.y == 6) && (!steamed) {
                other.canSubmerge = true;
                other.submergePuddleID = id;
            }
        }
    }
}

with obj_article1 {
    if (player == other.player) {
        if (recentNum > other.puddleRecent) && (size >= 4) && (!steamed) {
            other.puddleDistance = distance;
            other.puddleRecent = recentNum;
            other.targetPuddleID = id;
            other.targetPuddleSize = size;
            other.targetPuddleX = x;
            other.targetPuddleY = y;

            if (x - other.x < size*3 + 20) && (x - other.x > -(size*3 + 20)) && (y - other.y == 6) && (!steamed) {
                other.canSubmerge = true;
                other.submergePuddleID = id;
            }
        }
    }
}

if (puddleNum > puddleNumMax) {
    recentVar = 1000000000000000000000000;
    with obj_article1 {
        if (player == other.player) {
            if (recentNum < other.recentVar) {
                other.recentVar = recentNum;
            }
        }
    }
    with obj_article1 {
        if (player == other.player) {
            if (recentNum == other.recentVar) {
                dissolve = true;
            }
        }
    }
}

//dattack airborne sound stop
if (free) {
    sound_stop(sound_get("steam_sfx3"));
}


//Dspecial proj counter
/*
var dspecProjCounter = 0;
with pHitBox {
    if attack == AT_DSPECIAL && hbox_num == 1 && player_id == other.player {
        dspecProjCounter += 1;
    }
}

if dspecProjCounter > 1 {
    move_cooldown[AT_DSPECIAL] = 10000;
} else {
    move_cooldown[AT_DSPECIAL] = 0;
}
*/



//hover djump
if (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP || state == PS_IDLE_AIR || state == PS_TUMBLE || (state == PS_ATTACK_AIR && attack != AT_USPECIAL && attack != AT_FSPECIAL && !was_parried)) && (meter_steam > 0) {
    if (djumpPressVar == 2) {
        meterConversion = false;
    }

    if (djumpPressVar == 2) && (djumpSoundVar == 0) && (djumpPressVar >= 2) {
        sound_play(sound_get("steam_sfx1"), true);
        djumpSoundVar = 1;
    } else if (djumpPressVar != 2) {
        sound_stop(sound_get("steam_sfx1"));
        djumpSoundVar = 0;
    }
    
    if state_timer <= 6 {
        djumpPressVar = 0;
    }
    
    if jump_down && (state_timer > 12 || state == PS_IDLE_AIR || state == PS_ATTACK_AIR) {
        djumpPressVar = 2;
    }
    

    if (djumpPressVar == 0) && (!jump_down) { //initial jump + hasn't let go jump
        djumpPressVar = 1;
    } else if (djumpPressVar == 1) && (jump_down) { //initial jump + has let go jump
        djumpPressVar = 2;
    } else if (djumpPressVar == 2) && (!jump_down) && (djumpEndingTime > 5) { //hovering
        djumpPressVar = 3;
        djumpEndingTime = 0;
        djumpHoverTime = 0;
    } else if (djumpPressVar == 3) && (jump_down) { //falling
        djumpPressVar = 2;
        djumpHoverTime = 0;
    }

    if (jump_down) && (djumpPressVar == 2) {
        djumpHoverTime += 1;
        djumpEndingTime = 0;
    } else {
        if (djumpEndingTime > 20) {
            djumpHoverTime = 0;
        }
        djumpEndingTime += 1;
    }

    if (jump_down && djumpPressVar == 2) || (!jump_down && djumpPressVar == 2 && djumpEndingTime <= 5) {
        if (vsp > djumpVspMax) {
            vsp -= djumpAcceleration;
        }
    }

    if (jump_down) {
        djumpPressTime += 1;
    } else {
        djumpPressTime = 0;
    }

    if (djumpPressVar == 2) {
        state_timer = 15;
        if (meter_steam > 0) && ((!jump_down && djumpEndingTime mod djumpSteamRate == 1) || (jump_down && djumpPressTime mod djumpSteamRate == 1))  {
            meter_steam -= 1;
        }
    }
} else {
    djumpPressVar = 0;
    djumpHoverTime = 0;
    djumpEndingTime = 0;
    sound_stop(sound_get("steam_sfx1"));
    djumpSoundVar = 0;
    djumpPressTime = 0;
}

//steamless djump
/*
if (meter_steam <= 2) {
    max_djumps = 1;
} else {
    max_djumps = 0;
}
*/

// 0 steam dattack
if (meter_steam < 2) {
    move_cooldown[AT_DATTACK] = 10000000;
} else {
    move_cooldown[AT_DATTACK] = 0;
}

//uspecial code
if ((state == PS_ATTACK_AIR) || (state == PS_ATTACK_GROUND)) && (attack == AT_USPECIAL) {
    max_fall = 20;
} else {
    max_fall = 9;
}

//water to steam conversion
if (get_gameplay_time() mod meterConversionRate == 0) && (meter_water >= 1) && (meterConversion == true) {
    meter_water -= 1;
    meter_steam += 1;
}

if runeG { //Automatically replenishes steam.
    if (get_gameplay_time() mod meterConversionRate == 0) && (meter_water + meter_steam < meter_capacity) && (meterConversion == true) {
        meter_water += 1;
    }
}

switch state {
    case PS_DASH_START:
    case PS_DASH:
    case PS_DASH_STOP:
    case PS_DASH_TURN:
    case PS_ROLL_BACKWARD:
    case PS_ROLL_FORWARD:
    case PS_AIR_DODGE:
    case PS_WAVELAND:
    meterConversion = true;
    break;
    
    default:
    meterConversion = false;
    break;
}

//codec stuff

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 15;
    trummelcodecsprite1 = sprite_get("X");
    trummelcodecsprite2 = sprite_get("X");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "fish tank";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Yes, very funny Trummel.";
    trummelcodecline[page,2] = "This fish is Panzer,";
    trummelcodecline[page,3] = "he fights while driving";
    trummelcodecline[page,4] = "a weaponised tank.";
    page++;

    //Page 2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Panzer's tank uses both";
    trummelcodecline[page,2] = "water and steam in his";
    trummelcodecline[page,3] = "attacks. He can even use";
    trummelcodecline[page,4] = "steam to hover!";
    page++;

    //Page 3
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "why can he breathe in air";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;

    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Video game logic doesn't";
    trummelcodecline[page,2] = "have to make sense. Heck,";
    trummelcodecline[page,3] = "currently you're talking";
    trummelcodecline[page,4] = "to a sentient cloud.";
    page++;

    //Page 5
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "wait";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "clouds cant talk?";
    trummelcodecline[page,4] = "";
    page++;

    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "Ugh, I have half a mind";
    trummelcodecline[page,2] = "to dunk you in one of";
    trummelcodecline[page,3] = "Panzer's puddles right";
    trummelcodecline[page,4] = "now Trummel.";
    page++;

    //Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Speaking of his puddles,";
    trummelcodecline[page,2] = "make sure to keep track";
    trummelcodecline[page,3] = "of their locations. They";
    trummelcodecline[page,4] = "have a variety of uses.";
    page++;

    //Page 8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Some include recovery,";
    trummelcodecline[page,2] = "filling up his meter, and";
    trummelcodecline[page,3] = "he can even turn puddles";
    trummelcodecline[page,4] = "into pillars of steam!";
    page++;

    //Page 9
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "arent clouds made";
    trummelcodecline[page,2] = "of steam";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;

    //Page 10
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "That's beside the point,";
    trummelcodecline[page,2] = "even I'm not immune to";
    trummelcodecline[page,3] = "his steam based attacks,";
    trummelcodecline[page,4] = "which there are a lot of.";
    page++;

    //Page 11
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Getting hit by steam can";
    trummelcodecline[page,2] = "trap us, if we get caught";
    trummelcodecline[page,3] = "we have to try to SDI";
    trummelcodecline[page,4] = "out as fast as we can.";
    page++;

    //Page 12
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "wat is sdi";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;

    //Page 13
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Um, just wiggling around";
    trummelcodecline[page,2] = "or something? I recall";
    trummelcodecline[page,3] = "hearing it from another";
    trummelcodecline[page,4] = "fighting game...";
    page++;

    //Page 14
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "was it";
    trummelcodecline[page,2] = "'supar smahs woags'";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;

    //Page 15
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Yeah something like that.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
}

//RAINBOWS!
hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

color_rgb=make_color_rgb(50, 169, 255); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot(15, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();

color_rgb=make_color_rgb(163, 217, 255); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot(15, 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();

//kirby copy ability
if swallowed { //Kirby ability script starts here
    swallowed = 0
    //Define any assets kirby might need to grab from YOUR CHARACTER
    var ability_spr = sprite_get("kirby_ability_ground");
    var ability_spr_air = sprite_get("kirby_ability_air");
    var ability_hurt = sprite_get("kirby_ability_ground_hurt")
    var ability_hurt_air = sprite_get("kirby_ability_air_hurt")
    var ability_proj = sprite_get("water_sphere")
    var ability_icon = sprite_get("kirby_ability_icon") //Optional
    with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr_air);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, ability_hurt_air);

        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);

        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 8);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_watergun_fire"));
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 0);

        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 10);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);

        //kirby detection
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 99);

        set_num_hitboxes(AT_EXTRA_3, 1);

        //water proj
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 300);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 15);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -32);
        set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 35);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 35);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 361);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 4);
        set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.6);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 5);

        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -7);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0.3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, 0.1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 5);
        newicon = ability_icon //Optional, replaces the kirby ability icon

        kirby_water = 30
    } //Kirby ability script ends here
}

if enemykirby != undefined { //if kirby is in a match & swallowed
    with pHitBox { //Run through all players
        if attack == AT_EXTRA_3 {
            if !free {
                destroyed = true
                sound_play(asset_get("sfx_waterhit_medium"));
            }
        }
    }

    with oPlayer { //Run through all players
        if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
            if (window == 2) && (window_timer == 2) {
                kirby_water -= 5
            }
        }

        if (get_window_value(AT_EXTRA_3,4,AG_WINDOW_ANIM_FRAMES) == 99) { //Arbitrary value in an unused window
            if kirby_water == 0 {
                current_ability = 0;
            }
        }
    }
}
