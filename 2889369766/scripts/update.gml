//UPDATE
in_angelfield = 0;
with(obj_article2){ //If Sora enters the field, she gains wings
    
    if (player_id == other.id && place_meeting(x,y,other)){
        
        if (player_id.has_wings == 0){
            player_id.has_wings = 1;
            player_id.angelwingsAnimTimer = 0;
        }
        
        if (player_id.in_angelfield == 0){
            player_id.in_angelfield = 1;
        }
        
    }
    
}

if (state == PS_LAND || state == PS_LANDING_LAG || state == PS_WAVELAND || state == PS_PRATLAND || state == PS_HITSTUN_LAND || (state == PS_ATTACK_AIR && !free)){ //If Sora lands outside her field, she loses her wings
    
    moved_up = 0;
    
    if (!in_angelfield){
    	if (!wings_fading && has_wings){
			wings_fading = 1; //The wings fade before actually disappearing
		}
    } else if (consumed_wings) {
    	has_wings = 0;
        consumed_wings = 0;
        wingsflap_alpha = 1;
        wingsflapAnimTimer = 0;
    }
 
 
 
}

if (!instance_exists(obj_article2)){ //If the field disappears, Sora loses her wings
	
	if (has_wings && !wings_fading){
		//in_angelfield = 0;
	}
}

if (state == PS_DOUBLE_JUMP){ //Upon doublejumping, the wings will be consumed
    
    if (has_wings && !consumed_wings){
        consumed_wings = 1; //This variable will be checked to remove the visual of the wings
        
    }
    
}

max_djumps = 1 + has_wings;


if (state == PS_CROUCH || state == PS_ATTACK_GROUND && attack == AT_DTILT || state == PS_JUMPSQUAT){ //Lowers the wings down a little if Sora is in a crouched position
	if (!lower_wings){
		lower_wings = 1;
	}
} else if (lower_wings) {
	lower_wings = 0;
}

if (state == PS_ATTACK_AIR && attack == AT_UAIR){ //Inverts the wings if Sora is using Uair
	if (!upsidedown_wings){
		upsidedown_wings = 1;
	}
} else if (upsidedown_wings) {
	upsidedown_wings = 0;
}


if (specialEmpowered == -1){
	flashTimer++;
	if (flashTimer%8 == 0 || flashTimer%8 == 1){
		flashVisible = 1;
	} else {
		flashVisible = 0;
	}

	outline_color = [200*flashVisible,200*flashVisible,0]; //When using empowered special, outline flashes yellow every so frames

}else {
	flashVisible = 0;
	flashTimer = 0;
	outline_color = [0,0,0];

}

init_shader();
