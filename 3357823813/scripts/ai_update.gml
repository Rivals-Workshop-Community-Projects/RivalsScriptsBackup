if(get_training_cpu_action() == CPU_FIGHT){
    if(!free){//Prevent dracula from his own weakness lol
        jump_pressed = false;
    } else {
        //Attempt to waveland onto the stage if close enough OR opponent is chasing you
        //THIS DID NOT WORK
        /*if(position_meeting(x, y+50, asset_get("par_block")) or position_meeting(x, y+50, asset_get("par_jumpthrough")) or (abs(ai_target.x - x) <= 60)){
            if(attack != AT_USPECIAL_2 and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP or state == PS_HITSTUN or state == PS_TUMBLE)){
                shield_pressed = true;
                air_dodge_dir = 5;
                ai_avoid_air = true;
                print("avoiding air")
            }
        }*/
        //Attempt to teleport onto stage if close enough
        if(position_meeting(x, y+200, asset_get("par_block")) or position_meeting(x, y+200, asset_get("par_jumpthrough"))){
            if(attack != AT_USPECIAL_2 and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP or state == PS_TUMBLE)){
                attack = AT_USPECIAL_2
                set_state(PS_ATTACK_AIR);
                state_timer = 0;
            }
        }
        //Try to juke fighters below him with flame pillar
        if(ai_target.y > y+300 and abs(ai_target.x - x) <= 40){
            if(attack != AT_DSPECIAL and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP or state == PS_TUMBLE)){
                attack = AT_DSPECIAL
                set_state(PS_ATTACK_AIR);
                state_timer = 0;
            }
        } else if (!ai_recovering) {
            down_hard_pressed = true;
            if(abs(ai_target.x - x) <= 90){
                attack_pressed = true;
            }
        }
    }
    
    //Making him choose options randomly from grounded uspecial
    if(attack == AT_USPECIAL){
        var button_rand = random_func_2(1, 2, true);
        if(window == 2 and (window_timer == 20 or window_timer == 25)){
            if(button_rand = 1){
                special_pressed = true;
            }
        }
        if(window == 2){
            if (ai_target.y + 60 < y){
                up_down = true;
                //print("opponent is above me")
            } else if (ai_target.y > y){
                down_down = true
                //print("opponent is below me")
            } else {
                up_down = false;
            }
        }
        if(window == 3){
            if (ai_target.x > x){
                right_down = true;
            } else if (ai_target.x < x) {
                left_down = true;
            } 
        }
    }
    
    //Defend
    if((abs(ai_target.x - x) <= 70) and (abs(ai_target.y - y) <= 70)){
        if(((ai_target.state == PS_ATTACK_AIR or ai_target.state == PS_ATTACK_GROUND))){
            shield_pressed = true;
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
        if(abs(other.x - x) <= 70 and abs(other.y - y) <= 70 and player != other.player){
            with(other){
                shield_pressed = true;
            }
        }
    }
    
    //Detecting close range fighter distance
    if(abs(ai_target.x - x) <= 40 and state_timer < 2){
        //Grounded
        if(!free){
            //Try to snipe with ustrong
            if(abs(ai_target.y < y-200)){
                if(attack != AT_USTRONG){
                    attack = AT_USTRONG
                    if(state!=PS_ATTACK_GROUND and (state == PS_IDLE or state == PS_WALK or state == PS_DASH or state == PS_CROUCH)){
                         set_state(PS_ATTACK_GROUND);
                         state_timer = 0;
                    }
                }
            }
            //Attempt to move out of range when opponent is very close
            else if(attack != AT_USPECIAL and (state == PS_IDLE or state == PS_WALK or state == PS_DASH or state == PS_CROUCH)){
                attack = AT_USPECIAL
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
    
    //Choose randomly when to fake out
    if(attack == AT_FSPECIAL){
        var button_rand = random_func_2(1, 10, true);
        if(window == 2){
            if(button_rand = 5){
                special_down = true;
            }
        }
    }
    
    //Hold down attack when in proximity of a player
    if(attack == AT_JAB){
        if(state_timer < 60 and abs(ai_target.x - x) <= 50){
            attack_down = true;
        }
    }
    
    //Under 50% he acts like boss Dracula
    if(get_player_damage(player) < 50 and ai_transition == 0){//It's like this for self-healing
        ai_transition = 0;
        if(!free and state_timer < 2){
            attack = AT_USPECIAL;
            if(attack != AT_USPECIAL){
                attack = AT_USPECIAL
                if(state == PS_IDLE or state == PS_WALK or state == PS_CROUCH){
                    set_state(PS_ATTACK_GROUND);
                    state_timer = 0;
                }
            }
        }
        if(state = PS_DASH or state == PS_DASH_START){
            attack = AT_DATTACK;
            set_state(PS_ATTACK_GROUND);
            state_timer = 0;
        }
    }
    
    if(get_player_damage(player) >= 50 and ai_transition == 0){
        ai_transition = 1;
    }
    
    if(ai_transition == 1){
        if(attack != AT_TAUNT){
            if(!free and state_timer < 2 and (state == PS_IDLE or state == PS_WALK or state == PS_DASH or state == PS_CROUCH)){
                attack = AT_TAUNT;
                set_state(PS_ATTACK_GROUND);
                state_timer = 0;
            }
        }
    }
    
    if(attack == AT_TAUNT and state == PS_ATTACK_GROUND){
        ai_transition = 3;
    }
    
    if(state == PS_RESPAWN){
        ai_transition = 0;
    }
    
    //Over 125, going all-out
    if(get_player_damage(player) >= 125){
        var megiddo_rand = random_func_2(1, 10, true);
        if(megiddo_rand = 6){
            if(!free and state_timer < 2){
                if(attack != AT_DSTRONG){
                    attack = AT_DSTRONG
                    if(state!=PS_ATTACK_GROUND and (state == PS_IDLE or state == PS_WALK or state == PS_DASH or state == PS_CROUCH)){
                         set_state(PS_ATTACK_GROUND);
                         state_timer = 0;
                    }
                }
            }
        }
    }
    //print("ai_transition = " + string(ai_transition))
}

//Going back to stage with uspecial
if(attack == AT_USPECIAL_2){
    if(ai_recovering){
        if(spr_dir = 1){
            set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, lengthdir_x(6,45)*spr_dir);
        	set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, lengthdir_y(6,45));
        } else {
            set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, lengthdir_x(6,135)*spr_dir);
        	set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, lengthdir_y(6,135));
        }
    } else {
        if (abs(ai_target.x - x) <= 60){//Detect if nearby opponent
            if(ai_target.x > x){
                set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, lengthdir_x(6,225)*spr_dir);
            	set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, lengthdir_y(6,225));
            } else {
                set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, lengthdir_x(6,315)*spr_dir);
            	set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, lengthdir_y(6,315));
            }
        } else {//Simply go downwards if no fighter is directly nearby
            set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, lengthdir_x(6,270)*spr_dir);
            set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, lengthdir_y(6,270));
        }
    }
}