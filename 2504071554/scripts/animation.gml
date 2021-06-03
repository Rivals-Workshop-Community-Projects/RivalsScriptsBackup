//animation

/*
if(blades == true){
    if(bl_anim == 0){
        a =+ 1;
    }
    if(a == 5){
        bl_anim = 1;
    }
    if(bl_anim == 1){
        a =- 1;
    }
    if(a == 0){
        bl_anim = 0;
    }
}*/


//hyu area, i am making animations run in better timings
//feel free to remove em!
//im just changing how long each frame is shown, i didnt change or remove the frames themselves or anythin

if (state==PS_DASH_TURN){
	//last i checked, dash_turn_time = 10;
	switch (state_timer){
		case 0:
			image_index = 0;
		break;
		case 1:
		case 2:
			image_index = 1;
		break;
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
			image_index = 2;
		break;
		case 8:
		case 9:
			image_index = 3;
		break;
		
		default: break;
	}
	
}
if (state==PS_AIR_DODGE){
	
}
if (state==PS_WALL_JUMP){
	if (clinging){
		var length_time = 15
		image_index = 0 + ( state_timer*0.06 ) % 2; //thanks to supersonic!
	}else if (cling_check){
		var length_time = 32
		image_index = 2 + not_cling_timer * 4 / length_time;
		//starting animation frame +
		//current time *
		//number of anim frame in the duration /
		//time it takes
		//image_index = 2 + ( not_cling_timer*0.1 ) % 4; //thanks to supersonic!
	}
}
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){ //change accordingly
    if (attack == AT_DSTRONG){ //change accordingly
        if (smash_charging){
			image_index = 3 + ( strong_charge*0.15 ) % 2
		}
	}
}
if ((state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR)&&attack==AT_DAIR){
	if (window==7){
		if (free){
			image_index = 0
		}else{
			image_index = 9
		}
	}
}
if ((state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR)&&attack==AT_JAB){
	if (window==6){
		if (window_timer < 6){
			image_index = 6
		}
	}
}







