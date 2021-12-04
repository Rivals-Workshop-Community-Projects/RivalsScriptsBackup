//ai_update - called every frame for this character as a CPU

//REFLECT TESTING
//if can_special{
	//set_attack(AT_FSPECIAL);
//}


//General Logic

xdist = abs(ai_target.x - x);
ydist = abs(ai_target.y - y);

if(xdist>=100){
fs_ai_attempt_use = true;
}

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

if(attack==AT_DSPECIAL){
	if((has_hit )|| (free)) && (cyclone < 2){
		special_down=true;
	}else{
		special_down=false;
	}
}

if(attack==AT_JAB){
	if has_hit {
		attack_pressed = true;
	} else {
		attack_pressed = false;
	}
}

ai_should_hitfall = (collision_line(x,y,x,y + 120,asset_get("par_block"),false,true) || collision_line(x,y,x,y + 120,asset_get("par_jumpthrough"),false,true)) && (hitpause && state_cat != SC_HITSTUN) && can_fast_fall && free;

if ai_should_hitfall {
    down_hard_pressed = true;
}

if (ai_target.state == PS_RESPAWN && !free){
    jump_pressed = false
    attack_pressed = false
    special_pressed = false
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


// insert custom recovery code here, since the CPU should try to recover regardless of the CPU Action setting

// DSPECIAL RECOVERY
var stage_x = get_stage_data( SD_X_POS );
var stage_y = get_stage_data( SD_Y_POS );
if((x < 160)||((room_width - x)< 160)||(djumps==1 && cyclone==0 && ai_recovering))&&(free)&&(!hitstun)&&(state!=PS_ATTACK_AIR)&&(can_special){
	if(x < stage_x){spr_dir=1;}
	if(x > stage_x){spr_dir=-1;}
	set_attack(AT_DSPECIAL);
}


//PUNISH 
if(invincible && can_strong && xdist < 100){
	set_attack(AT_DSTRONG);
}
