//hi
if (state == PS_SPAWN) {
	if (introTimer < 8 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer + 1;
		if (introTimer < 5) {
			draw_x = ease_cubeOut( -60 * spr_dir, 0, (introTimer * 3) + introTimer2, 17 )
			draw_y = ease_cubeOut( -40, 0, (introTimer * 3) + introTimer2, 17 )	
		} else {
			draw_x = 0;
			draw_y = 0;
		}
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
		draw_x = ease_circOut( -1600 * spr_dir, -60 * spr_dir, state_timer, 60 )
		draw_y = ease_circOut( -400, -40, state_timer, 60 )
    } else {
        sprite_index = sprite_get("idle");
		draw_x = 0;
		draw_y = 0;
    }
	
	if (introTimer > 0 && introTimer < 5) {
	
	}
}

if (state == PS_CROUCH && prev_state == PS_IDLE) {
	if (state_timer < 2) {
		image_index = 0;
	} else if (state_timer < 4) {
		image_index = 1;
	} else if (state_timer < 9) {
		image_index = 2;
	} else if (state_timer < 14) {
		image_index = 3;
	}
}
if (state == PS_IDLE && prev_state == PS_CROUCH) {
	if (state_timer < 5) {
		image_index = 7;
	} else if (state_timer < 10) {
		image_index = 8;
	}
}
if (state == PS_IDLE && prev_state == PS_LAND) {
	if (state_timer < 5) {
		sprite_index = sprite_get("idlefromland");
		image_index = 0;
	}
}
if (state == PS_IDLE && prev_state == PS_DASH_STOP) {
	if (state_timer < 5) {
		sprite_index = sprite_get("idlefromdashstop");
		image_index = 0;
	} else if (state_timer < 10) {
		image_index = 8;
	}
}

if (state == PS_DASH) {
	hurtboxID.sprite_index = sprite_get("dashhurtbox");
} else if (state == PS_CROUCH) {
	hurtboxID.sprite_index = asset_get("ex_guy_crouch_box");
} else if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state != PS_AIR_DODGE && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_TECH_GROUND && state != PS_TECH_BACKWARD && state != PS_TECH_FORWARD && state != PS_WALL_TECH) {
	hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");	
}

if (sprite_index = sprite_get("parry") && state_timer < 2 && right_down-left_down != 0) {
	sprite_index = sprite_get("roll_backward");
}

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL_2) {
	hurtboxID.sprite_index = asset_get("ex_guy_crouch_box");	
}

/////////////////////////////////////////////////////////
//////CUSTOM LANDING LAG ANIMATIONS//////
/////////////////////////////////////////////////////////
//////     Warning: May appear cursed.     //////
//////        AFAIK, no other character        //////
//////      does landing lag animations      //////
//////       anywhere near as in-depth      //////
//////                      as this.                      //////
////////////////////////////////////////////////////////
//////            If you are a veteran            //////
//////      programmer, I apologize in       //////
//////         advance for what you're        //////
//////                about to read.                 //////
/////////////////////////////////////////////////////////

if (state == PS_LANDING_LAG) {
	var maxFrames = get_attack_value( attack, AG_LANDING_LAG );
	if (has_hit == 0) {maxFrames *= 1.5;}
	
	if (attack == AT_FAIR && false) {
		sprite_index = sprite_get("landinglag_fair_" + string(progressCheck));
		if (progressCheck == 2) {
			if (state_timer < maxFrames / 3) {
				image_index = 0;
			} else if (state_timer < maxFrames * 2 / 3) {
				image_index = 1;
			} else {
				image_index = 2;
			}
		} else {
			if (state_timer < maxFrames / 2) {
				image_index = 0;
			} else {
				image_index = 1;
			}
		}
	}
	
	if (attack == AT_BAIR) {
		if (progressCheck == 3) {sprite_index = sprite_get("land");}
		else {sprite_index = sprite_get("landinglag_bair_" + string(progressCheck));}
		
		if (state_timer < maxFrames / 3) {
			image_index = 0;
		} else if (state_timer < maxFrames * 2 / 3) {
			image_index = 1;
		} else {
			image_index = 2;
		}
	}
	
	if (attack == AT_UAIR) {
		if (progressCheck == 1) {sprite_index = sprite_get("land");}
		else {sprite_index = sprite_get("landinglag_uair_" + string(progressCheck-1));}
		
		if (state_timer < maxFrames / 3) {
			image_index = 0;
		} else if (state_timer < maxFrames * 2 / 3) {
			image_index = 1;
		} else {
			image_index = 2;
		}
	}
}

if (state == PS_IDLE && prev_state == PS_LANDING_LAG) {
	if (attack == AT_FAIR && state_timer < 5) {
		sprite_index = sprite_get("crouch");
		image_index = 8;
	}
	if (attack == AT_BAIR && state_timer < 5) {
		sprite_index = sprite_get("crouch");
		image_index = 8;
	}
	if (attack == AT_UAIR && state_timer < 5) {
		sprite_index = sprite_get("crouch");
		image_index = 8;
	}
	if (attack == AT_UAIR && progressCheck == 3 && state_timer < 8) {
		sprite_index = sprite_get("landinglag_uair_2");
		if (state_timer < 4) {image_index = 3;}
		else {image_index = 4;}
	}
}