//Down Air Rune
if attack == AT_DAIR{
    if has_rune("H"){
        set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 6);
        set_hitbox_value(AT_DAIR, 7, HG_DAMAGE, 8);
    }
    else{
        set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
        set_hitbox_value(AT_DAIR, 7, HG_DAMAGE, 4);
    }
}

//Egg Lay
if attack == AT_NSPECIAL{
    tongue_length = 0;
}

//Egg Roll
if attack == AT_FSPECIAL{
    
    egg_roll_timer = 180;
    
    if egg_roll_jump == true{
        set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED, -6);
    }
    if egg_roll_jump == false{
        set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED, -1);
    }
    
    //Rune - Egg Roll Spike & Bury
    if has_rune("K"){
        set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 270);
        set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .4);
        set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 15);
    }
    else{
        set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 40);
        set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
        set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
        set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 0);
    }
    
}

//Egg Throw
if attack == AT_USPECIAL{
    if free{
        set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
        
        set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -6);
        set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
    }
    else{
        set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 0);
        
        set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0)
        set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);
    }
}

//Ground Pound aerial/grounded

if attack == AT_DSPECIAL{
    if !free{
        set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 5);
        set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -15);
        set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
        set_num_hitboxes(AT_DSPECIAL, 2);
    }
    else{
        set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 0);
        set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
        set_num_hitboxes(AT_DSPECIAL, 1);
        window = 2;
    }
}

//Reset Throw Power
if attack == AT_USPECIAL{
    
    throw_power = 0;
    
}