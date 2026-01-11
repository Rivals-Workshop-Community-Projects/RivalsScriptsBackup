//Jab Whiff/Hit Reset

if attack == AT_JAB{
    
    set_attack_value(AT_JAB, AG_NUM_WINDOWS, 12);
    set_window_value(AT_JAB, 8, AG_WINDOW_GOTO, 10);
    
}

//Foward Special Type Cycle

if attack == AT_FSPECIAL && move_cooldown[attack] <= 0{
    
    fspec_has_hit = false;
    
    //Reset TAY Landing Lag
    
    set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
    set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 0);
    
    //Use FSpecial Type
    
    switch fspecial_type{
        
        case 0: //Kah
        
            // set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
            window = 1;
            fspecial_type = 1;
            
        break;
        
        case 1: //Rah
        
            // set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
            window = 4;
            fspecial_type = 2;
            
        break;
        
        case 2: //Tay
        
            // set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 10);
            window = 7;
            fspecial_type = 3;
            
        break;
        
        case 3:
        // set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 10);
        attack = AT_FSPECIAL_2;
        fspecial_type = 0;
        sound_play(asset_get("sfx_mol_tauntup"));
        spawn_hit_fx(x, y - char_height/2, HFX_CLA_TIP_BIG);
        break;
        
    }
    
}

//Up Special Skip Window 1 in Air

if attack == AT_USPECIAL{
    
    if free{
        window = 2;
        //set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
    }
    else{
        //set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
    }
    
}


//Down Special
    // Charge Shenanigans

if attack == AT_DSPECIAL{
    //Make full length of attack work
    set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 7);
    
    //If tongue at full charge, send tongue out
    if tongue_charge >= tongue_charge_max{
        set_window_value(AT_DSPECIAL, 1, AG_WINDOW_GOTO, 4);
    }
    else{
        set_window_value(AT_DSPECIAL, 1, AG_WINDOW_GOTO, 2);
    }
    
    //Shoot Bubble if Stored Bubble
    if dspec_proj_type != 0{
        attack = AT_DSPECIAL_AIR;
        window = 6;
    }
    
}