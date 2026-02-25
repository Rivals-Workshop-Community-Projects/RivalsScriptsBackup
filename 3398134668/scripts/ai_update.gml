

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
var targetY = target.y + (target.char_height/2);
var azulaY = y + (char_height/2);
var targetDistance = point_distance(x, azulaY, targetX, targetY);
var targetYPredict;
var targetXPredict;

if !target.hitpause{
	targetYPredict = floor(lerp(targetY, targetY + target.vsp + (vsp), 12));
	targetXPredict = floor(lerp(targetX, targetX + target.hsp + (hsp), 12));
}
else{
	targetYPredict = floor(lerp(targetY, targetY + target.old_vsp + (vsp), 12));
	targetXPredict = floor(lerp(targetX, targetX + target.old_hsp + (hsp), 12));
}

var blastzoneTopY = get_stage_data(SD_TOP_BLASTZONE_Y);
var blastzoneBotY = get_stage_data(SD_BOTTOM_BLASTZONE_Y);
var blastzoneLeftX = get_stage_data(SD_LEFT_BLASTZONE_X);
var blastzoneRightX = get_stage_data(SD_RIGHT_BLASTZONE_X);
var stageLeftX = get_stage_data(SD_X_POS);
var stageRightX = get_stage_data(SD_WIDTH) + get_stage_data(SD_X_POS);
var stageMiddle = stageLeftX + (get_stage_data(SD_WIDTH)/2);

if temp_level == 9{
	
	var finalsmashCharge = 0
	var finalsmashActive = false;
    if variable_instance_exists(self, "fs_charge"){
    	finalsmashCharge = fs_charge;
    	finalsmashActive = fs_using_final_smash;
    }
	
	
	if target.initial_invince > 0{
		movementICD = 30;
		AvoidTarget();
	}
	if movementICD > 0 movementICD -= 1;
    if target == self && !free && state_cat == SC_GROUND_NEUTRAL && tauntOnce{
        if !has_rune("O") set_attack(AT_TAUNT);
        else if finalsmashCharge < 200{
        	set_attack(AT_NSPECIAL);
        }
        tauntOnce = false;
    }
    else if target != self{
        tauntOnce = true;
    }
}
var hitboxExists = false;
if has_rune("D") with pHitBox if player_id != other && type == 2 && !does_not_reflect{
	var hitboxDist = (point_distance(x, y, other.x, other.y));
	if hitboxDist < 200{
		hitboxExists = true;
	}
}
if attack != AT_NSPECIAL pickRandom = random_func_2(0, 5, true);

if has_rune("O"){
	if closestDistance < itemPickupDist && grabICD = 0 && attack != AT_NSPECIAL{
		attack_pressed = true;
		grabICD = 20;
	}
	if attack_down grabICD = 20;
	if grabICD > 0 grabICD -= 1;
}
if temp_level == 9 && target != self{

if plus_active{ // Change attack timings based on meter usage
    ai_attack_time = 5;
    far_side_attacks[0] = AT_FSTRONG;
    mid_side_attacks[0] = AT_FSTRONG;
    far_up_attacks[0] = AT_USTRONG;
}
else if comboTimeout > 0 && comboTimeout < 50 && plus_ready && comboLevel > 0{
	special_pressed = true;
	attack_pressed = true;
}

else{
    if !free{
        if targetDistance > 50{
            ai_attack_time = movementICD + 28;
        }
        else{
            ai_attack_time = 16;
        }
    }
    else if target.state_cat != SC_HITSTUN{
        ai_attack_time = 10;
    }
    else{
    	ai_attack_time = 5;
    }
    mid_side_attacks[0] = AT_FSPECIAL;
    far_side_attacks[0] = AT_FSPECIAL;
    far_up_attacks[0] = AT_UAIR;
}
// Cool combo stuff idk
if ((ai_target != self && (stageLeftX - 150) < x && (stageRightX + 150) > x) || (!ai_recovering || targetDistance < 130)) && target.initial_invince == 0{
    var random = random_func(0, 1, true);
    if (stageY - 40) > azulaY || !ai_recovering{
        dont_recover = true;
    }
    else{
        dont_recover = false;
    }
    if abs(targetX-x) < 150{ // if Target within a certain amount of distance on the X axis
        if stageY + 25 > azulaY && free && (vsp >= -0.5 || attack == AT_USPECIAL) && !target.hurtboxID.dodging{ // if free above the stage
            if (target.y + 10) < y{ // if the target is above azula
                //Up B combo
                if state_cat == SC_AIR_NEUTRAL{ 
                    if abs(x - targetX) < 150{
                        if up_b_used < up_b_max{
                            if abs(targetYPredict-azulaY) < 40 && abs(targetXPredict-x) < 40 && djumps > 0{
                                attack_pressed = true;
                            }
                            if abs(targetY-azulaY) < 170 && abs(targetX-x) < 70{
                                set_attack(AT_USPECIAL);
                            }
                      
                        }
                        else if djumps == 0 && abs(targetY-azulaY) < 90 && abs(targetX-x) < 35{
                            if vsp >= -2{
                            	var ran = random_func(0, 2, true);
                            	if ran = 1 && has_rune("H"){
                            		joy_dir = 90;
                            		joy_pad_idle = false;
                            		shield_pressed  = true;
                            	}
                            	else{
                            		set_attack(AT_DSPECIAL);
                            	}
                            }
                        }
                        else if abs(targetY-azulaY)<70 && abs(targetX-x) < 60{
                            if vsp >= -0.5{
                                if (stageY - 80) > azulaY{
                                	if abs(blastzoneTopY-y) > 150 set_attack(AT_BAIR);
                                	else{
                                		var ran = random_func(0, 2, true);
		                            	if ran = 1 && has_rune("H"){
		                            		joy_dir = 90;
		                            		joy_pad_idle = false;
		                            		shield_pressed  = true;
		                            	}
		                            	else{
		                            		set_attack(AT_DSPECIAL);
		                            	}
                                	}
                                }

                            }
                        }
                        else if !side_b_used && (abs((targetYPredict - 20)-azulaY) < 60 || ((stageY - 340)) > azulaY) && !fast_falling && (!ai_recovering || up_b_used < up_b_max){
                            if (sign(targetX-x) != 0) spr_dir = sign(targetX-x);
                            var ran = random_func(0, 2, true);
                        	if ran = 1 && has_rune("G"){
                        		set_attack(AT_FSTRONG);
                        	}
                        	else{
                        		if finalsmashCharge >= 200{
                        			fs_ai_attempt_use = true;
                        		}
                        		else if finalsmashActive == false{
                        			set_attack(AT_FSPECIAL);
                        		}
                        	}
                        }
                        else if plus_ready{
                            if djumps > 0 && up_b_used >= up_b_max{
                                if target.vsp <= 0.1 && vsp < 0{
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
                    else if djumps == 0 && targetDistance > 240{
                        jump_pressed = true;
                    }
                    else if !side_b_used && abs(targetYPredict-y) < 50 && !fast_falling && (!ai_recovering || up_b_used < up_b_max){
                        if (sign(targetXPredict-x) != 0) spr_dir = sign(targetXPredict-x);;
                        var ran = random_func(0, 2, true);
                    	if ran = 1 && has_rune("G"){
                    		set_attack(AT_FSTRONG);
                    	}
                    	else{
                    		if finalsmashCharge >= 200{
                    			fs_ai_attempt_use = true;
                    		}
                    		else if finalsmashActive == false{
                    			set_attack(AT_FSPECIAL);
                    		}
                    	}
                    }
                    else if abs(targetXPredict-x) < 50{
                    	if has_rune("G") set_attack(AT_FSTRONG);
                    	else set_attack(AT_NAIR);
                    }
                }
                else if plus_ready && target.hitpause{
                    if djumps > 0 && up_b_used >= up_b_max && side_b_used{
                        if vsp <= 0{
                            special_pressed = true;
                            attack_pressed = true;
                        }
                    }
                }
            }
            else if (targetY-y) < 80 && (djumps == 0 || up_b_used < up_b_max || !ai_recovering) && abs(targetX-x) < 30{
                if state_cat == SC_AIR_NEUTRAL{
                	var random2 = (random_func(0, 4, true));
                	if has_rune("G") && random2 > 1 && !ai_recovering{
						down_strong_pressed = true;
                	}
                	else set_attack(AT_DAIR);
                }
            }
            else if state_cat == SC_AIR_NEUTRAL && (targetY-y) < 80 && target.state_cat == SC_HITSTUN{
                 set_attack(AT_DSPECIAL);
            }
        }
        else if ai_target = target{
            if target.hitpause && free && !ai_recovering{
                down_hard_pressed = true;
            }
            if state_cat == SC_GROUND_NEUTRAL{
                if targetDistance < 70 && !target.hurtboxID.dodging{
                    set_attack(AT_DSPECIAL);
                }
                else if targetDistance > 80 && (target.state == PS_TECH_GROUND || target.state == PS_TECH_FORWARD || target.state == PS_TECH_BACKWARD || target.state == PS_ROLL_BACKWARD || target.state == PS_ROLL_FORWARD || target.state == PS_AIR_DODGE) && abs(target.y-y) < 60{
                    if plus_active && target.initial_invince == 0 && meter > 20{
                        set_attack(AT_DSTRONG);
                    }
                    else if abs(targetXPredict-x) < 60{
                        set_attack(AT_DSTRONG);
                    }
                    else if !side_b_used{
                        if finalsmashCharge >= 200{
                			fs_ai_attempt_use = true;
                		}
                		else if finalsmashActive == false{
                			set_attack(AT_FSPECIAL);
                		}
                        if (sign(targetXPredict-x) != 0) spr_dir = sign(targetXPredict-x);
                    }
                }
                else if target.was_parried{
                    if abs(targetX-x) < 130{
                        if abs(targetY-azulaY) < 35{
                        	if abs(targetX-x) > 45{
                        		set_attack(AT_FSTRONG);
                        	}
                        	else{
                        		set_attack(AT_USTRONG);
                        	}
                            if (sign(targetXPredict-x) != 0) spr_dir = sign(targetXPredict-x);
                        }
                        else if targetY > azulaY{
                        	down_hard_pressed = true;
                        }
                        else if plus_active && !ai_target.hurtboxID.dodging && abs(targetY-azulaY) < 35 && target.initial_invince == 0 && meter > 20{
                            set_attack(AT_USTRONG);
                            if (sign(targetX-x) != 0) spr_dir = sign(targetX-x);
                        }
                    }
                    else{
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
                else if plus_active && target.initial_invince == 0 && meter > 20{
                    if abs(targetXPredict-x) < 200 && targetY < azulaY{
                        set_attack(AT_USTRONG);
                        if (sign(targetXPredict-x) != 0) spr_dir = sign(targetXPredict-x);
                    }
                }
            }
        }
        else if freemd{
            random = random_func(0, 2, true);
            if (targetYPredict - 100) > azulaY || !target.freemd{
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
        if abs(targetYPredict - azulaY) < 50 || abs(targetY-azulaY) < 20 && movementICD == 0{
            if dont_recover = true{
                if state_cat == SC_AIR_NEUTRAL{
                    if vsp < -0.5 && move_cooldown[AT_NSPECIAL] == 0 && (target.state_cat == SC_GROUND_COMMITTED || target.free){
                    	if !hitboxExists && finalsmashCharge < 200 && finalsmashActive == false set_attack(AT_NSPECIAL);
                        else set_attack(AT_DSPECIAL);
                        if (sign(targetX-x) != 0) spr_dir = sign(targetX-x);
                    }
                    else if !side_b_used{
                        var random2 = random_func_2(0, 20, true);
                        if random2 == 2{
                            if finalsmashCharge >= 200{
	                			fs_ai_attempt_use = true;
	                		}
	                		else if finalsmashActive == false{
	                			set_attack(AT_FSPECIAL);
	                		}
                            else set_attack(AT_DSPECIAL);
                            if (sign(targetX-x) != 0) spr_dir = sign(targetX-x);
                        }
                    }
                }
                else if state_cat == SC_GROUND_NEUTRAL{
                    if !plus_active && move_cooldown[AT_NSPECIAL] == 0 && targetDistance > 240{
                        jump_pressed = true;
                    }
                    else if plus_active && abs(targetX-x) < 400 && target.initial_invince == 0 && (meter > 15 || (targetX<stageLeftX || targetX>stageRightX)){
                        set_attack(AT_FSTRONG);
                        if (sign(targetX-x) != 0) spr_dir = sign(targetX-x);
                    }
                }
            }
        }
        else if abs(target.y - y) < 70 && dont_recover && abs(targetX - x) < 25 && (djumps == 0 || up_b_used < up_b_max || !ai_recovering){
            if state_cat == SC_AIR_NEUTRAL{
                var random3 = (random_func(0, 4, true));
            	if has_rune("G") && random3 > 1 && !ai_recovering{
					down_strong_pressed = true;
            	}
            	else set_attack(AT_DAIR);
            }
        }
        else if !side_b_used && state_cat == SC_GROUND_NEUTRAL && abs(targetXPredict-x) < 80{
            if finalsmashCharge >= 200{
    			fs_ai_attempt_use = true;
    		}
    		else if finalsmashActive == false{
    			set_attack(AT_FSPECIAL);
    		}
            if (sign(targetX-x) != 0) spr_dir = sign(targetX-x);
        }
        else if abs(targetYPredict + 80) > azulaY && abs(x-targetX) < 150 && !ai_recovering && !plus_ready{
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
	case PS_AIR_DODGE:
	    if abs(targetX-x) < 70{
	    	if abs(stageY-y) < 100 && !ai_recovering{
	    		up_down = false;
	    		down_down = true;
	    	    joy_dir = 270;
	    	}
	    	else{
	    		up_down = true;
	    		down_down = false;
	    	    joy_dir = 90;
	    	}
	    	joy_pad_idle = false;
	    }
    case PS_IDLE_AIR:
	    if has_rune("M") && plus_active && (meter <= 25 || (get_player_damage(player) > 100 && targetDistance > 150)) && comboCount == 0{
	    	special_pressed = true;
	    	attack_pressed = true;
	    }
	    if (targetY-y) > 300 && abs(targetX-x) < 160 && !ai_recovering && has_rune("G"){
	    	down_strong_pressed = true;
	    }
        if hitboxExists{
        	set_attack(AT_DSPECIAL);
        }
        if targetY<azulaY{
        }
        if target.state_cat == SC_HITSTUN{
        	TowardsTarget();
        }
        else if dont_recover{
        	AvoidTarget();
        }
        if free && (azulaY-targetY) > (char_height*2) && abs(targetX-x) < 100 && vsp >= 0{
        	jump_pressed = true;
        }
    break;
    case PS_IDLE:
	    if has_rune("M") && plus_active && (meter <= 25 || (get_player_damage(player) > 100 && targetDistance > 150)) && comboCount == 0{
	    	special_pressed = true;
	    	attack_pressed = true;
	    }
        if hitboxExists{
        	set_attack(AT_DSPECIAL);
        }
        if !free && targetDistance < 50 && parry_cooldown == 0 && joy_pad_idle && target.window == 1 && !target.hurtboxID.dodging && target.state != PS_TECH_BACKWARD && target.state != PS_TECH_FORWARD && target.state != PS_TECH_GROUND{
            shield_pressed = true; // Use parry
        }
        if !free && (azulaY-targetY) > char_height && abs(targetX-x) < 100{
        	jump_pressed = true;
        }
        if target.window != 2 && abs(target.x-x) > 150{
        	TowardsTarget();
        	movementICD = 35;
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
        var maxFall = 160;
        if target.hitpause{
            for (var i = 0; i < maxFall; i += 1){
                if place_meeting(x, y + i, asset_get("par_jumpthrough")) || place_meeting(x, y + (i), asset_get("par_block")){
                	if (((i < 100 && (attack != AT_USPECIAL || window == 3)) || (djumps > 0 && up_b_used >= up_b_max && side_b_used)) && attack != AT_DAIR && !ai_recovering){
                		down_hard_pressed = true;
                		break;
                	}
                }
            }
        }
        if attack != AT_NSPECIAL{
            TowardsTarget();	
        }
    break;
    case PS_FIRST_JUMP:
    if attack == AT_DSPECIAL{
    	jump_down = true;
    }
    break;
    case PS_DOUBLE_JUMP:
    if attack == AT_DSPECIAL && target.y > y && !ai_recovering{
        down_hard_pressed = true;
    }
    break;
    case PS_WAVELAND:
    break;
    case PS_JUMPSQUAT:
    break;
}
// attack behaviours
switch (attack){
    case AT_JAB:
        if (window == 3 || window == 6) && targetDistance < 60{
            attack_pressed = true;
        }
    break;
    case AT_DSPECIAL:
        if (azulaY > (targetY) || !free) && window > 1 && djumps = 0 && !hitboxExists{
            jump_pressed = true;
        }
        if hitboxExists{
        	special_down = true;
        }
    break;
    case AT_DSPECIAL_AIR:
        if (azulaY >= (targetY + 5) || !free) && window > 1 && !hitboxExists{
            jump_pressed = true;
        }
        else if !ai_recovering && target.hitpause && !hitboxExists{
            jump_pressed = true;
            down_hard_pressed = true;
        }
        if hitboxExists{
        	special_down = true;
        }
    break;
    case AT_DAIR:
    if target.hitpause{
        down_hard_pressed = true;
    }
    if ai_recovering && has_rune("B") && has_hit{
    	jump_pressed = true;
    }
    break;
    case AT_FSTRONG:
        if ((abs(targetY-azulaY) > 50 && window == 1 && abs(targetX-x) > 50)) || ((ai_target.hurtboxID.dodging || target.was_parried || target.state == PS_PARRY) && window == 1){
            attack_down = true; // Charge Fstrong to make sure they hit the opponent
        }
    break;
    case AT_UAIR:
        if ((up_b_used >= up_b_max && djumps > 0 && (targetY > azulaY || vsp < 0 || get_player_damage(target.player) < 35) && !plus_ready) || ((stageY - 90) < azulaY) || plus_active) && !ai_recovering{
            if target.hitstop < 2 && target.hitpause{
                down_hard_pressed = true;
            }
        }
    break;
    case AT_DSTRONG:
        if (ai_target.hurtboxID.dodging || target.was_parried || target.state == PS_PARRY) && window == 1{
            attack_down = true; // Charge Dstrong to make sure they hit the opponent
        }
    break;
    case AT_USTRONG:
        if (ai_target.hurtboxID.dodging || target.was_parried || target.state == PS_PARRY) && window == 1{
            attack_down = true; // Charge Fstrong to make sure they hit the opponent
        }
    break;
    case AT_FSPECIAL:
	    if has_rune("N"){
	    	if window == 1 || window == 2{
	    		joy_pad_idle = false;
	    		joy_dir = point_direction(x, azulaY, targetXPredict, targetYPredict);
	    	}
	    }
        if ai_recovering || abs(stageMiddle-x) > 400{
            if has_walljump && can_wall_jump && (up_b_used >= up_b_max || abs(stageY-y) < 300){
                jump_pressed = true;
                jump_down = true;
            }
            if up_b_used >= up_b_max && window == 1 && window_timer == 1{
                if (-sign(x-stageMiddle) != 0) spr_dir = -sign(x-stageMiddle);// B reverse
            }
            if stageMiddle > x{
                right_down = true;
            }
            else{
                left_down = true;
            }
        }
    break;
    case AT_NSPECIAL:
        if pickRandom != itemIndex && !ai_recovering{
        	if !instance_exists(ownItemOut[pickRandom]) special_down = true;
        }
    break;
}
// Recovery
if ((movementX < blastzoneLeftX) || (movementX > blastzoneRightX) || (movementY < blastzoneTopY) || ((movementY > blastzoneBotY) && ai_recovering)) && state_cat == SC_HITSTUN{
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

if ai_recovering && ((stageY - 90) < y || (stageLeftX - 150 > x) || (stageRightX + 150 < x)) && ((targetDistance > 30 || !has_walljump) || ai_target == self || (stageY + 170) < y ){ // Janky recovery stuff
    if state_cat == SC_AIR_NEUTRAL && vsp >= 0{
        if !side_b_used && ((up_b_used >= up_b_max && djumps > 0 && !has_airdodge) || (((stageLeftX - 100) > x || (stageRightX + 100) < x)) && (stageY + 200 > azulaY)){
    		set_attack(AT_FSPECIAL);
            if (sign(stageMiddle-x) != 0) spr_dir = sign(stageMiddle-x);
        }
        else if djumps == 0{
            jump_pressed = true;
        }
        else if up_b_used < up_b_max{
            set_attack(AT_USPECIAL);
        }
        else if has_walljump && can_wall_jump && (up_b_used >= up_b_max){
            jump_pressed = true;
            jump_down = true;
        }
        else if has_airdodge && (stageY + 200 < y) && (stageY - 100 > y) && side_b_used{
        	up_down = true;
            shield_pressed = true;
        }
        else if plus_ready && (stageY + 200) < y && vsp >= 0{
            special_pressed = true;
            attack_pressed = true;
        }
    }
    if plus_ready && abs(blastzoneBotY-y) < 140 && vsp >= 0{
        special_pressed = true;
        attack_pressed = true;
    }
}
if ai_recovering{
    if !side_b_used && target != self && attack != AT_FSPECIAL && (targetY > y || targetDistance < 75){
        if ai_target != self && targetX > x{
            right_down = true;
        }
        else{
            left_down = true;
        }
    }
    else if stageLeftX > x{
        right_down = true;
    }
    else{
        left_down = true;
    }
}

}

#define TowardsTarget()

{
	if movementICD = 0 && attack != AT_FSPECIAL{
    if ai_target != self && ai_target.x > x{
        if movementICD = 0{
    	     right_hard_pressed = true;
             left_hard_pressed = false;	
    	}
        right_down = true;
        left_down = false;
        up_down = false;
        down_down = false;
    }
    else if ai_target != self{
        if movementICD = 0{
    	     right_hard_pressed = false;
             left_hard_pressed = true;	
    	}
        right_down = false;
        left_down = true;
        up_down = false;
        down_down = false;
    }
	}
    
}

#define AvoidTarget()

{
	if !ai_recovering && abs(ai_target.x-x) < 400 && attack != AT_FSPECIAL{
    if ai_target != self && ai_target.x < x{
    	if movementICD = 0{
    	     right_hard_pressed = true;
             left_hard_pressed = false;	
    	}
    	right_down = true;
        left_down = false;
        up_down = false;
        down_down = true;
    }
    else if ai_target != self{
    	if movementICD = 0{
    	     right_hard_pressed = false;
             left_hard_pressed = true;	
    	}
        right_down = false;
        left_down = true;
        up_down = false;
        down_down = true;
    }
	}
    
}
