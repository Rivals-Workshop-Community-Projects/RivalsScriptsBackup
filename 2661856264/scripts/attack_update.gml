if (attack == AT_JAB && window == 3 && window_timer > 3){
    can_special = true;
}

if (attack == AT_UTILT && window == 4 && window_timer > 8 && has_hit){
    iasa_script();
}

if (attack == AT_DATTACK){
    if (window <= 2){
        can_ustrong = true;
    }
    if (window == 4 && window_timer >= 6 && has_hit){
        iasa_script();
    }
}

//Rockless Armor Stuff
if (stealth_rock == 0){
    if (attack == AT_FSTRONG){
        if (window == 1 && window_timer > 4){
            soft_armor = 13;
        }
        if (window >= 2){
            soft_armor = 0;
        }
    }
}

//Rock Stuff
if (stealth_rock >= 1){
    
    if (attack == AT_DATTACK){
        if (window == 3 && has_hit){
            can_jump = true;
            if (jump_pressed){
                stealth_rock -= 1;
                sound_play(sound_get("special"))
            }
        }
    }
    
    if (attack == AT_DSTRONG){ 
        if (window == 1 && window_timer = 1){
            sound_play(sound_get("special"));
        }
        if (window == 3){
            soft_armor = 13;
        }
        if (window == 4 && window_timer == 1){
            stealth_rock -= 1;
        }
    }
    
    if (attack == AT_USTRONG){ 
        if (window == 1){
            soft_armor = 13;
            if (window_timer = 1){
                sound_play(sound_get("special"));
                stealth_rock -= 1;
            }
        }
    }
    
    if (attack == AT_FSTRONG){
        if (window == 1){
            if (window_timer = 1){
                sound_play(sound_get("special"));
            }
            if (window_timer > 4){
            super_armor = true;
            }
        }
        if (window == 2 && window_timer == 1){
            stealth_rock -= 1;
            super_armor = false;
        }
    }
    
    if (attack == AT_NSPECIAL){ 
        if (window == 3 && window_timer = 1){
            sound_play(sound_get("special"));
        }
        if (stealth_rock == 4 && punch_charge == 4){
            if (window == 1 || window == 3 || window == 4){
                super_armor = true;
            }
        }
        else {
            if (window == 3){
                soft_armor = 13;
            }
            if (window == 4 && window_timer == 1){
                stealth_rock -= 1;
                soft_armor = 0;
            }
        }
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
        break;
    case AT_DSTRONG:
        if (window == 2)
            sound_stop(sound_get("strong_charge"));
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
    if (window == 2){
        can_jump = true;
        can_shield = true;
        //Releases the Punch earlier
        if (special_pressed){
            window = 3;
            window_timer = 0;
        }
        //Each Loop adds a level of charge
        if (window_timer == 19){
            //Reaches full charge
            if (punch_charge == 3){
                punch_charge++;
                spawn_hit_fx(x, y-25, 192);
                sound_play(sound_get("charge"));   
            }
            //Adds charge
            if (punch_charge < 3){
                punch_charge++;
                spawn_hit_fx(x, y-25, 193);
                sound_play(sound_get("pokkencharge"));   
            }
            else {
                window = 9;
                window_timer = 0;
            }
        }    
    }
    //Switches each hitbox depending on the charge level
    if (window == 3){
        switch(punch_charge){
            case 0:
    		    set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 5);
    		    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 0);
    		    set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 0);
    		    set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 0);
    		    set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 0);
    		break;
    		case 1:
    		    set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 0);
    		    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 5);
    		    set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 0);
    		    set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 0);
    		    set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 0);
    		break;
    		case 2:
    		    set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 0);
    		    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 0);
    		    set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 5);
    		    set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 0);
    		    set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 0);
    		break;
    		case 3:
    		    set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 0);
    		    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 0);
    		    set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 0);
    		    set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 5);
    		    set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 0);
    		break;
    		case 4:
    		    set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 0);
    		    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 0);
    		    set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 0);
    		    set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 0);
    		    set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 5);
    		break;
        }
    }
    //Resets charge and armor (if has 4 Stealth Rocks)
    if (window == 4){
        if (stealth_rock == 4 && window_timer == 5){
            stealth_rock = 0;
            super_armor = false;
        }   
        punch_charge = 0;
    }
}

//FSpecial 
if (attack == AT_FSPECIAL){
    attack_end();
    //Resets the variable
    if (window == 1){
        fspecial_charge = 0;
    }
    //Charging the move
    if (window == 2){
        fspecial_charge++
        //You can let go and launch immediately after startup
        if (!special_down){
            window = 3;
            window_timer = 0; 
        }
    }
    //Decide what's thrown based on the charge
    if (window == 3){
        if (fspecial_charge < 22){
            set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 240);
            set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 0);
        }
        if (fspecial_charge == 22) {
            set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 140);
        }
    }
    //Cooldown
    if (window == 4) {
        if (window_timer == 1){
            move_cooldown[AT_FSPECIAL] = 90;
        }
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
    if (stealth_rock >= 2){
        if (window == 1 && window_timer = 1){
                sound_play(sound_get("special"));
            }
        if (window >= 3){
            super_armor = true;
        }
        if (window == 7 && window_timer = 1){
            stealth_rock -= 2;
        }
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
        stealth_rock_aux = stealth_rock;
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