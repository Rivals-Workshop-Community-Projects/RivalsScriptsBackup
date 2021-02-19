switch (state){
    case PS_IDLE:
        //anim_c_timer++;
        
        blinktimer--;
        if(blinktimer<=0){
            if(blinktimer>-2){
                sprite_index=sprite_get("idle_half");
            } else if(blinktimer>-4){
                sprite_index=sprite_get("idle_blink");
            } else if(blinktimer>-6){
                sprite_index=sprite_get("idle_half");
            } else {
                blinktimer=clamp(random_func( 60, 120, true ),60,120);
            }
        } else {
            sprite_index=sprite_get("idle");
        }
        image_index=round(state_timer*idle_anim_speed);
        hurtboxID.sprite_index=asset_get("ex_guy_hurt_box");
    break;
    
    case PS_ATTACK_AIR:
        if(attack==AT_DSPECIAL){
        	if(window==3&&window_timer>20){
            	image_index=ceil(((window_timer-20)/10*3)+13-6);
        	}
        	/*if(window==1){
        		hurtboxID.image_index=window_timer;
        	} else {
        		hurtboxID.image_index=image_index-50+11;
        	}//*/
        }
        /*if(attack==AT_USPECIAL&&window==3){
        	
        }//*/
    break;
    
    case PS_DASH:
        hurtboxID.sprite_index = sprite_get("dash_hurt");
    break;
    
    case PS_IDLE_AIR:
	    hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
	    if(prev_state==PS_DOUBLE_JUMP){
	    	image_index=image_number-1;
	    }
    break;
    
    case PS_FIRST_JUMP:
	    hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
    break;
    
    case PS_DOUBLE_JUMP:
	    hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
    break;
    
    case PS_WALL_JUMP:
	    hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
    break;
    
    case PS_LAND:
	    hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
    break;
    
    case PS_PRATLAND:
	    hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
    break;
    
    case PS_LANDING_LAG:
    	hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
    break;
    
    case PS_WALK:
    	hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
    break;
    
    case PS_WALK_TURN:
	    hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
    break;
	
    case PS_DASH_START:
        if(state_timer<=initial_dash_time/2){
	        hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
        } else {
            hurtboxID.sprite_index = sprite_get("dash_hurt");
        }
	break;
	
    case PS_DASH_STOP:
	    if(state_timer>dash_stop_time/2){
	        hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
        } else {
            hurtboxID.sprite_index = sprite_get("dash_hurt");
        }
	break;
	
    case PS_DASH_TURN:
    	hurtboxID.sprite_index = sprite_get("dash_hurt");
	break;
	
    case PS_WAVELAND:
	    hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
	break;
	
	case PS_AIR_DODGE:
	    //hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
	    if(image_index==2){
	    	anitimer=0;
	    } else if(image_index==3){
	    	anitimer++;
	    	if(anitimer>=4){
	    		image_index=4;
	    	}
	    } else if(image_index==4){
	    	anitimer++;
	    	if(anitimer>=7){
	    		image_index=5;
	    	}
	    } else if(image_index==5){
	    	anitimer++;
	    	if(anitimer>=10){
	    		image_index=6;
	    	}
	    }
	break;
	
    case PS_PARRY:
	    hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
	break;
	
    case PS_PARRY_START:
	    hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
	break;

    case PS_JUMPSQUAT:
	    hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
	break;
	
    default: break;
}

if(state==PS_ATTACK_AIR||state==PS_ATTACK_GROUND){
	if(attack==AT_FSPECIAL&&window==2){
		var effective_fspecial_charge=clamp(fspecial_charge,0,fspecial_max_charge);
		image_index=floor(4*effective_fspecial_charge/fspecial_max_charge)+2;
	}
}