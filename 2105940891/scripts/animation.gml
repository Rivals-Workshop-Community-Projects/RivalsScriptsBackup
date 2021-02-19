switch (state){
    case PS_IDLE:
		if (meterLock <= 1) {
			sprite_index = sprite_get("idle");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 2 && meterLock < 4) {
			sprite_index = sprite_get("idleE");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 4) {
			sprite_index = sprite_get("idleX");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}

    case PS_IDLE:
		if (meterLock <= 1) {
			sprite_index = sprite_get("idle");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 2 && meterLock < 4) {
			sprite_index = sprite_get("idleE");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 4) {
			sprite_index = sprite_get("idleX");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		
    case PS_WALK:
		
		image_index = floor(image_number*state_timer/(image_number*5));
		if (meterLock <= 1) {
			sprite_index = sprite_get("walk");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 2 && meterLock < 4) {
			sprite_index = sprite_get("walkE");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 4) {
			sprite_index = sprite_get("walkX");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		
    case PS_DASH_START:
		if (meterLock <= 1) {
			sprite_index = sprite_get("dashstart");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 2 && meterLock < 4) {
			sprite_index = sprite_get("dashstartE");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 4) {
			sprite_index = sprite_get("dashstartX");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		
    case PS_DASH:
		if (meterLock <= 1) {
			sprite_index = sprite_get("dash");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 2 && meterLock < 4) {
			sprite_index = sprite_get("dashE");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 4) {
			sprite_index = sprite_get("dashX");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		
    case PS_DASH_STOP:
		if (meterLock <= 1) {
			sprite_index = sprite_get("dashstop");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 2 && meterLock < 4) {
			sprite_index = sprite_get("dashstopE");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 4) {
			sprite_index = sprite_get("dashstopX");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		
    case PS_WAVELAND:
		if (meterLock <= 1) {
			sprite_index = sprite_get("waveland");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 2 && meterLock < 4) {
			sprite_index = sprite_get("wavelandE");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 4) {
			sprite_index = sprite_get("wavelandX");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		
    case PS_AIR_DODGE:
		if (meterLock <= 1) {
			sprite_index = sprite_get("airdodge");
			image_index = floor(image_number*state_timer/(image_number*4.5));
		break;
		}
		if (meterLock >= 2 && meterLock < 4) {
			sprite_index = sprite_get("airdodgeE");
			image_index = floor(image_number*state_timer/(image_number*4.5));
		break;
		}
		if (meterLock >= 4) {
			sprite_index = sprite_get("airdodgeX");
			image_index = floor(image_number*state_timer/(image_number*4.5));
		break;
		}
		
    case PS_PARRY:
		if (meterLock <= 1) {
			sprite_index = sprite_get("parry");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 2 && meterLock < 4) {
			sprite_index = sprite_get("parryE");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 4) {
			sprite_index = sprite_get("parryX");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		
    case PS_ROLL_BACKWARD:
		if (meterLock <= 1) {
			sprite_index = sprite_get("roll_backward");
			image_index = floor(image_number*state_timer/(image_number*4.5));
		break;
		}
		if (meterLock >= 2 && meterLock < 4) {
			sprite_index = sprite_get("roll_backwardE");
			image_index = floor(image_number*state_timer/(image_number*4.5));
		break;
		}
		if (meterLock >= 4) {
			sprite_index = sprite_get("roll_backwardX");
			image_index = floor(image_number*state_timer/(image_number*4.5));
		break;
		}
		
    case PS_ROLL_FORWARD:
		if (meterLock <= 1) {
			sprite_index = sprite_get("roll_forward");
			image_index = floor(image_number*state_timer/(image_number*4.5));
		break;
		}
		if (meterLock >= 2 && meterLock < 4) {
			sprite_index = sprite_get("roll_forwardE");
			image_index = floor(image_number*state_timer/(image_number*4.5));
		break;
		}
		if (meterLock >= 4) {
			sprite_index = sprite_get("roll_forwardX");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		
    case PS_FIRST_JUMP:
		if (meterLock <= 1) {
			sprite_index = sprite_get("jump");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 2 && meterLock < 4) {
			sprite_index = sprite_get("jumpE");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 4) {
			sprite_index = sprite_get("jumpX");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		
    case PS_DOUBLE_JUMP:
		if (meterLock <= 1) {
			sprite_index = sprite_get("doublejump");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 2 && meterLock < 4) {
			sprite_index = sprite_get("doublejumpE");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 4) {
			sprite_index = sprite_get("doublejumpX");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		
    case PS_PRATFALL:
		if (meterLock <= 1) {
			sprite_index = sprite_get("pratfall");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 2 && meterLock < 4) {
			sprite_index = sprite_get("pratfallE");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		if (meterLock >= 4) {
			sprite_index = sprite_get("pratfallX");
			image_index = floor(image_number*state_timer/(image_number*6.5));
		break;
		}
		
    case PS_CROUCH:
		if (meterLock <= 1) {
			sprite_index = sprite_get("crouch");
			break;
		}
		if (meterLock >= 2 && meterLock < 4) {
			sprite_index = sprite_get("crouchE");
		break;
		}
		if (meterLock >= 4) {
			sprite_index = sprite_get("crouchX");
		break;
		}
		
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;

}