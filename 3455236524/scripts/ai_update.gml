if(get_training_cpu_action() == CPU_FIGHT){
    if(free) {
        if (!ai_recovering) {
            //down_hard_pressed = true;
            if(abs(ai_target.x - x) <= 90 and y < get_stage_data( SD_BOTTOM_BLASTZONE_Y )-1200 ){
                attack_pressed = true;
            }
        } else {
            if(move_cooldown[AT_DSPECIAL] < 1){
                if((attack != AT_DSPECIAL) and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP)){
                    attack = AT_DSPECIAL
                    set_state(PS_ATTACK_AIR);
                    state_timer = 0;
                    jump_down = false;
                    jump_pressed = false;
                }
            } else if((attack != AT_FSPECIAL_AIR) and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP) and y > get_stage_data( SD_BOTTOM_BLASTZONE_Y )-1200){
                attack = AT_FSPECIAL_AIR
                set_state(PS_ATTACK_AIR);
                state_timer = 0;
                jump_down = false;
                jump_pressed = false;
                if(window == 1){
                    has_hit = false;
                }
            }
        }
    }
    
    //Defend
    if((abs(ai_target.x - x) <= 60) and (abs(ai_target.y - y) <= 70)){
        if(((ai_target.state == PS_ATTACK_AIR or ai_target.state == PS_ATTACK_GROUND))){
            if(ai_target.attack != AT_USTRONG and ai_target.attack != AT_FSTRONG and ai_target.attack != AT_DSTRONG and ai_target.was_parried == false){
                shield_pressed = true;
            } else {
                attack_pressed = true;
            }
            
        }
        //Attempt to get an attack out when an opponent misses a parry and is in endlag
        if((ai_target.state == PS_PARRY_START or ai_target.state == PS_PARRY) and !ai_recovering){
            if(ai_target.x > x){
                right_hard_pressed = true;
            } else{
                left_hard_pressed = true;
            }
            attack_pressed = true;
        }
    }
    with (pHitBox){
        if(abs(other.x - x) <= 150 and abs(other.y - y) <= 70 and player != other.player){
            if(type == 2 && hit_priority > 0 && hsp != 0){
                with(other){
                    if(attack != AT_NSPECIAL){
                        if(state!=PS_ATTACK_GROUND and (state == PS_IDLE or state == PS_WALK or state == PS_DASH or state == PS_CROUCH) and !free){
                             set_state(PS_ATTACK_GROUND);
                             state_timer = 0;
                             attack = AT_NSPECIAL
                        } else if(state!=PS_ATTACK_AIR and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP) and free){
                            set_state(PS_ATTACK_AIR);
                            state_timer = 0;
                            attack = AT_NSPECIAL
                        }
                    }
                }
            } else {
                with(other){
                    shield_pressed = true;
                }
            }
        }
    }
    
    //Detecting close range fighter distance
    if(abs(ai_target.x - x) <= 15 and state_timer < 2){
        //Grounded
        if(!free){
            if(abs(ai_target.y - y) < 20 ){
                if(state!=PS_ATTACK_GROUND and (state == PS_IDLE or state == PS_WALK or state == PS_DASH or state == PS_CROUCH)){
                    if(attack == AT_UAIR or attack == AT_DAIR or attack == AT_BAIR or attack == AT_FAIR or attack == AT_NAIR){
                        attack = AT_JAB;
                    }
                    set_state(PS_ATTACK_GROUND);
                    state_timer = 0;
                }
            }
        } else {
            //snipe with uspecial
            if(free and ai_target.y < y-50 and ai_target.y > y-150 and get_player_damage(ai_target.player) >= 90 and uspecial_charge == 3){
                if(attack != AT_USPECIAL and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP)){
                    attack = AT_USPECIAL
                    set_state(PS_ATTACK_AIR);
                    state_timer = 0;
                }
            }
        }
        //Aerial and opponent shares spr_dir to callout bair
        if(free and spr_dir = ai_target.spr_dir){
            if(attack != AT_BAIR and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP) and state_timer > 5){
                attack = AT_BAIR
                set_state(PS_ATTACK_AIR);
                state_timer = 0;
            }
        }
        if(attack == AT_USPECIAL && !ai_recovering and state == PS_ATTACK_GROUND){
            shield_down = true;
        }
        if(attack == AT_FAIR and free = true){
            attack_down = false;
        }
    } else {
        if(attack == AT_FAIR and free = true){
            attack_down = true;
        }
    }
    
    //detecting far range fighters
    if(abs(ai_target.x - x) >= 300 and state_timer < 2){
        if(ai_target.x < x){
            left_down = true;
        } else {
            right_down = true;
        }
        //Within an area
        //if(ai_target.x - x <= 450){
            if(!free){
                if(uspecial_charge < 3){
                    if(attack != AT_USPECIAL){
                        attack = AT_USPECIAL
                        if(state!=PS_ATTACK_GROUND and (state == PS_IDLE or state == PS_WALK or state == PS_DASH or state == PS_CROUCH)){
                             set_state(PS_ATTACK_GROUND);
                             state_timer = 0;
                        }
                    }
                }
                else{
                    if(attack != AT_FSPECIAL){
                        attack = AT_FSPECIAL
                        if(state!=PS_ATTACK_GROUND and (state == PS_IDLE or state == PS_WALK or state == PS_DASH or state == PS_CROUCH)){
                             set_state(PS_ATTACK_GROUND);
                             state_timer = 0;
                        }
                    }
                }
            }
        //}
    }
    
    if(attack == AT_USPECIAL && !free and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR)){
        if(uspecial_charge < 3){
            special_down = true;
        } else if (uspecial_charge == 3 and state_timer > 15){
            shield_pressed = true;
        }
    }
    
    //Jab and ftilt inputs when in proximity of a player
    if(attack == AT_JAB or attack == AT_FTILT){
        if(state_timer < 60 and abs(ai_target.x - x) <= 30){
            attack_pressed = true;
        }
    }
    
    //Jump cancel on hit
    if(attack == AT_DATTACK){
        if(has_hit){
            jump_pressed = true;
        }
    }
    
    
    //Fspecial holding
    if(attack == AT_FSPECIAL and state_timer > 30){
        //special_down = true;
        if(has_hit == true){
            jump_down = true;
        }
        if(state_timer > 90){
            attack_down = true;
        }
        if(get_player_damage( ai_target.player ) >= 100){
            strong_down = true;
        }
    } else {
        strong_down = false;
    }
    
    //Taunt because funney
    if(abs(ai_target.x - x) >= 350 and get_player_damage( ai_target.player ) >= 100 and (state == PS_IDLE or state == PS_WALK or state == PS_DASH or state == PS_CROUCH)){
        attack = AT_TAUNT;
        set_state(PS_ATTACK_GROUND);
        state_timer = 0;
    }
}

if(attack == AT_USPECIAL && ai_recovering == true){
    if(state_timer < (y/17.5)){
        special_down = true;
    }
    jump_pressed = true;
}