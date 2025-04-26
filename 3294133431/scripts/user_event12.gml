//voice lines

if(!doVoiceLines)
    return;
    
var inAttack = state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR;

if(state == PS_SPAWN && (state_timer == 1 || state_timer == 30))
{
    if(state_timer == 1 && !get_match_setting(SET_RUNES))
    {
        ds_list_clear(opponentLines);
        with(oPlayer)
        {
            if(player == other.player)
                continue;
            if(CharIsStealthyOrGentlemen())
                ds_list_add(other.opponentLines, "Spy_MeleeDare01");
            if(CharIsFast())
                ds_list_add(other.opponentLines, "Spy_taunts11");
            if(CharIsExplosive())
                ds_list_add(other.opponentLines, "Spy_DominationDemoMan03");
            if(CharIsEngi())
            {
                ds_list_add(other.opponentLines, "Spy_DominationEngineer02");
                ds_list_add(other.opponentLines, "Spy_DominationEngineer03");
            }
            if(url == 2074398176)//sniper
                ds_list_add(other.opponentLines, "Spy_DominationSniper07");
        }

        opponentHasIntroLine = ds_list_size(opponentLines) > 0;
    }
    
    if(opponentHasIntroLine && state_timer > 1)
        PlayRandomVoiceLineFromOpponent(opponentLines);
    if(!opponentHasIntroLine && state_timer == 1)
        PlayRandomVoiceLine("intro1", "intro2", "intro3");
}



with(oPlayer)
{
    if(player == other.player)
        continue;

    if(state == PS_HITSTUN && last_player == other.player)
        killedBySpy = true;
    if(killedBySpy && !free)//state != PS_HITSTUN && state != PS_DEAD && state != PS_RESPAWN)
        killedBySpy = false;
}
var opponentKilledByUs = false;
with(oPlayer)
{
    if(player == other.player)
        continue;
    if((state == PS_RESPAWN || state == PS_DEAD) && state_timer == 1 && killedBySpy)
        opponentKilledByUs = true;
}
if(opponentKilledByUs)
{
    ds_list_clear(opponentLines);
    with(oPlayer)
    {
        if(player == other.player)
            continue;
        if((state == PS_RESPAWN || state == PS_DEAD) && state_timer == 1)
        {
            if(url == other.url)//spy
            {
                ds_list_add(other.opponentLines, "Spy_DominationSpy02");
                ds_list_add(other.opponentLines, "Spy_DominationSpy05");
            }
            if(CharIsStealthyOrGentlemen())
            {
                ds_list_add(other.opponentLines, "killSpy");
                ds_list_add(other.opponentLines, "Spy_DominationSpy03");
            }
            if(CharIsFast())
            {
                ds_list_add(other.opponentLines, "Spy_DominationScout02");
                ds_list_add(other.opponentLines, "Spy_DominationScout03");
                ds_list_add(other.opponentLines, "Spy_DominationScout05");
                ds_list_add(other.opponentLines, "Spy_DominationScout08");
            }
            if(CharIsScout())
            {
                ds_list_add(other.opponentLines, "Spy_DominationScout01");
                ds_list_add(other.opponentLines, "Spy_DominationScout04");
                ds_list_add(other.opponentLines, "Spy_DominationScout07");
            }
            if(CharIsSoldier())
            {
                ds_list_add(other.opponentLines, "Spy_DominationSoldier01");
                ds_list_add(other.opponentLines, "Spy_DominationSoldier02");
                ds_list_add(other.opponentLines, "Spy_DominationSoldier03");
                ds_list_add(other.opponentLines, "Spy_DominationSoldier04");
                ds_list_add(other.opponentLines, "Spy_DominationSoldier05");
            }
            if(CharIsDemo())
            {
                ds_list_add(other.opponentLines, "Spy_DominationDemoMan01");
                ds_list_add(other.opponentLines, "Spy_DominationDemoMan02");
                // ds_list_add(other.opponentLines, "Spy_DominationDemoMan03");
                ds_list_add(other.opponentLines, "Spy_DominationDemoMan05");
                ds_list_add(other.opponentLines, "Spy_DominationDemoMan06");
            }
            if(CharIsExplosive())
                ds_list_add(other.opponentLines, "kaboom");
            if(CharThrowsBalls())
                ds_list_add(other.opponentLines, "balls");
            if(CharIsEngi())
            {
                ds_list_add(other.opponentLines, "Spy_DominationEngineer01");
                ds_list_add(other.opponentLines, "Spy_DominationEngineer04");
                ds_list_add(other.opponentLines, "Spy_DominationEngineer05");
                ds_list_add(other.opponentLines, "Spy_DominationEngineer06");
            }
            if(url == 2074398176)//sniper
            {
                ds_list_add(other.opponentLines, "Spy_dom_sniper3");
                ds_list_add(other.opponentLines, "Spy_DominationSniper01");
                ds_list_add(other.opponentLines, "Spy_DominationSniper02");
                ds_list_add(other.opponentLines, "Spy_DominationSniper03");
                ds_list_add(other.opponentLines, "Spy_DominationSniper06");
            }
        }
    }

    // if(ds_list_size(opponentLines) != 0)
    //     PlayRandomVoiceLineFromOpponent(opponentLines);
    // else
    //     PlayRandomVoiceLine("Spy_specialcompleted03", "Spy_specialcompleted07", "Spy_positivevocalization01", "Spy_cheers01", "Spy_positivevocalization05", "Spy_quest_complete_easy_02", "Spy_specialcompleted09", "Spy_taunts15");//Spy_goodjob01 Spy_specialcompleted11

    while(ds_list_size(opponentLines) > 0 && ds_list_size(opponentLines) < 8)//multiply custom voice lines so that its at least bigger than the default ones
    {
        var listSize = ds_list_size(opponentLines);
        for(var i = 0; i < listSize; i++)
            ds_list_add(opponentLines, opponentLines[|i]);
    }
    ds_list_add(opponentLines, "Spy_specialcompleted03");
    ds_list_add(opponentLines, "Spy_specialcompleted07");
    ds_list_add(opponentLines, "Spy_positivevocalization01");
    ds_list_add(opponentLines, "Spy_cheers01");
    ds_list_add(opponentLines, "Spy_positivevocalization05");
    ds_list_add(opponentLines, "Spy_quest_complete_easy_02");
    ds_list_add(opponentLines, "Spy_specialcompleted09");
    ds_list_add(opponentLines, "Spy_taunts15");//Spy_goodjob01 Spy_specialcompleted11
    PlayRandomVoiceLineFromOpponent(opponentLines);
}



if(inAttack && attack == AT_TAUNT && !free)
{
    idleWaitSfxTimer++;
    if(idleWaitSfxTimer == 120)
        PlayRandomVoiceLine("hmm", "Spy_mvm_loot_common03", "Spy_laughshort05");//Spy_laughshort02
}
else
    idleWaitSfxTimer = 0;

fspecialVoicelineCooldown--;

if(invis || (disguised && !disguisedAsSelf) || hitpause) //---------------------------------------------------
    return;

if(inIdleWait && idleWaitInd != idleWaitIndLast)
{
    if(idleWaitInd == 1)
        idleWaitRandSound = random_func(0, 6, true);
        
    if(idleWaitRandSound == 0 && idleWaitInd == 4)
        PlayVoiceLine("Spy_highfive13");
    if(idleWaitRandSound == 1 && idleWaitInd == 12)
        PlayVoiceLine("Spy_battlecry04");
    if(idleWaitRandSound == 2 && idleWaitInd == 8)
        PlayVoiceLine("Spy_taunt_int_16");
    if(idleWaitRandSound == 3 && idleWaitInd == 8)
        PlayVoiceLine("Spy_taunt_int_48");
    if(idleWaitRandSound == 4 && idleWaitInd == 4)
        PlayVoiceLine("hmm");
    if(idleWaitRandSound == 5 && idleWaitInd == 8)
        PlayVoiceLine("Spy_highfive06");
}

if(state == PS_RESPAWN && (state_timer == 120 || (state_timer == 1 && get_match_setting(SET_PRACTICE))))
    // PlayRandomVoiceLine("Spy_jeers02", "Spy_jeers03", "Spy_jeers04", "Spy_jeers05", "Spy_jeers06");
    PlayRandomVoiceLine("Cm_spy_pregamefirst_02", "Cm_spy_pregametie_01", "Spy_mvm_resurrect01", "Spy_mvm_resurrect03", "Spy_mvm_resurrect04", "Spy_mvm_resurrect06", "Spy_mvm_resurrect07", "Spy_mvm_resurrect08", "spy_revenge01", "spy_revenge02", "spy_revenge03");

if(state == PS_HITSTUN && state_timer == 1)
{
    if(sprite_index == sprite_get("hurt") || sprite_index == sprite_get("hurtground"))
        PlayRandomVoiceLine("spy_painsharp01", "spy_painsharp02", "spy_painsharp03", "spy_painsharp04", "Spy_taunt_exert_11", "Spy_taunt_exert_13", "Spy_taunt_exert_15");
    if(sprite_index == sprite_get("bighurt") || sprite_index == sprite_get("uphurt") || sprite_index == sprite_get("downhurt") || sprite_index == sprite_get("spinhurt"))
        PlayRandomVoiceLine("spy_painsevere01", "spy_painsevere02", "spy_painsevere03", "spy_painsevere04", "spy_painsevere05", "spy_helpme01", "spy_medic03", "spy_medic02");
    //TODO: dont cancel these?
}
if(burned == true && burn_timer == 30)
    PlayRandomVoiceLine("Spy_autoonfire02", "Spy_autoonfire03");

if(state == PS_CROUCH)
{
    if(crouchTimer == 60)
        PlayRandomVoiceLine("spycrab01", "spycrab02");
}

if(inAttack && attack == AT_USPECIAL)
{
    if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)/2)
        PlayRandomVoiceLine("Spy_taunt_flip_fun_01", "Spy_taunt_flip_fun_02", "Spy_taunt_flip_fun_09", "Spy_taunt_flip_fun_12");
}

if(inAttack && attack == AT_DSPECIAL)
{
    // if(has_hit_player && !has_hit_player_last)
    if(attachedSapper)
        PlayRandomVoiceLine("Spy_mvm_resurrect05", "Spy_taunt_flip_admire_18", "here");//Spy_mvm_loot_common02
}

if(inAttack && attack == AT_FSPECIAL)
{
    if(window == 1 && window_timer == 1)
        fspecialNormalHitCounter = 0;
}
// if(inAttack && attack == AT_FSPECIAL)
// {
    if(has_hit_player_fspecial)
    {
        fspecialNormalHitCounter++;
        if(fspecialNormalHitCounter > 1)
        {
            if(fspecialVoicelineCooldown < 0)
            {
                fspecialNormalHitCounter = 0;
                fspecialVoicelineCooldown = 120
                PlayRandomVoiceLine("Spy_laughhappy01", "Spy_laughhappy02", "Spy_laughhappy03", "Spy_laughshort06");
            }
        }
    }
    if(has_hit_player_fspecial_crit && fspecialVoicelineCooldown < 0)
    {
        fspecialVoicelineCooldown = 120
        PlayRandomVoiceLine("Spy_laughevil01", "Spy_laughevil02", "Spy_sf12_goodmagic07");
    }
// }

if(inAttack && attack == AT_FSTRONG)
{
    if(window == 1 && window_timer == 1)
    {
        didFstrongPart2 = false;
        PlayRandomVoiceLine("Spy_taunts02", "Spy_taunts09b");
    }
    if(window > 7 || strong_charge > 5)
        didFstrongPart2 = true;
}
// else if(!didFstrongPart2 && !custom_clone)//breaks with clones/mirror match
// {
//     sound_stop(sound_get("Spy_taunts02"));
//     sound_stop(sound_get("Spy_taunts09b"));
// }

if(inAttack && attack == AT_DSTRONG)
{
    if(window == 1 && window_timer == 1)
        PlayRandomVoiceLine("Spy_kill_taunt_03", "Spy_kill_taunt_13", "Spy_kill_taunt_16", "Spy_kill_taunt_17");
}

if(inAttack && attack == AT_USTRONG)
{
    if(window == get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1)
        PlayRandomVoiceLine("Spy_negativevocalization04", "Spy_autocappedintelligence03", "Spy_battlecry04");
}

if(invisAlpha > 0 && invisAlphaLast == 0)
{
    var randDoLongRange = random_func(0, 3, true);
    if(randDoLongRange == 0 && GetClosestEnemyDistance() > 250)
        PlayVoiceLine("Spy_taunt_int_24");
    else
        PlayRandomVoiceLine("Spy_specialcompleted12", "Spy_taunts06", "Spy_battlecry04", "Spy_taunt_flip_fun_01", "forget");
}

if(inAttack && attack == AT_FTILT && backstabSuccess && !backstabSuccessLast)
    PlayRandomVoiceLine("Spy_specialcompleted11", "Spy_specialcompleted02", "Spy_specialcompleted06", "Spy_specialcompleted01");

if(inAttack && attack == AT_DATTACK)
{
    if(window == 1 && window_timer == 1)
        PlayVoiceLine("Spy_laughshort0"+string(random_func(0, 6, true)+1));
    if(window == 6 && window_timer == 1 && !has_hit_player)
        PlayVoiceLine("Spy_taunt_exert_1"+string(random_func(0, 6, true)+1));
        
    if(crouchTimer == 60 && !dattackPlayedWalk)
    {
        dattackPlayedWalk = true;
        PlayRandomVoiceLine("Spy_taunts16", "Spy_tietaunt06", "Cm_spy_pregamefirst_08");
    }
}
else
    dattackPlayedWalk = false;

if(inAttack && attack == AT_UTILT)
{
    if(window == 1 && window_timer == 1)//TODO: only on hit?
        PlayRandomVoiceLine("Spy_battlecry01", "Spy_battlecry02", "Spy_battlecry03", "Spy_autocappedintelligence03", "amigo", "friend");//Spy_battlecry04 Spy_highfive07 Cm_spy_matchwon_06
}

if(inAttack && attack == AT_DAIR)
{
    if(window == 3 && window_timer == 8)//28)
        PlayRandomVoiceLine("Spy_incoming01", "Spy_incoming01", "Spy_taunt_flip_fun_02", "Spy_taunt_flip_fun_09");//Spy_taunt_cong_fun_01 Spy_taunt_flip_fun_12 assasinate
}

if(inAttack && attack == AT_EXTRA_3)//knife taunt
{
    if(window == 1 && window_timer == 15)
        PlayRandomVoiceLine("Spy_stabtaunt08", "Spy_stabtaunt09", "Spy_stabtaunt10", "Spy_stabtaunt11", "Spy_stabtaunt12", "Spy_stabtaunt13", "Spy_stabtaunt14", "Spy_stabtaunt15", "Spy_stabtaunt16");
    if(window == 3 && window_timer == 32)
        PlayRandomVoiceLine("Spy_laughevil01", "Spy_laughevil02", "Spy_sf12_goodmagic07");
}

if(inAttack && attack == AT_EXTRA_2)//terminal taunt
{
    // if(window == 1 && window_timer == 15)//15)
    //     PlayRandomVoiceLine("Spy_taunt_exert_11", "Spy_taunt_exert_14", "Spy_taunt_exert_15");
    if(window == 1 && window_timer == 50)
        PlayRandomVoiceLine("Spy_mvm_loot_common03", "Spy_positivevocalization01", "expense", "Spy_mvm_resurrect05");//Spy_mvm_loot_common01
		
    if(window == 4 && window_timer == 28)//image
        PlayRandomVoiceLine("Spy_laughevil02", "Spy_cheers06", "Spy_laughshort05");//Spy_mvm_loot_common03 Spy_mvm_loot_rare02
    if(window == 4 && tauntIsOnWaitFrame && !tauntIsOnWaitFrameLast)
    {
        if(terminalImageSuccess)
            PlayRandomVoiceLine("Spy_stabtaunt02", "Spy_taunts04", "Spy_taunts10", "Spy_sf13_influx_small04");//Spy_sf13_influx_small06
        else
            PlayRandomVoiceLine("Spy_trade_08", "spy_trade_17", "spy_trade_18", "Spy_tietaunt02", "Spy_tietaunt03", "Spy_tietaunt07", "Spy_tietaunt08", "Spy_mvm_loot_godlike02");//Spy_mvm_loot_godlike01
    }
    if(window == 5)//advert
    {
        if(window_timer == 18)
            PlayRandomVoiceLine("Spy_jeers06", "Spy_negativevocalization06", "Spy_sf12_badmagic05", "Spy_sf12_badmagic06", "Spy_noinvis_03");//Spy_negativevocalization08 Spy_negativevocalization09
        if(window_timer == 155)
            PlayRandomVoiceLine("Spy_taunt_dosi_int_12", "Spy_taunt_dosi_int_14", "Spy_taunt_int_01", "Spy_taunt_int_03");
        if(window_timer == 200)
            PlayVoiceLine("scream");//Spy_taunt_flip_fun_02
    }

    if(window == 6)//text
    {
        if(nctimer == 170)
            PlayRandomVoiceLine("hmm", "letssee");

        if(!terminalTextSuccess && nctimer == 270)
            PlayRandomVoiceLine("Spy_jeers06", "Spy_negativevocalization06", "Spy_sf12_badmagic05", "Spy_sf12_badmagic06");//Spy_negativevocalization08 Spy_negativevocalization09

        if(terminalTextSuccess && nctimer == 240)
            PlayRandomVoiceLine("Spy_mvm_resurrect05", "Spy_mvm_loot_common03", "Spy_mvm_loot_common01", "Spy_positivevocalization01");//knew Spy_sf13_influx_small04 Spy_sf13_influx_small06
    }
    // if(window == 7 && window_timer == 20)
    // {
    //     // PlayRandomVoiceLine("Spy_taunt_dosi_end_03", "Spy_trade_22");
    //     // PlayVoiceLine("done");
    //     PlayRandomVoiceLine("Spy_taunt_exert_11", "Spy_taunt_exert_14", "Spy_taunt_exert_15");
    // }
}

//copied to other files
#define PlayRandomVoiceLine()
{
    var randSound = random_func(0, argument_count, true);
    PlayVoiceLine(argument[randSound]);
}
#define PlayVoiceLine()
{
	var clipName = argument[0];
	var volume = argument_count > 1 ? argument[1] : 1;
    sound_stop(lastVoiceLine);
    lastVoiceLine = sound_play(sound_get(clipName), false, noone, volume);
}
#define PlayRandomVoiceLineFromOpponent()
{
    var randSound = random_func(0, ds_list_size(opponentLines), true);
    PlayVoiceLine(opponentLines[|randSound]);
}

#define GetClosestEnemyDistance()
{
    var closestEnemyDistance = 100000;
    with(oPlayer)
    {
        if(player == other.player)
            continue;
        var distance = point_distance(x, y, other.x, other.y);
        if(distance < closestEnemyDistance)
            closestEnemyDistance = distance;
    }
    return closestEnemyDistance;
}

#define CharIsStealthyOrGentlemen()
{
    if(!variable_instance_exists(self, "url"))//TODO: not sure why shit happened, not even with base cast?
        return false;
    return url == other.url//spy
        || url == 3018750370 || url == 2013448650 || url == 2010033560//joker
        || url == 2801695646//snake
        || url == 2657891799//greninja
        || url == 2859393381 || url == 2357967710//phoenix wright
        || url == 2404624900//ryu
        || url == 2866565174//sly
        || select == 6;//forsburn
}
#define CharIsFast()
{
    if(!variable_instance_exists(self, "url"))
        return false;
    return CharIsScout()
        || url == 2285717462 || url == 3039831352 || url == 2955738646 || url == 2316161693 || url == 1871950055 || url == 1899673724 || url == 3359393961 || url == 2294421289 || url == 2637355399 || url == 1960297865 || url == 1870554764 || url == 2139665984 || url == 2987223373 || url == 2442552184//sonic
        || url == 1967487025//shadow
        || url == 2190448871 || url == 2063121680 || url == 3126754621//speedrunner
        || url == 1989766083 || url == 1871153050 || url == 1946281060 || url == 1941825892 || url == 2043423246//fox
        || url == 2006251771 || url == 1877253352 || url == 1991613574 || url == 1876639101 || url == 1940734817 || url == 1891823218//falco
        || url == 2022986094 || url == 2650595821 || url == 2460054731//falcon
        || url == 2904498757//peppino
        || url == 2990315396//noise
        || url == 1968068304//epinel
        || url == 2817605804//jerma
        || select == 7;//maypul
}
#define CharIsScout()
{
    if(!variable_instance_exists(self, "url"))
        return false;
    return url == 1877384987 || url == 1979057480 || url == 2438980912 || url == 2271816497;//scout
}
#define CharIsExplosive()
{
    if(!variable_instance_exists(self, "url"))
        return false;
    return CharIsDemo()
        || url == 1892960445//creeper
        || CharThrowsBalls()
        || CharIsSoldier()
        || url == 1867713261//tnt
        || url == 1883487062;//wick
}
#define CharIsSoldier()
{
    if(!variable_instance_exists(self, "url"))
        return false;
    return url == 2855638778 || url == 2840091641;//soldier
}
#define CharIsDemo()
{
    if(!variable_instance_exists(self, "url"))
        return false;
    return url == 2192126112;//demo
}
#define CharThrowsBalls()
{
    if(!variable_instance_exists(self, "url"))
        return false;
    return CharIsDemo()
        || url == 1871989159 || select == 16//mollo
        || url == 2035357584//nade
        || url == 2073574184;//metal slug rebel
}
#define CharIsEngi()
{
    if(!variable_instance_exists(self, "url"))
        return false;
    return url == 3162906521 || url == 2113500915;//engi
}