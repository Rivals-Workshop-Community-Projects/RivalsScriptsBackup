//ai_update - called every frame for this character as a CPU

//General Logic

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

if(attack==AT_DSPECIAL){
	if((has_hit )|| (free)) && (cyclone < 2){
		special_down=true;
	}else{
		special_down=false;
	}
}




// insert custom recovery code here, since the CPU should try to recover regardless of the CPU Action setting

// DSPECIAL RECOVERY
var stage_x = get_stage_data( SD_X_POS );
var stage_y = get_stage_data( SD_Y_POS );
if((x < 160)||((room_width - x)< 160))&&(free)&&(!hitstun)&&(djumps==1)&&(state!=PS_ATTACK_AIR)&&(can_special){
	if(x < stage_x){spr_dir=1;}
	if(x > stage_x){spr_dir=-1;}
	set_attack(AT_DSPECIAL);
}


//PUNISH 
if(invincible && can_strong && xdist < 100){
	set_attack(AT_DSTRONG);
}
