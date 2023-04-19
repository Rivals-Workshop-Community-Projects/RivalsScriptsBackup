//Swap out sprites for attacks
/*
switch(SL_mode_active){
    case 0:
        reset_attack_value(AT_JAB,AG_SPRITE);
        reset_attack_value(AT_FTILT,AG_SPRITE);
        reset_attack_value(AT_UTILT,AG_SPRITE);
        reset_attack_value(AT_DTILT,AG_SPRITE);
        reset_attack_value(AT_DATTACK,AG_SPRITE);
        reset_attack_value(AT_USTRONG,AG_SPRITE,);
        reset_attack_value(AT_FSTRONG,AG_SPRITE,);
        reset_attack_value(AT_DSTRONG,AG_SPRITE);
        reset_attack_value(AT_NAIR,AG_SPRITE);
        reset_attack_value(AT_FAIR,AG_SPRITE);
        reset_attack_value(AT_DAIR,AG_SPRITE);
        reset_attack_value(AT_BAIR,AG_SPRITE);
        reset_attack_value(AT_UAIR,AG_SPRITE);
        reset_attack_value(AT_USPECIAL,AG_SPRITE);
        reset_attack_value(AT_NSPECIAL,AG_SPRITE);
        reset_attack_value(AT_NSPECIAL,AG_AIR_SPRITE);
        reset_attack_value(AT_FTHROW,AG_SPRITE);
        reset_attack_value(AT_FSPECIAL,AG_SPRITE);
        reset_attack_value(AT_FSPECIAL_AIR,AG_SPRITE);
        
        //Landing Lag
        reset_attack_value(AT_NAIR,AG_LANDING_LAG);
        reset_attack_value(AT_NAIR,AG_LANDING_LAG);
        reset_attack_value(AT_FAIR,AG_LANDING_LAG);
        reset_attack_value(AT_UAIR,AG_LANDING_LAG);
        reset_attack_value(AT_DAIR,AG_LANDING_LAG);
        reset_attack_value(AT_BAIR,AG_LANDING_LAG);
        
    break;
    case 1:
        set_attack_value(AT_JAB,AG_SPRITE,sprite_get("sl_jab"));
        set_attack_value(AT_FTILT,AG_SPRITE,sprite_get("sl_ftilt"));
        set_attack_value(AT_UTILT,AG_SPRITE,sprite_get("sl_utilt"));
        set_attack_value(AT_DTILT,AG_SPRITE,sprite_get("sl_dtilt"));
        set_attack_value(AT_DATTACK,AG_SPRITE,sprite_get("sl_dattack"));
        set_attack_value(AT_USTRONG,AG_SPRITE,sprite_get("sl_ustrong"));
        set_attack_value(AT_FSTRONG,AG_SPRITE,sprite_get("sl_fstrong"));
        set_attack_value(AT_DSTRONG,AG_SPRITE,sprite_get("sl_dstrong"));
        set_attack_value(AT_NAIR,AG_SPRITE,sprite_get("sl_nair"));
        set_attack_value(AT_FAIR,AG_SPRITE,sprite_get("sl_fair"));
        set_attack_value(AT_DAIR,AG_SPRITE,sprite_get("sl_dair"));
        set_attack_value(AT_BAIR,AG_SPRITE,sprite_get("sl_bair"));
        set_attack_value(AT_UAIR,AG_SPRITE,sprite_get("sl_uair"));
        set_attack_value(AT_USPECIAL,AG_SPRITE,sprite_get("sl_uspecial"));
        set_attack_value(AT_NSPECIAL,AG_SPRITE,sprite_get("sl_nspecial")); 
        set_attack_value(AT_NSPECIAL,AG_AIR_SPRITE,sprite_get("sl_nspecial_air")); 
        set_attack_value(AT_FTHROW,AG_SPRITE,sprite_get("sl_nspecial")); 
        set_attack_value(AT_FSPECIAL,AG_SPRITE,sprite_get("sl_fspecial"));
        set_attack_value(AT_FSPECIAL_AIR,AG_SPRITE,sprite_get("sl_fspecial"));
        
        // Landing Lag
        set_attack_value(AT_NAIR,AG_LANDING_LAG,4);
        set_attack_value(AT_FAIR,AG_LANDING_LAG,6);
        set_attack_value(AT_DAIR,AG_LANDING_LAG,6);
        set_attack_value(AT_BAIR,AG_LANDING_LAG,6);
        set_attack_value(AT_UAIR,AG_LANDING_LAG,4);
    break;
}
*/
// Set Attack
if(attack == AT_FSPECIAL && free){
    attack = AT_FSPECIAL_AIR;
}

//Reset sprite offsets to default
if(attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR || attack == AT_EXTRA_3){
    draw_y = -1 * (122 - 90); // Set draw cause the sprite roation messed with y drawing
}

// SL Power Geiser
if(attack == AT_DSPECIAL && SL_mode_active){
	attack = AT_DSPECIAL_2;
}


// Reset Dspeccial
if(attack == AT_DSPECIAL){
	reset_attack_value(AT_DSPECIAL,AG_NUM_WINDOWS);
}

// SL Taunt
if(attack == AT_TAUNT && SL_mode_active){
	attack = AT_TAUNT_2;
}

// Reset DAIR
if(attack == AT_DAIR){
    for(var current_hitbox = 1; current_hitbox < 6; current_hitbox++){
			reset_hitbox_value(AT_DTHROW,current_hitbox,HG_HITBOX_Y);
	}
}

//Reset Nair Stuff
if(attack == AT_NAIR){
	reset_attack_value(AT_NAIR,AG_NUM_WINDOWS);
	reset_window_value(AT_NAIR, 3, AG_WINDOW_CANCEL_TYPE);
}
