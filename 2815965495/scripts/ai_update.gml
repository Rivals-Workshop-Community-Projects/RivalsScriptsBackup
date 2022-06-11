//ai_update - called every frame for this character as a CPU

//General Logic

xdist = abs(ai_target.x - x);
ydist = abs(ai_target.y - y);

//CPU MAY CHARGE ITS STRONG ATTACKS
if(attack==AT_FSTRONG){
	if(xdist>100 && window == 1)&&(!hitstun){
		strong_down=true;
	}else{
		strong_down=false;
	}
}

if(attack==AT_DSTRONG){
	if(xdist>70 && window==2)&&(!hitstun){
		strong_down=true;
	}else{
		strong_down=false;
	}
	if ai_target.x > x{ right_down = true;}
	if ai_target.x < x{ left_down = true;}
}

if(attack==AT_USTRONG){
	if(ydist>70 && window<2 )&&(!hitstun){
		strong_down=true;
	}else{
		strong_down=false;
	}
}


//Free Movement

if attack ==AT_NSPECIAL || attack ==AT_FSPECIAL || attack ==AT_DSPECIAL {
	if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND{
		right_down = (ai_target.x > x);
		left_down = (ai_target.x < x);
		up_down = (ai_target.y < y);
		down_down = (ai_target.y > y);
	}
}

