//Rockless Armor Stuff
if (stealth_rock == 0){
    if (attack == AT_DTILT) && (window == 2 || window == 3){
        soft_armor = 6; 
    }
    if (attack == AT_FSTRONG && window == 2){
        soft_armor = 13;
    }
}

//Rock Stuff
if (stealth_rock >= 1){
    if (attack == AT_NAIR){
        if (window == 1){
            if (window_timer = 1){
                sound_play(sound_get("special"));
            }
            if (window_timer > 3){
                soft_armor = 6;
            }
        }
        if (window == 2){
            if (window_timer == 2){
                stealth_rock -= 1;
            }
        }
    }
    
    if (attack == AT_USTRONG
    || attack == AT_DSTRONG
    || attack == AT_DTILT){ 
        if (window == 1 && window_timer = 1){
            sound_play(sound_get("special"));
        }
    }
    if (attack == AT_USTRONG && window == 1)
    || (attack == AT_DSTRONG && window == 3){
        soft_armor = 13;
    }
    if (attack == AT_DTILT){
        if (window == 2 || window == 3){
            soft_armor = 13;
        }
    }
    if (attack == AT_USTRONG && window == 5
    || attack == AT_DSTRONG && window == 4
    || attack == AT_DTILT && window == 4){
        if (window_timer == 1){
            stealth_rock -= 1;
        }
    }
    
    if (attack == AT_FSTRONG){
        if (window == 1){
            super_armor = true;
            if (window_timer = 1){
                sound_play(sound_get("special"));
            }
        }
        if (window == 2 && window_timer == 1){
            stealth_rock -= 1;
            super_armor = false;
        }
    }
    
    if (attack == AT_USPECIAL){
        if (window == 1 && window_timer = 1){
                sound_play(sound_get("special"));
            }
        if (window >= 3){
            super_armor = true;
        }
        if (window == 7 && window_timer = 1){
            stealth_rock -= 1;
        }
    }
    
    if (attack == AT_FSPECIAL){
        can_shield = true;
    }
    
}

//Strong charge sfx and self damage manager
switch (attack)
{
    case AT_FSTRONG:
        if (window == 3)
            sound_stop(sound_get("strong_charge"));
        break;
    case AT_USTRONG:
        if (window == 2)
            sound_stop(sound_get("strong_charge"));
        if (window == 2 && window_timer == 1 && stealth_rock == 0)
            take_damage(player, -1, 4);
        break;
    case AT_DSTRONG:
        if (window == 2)
            sound_stop(sound_get("strong_charge"));
        break;
    case AT_NAIR:
        if (window == 2 && window_timer == 1 && stealth_rock == 0 && !hitstop )
            take_damage(player, -1, 3);
        break;
    case AT_USPECIAL:
        if (window == 3 && window_timer == 1 && stealth_rock == 0)
            take_damage(player, -1, 4);
        break;
    default:
        break;
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Spawns rock effect during FStrong
if (attack = AT_FSTRONG){
    if (window = 3){
        if (window_timer = 4){
            spawn_hit_fx(x, y, stones);
        }
    }    
}

//NSpecial 
if (attack == AT_NSPECIAL){
    attack_end();
    //Resets the variable
    if (window == 1){
        nspecial_charge = 0;
        if (window_timer = 1 && stealth_rock >= 1){
            sound_play(sound_get("special"));
        }
    }
    //Charging the move
    if (window == 2){
        nspecial_charge++
        //You can let go and launch immediately after startup
        if (!special_down){
            window = 3;
            window_timer = 0; 
        }
    }
    //Decide what's thrown based on the charge
    if (window == 3){
        if (nspecial_charge < 22){
            set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 240);
            set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 0);
        }
        if (nspecial_charge == 22) {
            set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 0);
            set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 140);
        }
    }
    //Rock & cooldown
    if (window == 4) {
        if (window_timer == 1){
            move_cooldown[AT_NSPECIAL] = 90;
            if (nspecial_charge < 22 && stealth_rock >= 1){
                stealth_rock -= 1;
                move_cooldown[AT_NSPECIAL] = 0;
            }
            if (nspecial_charge == 22 && stealth_rock >= 2){
                stealth_rock -= 2;
                move_cooldown[AT_NSPECIAL] = 0;
            }
        }
   }
}

//FSpecial
if (attack == AT_FSPECIAL){
    attack_end();
    can_fastfall = false;
    if (has_hit){
        can_jump = true;
    }
    //Resets the variables
    if (window == 1){
        fspecial_charge = 0;
        fspecial_cont = 0;
        if (window_timer = 1 && stealth_rock >= 1){
            sound_play(sound_get("special"));
        }
    }
    //Charging the move
    if (window == 2){
        fspecial_charge++
        //You can let go and launch after 5 frames
        if (window_timer > 5 && !special_down){
            window = 3;
            window_timer = 1; 
        }
    }
    //Launching
    if (window == 3){
        if (window_timer == 1){
            sound_stop(sound_get("strong_charge"));
            //First charge
            if (fspecial_charge >= 0 && fspecial_charge < 20){
                hsp = 8*spr_dir;
                vsp = -6;   
                fspecial_charge = 0;
            }
            //Second Charge
            if (fspecial_charge >= 20 && fspecial_charge < 40){
                hsp = 10*spr_dir;
                vsp = -8; 
                fspecial_charge = 0;
            }
            //Third Charge
            if (fspecial_charge >= 40 && fspecial_charge < 60){
                hsp = 12*spr_dir;
                vsp = -10;   
                fspecial_charge = 0;
            }
            //Forth Charge is the one in fspecial.gml
        }
        can_wall_jump = true;
        can_shield = true;
    }
    //Rolling
    if (window == 4){
        fspecial_cont++;
        //Destroys the previous hitbox
        if (window_timer == 0){
            destroy_hitboxes();
        }
        //Going to the turning window
        if ((spr_dir == 1 && left_pressed) || (spr_dir == -1 && right_pressed)){
            window = 5;
            window_timer = 1;
            destroy_hitboxes();
            fspecial_cont += 10;
        }
        //Cont exceding 120 frames or pressing special stops the attack
        if (fspecial_cont >= 120 || special_pressed){
            window = 6;
            window_timer = 1;
            destroy_hitboxes();
            fspecial_cont = 0;
        }
    }
    //Turning Animation
    if (window == 5 && window_timer == 1){
        spr_dir *= -1;
        sound_stop(asset_get("sfx_kragg_roll_loop"));
    }
    //Endlag
    if (window == 6){
        sound_stop(asset_get("sfx_kragg_roll_loop"));
    }
}

//USpecial
if (attack == AT_USPECIAL){
    if (window == 2){
        //creates the smoke effect and gives it an hitbox
        if (window_timer = 3){
            spawn_hit_fx(x, y, smoke);
            create_hitbox(AT_USPECIAL, 5, x, y);
        }
    }
    if (window == 3 && !hitpause){
        if (right_down){ //Goes right if holding right
            hsp = +6.5;
        }
        if (left_down){ //Goes left if holding left
            hsp = -6.5;
       }
    }
    if (window > 6){
        can_wall_jump = true;
    }
}

//DSpecial
if (attack == AT_DSPECIAL){
    if (window == 3 && window_timer == 1){
        sound_play(sound_get("special"));
        if (has_hit){
            stealth_rock += 2;
        }
        else{
            stealth_rock += 1;
        }
    }
}

//Taunt
if (attack == AT_TAUNT){
    if (window == 3 && window_timer == 16){
        if (taunt_down){
            window = 2;
            window_timer = 1;
        }
        else {
            window = 4;
            window_timer = 1;
        }
    }
}