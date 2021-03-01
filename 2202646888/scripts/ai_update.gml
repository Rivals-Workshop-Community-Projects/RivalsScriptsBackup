xdist = abs(ai_target.x - x);
ydist = abs(ai_target.y - y);

//CPU MAY CHARGE ITS STRONG ATTACKS
if(attack==AT_DSTRONG)||(attack==AT_FSTRONG){
	if(xdist>55 && window<3)&&(!hitstun){
		strong_down=true;
	}else{
		strong_down=false;
	}
}

if(attack==AT_FSTRONG){
	if(xdist>80 && window<3)&&(!hitstun){
		strong_down=true;
	}else{
		strong_down=false;
	}
}

if(attack==AT_USTRONG){
	if(xdist>45 && window<2 )&&(!hitstun){
		strong_down=true;
	}else{
		strong_down=false;
	}
}


var stage_x = get_stage_data( SD_X_POS );
var stage_y = get_stage_data( SD_Y_POS );
if((x < 270)||((room_width - x)< 270))&&(free)&&(!hitstun)&&(djumps==1)&&(state!=PS_ATTACK_AIR)&&(can_special){
	if(x < stage_x){spr_dir=1;}
	if(x > stage_x){spr_dir=-1;}
	set_attack(AT_FSPECIAL);
}


if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL && has_hit_player {
    fspecial_followup_timer = 60;
}

if fspecial_followup_timer > 0 {
    fspecial_hit = true;
    fspecial_followup_timer -= 1;
}else {
    fspecial_hit = false;
}

if fspecial_hit{
    left_down = ai_target.x < x;
    right_down = !left_down;
        if xdist < 60 && ydist < 55{
            left_down = false;
            right_down = false;
            down_down = false;
            up_down = false;
            attack_down = true;
            attack_pressed = true;
            special_down = false;
        }else if xdist > 49 && xdist < 70 && ydist < 40{
            down_down = false;
            up_down = false;
            attack_down = true;
            attack_pressed = true;
            special_down = false;
        }
}



//PUNISH 
if(ai_target.was_parried == true && !free){
        if get_player_damage(ai_target.player) >= 110 && xdist < 100 {
            left_down = ai_target.x < x;
            right_down = !left_down;
            up_down = false;
            if left_down {
                left_strong_pressed = true;
            } else if right_down {
                right_strong_pressed = true;
            }
        } else if xdist <= 55{
        	left_down = ai_target.x < x;
        	right_down = !left_down;
        	taunt_pressed = true;
    	} else if xdist > 55 {
    		left_down = ai_target.x < x;
        	right_down = !left_down;
            up_down = false;
            if left_down {
                down_down = true;
                attack_pressed = true;
            } else if right_down {
                down_down = true;
                attack_pressed = true;
            }
    	}
}

if attack == AT_TAUNT && (state ==PS_ATTACK_GROUND || state ==PS_ATTACK_AIR) {
taunt_down = true
if xdist < 100 && !free{
jump_pressed = true
}
if has_hit_player {taunt_pressed = false; taunt_down = false;}
if state != PS_RESPAWN {taunt_pressed = false; taunt_down = false;}
//if initial_invince == 0 { taunt_down = false;}
//else { jump_pressed = false; }
if xdist > 150 && !free{
	taunt_down = false;
}
}

ai_should_hitfall = (collision_line(x,y,x,y + 120,asset_get("par_block"),false,true) || collision_line(x,y,x,y + 120,asset_get("par_jumpthrough"),false,true)) && (hitpause && state_cat != SC_HITSTUN) && can_fast_fall && free;

if ai_should_hitfall {
    down_hard_pressed = true;
}

if (state == PS_RESPAWN){
	taunt_pressed = true
}

//BM
if (ai_target.state == PS_RESPAWN && !free){
    jump_pressed = false
    attack_pressed = false
    attack_down = false
    special_pressed = false
    special_down = false;
    left_hard_pressed = false
    right_hard_pressed = false;
    funny_walkturn *= -1;
    switch(funny_walkturn){
        case 1:
            left_down = true
            break;
        case -1:
            right_down = true;
            break;
    }
}
