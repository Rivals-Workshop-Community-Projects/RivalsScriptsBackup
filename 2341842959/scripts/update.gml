//update


/*
if (state == PS_ATTACK_GROUND && attack == AT_FTILT && window == 1 && window_timer == 5){
    with (oPlayer){
        if (other.spr_dir == spr_dir){
            other.ftilt_back = true;
        }
        else {
            other.ftilt_back = false;
        }
    }
}
*/


if (state == PS_DOUBLE_JUMP && state_timer == 1){
    gas_djumpx = x;
    gas_djumpy = y;
    gas_djump = 1;
}

if (gas_djump == 1){
    gas_djump_cont += .25;
}

if (gas_djump_cont > 4){
    gas_djump = 0;
    gas_djump_cont = 0;
}

if (gas_fair_cont > 0){
    gas_fair_cont += .20;
}
if (gas_fair_cont > 5){
    gas_fair_cont = 0;
}

if (gas_dair_cont > 0){
    gas_dair_cont += .15;
}
if (gas_dair_cont > 4){
    gas_dair_cont = 0;
}

if (gas_bair_cont > 0){
    gas_bair_cont += .20;
}
if (gas_bair_cont > 6){
    gas_bair_cont = 0;
}

if (gas_nspecial_cont > 0){
    gas_nspecial_cont += .2;
}
if (gas_nspecial_cont > 6){
    gas_nspecial_cont = 0;
}

if (explosion_cont > 0){
    if (explosion_cont >= 3 && explosion_cont < 6){
        set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 7);
        set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.1);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1.1);
    }
    if (explosion_cont >= 6 && explosion_cont < 9){
        set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 8);
        set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.1);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1.1);
    }
    if (explosion_cont >= 9 && explosion_cont < 12){
        set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 9);
        set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.2);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1.2);
    }
    if (explosion_cont >= 12 && explosion_cont < 15){
        set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 10);
        set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.3);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1.3);
    }
    if (explosion_cont >= 15 && explosion_cont < 18){
        set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 11);
        set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.4);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1.4);
    }
    if (explosion_cont >= 18 && explosion_cont < 21){
        set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 12);
        set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.5);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1.5);
    }
    if (explosion_cont >= 21 && explosion_cont < 24){
        set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 13);
        set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.6);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1.6);
    }
    if (explosion_cont >= 24 && explosion_cont < 30){
        set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 14);
        set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.7);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1.7);
    }
    if (explosion_cont >= 30){
        set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 15);
        set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.8);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1.8);
    }
}

if (tokens > 0 && !free && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    tokens -= .025;
}

if (tokens > 3){
    move_cooldown[AT_FSPECIAL] = 999;
    move_cooldown[AT_DSPECIAL] = 999;
    move_cooldown[AT_USPECIAL] = 999;
}
if (tokens < 3){
    move_cooldown[AT_FSPECIAL] = 0;
    move_cooldown[AT_DSPECIAL] = 0;
    move_cooldown[AT_USPECIAL] = 0;
}

if (introTimer2 < 2) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 8) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. 
//If your animation does not involve much movement, this may not be necessary.

