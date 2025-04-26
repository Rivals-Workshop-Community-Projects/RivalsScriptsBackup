

// Hello to anyone reading this, i'm April. I don't have too much experience coding so if this is inoptimized then do forgive.
// I wanted to make this CPU for my friend Active79 as it's a great practice tool for me to learn GML and coding in
// and i've always enjoyed watching CPU's in games fight. 
// please give all your love to Active for making this great character and letting me mess around with its CPU!

// B reversing is substituted with a spr_dir change because im lazy, but they shouldn't break the rules of B reverse timing, it's basically 1:1 to my knowledge
// this CPU doesn't cheat (to my knowledge), i tried to make her as Azula as possible. She can't do something a player wouldn't be able to.
// Some movement might be a little bit jank due to left_down and all that. 
// There's definitely improvements i can make but honestly i'm happy with her performance and i'de rather leave it as is. Have fun!
if get_training_cpu_action() == CPU_FIGHT{

if instance_exists(ai_target){   
var stageY = get_stage_data(SD_Y_POS);
var movementX = floor(lerp(x, x + hsp, 12));
var movementY = floor(lerp(y, y + vsp, 12));
var target = ai_target;
var targetX = target.x;
var targetY = target.y;
var targetDistance = point_distance(x, y, targetX, targetY);
var targetYPredict = floor(lerp(targetY, targetY + target.vsp + (vsp), 12));
var targetXPredict = floor(lerp(targetX, targetX + target.hsp + (hsp), 12));
var blastzoneTopY = get_stage_data(SD_TOP_BLASTZONE_Y);
var blastzoneBotY = get_stage_data(SD_BOTTOM_BLASTZONE_Y);
var blastzoneLeftX = get_stage_data(SD_LEFT_BLASTZONE_X);
var blastzoneRightX = get_stage_data(SD_RIGHT_BLASTZONE_X);
var stageLeftX = get_stage_data(SD_X_POS);
var stageRightX = get_stage_data(SD_WIDTH) + get_stage_data(SD_X_POS);
if temp_level == 9{
    if target == self && !free && state_cat == SC_GROUND_NEUTRAL && tauntOnce{
        set_attack(AT_TAUNT);
        tauntOnce = false;
    }
    else if target != self{
        tauntOnce = true;
    }
}

if temp_level == 9 && target != self{

if plus_active{ // Change attack timings based on meter usage
    ai_attack_time = 5;
    far_side_attacks[0] = AT_FSTRONG;
    mid_side_attacks[0] = AT_FSTRONG;
    far_up_attacks[0] = AT_USTRONG;
}
else{
    if !free{
        if targetDistance > 50{
            ai_attack_time = 30;
        }
        else{
            ai_attack_time = 17;
        }
    }
    else{
        ai_attack_time = 12;
    }
    mid_side_attacks[0] = AT_FSPECIAL;
    far_side_attacks[0] = AT_FSPECIAL;
    far_up_attacks[0] = AT_UAIR;
}
// Cool combo stuff idk
if (target.player != player && (stageLeftX - 150) < x && (stageRightX + 150) > x) || !ai_recovering{
    var random = random_func(0, 1, true);
    if (stageY - 40) > y || !ai_recovering{
        dont_recover = true;
    }
    else{
        dont_recover = false;
    }
    if abs(targetX-x) < 140{ // if Target within a certain amount of distance on the X axis
        if stageY + 10 > y && free{ // if free above the stage
            if (targetY - 10) < y{ // if the target is above azula
                //Up B combo
                if state_cat == SC_AIR_NEUTRAL{ 
                    if abs(x - targetX) < 80{
                        if !up_b_used{
                            if abs(targetYPredict-y) < 18 && abs(targetXPredict-x) < 18{
                                attack_pressed = true;
                            }
                            else{
                                set_attack(AT_USPECIAL);
                            }
                        }
                        else if djumps == 0 && targetDistance < 60{
                            if vsp >= -3{
                                set_attack(AT_DSPECIAL);
                            }
                        }
                        else if targetDistance < 80{
                            if vsp >= -0.5{
                                if abs(blastzoneTopY - targetY) < -185{
                                    set_attack(AT_DSPECIAL);
                                }
                                else if !ai_recovering{
                                    set_attack(AT_UAIR);
                                }
                                else if (stageY - 80) > y{
                                    set_attack(AT_BAIR);
                                }
                            }
                        }
                        else if !side_b_used && (abs((targetYPredict - 20)-y) < 60 || ((stageY - 340)) > y) && !fast_falling{
                            if (sign(targetX-x) != 0) spr_dir = sign(targetX-x);
                            set_attack(AT_FSPECIAL);
                        }
                        else if plus_ready{
                            if djumps > 0 && up_b_used{
                                if target.vsp <= 0.1{
                                    special_pressed = true;
                                    attack_pressed = true;
                                }
                                else{
                                    down_hard_pressed = true;
                                }
                            }
                        }
                        else if !ai_recovering{
                            down_hard_pressed = true;
                        }
                    }
                    else if djumps == 0 && targetDistance > 120{
                        jump_pressed = true;
                    }
                    else if !side_b_used && abs(targetYPredict-y) < 50 && !fast_falling{
                        if (sign(targetXPredict-x) != 0) spr_dir = sign(targetXPredict-x);;
                        set_attack(AT_FSPECIAL);
                    }
                    else if abs(targetXPredict-x) < 50{
                        set_attack(AT_NAIR);
                    }
                }
                else if plus_ready && target.hitpause{
                    if djumps > 0 && up_b_used && side_b_used{
                        if vsp <= 0{
                            special_pressed = true;
                            attack_pressed = true;
                        }
                        else if target.vsp >= 0.1{
                            down_hard_pressed = true;
                        }
                    }
                }
            }
            else if targetDistance < 40 && (djumps == 0 || !up_b_used || !ai_recovering){
                if state_cat == SC_AIR_NEUTRAL{
                    set_attack(AT_DAIR);
                }
            }
        }
        else if ai_target = target{
            if target.hitpause && free && !ai_recovering{
                down_hard_pressed = true;
            }
            if state_cat == SC_GROUND_NEUTRAL{
                if targetDistance < 10{
                    set_attack(AT_DSPECIAL);
                }
                else if (target.state == PS_TECH_GROUND || target.state == PS_TECH_FORWARD || target.state == PS_TECH_BACKWARD) && (targetY-y) < 30{
                    if plus_active{
                        set_attack(AT_DSTRONG);
                    }
                    else if abs(targetXPredict-x) < 60{
                        set_attack(AT_DSTRONG);
                    }
                    else if !side_b_used{
                        set_attack(AT_FSPECIAL);
                        if (sign(targetXPredict-x) != 0) spr_dir = sign(targetXPredict-x);
                    }
                }
                else if target.was_parried{
                    if abs(targetX-x) < 130{
                        if abs(targetY-y) < 35{
                            set_attack(AT_FSTRONG);
                            if (sign(targetXPredict-x) != 0) spr_dir = sign(targetXPredict-x);
                        }
                        else if plus_active{
                            set_attack(AT_USTRONG);
                            if (sign(targetX-x) != 0) spr_dir = sign(targetX-x);
                        }
                    }
                    else{
                        jump_pressed = true;
                        if sign(x - targetX) == -1{
                            right_hard_pressed = true;
                            left_down = false
                        }
                        else{
                            left_hard_pressed = true;
                            right_down = false;
                        }
                    }
                    
                }
                else if plus_active{
                    if abs(targetXPredict-x) < 200 && targetY < y{
                        set_attack(AT_USTRONG);
                        if (sign(targetXPredict-x) != 0) spr_dir = sign(targetXPredict-x);
                    }
                }
            }
        }
        else if freemd{
            random = random_func(0, 2, true);
            if (targetYPredict - 100) > y || !target.freemd{
                if random == 1 && vsp >= 0 && !ai_recovering{
                    down_hard_pressed = true;
                }
                else if !free{
                    jump_pressed = true;
                }
            }
        }
    }
    else{
        // Neutral B approach
        var targetYPredict = floor(lerp(targetY, targetY + target.vsp + (vsp), 25));
        if abs(targetYPredict - y) < 50 || abs(targetY-y) < 20{
            if dont_recover = true{
                if state_cat == SC_AIR_NEUTRAL{
                    if vsp < -0.5 && move_cooldown[AT_NSPECIAL] == 0 && (target.state_cat == SC_GROUND_COMMITTED || target.free){
                        set_attack(AT_NSPECIAL);
                        if (sign(targetX-x) != 0) spr_dir = sign(targetX-x);
                    }
                    else if !side_b_used{
                        var random2 = random_func_2(0, 20, true);
                        if random2 == 2{
                            set_attack(AT_FSPECIAL);
                            if (sign(targetX-x) != 0) spr_dir = sign(targetX-x);
                        }
                    }
                }
                else if state_cat == SC_GROUND_NEUTRAL{
                    if !plus_active && move_cooldown[AT_NSPECIAL] == 0{
                        jump_pressed = true;
                        if sign(x - targetX) == -1{
                            if target.window < 2 || target.state_cat == SC_AIR_NEUTRAL{
                                right_hard_pressed = true;
                                left_down = false;
                            }
                            else{
                                left_hard_pressed = true;
                                right_down = false;
                            }
                        }
                        else{
                            if target.window < 2 || target.state_cat == SC_AIR_NEUTRAL{
                                right_hard_pressed = true;
                                left_down = false;
                            }
                            else{
                                left_hard_pressed = true;
                                right_down = false;
                            }
                        }
                    }
                    else if plus_active && abs(targetX-x) < 400{
                        set_attack(AT_FSTRONG);
                        if (sign(targetX-x) != 0) spr_dir = sign(targetX-x);
                    }
                }
            }
        }
        else if abs(targetY - y) < 60 && dont_recover && abs(targetX - x) < 35 && (djumps == 0 || !up_b_used || !ai_recovering){
            if state_cat == SC_AIR_NEUTRAL{
                set_attack(AT_DAIR);
            }
        }
        else if !side_b_used && state_cat == SC_GROUND_NEUTRAL && abs(targetXPredict-x) < 80{
            set_attack(AT_FSPECIAL);
            if (sign(targetX-x) != 0) spr_dir = sign(targetX-x);
        }
        else if abs(targetYPredict + 80) > y && abs(x-targetX) < 150 && !ai_recovering && !plus_ready{
            if state_cat == SC_AIR_NEUTRAL{
                down_hard_pressed = true;
            }
        }
    }
}
else{
    dont_recover = false;
}
// State behaviours

switch (state){
    case PS_IDLE_AIR:
        if attack == AT_DSPECIAL && targetY > y && !ai_recovering && fast_falling{
            down_hard_pressed = true;
        }
    break;
    case PS_IDLE:
        if !free && targetDistance < 100 && target.window == 1 && parry_cooldown == 0 && joy_pad_idle{
            shield_pressed = true;
        }
    break;
    case PS_ATTACK_GROUND:
        if attack != AT_FSTRONG && attack != AT_USTRONG{
            if window = 1 && window_timer == 0{
                if (sign(targetX-x) != 0) spr_dir = sign(targetX-x);
            }
        }
    break;
    case PS_ATTACK_AIR:
        var platform = asset_get("par_jumpthrough") // This is for platform checking so azula can hitfall to continue laddering with Up B combo.
        if instance_exists(platform){
            var nearestPlat = instance_nearest(x, y, platform);
            var platY = get_instance_y(nearestPlat);
            var platX = get_instance_x(nearestPlat);
            if (abs((platY - 100)-y) < 98 && (attack != AT_USPECIAL || window == 3)) && abs(platX-x) < 25{
                if target.hitpause{
                    down_hard_pressed = true;
                }
                if targetY < y && fast_falling == true{
                    if (platX) > x{
                        right_down = true;
                    }
                    else{
                        left_down = true;
                    } 
                }
            }
        }
        if target.hitpause && y > (stageY - 50) && dont_recover && attack != AT_DSPECIAL && (attack != AT_USPECIAL || window == 3){
            down_hard_pressed = true;
        }
    break;
}
// attack behaviours
switch (attack){
    case AT_JAB:
        if (window == 3 || window == 6) && targetDistance < 35{
            attack_pressed = true;
        }
    break;
    case AT_DSPECIAL:
        if (y >= (targetY + 5) || !free) && window > 1{
            jump_pressed = true;
        }
        else if !ai_recovering && target.hitpause{
            jump_pressed = true;
            down_hard_pressed = true;
        }
    break;
    case AT_DSPECIAL_AIR:
        if (y >= (targetY + 5) || !free) && window > 1{
            jump_pressed = true;
        }
        else if !ai_recovering && target.hitpause{
            jump_pressed = true;
            down_hard_pressed = true;
        }
    break;
    case AT_USPECIAL:
    break;
    case AT_DAIR:
        if target.hitpause{
            down_hard_pressed = true;
        }
    break;
    case AT_FSTRONG:
        if (abs(targetY-y) > 50 && window == 1 && abs(targetX-x) > 50){
            attack_down = true; // Charge Fstrong to make sure they hit the opponent
        }
    break;
    case AT_UAIR:
        if ((up_b_used && djumps > 0 && (targetY > y || vsp < 0 || get_player_damage(target.player) < 35) && !plus_ready) || ((stageY - 90) < y) || plus_active) && !ai_recovering{
            if target.hitpause{
                down_hard_pressed = true;
            }
        }
    break;
    case AT_DSTRONG:
        if target.invincible && window == 1{
            attack_down = true; // Charge Dstrong to make sure they hit the opponent
        }
    break;
    case AT_FSPECIAL:
        if ai_recovering{
            if has_walljump && can_wall_jump{
                jump_pressed = true;
            }
            if window == 1 && window_timer == 0 && ai_recovering{
                if (-sign(x-stageLeftX) != 0) spr_dir = -sign(x-stageLeftX);// B reverse
            }
            if stageLeftX > x{
                right_down = true;
            }
            else if stageRightX < x{
                left_down = true;
            }
        }
    break;
}
// Recovery
if (movementX < blastzoneLeftX) || (movementX > blastzoneRightX) || (movementY < blastzoneTopY) || (movementY > blastzoneBotY) && state_cat == SC_HITSTUN{
    if plus_ready{
        special_pressed = true;
        attack_pressed = true;
    }
}

}

}
else{
    dont_recover = false;
}

if ai_recovering && ((stageY - 70) < y){ // Janky recovery stuff
    if has_walljump && can_wall_jump{
        jump_pressed = true;
        jump_down = true;
    }
    up_down = true;
    if state_cat == SC_AIR_NEUTRAL && vsp >= -2{
        if !side_b_used && (djumps > 0 || plus_active) && (stageY - 30 > y){
            set_attack(AT_FSPECIAL);
            if (sign(stageLeftX-x) != 0) spr_dir = sign(stageLeftX-x);
        }
        else if !up_b_used{
            set_attack(AT_USPECIAL);
        }
        else if djumps == 0{
            jump_pressed = true;
        }
        else if has_airdodge && (stageY + 200 < y) && (stageY - 100 > y) && side_b_used{
            shield_pressed = true;
        }
        else if plus_ready && (stageY + 100) < y{
            special_pressed = true;
            attack_pressed = true;
        }
    }
}
if ai_recovering && dont_recover{
    if !side_b_used && target != self && attack != AT_FSPECIAL{
        if targetX > x{
            right_down = true;
        }
        else{
            left_down = true;
        }
    }
    else{
        if stageLeftX > x{
            right_down = true;
        }
        else if stageRightX < x{
            left_down = true;
        }
    }
}

}