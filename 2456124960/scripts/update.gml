test1 = lengthdir_x(2, joy_dir);
test2 = lengthdir_y(2, joy_dir);

//print(string(strong_charge));

if (actionMeterStatus == 1) {
	if (activeBuffUses > 0) {
		actionMeterFill+= 0.08;	
	} else {
		actionMeterFill+= 0.15;
	}
}
actionMeterFill = clamp(actionMeterFill, 0, 200);

if (actionMeterFill > 199 && playedMeterSfx == 0) {
	sound_play(asset_get("mfx_star"));
	playedMeterSfx = 1;
	timeUntilFlow = 30;
	outlineR = 255;
	outlineG = 128;
	outlineB = 255;
}

timeUntilFlow--;
if (actionMeterFill > 199 && timeUntilFlow < 0) {
	if (outlineDirection == 0) {
		outlineR += 4.2;
		outlineB += 4.6;
	} else {
		outlineR -= 4.2;
		outlineB -= 4.6;
	}
	if (outlineR > 100) {
		outlineDirection = 1;
	} else if (outlineR < 5) {
		outlineDirection = 0;
	}
} else {
	if (outlineB > 0) {
		outlineR -= 20;
		outlineG -= 10;
		outlineB -= 20;	
	}

	if (outlineR < 0) {outlineR = 0;}
	if (outlineG < 0) {outlineG = 0;}
	if (outlineB < 0) {outlineB = 0;}
}

outline_color = [ outlineR, outlineG, outlineB ];
init_shader();

if (actionMeterFill < 199) {
	playedMeterSfx = 0;
}

if (activeBuffUses < 1) {
	activeBuffUses = 0;
	activeBuff = 0;
}

switch (get_player_color(player)) {
	case 1:
	case 7:
	case 9:
	case 12:
	case 13:
	case 14:
	case 16:
	case 19:
	case 20:
	case 21:
	case 22:
		usesAltHud = 1;
		break;
	default:
		usesAltHud = 0;
		break;
}

if (state == PS_SPAWN && should_do_intro == true) {
	if (state_timer == 2) {
		fx = spawn_hit_fx(x + 30 * spr_dir, y - 76, introbar);
		fx.depth = depth + 1;
	} else if (state_timer == 72) {
		spawn_hit_fx(x + 30*spr_dir, y - 76, introbardecay);
		fx.depth = depth + 1;
	}
}

if (state == PS_ATTACK_GROUND && taunt_down && shield_down) {state = PS_IDLE;}

if (state == PS_AIR_DODGE) {
	//set_state (PS_SPAWN);
	//introTimer = -16;
	//introTimer2 = 0;	
	//testing lol
	
	
	if (air_dodge_dir != 0) {last_dodge_dir = air_dodge_dir;}
	
	if (last_dodge_dir < 5 || last_dodge_dir == 9) {gliderOffset = 10;}
	else {gliderOffset = -10};
	if (last_dodge_dir == 1 || last_dodge_dir == 5 || last_dodge_dir == 9) {gliderOffset *= spr_dir;}
	
	if (window == 2 && window_timer < 2) {
		spawn_hit_fx(x+gliderOffset, y-25, glider);
	}
}

if (state == PS_DASH_TURN && state_timer == 7) {
		spawn_hit_fx(x + 6*spr_dir, y, turnblock);	
}

if (state == PS_WAVELAND) {
	spawn_hit_fx(x, y+2, slide)
}
if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD) {
	spawn_hit_fx(x-3*spr_dir, y+2, slide)
}

if (state == PS_WALL_JUMP && state_timer < 16 && state_timer > 2) {
	mySlide = spawn_hit_fx(x, y-30, slide)
	mySlide.depth = -10;
}

if (!free && (place_meeting(x, y + 12, asset_get("par_block")) || place_meeting(x, y + 12, asset_get("jumpthrough_32_obj")) || place_meeting(x, y + 12, asset_get("obj_stage_article_platform")))) {
	canMakePlat++;
}

if (state == PS_SPAWN && should_do_intro == true) {
	if ("room_manager" in self) {in_adventure = true;}
	if (state_timer == 1) {
		set_color_profile_slot( 9, 3, 120, 21, 114 ); //Shorts
		set_color_profile_slot( 9, 4, 255, 130, 213 ); //N+M Light
		set_color_profile_slot( 9, 5, 241, 39, 227 ); //Necklace+Magic
		set_color_profile_slot( 9, 6, 171, 10, 168 ); //N+M Dark
	}
	if (get_player_color(player) == 9 && shield_down) {
		set_color_profile_slot( 9, 3, 19, 82, 14 ); //Shorts
		set_color_profile_slot( 9, 4, 171, 255, 175 ); //N+M Light
		set_color_profile_slot( 9, 5, 39, 241, 49 ); //Necklace+Magic
		set_color_profile_slot( 9, 6, 10, 171, 18 ); //N+M Dark
	}
	
	if (introTimer < 0) {
		if (introTimer2 < 2) {
			introTimer2++;
		} else {
			introTimer2 = 0;
			introTimer++;
		}
	} else {
		if (introTimer2 < 3) {
			introTimer2++;
		} else {
			introTimer2 = 0;
			introTimer++;
		}
	}
	//this increments introTimer every few frames, depending on the number entered
} else if (state != 1) {
	should_do_intro = false;
}

if (instance_exists(buffFX) && buffFXTimer > 0) {
	buffFXTimer--
	buffFX.y -= buffFXTimer / 8;
	if (buffFXTimer == 1) {
		if (activeBuff == 1) {
			fx = spawn_hit_fx(buffFXPosX, buffFXPosY, buffChargeSparkle1);
			fx.depth = depth;
		} else {
			spawn_hit_fx(buffFXPosX, buffFXPosY, buffChargeSparkle2);
			fx.depth = depth;
		}
	}
}


with (pHitBox) {
    if (player_id == other.id) {
		hboxShape = -2;
		with (other) {
			if (get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_COLOR) != 0) {
				other.hboxShape = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE);
			}
		}
		
		switch(hboxShape) {
			case 0: 
				sprite_index = other.shape_circle;
				break;
			case 1: 
				sprite_index = other.shape_rect;
				break;
			case 2:
				sprite_index = other.shape_roundrect;
				break;
			default:
				break;
		}
    }
}



if(variable_instance_exists(id,"diag")) {
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "Alright, let's see what I can learn out of this match.",
    "I can't afford to lose! I'm representing my world, so there's no way I can let myself look foolish.",
    "Improvise. Overcome. Adapt.",
    "I'd like this to be an honest match, so please don't hold in on FAir. For your own sake."]
}