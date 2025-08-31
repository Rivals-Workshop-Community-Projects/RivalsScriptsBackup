if(get_training_cpu_action() == CPU_FIGHT){
    if(free) {
        if (!ai_recovering) {
            //down_hard_pressed = true;
            if(abs(ai_target.x - x) <= 90 and y < get_stage_data( SD_BOTTOM_BLASTZONE_Y )-1200 ){
                attack_pressed = true;
            }
        } else {
            if(move_cooldown[AT_FSPECIAL_AIR] < 1){
                if((attack != AT_FSPECIAL_AIR) and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP)){
                    attack = AT_FSPECIAL_AIR
                    set_state(PS_ATTACK_AIR);
                    state_timer = 0;
                    jump_down = false;
                    jump_pressed = false;
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
    
    //No your attack does NOT equal fspecial air actually
    if(!free and (attack == AT_FSPECIAL_AIR or attack == AT_USPECIAL) and state_timer < 2){
        attack = AT_USTRONG;
    }
    
    with (pHitBox){
        if(abs(other.x - x) <= 100 and abs(other.y - y) <= 100 and player != other.player and damage != 0){
            with(other){
                shield_pressed = true;
            }
        }
    }
    
    //Detecting close range fighter distance
    if(abs(ai_target.x - x) <= 50 and state_timer < 2){
        //Grounded
        if(!free){
            if(ai_target.x < x){
                    left_down = true;
                } else {
                    right_down = true;
                }
            if(abs(ai_target.y - y) < 40 ){
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
            
        }
        //Aerial and opponent shares spr_dir to callout bair
        if(free and spr_dir = ai_target.spr_dir){
            if(attack != AT_BAIR and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP) and state_timer > 5){
                attack = AT_BAIR
                set_state(PS_ATTACK_AIR);
                state_timer = 0;
            }
        }
        if(attack == AT_USPECIAL && !ai_recovering and hitpause == true){
            down_pressed = true;
        }
    } else {
        //something
    }
    
    //detecting far range fighters
    if(abs(ai_target.x - x) >= 300 and state_timer < 2){
        if(ai_target.x < x){
            if(spr_dir != -1){
                left_down = true;
            }
        } else {
            if(spr_dir != 1){
                right_down = true;
            }
        }
        //Within an area
        if(abs(ai_target.x - x) <= 400){
            if(!free and torment_opponent != noone){
                if(attack != AT_FSPSECIAL){
                    attack = AT_FSPECIAL
                    if(state!=PS_ATTACK_GROUND and (state == PS_IDLE or state == PS_WALK or state == PS_DASH or state == PS_CROUCH)){
                         set_state(PS_ATTACK_GROUND);
                         state_timer = 0;
                    }
                }
            }
        } else {
            //if(ai_target.free == true){
                if(attack != AT_NSPECIAL and !ai_recovering){
                    attack = AT_NSPECIAL;
                    if(!free){
                        if(state!=PS_ATTACK_GROUND and (state == PS_IDLE or state == PS_WALK or state == PS_DASH or state == PS_CROUCH)){
                            set_state(PS_ATTACK_GROUND);
                            state_timer = 0;
                        }
                    }
                    if(free and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP)){
                        set_state(PS_ATTACK_AIR);
                        state_timer = 0;
                    }
                }
            //}
        }
    }
    
    
    //Fspecial holding
    if(attack == AT_FSPECIAL and abs(ai_target.x - x) >= 200 and abs(ai_target.x - x) <= 600 and state_timer <= 60){
        special_down = true;
    } else {
        special_down = false;
    }
    
    //Fish for instakill
    if(get_player_damage(ai_target.player) >= 135 and torment_opponent != noone and !ai_recovering and abs(ai_target.x - x) <= 50){
        var grab_rand = random_func_2(1, 10, true);
        if(grab_rand >= 5){
            if(state_timer < 2){
                if(attack != AT_DSPECIAL){
                    attack = AT_DSPECIAL
                }
            }
        }
    }
    
    //Fish for causing Torment
    if(torment_opponent == noone and !ai_recovering and abs(ai_target.x - x) >= 100){
        var torment_rand = random_func_2(1, 10, true);
        if(torment_rand >= 8){
            if(state_timer < 2){
                if(attack != AT_NSPECIAL){
                    attack = AT_NSPECIAL
                }
            }
        }
    }
    
    //Taunt because funney
    if(abs(ai_target.x - x) >= 800 and get_player_damage( ai_target.player ) >= 100 and (state == PS_IDLE or state == PS_WALK or state == PS_DASH or state == PS_CROUCH)){
        attack = AT_TAUNT;
        set_state(PS_ATTACK_GROUND);
        state_timer = 0;
    }
}

if(attack == AT_USPECIAL && ai_recovering == true){
    if(vsp > -5){
        jump_pressed = true;
    }
}