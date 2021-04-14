test1 = lengthdir_x(2, joy_dir);
test2 = lengthdir_y(2, joy_dir);

if (actionMeterStatus == 1) {actionMeterFill+= 0.15;}
actionMeterFill = clamp(actionMeterFill, 0, 200);

if (actionMeterFill > 199 && playedMeterSfx == 0) {
	sound_play(sound_get("itemget"));
	playedMeterSfx = 1;
}

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
		usesAltHud = 1;
		break;
	default:
		usesAltHud = 0;
		break;
}

if (state == PS_SPAWN) {
	if (state_timer == 1) {
		spawn_hit_fx(x + 30*spr_dir, y - 76, introbar);
	} else if (state_timer == 71) {
		spawn_hit_fx(x + 30*spr_dir, y - 76, introbardecay);
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

if (place_meeting(x, y + 2, asset_get("par_block")) || place_meeting(x, y + 2, asset_get("jumpthrough_32_obj")) || place_meeting(x, y + 2, asset_get("obj_stage_article_platform"))) {
	canMakePlat = 1;
}

if (state == PS_SPAWN) {
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
}

if (instance_exists(buffFX) && buffFXTimer > 0) {
	buffFXTimer--
	buffFX.y -= buffFXTimer / 8;
	if (buffFXTimer == 1) {
		if (activeBuff == 1) {
			spawn_hit_fx(buffFXPosX, buffFXPosY, buffChargeSparkle1);
		} else {
			spawn_hit_fx(buffFXPosX, buffFXPosY, buffChargeSparkle2);
		}
	}
}

//move_cooldown[AT_FSPECIAL] = 10;
//move_cooldown[AT_DATTACK] = 10;