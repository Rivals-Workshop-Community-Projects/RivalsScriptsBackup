switch(attack){
    
    case AT_FAIR:
        sound_play(asset_get("sfx_shovel_swing_med1"), false, noone, 0.55, 1.2);
        break;
        
    case AT_USTRONG:
        sound_play(asset_get("sfx_shovel_swing_med2"), false, noone, 0.55, 1.1);
        break;
    
    case AT_NSPECIAL:
        sound_play(asset_get("sfx_shovel_swing_light2"), false, noone, 1.0, 1.0);
        set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 7);
        set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
        set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
        set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8);
        set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .6);
        set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
        break;
    
    case AT_FSPECIAL:
        if(ring_out != noone && ring_out.state < 2){
            attack_end();
            attack = AT_FSPECIAL_2;
        }
        break;
    
    case AT_USPECIAL:
        uspec_2 = false;
        uspec_angle = 0;
        if(ring_equipped != -1){
            attack_end();
            attack = AT_USPECIAL_2;
            ring_cd[ring_equipped] = ring_time_cd;
            ring_cd_max[ring_equipped] = ring_time_cd;
            ring_equipped = -1;
            ring_timer = -1;
            ring_follow = -1;
            hud_close = 4;
            
        }
        break;
    
    case AT_DSPECIAL:
        set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 2);
        if(ring_out != noone && ring_out.state < 2){
            attack_end();
            attack = AT_FSPECIAL_2;
        }
        break;
}


if(!rogue_mode){
    for(var i = 1; i <= get_num_hitboxes(attack); i++){
        if(get_hitbox_value(attack, i, HG_HITBOX_TYPE) == 1){
            reset_hitbox_value(attack, i, HG_DAMAGE);
            reset_hitbox_value(attack, i, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(attack, i, HG_BASE_HITPAUSE);
            reset_hitbox_value(attack, i, HG_WIDTH);
            reset_hitbox_value(attack, i, HG_HEIGHT);
            reset_hitbox_value(attack, i, HG_HITBOX_X);
            reset_hitbox_value(attack, i, HG_HITBOX_Y);
        }
    }
    //add-on Alpha buffs
    if(ring_equipped == 0){
        for(var i = 1; i <= get_num_hitboxes(attack); i++){
            if(get_hitbox_value(attack, i, HG_HITBOX_TYPE) == 1){
                set_hitbox_value(attack, i, HG_DAMAGE, ceil(get_hitbox_value(attack, i, HG_DAMAGE) * alpha_buff));
                set_hitbox_value(attack, i, HG_KNOCKBACK_SCALING, (get_hitbox_value(attack, i, HG_KNOCKBACK_SCALING) * (alpha_buff * 100))/100);
                set_hitbox_value(attack, i, HG_BASE_HITPAUSE, get_hitbox_value(attack, i, HG_BASE_HITPAUSE) + 2);
            }
        }
    //add-on Epsilon buffs
    }else if(ring_equipped == 2){
        if(attack == AT_DTILT || attack == AT_UTILT || attack == AT_USTRONG || attack == AT_DSTRONG || attack == AT_NAIR ||
            attack == AT_FAIR || attack == AT_BAIR || attack == AT_DAIR || attack == AT_NSPECIAL){
            for(var i = 1; i <= get_num_hitboxes(attack); i++){
                if(get_hitbox_value(attack, i, HG_HITBOX_TYPE) == 1){
                    set_hitbox_value(attack, i, HG_WIDTH, floor(get_hitbox_value(attack, i, HG_WIDTH) * epsilon_buff));
                    set_hitbox_value(attack, i, HG_HEIGHT, floor(get_hitbox_value(attack, i, HG_HEIGHT) * epsilon_buff));
                    set_hitbox_value(attack, i, HG_HITBOX_X, floor(get_hitbox_value(attack, i, HG_HITBOX_X) * epsilon_buff)); // * (((epsilon_buff - 1)/2)+1)));
                    set_hitbox_value(attack, i, HG_HITBOX_Y, floor(get_hitbox_value(attack, i, HG_HITBOX_Y) * epsilon_buff));
                }
            }
        }
    }
//separate stat math when Rivals Rogue is being played
}else{
    for(var i = 1; i <= get_num_hitboxes(attack); i++){
        if(get_hitbox_value(attack, i, HG_HITBOX_TYPE) == 1){
            //get current hitbox stats from the first hit
            if(i == 1){
                var _current_size = get_hitbox_value(attack, i, HG_WIDTH);
                reset_hitbox_value(attack, i, HG_WIDTH);
                var _default_size = get_hitbox_value(attack, i, HG_WIDTH);
            }
            reset_hitbox_value(attack, i, HG_WIDTH);
            reset_hitbox_value(attack, i, HG_HEIGHT);
            reset_hitbox_value(attack, i, HG_HITBOX_X);
            reset_hitbox_value(attack, i, HG_HITBOX_Y);
            reset_hitbox_value(attack, i, HG_DAMAGE);
            reset_hitbox_value(attack, i, HG_KNOCKBACK_SCALING);
        }
    }
    
    //add-on Alpha buffs
    if(ring_equipped == 0){
        for(var i = 1; i <= get_num_hitboxes(attack); i++){
            if(get_hitbox_value(attack, i, HG_HITBOX_TYPE) == 1){
                set_hitbox_value(attack, i, HG_DAMAGE, ceil(get_hitbox_value(attack, i, HG_DAMAGE) * alpha_buff));
                set_hitbox_value(attack, i, HG_KNOCKBACK_SCALING, (get_hitbox_value(attack, i, HG_KNOCKBACK_SCALING) * (alpha_buff * 100))/100);
                //set_hitbox_value(attack, i, HG_BASE_HITPAUSE, get_hitbox_value(attack, i, HG_BASE_HITPAUSE) + 2); //just so mordecai works
            }
        }
    }
    
    //add-on Epsilon buffs
    var _epsilon_up = false;
    if(attack == AT_DTILT || attack == AT_UTILT || attack == AT_USTRONG || attack == AT_DSTRONG || attack == AT_NAIR ||
    attack == AT_FAIR || attack == AT_BAIR || attack == AT_DAIR || attack == AT_NSPECIAL){
        _epsilon_up = true;
    }
        
    var _scale;
    //apply Epsilon size increase if the move doesn't have it
    if(ring_equipped == 2 && _epsilon_up && !move_epsiloned[attack]){
        _scale = ((_current_size / _default_size)*epsilon_buff);
        move_epsiloned[attack] = true;
    //remove Epsilon size increase if the move previously had it
    }else if(ring_equipped != 2 && _epsilon_up && move_epsiloned[attack]){
        _scale = ((_current_size / _default_size)/epsilon_buff);
        move_epsiloned[attack] = false;
    }else{
        _scale = (_current_size / _default_size);
    }
    
    for(var i = 1; i <= get_num_hitboxes(attack); i++){
        if(get_hitbox_value(attack, i, HG_HITBOX_TYPE) == 1){
            set_hitbox_value(attack, i, HG_WIDTH, floor(get_hitbox_value(attack, i, HG_WIDTH) * _scale));
            set_hitbox_value(attack, i, HG_HEIGHT, floor(get_hitbox_value(attack, i, HG_HEIGHT) * _scale));
            set_hitbox_value(attack, i, HG_HITBOX_X, floor(get_hitbox_value(attack, i, HG_HITBOX_X) * _scale));
            set_hitbox_value(attack, i, HG_HITBOX_Y, floor(get_hitbox_value(attack, i, HG_HITBOX_Y) * _scale));
        }
    }
    
}
