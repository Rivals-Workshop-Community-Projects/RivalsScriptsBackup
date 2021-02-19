//ai update

if(ai_recovering){
    if(temp_level > 6){
        if(state != PS_ATTACK_AIR){
            if(!has_airdodge && batitDelay < 1 && (!has_walljump && (y > BOTTOM_BLASTZONE_Y_POS - 300 || (y > BOTTOM_BLASTZONE_Y_POS - 400 && (x < LEFT_BLASTZONE_X_POS + 400 || x > RIGHT_BLASTZONE_X_POS - 400))) || (y > BOTTOM_BLASTZONE_Y_POS - 400 && (x < LEFT_BLASTZONE_X_POS + 300 || x > RIGHT_BLASTZONE_X_POS - 300))) && !sacrificeBatit){
                special_pressed = true;
                down_down = true;
                sacrificeBatit = true;
            } else if(sacrificeBatit){
                special_pressed = true;
                down_down = true;
                boostOffBatit = true;
                sacrificeBatit = false;
            }
        } else if(boostOffBatit){
            special_pressed = true;
            down_down = true;
            boostOffBatit = false;
        }
    }
}

if(autoNudge){
    taunt_down = true;
    shield_down = true;
}

if(get_training_cpu_action() == CPU_FIGHT){
    if(batitDelay < 1 && !free && !batitPlaced && get_player_damage(player) < 80){ // place Batit because this seems like a reasonable time to do it
        special_pressed = true;
        down_down = true;
    } else if(batitPlaced && (batitArticle.state == 0 || temp_level < 3) && batitArticle.batitHealth < 40/9*temp_level && place_meeting(x, y, batitArticle)){ // decides if the cpu will replenish Batit quickly if nearby when their health is low enough (higher level means they'll do this sooner)
        special_pressed = true;
        if(batitArticle.x > x)
            right_down = true;
        else
            left_down = true;
    } else if(batitPlaced && (batitArticle.state == 0 || batitArticle.state == 3) && temp_level > 1 && (batitAttackDelay <= 0 || temp_level > 8)){
        batitAttackDelay = 600 / temp_level;
        if(ai_target.y > batitArticle.y - 25 && ai_target.y < batitArticle.y - 25 + ai_target.char_height && !(ai_target.x > batitArticle.x - 10 && ai_target.x < batitArticle.x + 10)){ //check that enemy is about level with batit
            if(ai_target.x > batitArticle.x){
                if(ai_target.x > batitArticle.x + 60 || temp_level < 7){ //projectile
                    right_down = true;
                    attack_pressed = true;
                } else { //strong (only for high level cpus)
                    right_strong_pressed = true;
                }
            } else {
                if(ai_target.x < batitArticle.x - 60 || temp_level < 7){ //projectile
                    left_down = true;
                    attack_pressed = true;
                } else { //strongs (only for high level cpus)
                    left_strong_pressed = true;
                }
            }
        } else if(ai_target.x > batitArticle.x - 60 && ai_target.x < batitArticle.x + 60 && ai_target.y - ai_target.char_height < batitArticle.y){
            if(ai_target.y < batitArticle.y - 60 || temp_level < 7){ //projectile
                up_down = true;
                attack_pressed = true;
            } else { //strong (only for high level cpus)
                up_strong_pressed = true;
            }
        } else if(move_cooldown[AT_NSPECIAL] < 1){
            special_pressed = true;
        } else { //no attack was done so undo the cooldown
            batitAttackDelay = 0;
        }
    }
    batitAttackDelay--;

    if((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && state_timer == 0){
        if(batitDelay > 0){
            if((attack == AT_FSPECIAL && !allowFspecial)|| attack == AT_FSTRONG){
                if(free){
                    if((ai_target.x - x)*spr_dir > 0){
                        set_attack(AT_FAIR);
                    } else {
                        set_attack(AT_BAIR);
                    }
                } else {
                    set_attack(AT_FTILT);
                }
            } else if(attack == AT_USTRONG){
                set_attack(AT_UTILT);
            } else if(attack == AT_DSPECIAL_AIR || allowDspecial){
                if(free && ai_target.y < y){
                    set_attack(AT_UAIR);
                }
            }
        }
        if(allowFspecial){
            allowFspecial = false;
        }
        if(allowDspecial){
            allowDspecial = false;
        }
    }

    if(batitPlaced && (state != PS_ATTACK_GROUND || PS_ATTACK_AIR)){
        if(temp_level > 5 && point_distance(x, y, ai_target.x, ai_target.y) < 60 && point_distance(batitArticle.x, batitArticle.y, ai_target.x, ai_target.y) < 60){
            special_pressed = true;
            if(x < ai_target.x)
                right_down = true;
            else
                left_down = true;
            allowFspecial = true;
        } else if(free && temp_level > 7 && get_player_damage(ai_target.player) > 60 && point_distance(x, y, ai_target.x, ai_target.y) < 70 && (x > batitArticle.x - 60 && x < batitArticle.x + 60 && y < batitArticle.y)){
            special_pressed = true;
            down_down = true;
            allowDspecial = true;
        }
    }

    if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
        switch(attack){ //attack behaviors
            case AT_FSPECIAL_2:
                if(has_hit_player && temp_level > 4){
                    ai_attack_timer = ai_attack_time;
                }
                break;
            case AT_DSPECIAL_AIR:
                if(has_hit_player && temp_level > 5){
                    ai_attack_timer = ai_attack_time;
                }
                break;
            case AT_USPECIAL_2:
                if(batitPlaced && ai_target.x > x - 60 && ai_target.x < x + 60 && ai_target.y < y - char_height && place_meeting(x, y, batitArticle)){
                    special_pressed = true;
                }
                break;
            default:
                if(batitPlaced){
                    with pHitBox {
                        if(player == other.player && place_meeting(x, y, other.batitArticle)){
                            if(abs(point_direction(other.batitArticle.x, other.batitArticle.y, other.ai_target.x, other.ai_target.y - other.ai_target.char_height/2) - get_hitbox_angle(id)) < 10){
                                other.shield_down = true;
                            }
                        }
                    }
                }
        }
    }
}