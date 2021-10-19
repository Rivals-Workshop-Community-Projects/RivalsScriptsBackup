//UPDATE


//Walk speed

if (state == PS_WALK){
	if (image_index == (6 || 8)){
		walk_speed = 1.5;
	} else if (image_index == 7) {
		walk_speed = 1;
	} else {
		walk_speed = 3.0;
	}
		
}




//freeze

with (asset_get("oPlayer")){
	if (terrafreeze > 0 && terrafreeze_player == other.player) {
		if (state_cat == SC_HITSTUN && hitstop <= hitstop_full-2) {
				freezeAnimTimer += freezeAnimSpeed;
				terrafreeze--;
				hitstop++;
		}
	} else if (terrafreeze_player == other.player) {
			freezeAnimTimer = 0;
			terrafreeze -= (terrafreeze > -15);
			
		}
}

//bury

with (asset_get("oPlayer")){
	
	
	if (terrabury > 0 && terrabury_player == other.player) {
		if (state_cat == SC_HITSTUN && hitstop <= hitstop_full-2) {
				terrabury--;
				hitstop++;
		}
	} else if (terrabury_player == other.player) {
			terrabury -= (terrabury > -15);
			
	}
	
	if (bury_immunity > 0){
		bury_immunity--;
	}
	
}

//Passive Charge System


if (hasCharge == 0 && state != (PS_SPAWN || PS_RESPAWN || PS_DEAD) && state_cat != SC_HITSTUN){
    chargeCounter++;
    if (chargeCounter > chargeCounterMax){
        chargeCounter = chargeCounterMax;
        hasCharge = 1;
        sound_play(sound_get("terra_charge"));
    }
    

}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	
	if (attack == AT_FSPECIAL || attack == AT_NSPECIAL || attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_UAIR || attack == AT_BAIR || attack == AT_FAIR || attack == AT_DSTRONG || attack == AT_DAIR) { //These moves consume charge
		if (state_timer < 2 && hasCharge && attack_pressed){ 
			conserveCharge = 1; //If attack is pressed, conserve charge
		}
	
	
		if (!conserveCharge){
		
			if (hasCharge){ //If charge is available, spend charge
				chargeSpent = 1;
				chargeCounter = 0;
					
			}
				
			hasCharge = -1;
			if (state_timer == 0){
				//chargeCounter = chargeCounter - 60;
				if (chargeCounter < 0){
					chargeCounter = 0;
				}
			}
			
		}
		

			
			
	} else if (attack == AT_USPECIAL){
		
		if (state_timer < 2 && hasCharge && attack_pressed){ 
			conserveCharge = 1; //If attack is pressed, conserve charge
		}
	
	
		if (!conserveCharge){ 
		
			if (hasCharge){ //If charge is available, spend charge
				chargeSpent = 1;
				chargeCounter = 0;
				
			}
				
			hasCharge = -1;
			if (state_timer == 0){
				//chargeCounter = chargeCounter - 120;
				if (chargeCounter < 0){
					chargeCounter = 0;
				}
			}
			
		}
			
	
			
	} else if (attack == AT_DSPECIAL) {
			if (state_timer == 0){
				chargeCounter = chargeCounter - 60;
				
				if (chargeCounter < 0){
					chargeCounter = 0;
				}
				hasCharge = -1;

			}
			
	} else if (chargeSpent){
		chargeSpent = 0;
	}
	


}

if (escapedPratfall){
    if (state == PS_IDLE || state == PS_CROUCH || state == PS_JUMPSQUAT || state == PS_WALK || state == PS_DASH || state == PS_LANDING_LAG){
		escapedPratfall = 0;
		move_cooldown[AT_USPECIAL] = 30;
      
    }
}



if (hasCharge == -1){ //If hasCharge is below 0, Terra cannot yet recharge
    if (state == PS_IDLE || state == PS_IDLE_AIR || state == PS_CROUCH || state == PS_JUMPSQUAT || state == PS_WALK || state == PS_DASH || state == PS_LANDING_LAG){
        hasCharge = 0;
        calculatedDamage = 0;
        
        if (chargeSpent){
        	chargeSpent = 0;
        }
      
    }
}

if (conserveCharge && state_cat != SC_HITSTUN){
	
    if (state == PS_IDLE || state == PS_IDLE_AIR || state == PS_CROUCH || state == PS_JUMPSQUAT || state == PS_WALK || state == PS_DASH || state == PS_LANDING_LAG || state == PS_DOUBLE_JUMP || state == PS_FIRST_JUMP || state == PS_AIR_DODGE || state == PS_LAND || state == PS_PARRY || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_WAVELAND){
  
        calculatedDamage = 0;
        hasCharge = 1;
        conserveCharge = 0;
      
    }

}



if (chargeSpent){
	
	if (state_timer%8 == 0 || state_timer%8 == 1){
		flashVisible = 1;
	} else {
		flashVisible = 0;
	}

	outline_color = [200*flashVisible,200*flashVisible,0]; //When using a charged attack, outline flashes yellow every so frames

}else {
	flashVisible = 0;
	outline_color = [0,0,0];

}

init_shader();
