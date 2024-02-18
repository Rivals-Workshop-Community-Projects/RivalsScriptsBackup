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

//Resets the USpecial cooldown
if (!free || state == PS_WALL_JUMP || state == PS_HITSTUN){
	move_cooldown[AT_USPECIAL] = 0;
}

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
        set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 7);
        set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.1);
        set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 1.1);
    }
    if (explosion_cont >= 6 && explosion_cont < 9){
        set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 8);
        set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.1);
        set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 1.1);
    }
    if (explosion_cont >= 9 && explosion_cont < 12){
        set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 9);
        set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.2);
        set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 1.2);
    }
    if (explosion_cont >= 12 && explosion_cont < 15){
        set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 10);
        set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.3);
        set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 1.3);
    }
    if (explosion_cont >= 15 && explosion_cont < 18){
        set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 11);
        set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.4);
        set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 1.4);
    }
    if (explosion_cont >= 18 && explosion_cont < 21){
        set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 12);
        set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.5);
        set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 1.5);
    }
    if (explosion_cont >= 21 && explosion_cont < 24){
        set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 13);
        set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.6);
        set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 1.6);
    }
    if (explosion_cont >= 24 && explosion_cont < 30){
        set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 14);
        set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.7);
        set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 1.7);
    }
    if (explosion_cont >= 30){
        set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 15);
        set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.8);
        set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 1.8);
    }
}

if (tokens > 0 && !free && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state != PS_PRATLAND){
    tokens -= .025;
}

if (tokens > 2){
    move_cooldown[AT_NSPECIAL] = 999;
    if (tokens >= 3.9){
    	tokens = 3.8;
    }
}
if (tokens <= 2){
    move_cooldown[AT_NSPECIAL] = 0;
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
/*
if get_player_color(player) = 16 {

if (cor_dir == 1){
    corG+=1.5;
    corB+=1.5;
}

if (corG >= 255){
    cor_dir = 2;
}

if (cor_dir == 2){
    corR-= .48;
    corG-= 1.5;
}

if (corR <= 178){
    cor_dir = 3;
    corG = 23;
    corB = 255;
}

if (cor_dir == 3){
    corR+= .5;
    corG-= .08;
    corB-= 1.6;
}

if (corR > 255 && corG != 255){
    cor_dir = 1;
    corR = 255;
    corG = -50;
    corB = -50;
}

round(corR);
round(corG);
round(corB);

set_color_profile_slot( 16, 2, corR,corG,corB); 

set_color_profile_slot( 16, 5, corR,corG,corB); 

set_color_profile_slot( 16, 6, corR-70,corG+20,corB+20); 
//uses that variable to set the slot's new colours
}