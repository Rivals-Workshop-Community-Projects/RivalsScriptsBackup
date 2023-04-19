switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

if ( attack==AT_TAUNT_4 && window==2 && (state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR) ){
	if (!shield_down){
		if (get_gameplay_time()%3==0){
			var s_tmp = random_func_2( 5, 4, true )
			skate_tmp = (s_tmp==skate_tmp)?s_tmp+1:s_tmp
		}
		image_index = 1+skate_tmp;
	}else{
		if (up_down){ image_index = 2;
		}else if (down_down){ image_index = 3;
		}else if (left_down){ image_index = 1;
		}else if (right_down){ image_index = 4;
		}else{ image_index = 0; }
	}
}