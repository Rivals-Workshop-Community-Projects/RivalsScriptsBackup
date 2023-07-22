
if (attack == AT_DSPECIAL_AIR && window == 3){
fall_through = true;
}

if (attack == AT_USPECIAL && state == PS_ATTACK_AIR){
  move_cooldown[AT_USPECIAL] = 9999;
}
if (move_cooldown[AT_USPECIAL] > 0 && (free == false || state == PS_WALL_JUMP || state_cat == SC_HITSTUN)){
  move_cooldown[AT_USPECIAL] = 0;
}


if (attack == AT_DSPECIAL && state == PS_ATTACK_AIR){
  move_cooldown[AT_DSPECIAL] = 9999;
}
if (move_cooldown[AT_DSPECIAL] > 0 && (free == false || state == PS_WALL_JUMP || state_cat == SC_HITSTUN)){
  move_cooldown[AT_DSPECIAL] = 0;
}

if (introTimer2 < 4) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered
if (introTimer < 16){
    draw_indicator = false;
} else {
    draw_indicator = true;
}

    
    
//Float Buffer
if (down_pressed){
	downBuffer = 8;
}

if (downBuffer > 0) {
	downBuffer--;
}

if (state == PS_CROUCH &&  jump_down && (down_down || downBuffer > 0)){
	if (!free){
		y = y - 2;
	}
}


//Floating
var air = (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_IDLE_AIR);

if((state == PS_IDLE_AIR || (air && vsp > 0)) && (jump_down || up_down && can_tap_jump()) && floating == 0 || (state == PS_IDLE_AIR || (air)) && (jump_down && ( (down_down || downBuffer > 0)|| place_meeting(x,y,obj_article2) && up_down)) && floating == 0){
    floating = 1;
    floatTimer = floatMax;
    floatAnimTimer = 0;
    floatCancel = 1;
    
    
    if (state == PS_DOUBLE_JUMP && state_timer < 9){
    	djumps = 0;
	}

}


if(floating){
	
	if (!free){
		if (down_down && jump_down){
			freeFloatStop = 1;
		}
	    	
			y = y - 2; //This precents the weird crouching conflict
	}
		
    grav = 0;
    moved_up = 0;
    can_fast_fall = 0;
    
    if (freeFloat > 0 && !freeFloatStop){ //Free float
        vsp = floatMoveSpeed*(down_down - up_down) + (floatDriftSpeed*(!down_down*!up_down));
    
        if (abs(down_down - up_down) > 0){
        	
            floatMoveSpeed *= 1.4;
            
            if (floatMoveSpeed > air_max_speed){
                floatMoveSpeed = air_max_speed;
            }
            
            floatDriftSpeed = floatMoveSpeed*(down_down - up_down);
            
        } else {
                floatMoveSpeed = 2;
                floatDriftSpeed *= .96;
        }
    } else { // Regular float
    
    	vsp = 0;
    }
    

    if(!((jump_down || up_down & can_tap_jump()) && (state == PS_ATTACK_AIR || air))){
    	can_fast_fall = 1;
		floating = -1;
	}
	
	if(special_pressed){
		//can_fast_fall = 1;
		//floating = -1;
	}
    
    if(floatTimer > 0){
    	can_fast_fall = 1;
        floatTimer--;
        
    }else{
    	can_fast_fall = 1;
        floating = -1;
    }
}

if(state == PS_IDLE || state == PS_CROUCH || state == PS_JUMPSQUAT || state == PS_WALK || state == PS_DASH){
    floating = 0;
    move_cooldown[AT_USPECIAL] = 0;
    floatCancel = 0;
    freeFloat = 0;
    freeFloatStop = 0;
    floatRestore = 0;
    

} else if (floatCancel && !free && state != 5){
	floating = 0;
}

if (freeFloat > 0){
	freeFloat -= 1;
}

