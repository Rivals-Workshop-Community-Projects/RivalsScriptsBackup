//Set Attack

//Despecial determine script value and assign it to variable that Article 1 can reference.
dspecial_script_hitbox_time_length = get_hitbox_value(AT_DSPECIAL,1, HG_LIFETIME);

if(attack == AT_FSPECIAL && free){attack = AT_FSPECIAL_AIR;}

// Fspecial Section
if(attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR){
    fspecial_charge = 0;
    reset_window_value(AT_FSPECIAL,4,AG_WINDOW_HSPEED);
    reset_window_value(AT_FSPECIAL_AIR,4,AG_WINDOW_HSPEED);
    
    reset_window_value(AT_FSPECIAL,4,AG_WINDOW_LENGTH);
    reset_window_value(AT_FSPECIAL_AIR,4,AG_WINDOW_LENGTH);
}

//Shell rotate and bounce coding for reset---------------------
if(attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR){

    reset_hitbox_value(attack, 2, HG_PROJECTILE_HSPEED);
    reset_hitbox_value(attack, 2, HG_PROJECTILE_VSPEED);

    reset_hitbox_value(attack, 3, HG_PROJECTILE_HSPEED);
    reset_hitbox_value(attack, 3, HG_PROJECTILE_VSPEED);
    
    set_hitbox_value(attack, 2, HG_PROJECTILE_HSPEED, -1 * random_func(0, 5, false ));
    set_hitbox_value(attack, 2, HG_PROJECTILE_VSPEED, random_func(1, 2, false ));
    
    set_hitbox_value(attack, 3, HG_PROJECTILE_HSPEED, -1 * random_func(2, 5, false ));
    set_hitbox_value(attack, 3, HG_PROJECTILE_VSPEED, random_func(3, 2, false ));
}
// Unused Code  ---------------------------------------------------
/*

//NSPECIAL_2 Direction Reset, defaults to 180 to be in front of the player ------------
/*
if (attack == AT_NSPECIAL) {
nspecial_direction = 180;
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y);
}

// Aerial Version Coding ------------------
if (attack == AT_DSPECIAL && free) {  // Old Code, may need to get rid of it.
    attack = AT_DSPECIAL_AIR;
}

// Shell timer Code initialization  ------------------- // Old Code, may need to get rid of it.
if(attack == AT_NSPECIAL){
    shell_1_timer = 0;
    shell_2_timer = 0;
}

//Uspecial Pratfall Reset ----------------------------
if (attack == AT_USPECIAL) {
    reset_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE); // Set back to pratfall Window
    reset_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED); // No boost normally unless on ground
    if(!free) {
    set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -10); // add bossted V speed if on ground
    }
}