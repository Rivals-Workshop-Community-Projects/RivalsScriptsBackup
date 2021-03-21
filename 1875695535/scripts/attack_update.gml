// attack_update

//B - Reversals

if (attack == AT_USPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL){
    set_attack(AT_NSPECIAL);
}

if (free = true && attack == AT_NSPECIAL){
    if (ragemode == 1){
    air_max_speed = 12;
    }
    else {
    air_max_speed = 6;
    }
}

if (free = false && attack == AT_NSPECIAL){
    if (ragemode == 1){
    air_max_speed = 7;
    }
    else {
    air_max_speed = 3;
    }
}

if (window == 2 && window_timer == 1 && attack == AT_NSPECIAL && hitpause = 0){
    sound_play( sound_get( "jumprise" ) );
}

if (window == 4 && window_timer == 1 && attack == AT_NSPECIAL && hitpause = 0){
    sound_play( sound_get( "URGH" ) );
    shake_camera(7, 10);
    spawn_hit_fx( x, y, 304 );
}

if (window == 2 && window_timer == 3 && attack == AT_NSPECIAL){
    destroy_hitboxes();
}

if (window == 3 && attack == AT_NSPECIAL){
    max_fall = 50;
    set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -25);
}

if (down_down && attack == AT_NSPECIAL){
    fall_through = true;
}

if (!down_down && attack == AT_NSPECIAL){
    fall_through = false;
}


if (window == 4 && attack == AT_NSPECIAL){
    max_fall = 15;
}

if (window == 5 && attack == AT_NSPECIAL){
    set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 15);
    set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 15);
}

if (attack == AT_NSPECIAL && window = 4 && window_timer = 3){
    destroy_hitboxes();
    super_armor = false;
}


if (up_down && attack == AT_NSPECIAL && window == 1){
    set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -32);
    set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 18);
    set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 18);
}

if (down_down && attack == AT_NSPECIAL && window == 1){
    set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -15);
    set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 8);
    set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 8);
}



if (attack == AT_NSPECIAL && window = 2 ){
    if (ragemode == 1){
    super_armor = true;
    }
    else {
        soft_armor = 12;
    }
}

if (attack == AT_NSPECIAL && window = 3 ){
        soft_armor = 0;
}


if (ragemode == 1 && attack == AT_NSPECIAL && window = 3) {
    super_armor = true;
}

