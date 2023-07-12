//Voice Lines!!

/*
if (state == PS_FIRST_JUMP && state_timer == 0){
    sound_play( sound_get( "VFX_First_Jump" ) );
}

if (state == PS_DOUBLE_JUMP && state_timer == 0){
    sound_play( sound_get( "VFX_Double_Jump" ) );
}
*/

//death_voice = random_func(0, 4, true);

//Default Voice
jab_1_voice = sound_get("VFX_Jab1_1");
jab_2_voice = sound_get("VFX_Jab2_1");
jab_3_voice = sound_get("VFX_Jab3_1");

ftilt_voice = sound_get("VFX_Ftilt");
dtilt_voice = sound_get("VFX_Dtilt");
utilt_voice = sound_get("VFX_Utilt");

fstrong_voice = sound_get("VFX_Fstrong");
dstrong_voice = sound_get("VFX_Utilt");
ustrong_voice = sound_get("VFX_Ustrong");

fspecial_voice = sound_get("VFX_FSpecial_Start");
dspecial_voice = sound_get("BUTT_SMASH");
uspecial_voice = sound_get("VFX_Uspecial");

taunt_voice = sound_get("VFX_Taunt")

//KO Voice Line(s)
death_voice = random_func(0, 4, true);

//Jab Voice Lines

if attack == AT_JAB && state == PS_ATTACK_GROUND && window == 1 && window_timer == 1{
    jab_1_voice = random_func(0, 2, true);
}
if jab_1_voice == 0{
    jab_1_voice = sound_get("VFX_Jab1_1");
    jab_2_voice = sound_get("VFX_Jab2_1");
    jab_3_voice = sound_get("VFX_Jab3_1");
}
if jab_1_voice == 1{
    jab_1_voice = sound_get("VFX_Jab1_2");
    jab_2_voice = sound_get("VFX_Jab2_2");
    jab_3_voice = sound_get("VFX_Jab3_2");
}

if (state == PS_ATTACK_GROUND && attack == AT_JAB && hitpause == false){
    if window == 1 && window_timer == 2{
        sound_play( jab_1_voice );
    }
    if window == 3 && window_timer == 3{
        sound_play( jab_2_voice );
    }
    if window == 5 && window_timer == 5{
        sound_play( jab_3_voice );
    }
}

//Tilt Voice Lines
if attack == AT_FTILT && (state == PS_ATTACK_GROUND) && window == 2 && window_timer == 4 && hitpause == false{
    sound_play( sound_get("VFX_Ftilt") );
}

if attack == AT_UTILT && (state == PS_ATTACK_GROUND) && window == 2 && window_timer == 4 && hitpause == false{
    sound_play( sound_get("VFX_Utilt") );
}

if attack == AT_DTILT && (state == PS_ATTACK_GROUND) && window == 2 && window_timer == 3 && hitpause == false{
    sound_play( sound_get("VFX_Dtilt") );
}

//Strongs Voice Lines
if attack == AT_FSTRONG && (state == PS_ATTACK_GROUND) && window == 2 && window_timer == 0 && hitpause == false{
    sound_play( sound_get("VFX_Fstrong") );
}

if attack == AT_USTRONG && (state == PS_ATTACK_GROUND) && window == 2 && window_timer == 2 && hitpause == false{
    sound_play( sound_get("VFX_Ustrong") );
}

if attack == AT_DSTRONG && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && window == 2 && window_timer == 3 && hitpause == false{
    sound_play( sound_get("VFX_Utilt") );
}

//Specials Voice Lines
if attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window == 1 && window_timer == 6 && hitpause == false{
    sound_play( fspecial_sound );
}

if attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window == 2 && window_timer == 1 && hitpause == false{
    sound_play( sound_get("VFX_Uspecial") );
}

//Taunt Voice Line
if attack == AT_TAUNT && state == PS_ATTACK_GROUND && window == 2 && window_timer == 6{
    sound_play(sound_get("VFX_Taunt"));
}
if attack != AT_TAUNT || state != PS_ATTACK_GROUND{
    sound_stop(sound_get("VFX_Taunt"));
}

//Final Smash
if attack == 49
&& (state == PS_ATTACK_GROUND
|| state == PS_ATTACK_AIR)
&& window == 1 && window_timer == 5{
    sound_play(sound_get("VFX_FinalSmash_1"));
}


/*Galaxy Voice Line
if (galaxy_timer == 0 and instance_exists(hit_player_obj) and hit_player_obj.activated_kill_effect)
{
    galaxy_timer = 90;
    galaxy_sound = random_func(0, 4, true); //NOT INCLUDING HIGH VALUE
    if galaxy_sound == 0{
        sound_play(sound_get("VFX_Galaxy_1"));
    }
    else if galaxy_sound == 1{
        sound_play(sound_get("VFX_Galaxy_2"));
    }
    else if galaxy_sound == 2{
        sound_play(sound_get("VFX_Galaxy_3"));
    }
    else if galaxy_sound == 3{
        sound_play(sound_get("VFX_Galaxy_4"));
    }
    
    //Sound stoppers
    sound_stop(jab_1_voice);
    sound_stop(jab_2_voice);
    sound_stop(jab_3_voice);
}
galaxy_timer = max(galaxy_timer-1,0);*/