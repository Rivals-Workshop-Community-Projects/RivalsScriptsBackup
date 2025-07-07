//Double Jump Armor

if state == PS_DOUBLE_JUMP && state_timer >= 3{
    soft_armor = 13;
    
    if has_rune("A"){
        super_armor = true;
    }
    
}

//Egg Roll Jump

if free == false || state == PS_WALL_JUMP{
    egg_roll_jump = true;
}

//Voices!!!

if yoshi_voiced == 1 && hitpause == false{
    user_event ( 0 );
}

//Double Jump Sound + Stop
if state == PS_DOUBLE_JUMP && state_timer == 0 && !hitpause{
    djump_sfx = sound_play(sound_get("SFX_Jump_2"));
}
if state != PS_DOUBLE_JUMP{
    sound_stop(djump_sfx);
}

/*Down Air Zoon

if state == PS_LANDING_LAG && attack == AT_DAIR && state_timer == 1 && attack_down == true{
    hsp = 10*spr_dir;
}*/

//Yoshi Egg Handler

with oPlayer{
    
    //Set Defaults
    if "is_yoshi_egged" not in self{
        is_yoshi_egged = false;
        which_yoshi_egged = noone;
        yoshi_egged_timer = 0;
    }
    
    //While Yoshi Egged...
    if is_yoshi_egged
    && state != PS_RESPAWN
    && which_yoshi_egged == other{
        
        //Immobilize
        has_walljump = false;
        super_armor = true;
        state_timer = 0;
        
        if free && state != PS_HITSTUN{
            state = (PS_PRATFALL);
        }
        if !free && state != PS_HITSTUN_LAND{
            state = (PS_PRATLAND);
        }
        
        //Advance Egg Timer
        var egg_increment;
        
        if y >= (get_stage_data(SD_BOTTOM_BLASTZONE_Y) - 160){
            egg_increment = 8;
        }
        else{
            egg_increment = 1;
        }
        
        if !hitpause yoshi_egged_timer += egg_increment;
        
        //Destroy Egg when Time is Up
        if yoshi_egged_timer >= yoshi_egged_timer_max && !hitpause{
            yoshi_egg_destroy = true;
        }
        
        //What to do when egg destroys
        if yoshi_egg_destroy{
            old_vsp = -jump_speed;
            vsp = -jump_speed;
            set_state(PS_IDLE_AIR);
            has_walljump = true;
            invincible = true;
            invince_time = 6;
            
            with other{
                sound_play(sound_get("SFX_Egg_Hatch"));
                spawn_hit_fx(other.x,other.y-24, yoshi_egg_break_big_fx);
                
                if has_rune("M"){
                    other.invincible = false;
                    spawn_hit_fx(other.x, other.y-32, 263);
                    sound_play(asset_get("sfx_abyss_explosion_big"));
                    create_hitbox(AT_USPECIAL, 3, other.x, other.y+2);
                }
                
            }
            is_yoshi_egged = false;
        }
    }
    
    //Unhand from Egg when Dead
    if state == PS_RESPAWN || state == PS_DEAD{
        is_yoshi_egged = false;
    }
    
}

//Turn off super armor for egged opponents rune

if has_rune("L"){
    with(oPlayer){
        if is_yoshi_egged
        && which_yoshi_egged == other{
            super_armor = false;
        }
    }
}