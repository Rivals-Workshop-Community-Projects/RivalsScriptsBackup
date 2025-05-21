if(get_training_cpu_action() == CPU_FIGHT){
    if(free) {
        if (!ai_recovering) {
            //down_hard_pressed = true;
            if(abs(ai_target.x - x) <= 90 and y < get_stage_data( SD_BOTTOM_BLASTZONE_Y )-1200 ){
                attack_pressed = true;
            }
        } else {
            if((attack != AT_FSPECIAL and attack != AT_FSPECIAL_2 and attack != AT_FSPECIAL_AIR and attack != AT_FSPECIAL_2_AIR) and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP) and move_cooldown[AT_FSPECIAL] == 0){
                attack = AT_FSPECIAL
                set_state(PS_ATTACK_AIR);
                state_timer = 0;
            }
        }
        if (can_glide == true) {
            jump_down = true;
        }
    }
    
    //Defend
    if((abs(ai_target.x - x) <= 90) and (abs(ai_target.y - y) <= 90)){
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
        if(abs(other.x - x) <= 90 and abs(other.y - y) <= 90 and player != other.player){
            with(other){
                shield_pressed = true;
            }
        }
    }
    
    //Detecting close range fighter distance
    if(abs(ai_target.x - x) <= 20 and state_timer < 2){
        //Grounded
        if(!free){
            if(ai_target.x < x){
                    left_down = true;
                } else {
                    right_down = true;
                }
            //Try to snipe with dspecial
            if(abs(ai_target.y < y-200) and !instance_exists(trident)){
                if(attack != AT_DSPECIAL_2){
                    attack = AT_DSPECIAL_2
                    if(state!=PS_ATTACK_GROUND and (state == PS_IDLE or state == PS_WALK or state == PS_DASH or state == PS_CROUCH)){
                         set_state(PS_ATTACK_GROUND);
                         state_timer = 0;
                    }
                }
            }
        }
        //Aerial and opponent shares spr_dir to callout bair
        if(free and spr_dir = ai_target.spr_dir){
            if(attack != AT_BAIR and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP)){
                attack = AT_BAIR
                set_state(PS_ATTACK_AIR);
                state_timer = 0;
            }
        }
    }
    
    //Multi jab when in proximity of a player
    if(attack == AT_JAB){
        if(state_timer < 60 and abs(ai_target.x - x) <= 30){
            attack_pressed = true;
        }
    }
    
    //Attempt walljump while fspecialing
    if(attack == AT_FSPECIAL_AIR or attack == AT_FSPECIAL_2_AIR){
        if(window < 3 or window == 6){
            jump_pressed = true;
        } else {
            special_down = true;
        }
    } else {
        air_trident_choke = false;
        air_flame_choke = false;
    }
    
    //Funny grab read
    if(abs(ai_target.x - x) <= 100 and (ai_target.state == PS_TECH_FORWARD or ai_target.state == PS_TECH_BACKWARD or ai_target.state == PS_TECH_GROUND or ai_target.state == PS_ROLL_FORWARD or ai_target.state == PS_ROLL_BACKWARD or ai_target.state == PS_HITSTUN)){
        if((attack != AT_FSPECIAL and attack != AT_FSPECIAL_2) and (state == PS_IDLE or state == PS_WALK or state == PS_DASH or state == PS_CROUCH) and move_cooldown[AT_FSPECIAL] == 0){
            if(ai_target.hsp > 0){
                spr_dir = 1;
            } else if (ai_target.hsp < 0)
            attack = AT_FSPECIAL{
                spr_dir = -1;
            }
            set_state(PS_ATTACK_GROUND);
            state_timer = 0;
        }
    }
    
    //Trident stuff
    if(!instance_exists(trident)){
        if(attack == AT_DSTRONG){
            var button_rand = random_func_2(1, 10, true);
            if(button_rand = 5){
                special_down = true;
            }
        }
        trident_opponent = noone;
        mid_side_attacks[0] = AT_NSPECIAL;
    } else {
        mid_side_attacks[0] = noone;
        if(abs(ai_target.x - trident.x) <= 20 and (state == PS_IDLE or state == PS_WALK or state == PS_DASH or state == PS_CROUCH) and trident_opponent != ai_target.id){
            attack = AT_DSPECIAL;
            state = PS_ATTACK_GROUND;
            state_timer = 0;
        }
        if(attack == AT_USPECIAL){
            special_down = true;
        }
        if(attack == AT_NSPECIAL and (ai_target.hitpause = true or (ai_target.y < y and abs(ai_target.x - trident.x) <= 20 )) or (abs(ai_target.x - x) <= 30) and abs(ai_target.y - y) <= 30){
            special_pressed = true;
        }
        if(trident_opponent == ai_target.id){
            
            if(abs(ai_target.x - x) >= 500){
                special_pressed = true;
                print("Trident opponent id: " + string(trident_opponent));
            }
        }
    }
    
    //Correct air attack queue
    if(!free){
        if(attack == AT_FSPECIAL_AIR or attack == AT_FSPECIAL_2_AIR or attack == AT_BAIR){
            attack = AT_UTILT;
        }
    }
    
    //Taunt because funney
    if(abs(ai_target.x - x) >= 350 and get_player_damage( ai_target.player ) >= 100 and (state == PS_IDLE or state == PS_WALK or state == PS_DASH or state == PS_CROUCH)){
        attack = AT_TAUNT;
        set_state(PS_ATTACK_GROUND);
        state_timer = 0;
    }
    if(attack == AT_TAUNT){
        if(abs(ai_target.x - x) <= 50){
            shield_down = true;
        }else{
            shield_down = false;
        }
    }
}

print(attack)