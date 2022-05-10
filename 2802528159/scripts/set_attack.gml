switch(attack){
    case AT_NSPECIAL:
    set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4 + (2 * anger_state));
    set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 15 + (2 * anger_state));
    set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get(string(plate_state) + "_nspecial"));
    sprite_change_offset("0_nspecial_air", 77, 160 - 26);
	sprite_change_offset("1_nspecial_air", 77, 160 - 26);
	sprite_change_offset("nspecial_air_hurt", 154, 320 - 52);
    timing = false;
    hit = false;
    x_pos = x;
    x_pos %= 200;
    random_timing = random_func_2(x_pos, 4, true);
    opp_timing = false;
	opp_timed = false;
	set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
    /*switch(random_timing){
        case 0:
        set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 4);
        
        set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 4);
        
        set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 4);
        
        set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 4);
        break;
        
        case 1:
        set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 6);
        
        set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 6);
        
        set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 6);
        
        set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 6);
        break;
        
        case 2:
        set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 6);
        
        set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 30);
        
        set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 6);
        
        set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 30);
        break;
        
        case 3:
        set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 40);
        
        set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 6);
        
        set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 40);
        
        set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 6);
        break;
    }*/
    break;
    
    case AT_DSTRONG:
    set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get(string(plate_state) + "_dstrong"));
    //hitbox adapt to wall
    if(wall == 0 || wall == 3){
        sprite_change_offset("0_dstrong", 128, 161);
        sprite_change_offset("1_dstrong", 128, 161);
        set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 120);
        set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 30);
        set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
        set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 6);
        set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 6);
    }else{
        sprite_change_offset("0_dstrong", 128, 152);
        sprite_change_offset("1_dstrong", 128, 152);
        set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 30);
        set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 120);
        set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 8);
        set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 8);
        set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 8);
    }
    set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, -70 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 90 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 90 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 120 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 60 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    switch(wall){
        case 0:
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -10);
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -15);
        
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -90);
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -15);
        
        set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 70);
        set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -15);
        
        set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -100);
        set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -36);
        
        set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 84);
        set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -36);
        break;
        
        case 1:
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -10 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 3 * spr_dir);
        
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -90 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 3 * spr_dir);
        
        set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, 70 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 3 * spr_dir);
        
        set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -100 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -18 * spr_dir);
        
        set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, 84 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -18 * spr_dir);
        break;
        
        case 2:
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, 10 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -3 * spr_dir);
        
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, 90 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -3 * spr_dir);
        
        set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -70 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -3 * spr_dir);
        
        set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, 100 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 18 * spr_dir);
        
        set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -84 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 18 * spr_dir);
        break;
        
        case 3:
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 10);
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, 15);
        
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 90);
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, 15);
        
        set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -70);
        set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, 15);
        
        set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 100);
        set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, 36);
        
        set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -84);
        set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, 36);
        break;
    }
    break;
    
    case AT_FSTRONG:
    set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get(string(plate_state) + "_fstrong"));
    //hitbox adapt to wall
    if(wall == 0 || wall == 3){
        sprite_change_offset("0_fstrong", 84, 86);
        sprite_change_offset("1_fstrong", 84, 86);
        set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 80);
        set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 50);
        set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 40);
        set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 30);
    }else{
        sprite_change_offset("0_fstrong", 84, 77);
        sprite_change_offset("1_fstrong", 84, 77);
        set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 50);
        set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 80);
        set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 30);
        set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 40);
        
    }
    set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 55 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 35 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    switch(wall){
        case 0:
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 80);
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -31);
        
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 128);
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -31);
        
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 148);
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -31);
        break;
        
        case 1:
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, 80 * spr_dir * -1);
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, -12 * spr_dir);
        
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, 128 * spr_dir * -1);
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, -12 * spr_dir);
        
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, 148 * spr_dir * -1);
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, -12 * spr_dir);
        break;
        
        case 2:
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, 80 * spr_dir);
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 11 * spr_dir);
        
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, 128 * spr_dir);
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 11 * spr_dir);
        
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, 148 * spr_dir);
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 11 * spr_dir);
        break;
        
        case 3:
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, -80);
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, 30);
        
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, -128);
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, 30);
        
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, -148);
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, 30);
        break;
    }
    break;
    
    case AT_USTRONG:
    ustrong_whiff = true;
    set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get(string(plate_state) + "_ustrong"));
    //hitbox adapt to wall
    if(wall == 0 || wall == 3){
        sprite_change_offset("0_ustrong", 123, 110);
        sprite_change_offset("1_ustrong", 123, 110);
        set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 100);
        set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 140);
        set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 130);
        set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 100);
        set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 100);
        set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 130);
        set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 100);
        set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 60);
    }else{
        sprite_change_offset("0_ustrong", 123, 101);
        sprite_change_offset("1_ustrong", 123, 101);
        set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 100);
        set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 140);
        set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 130);
        set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 100);
        set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 100);
        set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 130);
        set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 100);
        set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 60);
    }
    set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 60 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 60 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 60 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    switch(wall){
        case 0:
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -55);
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -70);
        
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -110);
        
        set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 56);
        set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -90);
        
        set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -48);
        set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -65);
        
        set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, -6);
        set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -118);
        break;
        
        case 1:
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, 55 * spr_dir);
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -54 * spr_dir);
        
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, 0 * spr_dir);
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -94 * spr_dir);
        
        set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -56 * spr_dir);
        set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -74 * spr_dir);
        
        set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, 48 * spr_dir);
        set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -47 * spr_dir);
        
        set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, 6 * spr_dir);
        set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, -102 * spr_dir);
        break;
        
        case 2:
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -55 * spr_dir);
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 54 * spr_dir);
        
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, 0 * spr_dir);
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 94 * spr_dir);
        
        set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, 56 * spr_dir);
        set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 74 * spr_dir);
        
        set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -48 * spr_dir);
        set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 49 * spr_dir);
        
        set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -6 * spr_dir);
        set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 102 * spr_dir);
        break;
        
        case 3:
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 55);
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, 70);
        
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, 110);
        
        set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -56);
        set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, 90);
        
        set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 48);
        set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, 65);
        
        set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 6);
        set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, 118);
        break;
    }
    break;
    
    case AT_FSPECIAL:
    set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get(string(plate_state) + "_fspecial"));
    ice_victim = noone;
    break;
    
    case AT_JAB:
    set_attack_value(AT_JAB, AG_SPRITE, sprite_get(string(plate_state) + "_jab"));
    if(wall == 0 || wall == 3){
        sprite_change_offset("0_jab", 84, 86);
        sprite_change_offset("1_jab", 84, 86);
        set_hitbox_value(AT_JAB, 1, HG_WIDTH, 140);
        set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 56);
        set_hitbox_value(AT_JAB, 2, HG_WIDTH, 120);
        set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 56);
        set_hitbox_value(AT_JAB, 3, HG_WIDTH, 75);
        set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 75);
        set_hitbox_value(AT_JAB, 4, HG_WIDTH, 75);
        set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 75);
        set_hitbox_value(AT_JAB, 5, HG_WIDTH, 75);
        set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 75);
        set_hitbox_value(AT_JAB, 6, HG_WIDTH, 130);
        set_hitbox_value(AT_JAB, 6, HG_HEIGHT, 90);
    }else{
        sprite_change_offset("0_jab", 84, 77);
        sprite_change_offset("1_jab", 84, 77);
        set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 140);
        set_hitbox_value(AT_JAB, 1, HG_WIDTH, 56);
        set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 120);
        set_hitbox_value(AT_JAB, 2, HG_WIDTH, 56);
        set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 75);
        set_hitbox_value(AT_JAB, 3, HG_WIDTH, 75);
        set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 75);
        set_hitbox_value(AT_JAB, 4, HG_WIDTH, 75);
        set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 75);
        set_hitbox_value(AT_JAB, 5, HG_WIDTH, 75);
        set_hitbox_value(AT_JAB, 6, HG_HEIGHT, 130);
        set_hitbox_value(AT_JAB, 6, HG_WIDTH, 90);
    }
    set_hitbox_value(AT_JAB, 1, HG_ANGLE, 120 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_JAB, 2, HG_ANGLE, 120 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_JAB, 3, HG_ANGLE, 55 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_JAB, 4, HG_ANGLE, 55 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_JAB, 5, HG_ANGLE, 55 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_JAB, 6, HG_ANGLE, 55 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    switch(wall){
        case 0:
        set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 62);
        set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -12);
        
        set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 44);
        set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -12);
        
        set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 40);
        set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -35);
        
        set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 40);
        set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -35);
        
        set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 40);
        set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -35);
        
        set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 40);
        set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -45);
        break;
        case 1:
        set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -62 * spr_dir);
        set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 4 * spr_dir);
        
        set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -44 * spr_dir);
        set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 4 * spr_dir);
        
        set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -40 * spr_dir);
        set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, -19 * spr_dir);
        
        set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -40 * spr_dir);
        set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, -19 * spr_dir);
        
        set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -40 * spr_dir);
        set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, -19 * spr_dir);
        
        set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -40 * spr_dir);
        set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, -29 * spr_dir);
        break;
        case 2:
        set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, 62 * spr_dir);
        set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, -4 * spr_dir);
        
        set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, 44 * spr_dir);
        set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, -4 * spr_dir);
        
        set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, 40 * spr_dir);
        set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 19 * spr_dir);
        
        set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, 40 * spr_dir);
        set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 19 * spr_dir);
        
        set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, 40 * spr_dir);
        set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 19 * spr_dir);
        
        set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, 40 * spr_dir);
        set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 29 * spr_dir);
        break;
        case 3:
        set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, -62);
        set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, 12);
        
        set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, -44);
        set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, 12);
        
        set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, -40);
        set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, 35);
        
        set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, -40);
        set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, 35);
        
        set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, -40);
        set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, 35);
        
        set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, -40);
        set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, 45);
        break;
    }
    break;
    
    case AT_FTILT:
    set_attack_value(AT_FTILT, AG_SPRITE, sprite_get(string(plate_state) + "_ftilt"));
    ftilt_cancel = 0;
    if(wall == 0 || wall == 3){
        sprite_change_offset("0_ftilt", 102, 80);
        sprite_change_offset("1_ftilt", 102, 80);
    }else{
        sprite_change_offset("0_ftilt", 103, 71);
        sprite_change_offset("1_ftilt", 103, 71);
    }
    set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 50 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 60 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 70 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 45 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    switch(wall){
        case 0:
        set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -35);
        set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 60);
        
        set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -35);
        set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 90);
        
        set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -35);
        set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 130);
        
        set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -35);
        set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 130);
        break;
        case 1:
        set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, -19 * spr_dir);
        set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -60 * spr_dir);
        
        set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, -19 * spr_dir);
        set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -90 * spr_dir);
        
        set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, -19 * spr_dir);
        set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -130 * spr_dir);
        
        set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, -19 * spr_dir);
        set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -130 * spr_dir);
        break;
        case 2:
        set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 19 * spr_dir);
        set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, 60 * spr_dir);
        
        set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 19 * spr_dir);
        set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, 90 * spr_dir);
        
        set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 19 * spr_dir);
        set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, 130 * spr_dir);
        
        set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 19 * spr_dir);
        set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, 130 * spr_dir);
        break;
        case 3:
        set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, 35);
        set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, -60);
        
        set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, 35);
        set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, -90);
        
        set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, 35);
        set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, -130);
        
        set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, 35);
        set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, -130);
        break;
    }
    break;
    
    case AT_DSPECIAL:
    set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get(string(plate_state) + "_dspecial"));
    break;
    
    case AT_USPECIAL:
    temp_wall = 0;
    set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, (stored_spark = true? 24: 18));
    if(free && window < 4){
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get(string(plate_state) + "_air_uspecial"));
	}else{
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get(string(plate_state) + "_uspecial"));
	}
	break;
	
	case AT_UTILT:
	set_attack_value(AT_UTILT, AG_SPRITE, sprite_get(string(plate_state) + "_utilt"));
	if(wall == 0 || wall == 3){
		sprite_change_offset("0_utilt", 97, 131);
		sprite_change_offset("1_utilt", 97, 131);
		set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 100);
		set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 50);
		set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 100);
		set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 80);
		set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 90);
		set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 100);
		set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 90);
		set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 48);
	}else{
		sprite_change_offset("0_utilt", 98, 122);
		sprite_change_offset("1_utilt", 98, 122);
		set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 100);
		set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 100);
		set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 80);
		set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 90);
		set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 100);
		set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 90);
		set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 48);
	}
	set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 70 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
	set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
	set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 90 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
	set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 100 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
	switch(wall){
		case 0:
		set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 70);
		set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -20);
		
		set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 60);
		set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -130);
		
		set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 85);
		set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -80);
		
		set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 20);
		set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -160);
		break;
		case 1:
		set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -70 * spr_dir);
		set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, -4 * spr_dir);
		
		set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -60 * spr_dir);
		set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -114 * spr_dir);
		
		set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -90 * spr_dir);
		set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, -59 * spr_dir);
		
		set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -20 * spr_dir);
		set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -144 * spr_dir);
		break;
		case 2:
		set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, 70 * spr_dir);
		set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 4 * spr_dir);
		
		set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, 60 * spr_dir);
		set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 114 * spr_dir);
		
		set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, 90 * spr_dir);
		set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 59 * spr_dir);
		
		set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, 20 * spr_dir);
		set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 144 * spr_dir);
		break;
		case 3:
		set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, -70);
		set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, 20);
		
		set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -60);
		set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, 130);
		
		set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, -85);
		set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, 80);
		
		set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -20);
		set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, 160);
		break;
	}
	break;
	
	case AT_DTILT:
	set_attack_value(AT_DTILT, AG_SPRITE, sprite_get(string(plate_state) + "_dtilt"));
	if(wall == 0 || wall == 3){
		sprite_change_offset("0_dtilt", 97, 131);
		sprite_change_offset("1_dtilt", 97, 131);
		set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 60);
		set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 80);
		set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 60);
		set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 90);
		set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 80);
		set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 50);
	}else{
		sprite_change_offset("0_dtilt", 98, 122);
		sprite_change_offset("1_dtilt", 98, 122);
		set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 60);
		set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 80);
		set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 60);
		set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 90);
		set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 80);
		set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 50);
	}
	set_hitbox_value(AT_DTILT, 1, HG_ANGLE, -100 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
	set_hitbox_value(AT_DTILT, 2, HG_ANGLE, -100 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
	set_hitbox_value(AT_DTILT, 3, HG_ANGLE, -110 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
	switch(wall){
		case 0:
		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 40);
		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -90);
		
		set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 70);
		set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -50);
		
		set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 60);
		set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -10);
		break;
		case 1:
		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -40 * spr_dir);
		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, -74 * spr_dir);
		
		set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -70 * spr_dir);
		set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, -34 * spr_dir);
		
		set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -60 * spr_dir);
		set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 6 * spr_dir);
		break;
		case 2:
		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, 40 * spr_dir);
		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 74 * spr_dir);
		
		set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, 70 * spr_dir);
		set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 34 * spr_dir);
		
		set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, 60 * spr_dir);
		set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, -6 * spr_dir);
		break;
		case 3:
		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, -40);
		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, 90);
		
		set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, -70);
		set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, 50);
		
		set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, -60);
		set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, 10);
		break;
	}
	break;
	
	case AT_TAUNT:
	state = PS_IDLE;
	break;
}


