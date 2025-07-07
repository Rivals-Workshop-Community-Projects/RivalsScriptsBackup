//Voice Lines!!!

// Set Voice Lines

set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("VFX_Taunt"));

switch(yoshi_voice_rando){
    case 0:
    
    jump_voice = (sound_get("VFX_Jump_1_1"));
    strong_voice = (sound_get("VFX_Strong_1"));
    
    break;
    
    case 1:
    
    jump_voice = (sound_get("VFX_Jump_1_2"));
    strong_voice = (sound_get("VFX_Strong_2"));
    
    break;
    
    case 2:
    
    jump_voice = (sound_get("VFX_Jump_1_3"));
    strong_voice = (sound_get("VFX_Strong_3"));
    
    break;
    
    case 3:
    
    strong_voice = (sound_get("VFX_Strong_4"));
    
    break;
}

// Play Voice Lines

if state == PS_FIRST_JUMP && state_timer == 0{
    yoshi_voice_rando = random_func(0, 3, true);
    sound_play(jump_voice);
}

if state == PS_DOUBLE_JUMP && state_timer == 0{
    djump_voice = sound_play(sound_get("VFX_Jump_2"));
}

if state != PS_IDLE_AIR && state != PS_DOUBLE_JUMP{
    sound_stop(djump_voice);
}

//Attack-Specific

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
    
    if attack == AT_FSTRONG && window == 2 && window_timer == 4
    || attack == AT_USTRONG && window == 2 && window_timer == 3
    || attack == AT_DSTRONG && window == 2 && window_timer == 3{
        
        yoshi_voice_rando = random_func(0, 4, true);
        sound_play(strong_voice);
        
    }
    
    //Egg Lay
    if attack == AT_NSPECIAL{
        if window == 1 && window_timer == 14{
            sound_play(sound_get("VFX_Tongue_Out"));
        }
    }
    if attack == AT_NSPECIAL_2{
        if window == 3 && window_timer == 1{
            sound_play(sound_get("VFX_Egg_Lay"));
        }
    }
    
    //Ground Pound
    if attack == AT_DSPECIAL{
        
        if window == 2 && window_timer == 0{
            sound_play(sound_get("VFX_DSpecial_1"));
        }
        if window == 3 && window_timer == (get_window_value(attack,window,AG_WINDOW_LENGTH)-1){
            sound_play(sound_get("VFX_Strong_1"));
        }
        
    }
    
}