if(state == PS_SPAWN && state_timer == 0){
	sound_stop(sound_get("beep"));
}

//anger stat differences
switch(anger_state){
    case 0:
    set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 36);
    set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 40);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 36);
    break;
    case 1:
    set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 30);
    set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 36);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 30);
    break;
    case 2:
    set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 24);
    set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 30);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 24);
    break;
}

//hurtbox wall change
hurtboxID.image_angle = spr_angle;
if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (wall == 1 || wall == 2){
	sprite_change_offset("jab_hurt", 168, 154);
	sprite_change_offset("ftilt_hurt", 204, 142);
	sprite_change_offset("dtilt_hurt", 194, 244);
	sprite_change_offset("utilt_hurt", 194, 262 - 18);
	sprite_change_offset("fstrong_hurt", 168, 172 - 18);
	sprite_change_offset("ustrong_hurt", 246, 220 - 18);
	sprite_change_offset("dstrong_hurt", 256, 322 - 18);
}else{
	sprite_change_offset("jab_hurt", 168, 172);
	sprite_change_offset("ftilt_hurt", 204, 160);
	sprite_change_offset("dtilt_hurt", 194, 262);
	sprite_change_offset("utilt_hurt", 194, 262);
	sprite_change_offset("fstrong_hurt", 168, 172);
	sprite_change_offset("ustrong_hurt", 246, 220);
	sprite_change_offset("dstrong_hurt", 256, 322);
}

//changes the wall variable at the end of the climbing
if(attack == AT_EXTRA_1 && climb_timer == get_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH) - 1 && climbing == true){
    spr_dir = prevprev_dir;
    endclimb = climb_timer;
    if(wall == 0){
        climbing = false;
        if(prev_dir == 1){
            wall = 1;
            x += 49;
            y -= 132;
            set_state(PS_IDLE);
        }else if (prev_dir == -1){
            wall = 2;
            x -= 49;
            y -= 132;
            set_state(PS_IDLE);
        }
    }else if(wall == 1){
        climbing = false;
        if(prev_dir == 1){
            wall = 3;
            x -= 112;
            y -= 79;
            set_state(PS_IDLE);
        }else if(prev_dir == -1){
            wall = 0;
            x -= 112;
            y += 82;
            set_state(PS_IDLE);
        }
    }else if(wall == 2){
        climbing = false;
        if(prev_dir == 1){
            wall = 0;
            x += 112;
            y += 82;
            set_state(PS_IDLE);
        }else if(prev_dir == -1){
            wall = 3;
            x += 112;
            y -= 79;
            set_state(PS_IDLE);
        }
    }else if(wall == 3){
        climbing = false;
        if(prev_dir == 1){
            wall = 2;
            x -= 50;
            y += 132;
            set_state(PS_IDLE);
        }else if (prev_dir == -1){
            wall = 1;
            x += 50;
            y += 132;
            set_state(PS_IDLE);
        }
    }
}else if(attack == AT_EXTRA_2 && climb_timer == get_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH) - 1 && climbing == true){
    spr_dir = prevprev_dir;
    endclimb = climb_timer;
    if(wall == 0){
        climbing = false;
        if(prev_dir == 1){
            wall = 2;
            x += 100;
            y += 86;
            set_state(PS_IDLE);
        }else if (prev_dir == -1){
            wall = 1;
            x -= 96;
            y += 86;
            set_state(PS_IDLE);
        }
    }else if(wall == 1){ // to do
        climbing = false;
        if(prev_dir == 1){
            wall = 0;
            x += 104;
            set_state(PS_IDLE);
        }else if(prev_dir == -1){
            wall = 3;
            x += 104;
            y += 80;
            set_state(PS_IDLE);
        }
    }else if(wall == 2){ // to do
        climbing = false;
        if(prev_dir == 1){
            wall = 3;
            x -= 104;
            y += 80;
            set_state(PS_IDLE);
        }else if(prev_dir == -1){
            wall = 0;
            x -= 104;
            set_state(PS_IDLE);
        }
    }else if(wall == 3){ // to do
        climbing = false;
        if(prev_dir == 1){
            wall = 1;
            x -= 98;
            y -= 86;
            set_state(PS_IDLE);
        }else if (prev_dir == -1){
            wall = 2;
            x += 98;
            y -= 86;
            set_state(PS_IDLE);
        }
    }
}else if(attack == AT_EXTRA_3 && climb_timer == get_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH) - 1 && climbing == true){
    spr_dir = prevprev_dir;
    endclimb = climb_timer;
    climbing = false;
    wall = 3;
    if(prev_dir == 1){
        spr_dir = -1;
        y -= 106;
        set_state(PS_IDLE);
    }else if (prev_dir == -1){
        spr_dir = 1;
        y -= 106;
        set_state(PS_IDLE);
    }
}

//climbing timer
if(climbing == true) || (state == PS_ATTACK_GROUND && attack == AT_TAUNT_2){
    move_cooldown[AT_JAB] = 10;
    move_cooldown[AT_DATTACK] = 10;
    move_cooldown[AT_NSPECIAL] = 10;
    move_cooldown[AT_NSPECIAL_AIR] = 10;
    move_cooldown[AT_FSPECIAL] += 2;
    move_cooldown[AT_FSPECIAL_AIR] += 2;
    move_cooldown[AT_USPECIAL] = 10;
    move_cooldown[AT_DSPECIAL] += 2;
    move_cooldown[AT_DSPECIAL_AIR] += 2;
    move_cooldown[AT_FSTRONG] = 10;
    move_cooldown[AT_USTRONG] = 10;
    move_cooldown[AT_DSTRONG] = 10;
    move_cooldown[AT_FTILT] = 10;
    move_cooldown[AT_UTILT] = 10;
    move_cooldown[AT_DTILT] = 10;
    move_cooldown[AT_NAIR] = 10;
    move_cooldown[AT_FAIR] = 10;
    move_cooldown[AT_BAIR] = 10;
    move_cooldown[AT_DAIR] = 10;
    move_cooldown[AT_UAIR] = 10;
    move_cooldown[AT_TAUNT] = 10;
    climb_timer++;
    hsp = 0;
    vsp = 0;
}else{
    climb_timer = 0;
}

if(climb_timer == 0){
    prevprev_dir = spr_dir;
}

//wall changes, gravity, movement etc
switch(wall){
    case 0:
    if(state == PS_FIRST_JUMP){
    	sprite_change_offset("hurtboxxy_air", 62, 114)
    }else{
    	sprite_change_offset("hurtboxxy_air", 62, 64)
    }
    sprite_change_offset("hurtboxxy", 82, 64);
    sprite_change_offset("hurtboxxy_wall", 82, 64);
    if(climbing == false && state != PS_CROUCH && !free && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
        hurtboxID.sprite_index = sprite_get("hurtboxxy");
        hurtboxID.image_angle = 0;
    }else if(climbing == true && attack == AT_EXTRA_1 && !free){
        hurtboxID.sprite_index = sprite_get("climb1_hurt");
        hurtboxID.image_index = 8 / window_timer;
        hurtboxID.image_angle = 0;
    }else if(climbing == true && attack == AT_EXTRA_2 && !free){
        hurtboxID.sprite_index = sprite_get("climb2_hurt");
        hurtboxID.image_index = 9 / window_timer;
        hurtboxID.image_angle = 0;
    }else if(climbing == true && attack == AT_EXTRA_3 && free){
        hurtboxID.sprite_index = sprite_get("climb3_hurt");
        hurtboxID.image_index = 10 / window_timer;
        hurtboxID.image_angle = 0;
    }
    if(state == PS_ATTACK_GROUND && attack == AT_TAUNT){
    	mask_index = sprite_get("taunt_box");
    }else{
   	    mask_index = sprite_get("hurtboxxy_wall");
    }
    if(attack == AT_USPECIAL && window == 4){
        mask_index = sprite_get("hurtboxxy_uspecial");
        hurtboxID.sprite_index = sprite_get("hurtboxxy_uspecial");
        switch(stored_head){
			case 0:
			spr_angle = (spr_dir = 1? -90: 90);
			break;
			case 1:
			spr_angle = (spr_dir = 1? -45: 45);
			break;
			case 2:
			spr_angle = 0;
			break;
			case 3:
			spr_angle = (spr_dir = 1? 45: -45);
			break;
			case 4:
			spr_angle = (spr_dir = 1? 90: -90);
			break;
			case 5:
			spr_angle = (spr_dir = 1? 135: 225);
			break;
			case 6:
			spr_angle = 180;
			break;
			case 7:
			spr_angle = (spr_dir = 1? 225: 135);
			break;
		}
		set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, cos(degtorad(45 * head_rot)) * 40);
		set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, sin(degtorad(45 * head_rot)) * 40 * -1);
		gravity_speed = 0;
		if(window_timer == 1){
			y -= 20;
			x -= 40 * spr_dir;
		}
    }else if(window > 4 && window < 9 && attack == AT_USPECIAL){
    	sprite_change_offset("hurtboxxy_uspecial", 20, 32);
		if(window_timer == 1){
			spr_angle = 0;
		}
    }else if(window == 9 && attack == AT_USPECIAL){
    	if(window_timer == 1){
			spr_angle = 0;
		}
    	sprite_change_offset("hurtboxxy_uspecial", 0, 140);
    }else{
    	sprite_change_offset("hurtboxxy_uspecial", 20, 32);
        spr_angle = 0;
        gravity_speed = 0.5;
    }
    sprite_change_offset("0_climb1", 84, 151);
    sprite_change_offset("1_climb1", 84, 151);
    sprite_change_offset("climb1_hurt", 168, 302);
    sprite_change_offset("0_climb2", 86, 100);
    sprite_change_offset("1_climb2", 86, 100);
    sprite_change_offset("climb2_hurt", 172, 200);
    sprite_change_offset("0_idle", 81, 78);
    sprite_change_offset("1_idle", 81, 78);
    sprite_change_offset("0_walk", 42, 36);
    sprite_change_offset("1_walk", 42, 36);
    sprite_change_offset("0_dash", 80, 66);
    sprite_change_offset("1_dash", 80, 66);
    if(right_down) && !free{
        if(place_meeting(x + 2, y, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK)){
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get(string(plate_state) + "_climb1"));
            set_attack(AT_EXTRA_1);
            climbing = true;
        }else if !collision_point(x + 80, y + 30, asset_get("solid_32_obj"), false, true) && position_meeting(x + 70, y + 2, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK){
            set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get(string(plate_state) + "_climb2"));
            set_attack(AT_EXTRA_2);
            climbing = true;
        }
    }else if(left_down) && !free{
        if(place_meeting(x - 2, y, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK)){
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get(string(plate_state) + "_climb1"));
            set_attack(AT_EXTRA_1);
            climbing = true;
        }else if !collision_point(x - 80, y + 30, asset_get("solid_32_obj"), false, true) && position_meeting(x - 70, y + 2, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK){
            set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get(string(plate_state) + "_climb2"));
            set_attack(AT_EXTRA_2);
            climbing = true;
        }
    }else if(up_down && position_meeting(x + 70, y - 115 + 26, asset_get("solid_32_obj")) && position_meeting(x - 70, y - 115 + 26, asset_get("solid_32_obj")) && climbing == false && (state == PS_IDLE_AIR || state == PS_DOUBLE_JUMP || state == PS_FIRST_JUMP) && wall_gauge >= 300){
        set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get(string(plate_state) + "_climb3"));
        set_attack(AT_EXTRA_3);
        climbing = true;
    }
    break;
    
    case 1:
    free = true;
    if(spr_dir == 1){
        sprite_change_offset("hurtboxxy_diag", 46, 82);
        sprite_change_offset("hurtboxxy_wall_diag", 46, 82);
    }else{
        sprite_change_offset("hurtboxxy_diag", 18, 82);
        sprite_change_offset("hurtboxxy_wall_diag", 18, 82);
    }
    if(climbing == false && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
        hurtboxID.sprite_index = sprite_get("hurtboxxy_diag");
        hurtboxID.image_angle = 0;
    }else if(climbing == true && attack == AT_EXTRA_1){
        hurtboxID.sprite_index = sprite_get("climb1_hurt");
        hurtboxID.image_angle = 90;
        hurtboxID.image_index = 8 / window_timer;
    }else if(climbing == true && attack == AT_EXTRA_2){
        hurtboxID.sprite_index = sprite_get("climb2_hurt");
        hurtboxID.image_angle = 90;
        hurtboxID.image_index = 9 / window_timer;
    }
    if(state == PS_ATTACK_GROUND && attack == AT_TAUNT){
    	mask_index = sprite_get("taunt_box");
    }else{
   	    mask_index = sprite_get("hurtboxxy_wall_diag");
    }
    spr_angle = 90;
    sprite_change_offset("0_climb1", 84, 141);
    sprite_change_offset("1_climb1", 84, 141);
    sprite_change_offset("climb1_hurt", 168, 282);
    sprite_change_offset("0_climb2", 87, 91);
    sprite_change_offset("1_climb2", 87, 91);
    sprite_change_offset("climb2_hurt", 174, 182);
    sprite_change_offset("0_idle", 81, 69);
    sprite_change_offset("1_idle", 81, 69);
    sprite_change_offset("0_walk", 42, 27);
    sprite_change_offset("1_walk", 42, 27);
    sprite_change_offset("0_dash", 80, 58);
    sprite_change_offset("1_dash", 80, 58);
    hsp = 15;
    gravity_speed = 0;
    if(up_down) && place_meeting(x + 4, y, asset_get("solid_32_obj")) && climbing == false && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND{
        switch(anger_state){
            case 0:
            state = PS_WALK;
            vsp = -3;
            break;
            case 1:
            state = PS_WALK;
            vsp = -4;
            break;
            case 2:
            state = PS_DASH;
            vsp = -6;
            break;
        }
        spr_dir = 1;
    }else if(down_down) && place_meeting(x + 4, y, asset_get("solid_32_obj")) && climbing == false && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND{
        switch(anger_state){
            case 0:
            state = PS_WALK;
            vsp = 3;
            break;
            case 1:
            state = PS_WALK;
            vsp = 4;
            break;
            case 2:
            state = PS_DASH;
            vsp = 6;
            break;
        }
        spr_dir = -1;
    }else if place_meeting(x + 4, y, asset_get("solid_32_obj")) && climbing == false && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND{
        state = PS_IDLE;
        vsp = 0;
    }else if(climbing == false && state != PS_IDLE && state != PS_WALK && state != PS_DASH && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
        wall = 0;
    }
    if(up_down){
        if(place_meeting(x, y - 2, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH)){
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get(string(plate_state) + "_climb1"));
            set_attack(AT_EXTRA_1);
            climbing = true;
        }else if !collision_point(x + 30, y - 80, asset_get("solid_32_obj"), false, true) && position_meeting(x + 60, y - 70, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH){
            set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get(string(plate_state) + "_climb2"));
            set_attack(AT_EXTRA_2);
            climbing = true;
        }
    }else if(down_down){
        if(place_meeting(x, y + 2, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH)){
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get(string(plate_state) + "_climb1"));
            set_attack(AT_EXTRA_1);
            climbing = true;
        }else if !collision_point(x + 30, y + 80, asset_get("solid_32_obj"), false, true) && position_meeting(x + 60, y + 70, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH){
            set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get(string(plate_state) + "_climb2"));
            set_attack(AT_EXTRA_2);
            climbing = true;
        }
    }
    //this enables tilts and strongs on walls
    if(state != PS_ATTACK_AIR){
        if(strong_down){
            if(left_down){
                set_attack(AT_USTRONG);
            }else if(right_down){
                set_attack(AT_DSTRONG);
            }else if(up_down || down_down || strong_down){
                set_attack(AT_FSTRONG);
            }
        }else if(left_strong_pressed){
        	set_attack(AT_USTRONG);
        }else if(right_strong_pressed){
            set_attack(AT_DSTRONG);
        }else if(up_strong_pressed || down_strong_pressed){
        	set_attack(AT_FSTRONG);
        }
    }
    if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
        if(attack_down){
            if(left_down){
                set_attack(AT_UTILT);
            }else if(right_down){
                set_attack(AT_DTILT);
            }else if(up_down || down_down){
                set_attack(AT_FTILT);
            }else{
                set_attack(AT_JAB);
            }
        }
    }else{
        vsp = 0;
    }
    if(jump_pressed && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    	spr_dir = 1;
    	spr_angle = 0;
    	draw_x = -64 * spr_dir;
    	set_attack(AT_NTHROW);
    }
    break;
    
    case 2:
    free = true;
    if(spr_dir == 1){
        sprite_change_offset("hurtboxxy_diag", 18, 82);
        sprite_change_offset("hurtboxxy_wall_diag", 18, 82);
    }else{
        sprite_change_offset("hurtboxxy_diag", 46, 82);
        sprite_change_offset("hurtboxxy_wall_diag", 46, 82);
    }
    if(climbing == false && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
        hurtboxID.sprite_index = sprite_get("hurtboxxy_diag");
        hurtboxID.image_angle = 0;
    }else if(climbing == true && attack == AT_EXTRA_1){
        hurtboxID.sprite_index = sprite_get("climb1_hurt");
        hurtboxID.image_index = 8 / window_timer;
        hurtboxID.image_angle = 270;
    }else if(climbing == true && attack == AT_EXTRA_2){
        hurtboxID.sprite_index = sprite_get("climb2_hurt");
        hurtboxID.image_index = 9 / window_timer;
        hurtboxID.image_angle = 270;
    }
    if(state == PS_ATTACK_GROUND && attack == AT_TAUNT){
    	mask_index = sprite_get("taunt_box");
    }else{
   	    mask_index = sprite_get("hurtboxxy_wall_diag");
    }
    spr_angle = 270;
    sprite_change_offset("0_climb1", 84, 141);
    sprite_change_offset("1_climb1", 84, 141);
    sprite_change_offset("climb1_hurt", 168, 282);
    sprite_change_offset("0_climb2", 87, 91);
    sprite_change_offset("1_climb2", 87, 91);
    sprite_change_offset("climb2_hurt", 174, 182);
    sprite_change_offset("0_idle", 81, 69);
    sprite_change_offset("1_idle", 81, 69);
    sprite_change_offset("0_walk", 42, 27);
    sprite_change_offset("1_walk", 42, 27);
    sprite_change_offset("0_dash", 80, 58);
    sprite_change_offset("1_dash", 80, 58);
    hsp = -15;
    gravity_speed = 0;
    if(down_down) && place_meeting(x - 4, y, asset_get("solid_32_obj")) && climbing == false && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND{
        switch(anger_state){
            case 0:
            state = PS_WALK;
            vsp = 3;
            break;
            case 1:
            state = PS_WALK;
            vsp = 4;
            break;
            case 2:
            state = PS_DASH;
            vsp = 6;
            break;
        }
        spr_dir = 1;
    }else if(up_down) && place_meeting(x - 4, y, asset_get("solid_32_obj")) && climbing == false && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND{
        switch(anger_state){
            case 0:
            state = PS_WALK;
            vsp = -3;
            break;
            case 1:
            state = PS_WALK;
            vsp = -4;
            break;
            case 2:
            state = PS_DASH;
            vsp = -6;
            break;
        }
        spr_dir = -1;
    }else if place_meeting(x - 4, y, asset_get("solid_32_obj")) && climbing == false && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND{
        state = PS_IDLE;
        vsp = 0;
    }else if(climbing == false && state != PS_IDLE && state != PS_WALK && state != PS_DASH && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
        wall = 0;
    }
    if(up_down){
        if(place_meeting(x, y - 2, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH)){
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get(string(plate_state) + "_climb1"));
            set_attack(AT_EXTRA_1);
            climbing = true;
        }else if !collision_point(x - 30, y - 80, asset_get("solid_32_obj"), false, true) && position_meeting(x - 60, y - 70, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH){
            set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get(string(plate_state) + "_climb2"));
            set_attack(AT_EXTRA_2);
            climbing = true;
        }
    }else if(down_down){
        if(place_meeting(x, y + 2, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH)){
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get(string(plate_state) + "_climb1"));
            set_attack(AT_EXTRA_1);
            climbing = true;
        }else if !collision_point(x - 30, y + 80, asset_get("solid_32_obj"), false, true) && position_meeting(x - 60, y + 70, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH){
            set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get(string(plate_state) + "_climb2"));
            set_attack(AT_EXTRA_2);
            climbing = true;
        }
    }
    //this enables tilts and strongs on walls
    if(state != PS_ATTACK_AIR){
        if(strong_down){
            if(left_down){
                set_attack(AT_DSTRONG);
            }else if(right_down){
                set_attack(AT_USTRONG);
            }else if(up_down || down_down || strong_down){
                set_attack(AT_FSTRONG);
            }
        }else if(left_strong_pressed){
        	set_attack(AT_DSTRONG);
        }else if(right_strong_pressed){
        	set_attack(AT_USTRONG);
        }else if(up_strong_pressed || down_strong_pressed){
        	set_attack(AT_FSTRONG);
        }
    }
    if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
        if(attack_down){
            if(left_down){
                set_attack(AT_DTILT);
            }else if(right_down){
                set_attack(AT_UTILT);
            }else if(up_down || down_down){
                set_attack(AT_FTILT);
            }else{
                set_attack(AT_JAB);
            }
        }
    }else{
        vsp = 0;
    }
    if(jump_pressed && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    	spr_dir = -1;
    	spr_angle = 0;
    	draw_x = -64 * spr_dir;
    	set_attack(AT_NTHROW);
    }
    break;
    
    case 3:
    sprite_change_offset("hurtboxxy", 82, 0);
    sprite_change_offset("hurtboxxy_wall", 82, 0);
    if(climbing == false && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
        air_hurtbox_spr = -1;
        hurtboxID.image_angle = 0;
    }else if(climbing == true && attack == AT_EXTRA_1){
        hurtboxID.sprite_index = sprite_get("climb1_hurt");
        hurtboxID.image_index = 8 / window_timer;
        hurtboxID.image_angle = 180;
    }else if(climbing == true && attack == AT_EXTRA_2){
        hurtboxID.sprite_index = sprite_get("climb2_hurt");
        hurtboxID.image_index = 9 / window_timer;
        hurtboxID.image_angle = 180;
    }
    if(state == PS_ATTACK_GROUND && attack == AT_TAUNT){
    	mask_index = sprite_get("taunt_box");
    }else{
   	    mask_index = sprite_get("hurtboxxy_wall");
    }
    spr_angle = 180;
    sprite_change_offset("0_climb1", 84, 151);
    sprite_change_offset("1_climb1", 84, 151);
    sprite_change_offset("climb1_hurt", 168, 302);
    sprite_change_offset("0_climb2", 86, 100);
    sprite_change_offset("1_climb2", 86, 100);
    sprite_change_offset("climb2_hurt", 172, 200);
    sprite_change_offset("0_idle", 81, 78);
    sprite_change_offset("1_idle", 81, 78);
    sprite_change_offset("0_walk", 42, 36);
    sprite_change_offset("1_walk", 42, 36);
    sprite_change_offset("0_dash", 80, 67);
    sprite_change_offset("1_dash", 80, 67);
    gravity_speed = 0;
    vsp = -15;
    if(left_down) && place_meeting(x, y - 4, asset_get("solid_32_obj")) && climbing == false && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND{
        switch(anger_state){
            case 0:
            state = PS_WALK;
            hsp = -3;
            break;
            case 1:
            state = PS_WALK;
            hsp = -4;
            break;
            case 2:
            state = PS_DASH;
            hsp = -6;
            break;
        }
        spr_dir = 1;
    }else if(right_down) && place_meeting(x, y - 4, asset_get("solid_32_obj")) && climbing == false && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND{
        switch(anger_state){
            case 0:
            state = PS_WALK;
            hsp = 3;
            break;
            case 1:
            state = PS_WALK;
            hsp = 4;
            break;
            case 2:
            state = PS_DASH;
            hsp = 6;
            break;
        }
        spr_dir = -1;
    }else if place_meeting(x, y - 4, asset_get("solid_32_obj")) && climbing == false && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND{
        state = PS_IDLE;
        hsp = 0;
    }else if(climbing == false && state != PS_IDLE && state != PS_WALK && state != PS_DASH && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
        wall = 0;
    }
    if(right_down){
        if(place_meeting(x + 2, y, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH)){
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get(string(plate_state) + "_climb1"));
            set_attack(AT_EXTRA_1);
            climbing = true;
        }else if !collision_point(x + 80, y - 30, asset_get("solid_32_obj"), false, true) && position_meeting(x + 70, y - 2, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH){
            set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get(string(plate_state) + "_climb2"));
            set_attack(AT_EXTRA_2);
            climbing = true;
        }
    }else if(left_down){
        if(place_meeting(x - 2, y, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH)){
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get(string(plate_state) + "_climb1"));
            set_attack(AT_EXTRA_1);
            climbing = true;
        }else if !collision_point(x - 80, y - 30, asset_get("solid_32_obj"), false, true) && position_meeting(x - 70, y - 2, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH){
            set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get(string(plate_state) + "_climb2"));
            set_attack(AT_EXTRA_2);
            climbing = true;
        }
    }
    //this enables tilts and strongs on walls
    if(state != PS_ATTACK_AIR){
        if(strong_down){
            if(down_down){
                set_attack(AT_USTRONG);
            }else if(up_down){
                set_attack(AT_DSTRONG);
            }else if(left_down || right_down || strong_down){
                set_attack(AT_FSTRONG);
            }
        }else if(down_strong_pressed){
        	set_attack(AT_USTRONG);
        }else if(up_strong_pressed){
        	set_attack(AT_DSTRONG);
        }else if(left_strong_pressed || right_strong_pressed){
        	set_attack(AT_FSTRONG);
        }
    }
    if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
        if(attack_down){
            if(down_down){
                set_attack(AT_UTILT);
            }else if(up_down){
                set_attack(AT_DTILT);
            }else if(left_down || right_down){
                set_attack(AT_FTILT);
            }else{
                set_attack(AT_JAB);
            }
        }
    }else{
        hsp = 0;
    }
    if(jump_pressed && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    	spr_angle = 0;
    	y += 201;
    	spr_dir *= -1;
    	set_attack(AT_DTHROW);
    }
    break;
}

//aerial disable
if(wall != 0){
    move_cooldown[AT_NAIR] = 10;
    move_cooldown[AT_FAIR] = 10;
    move_cooldown[AT_BAIR] = 10;
    move_cooldown[AT_DAIR] = 10;
    move_cooldown[AT_UAIR] = 10;
    move_cooldown[AT_NSPECIAL] = 10;
    if(move_cooldown[AT_FSPECIAL] <= 5){
    	move_cooldown[AT_FSPECIAL] = 5;
    }
    if(move_cooldown[AT_DSPECIAL] <= 5){
    	move_cooldown[AT_DSPECIAL] = 5;
    }
    move_cooldown[AT_NSPECIAL_AIR] = 10;
    move_cooldown[AT_DSPECIAL_AIR] = 10;
    move_cooldown[AT_FSPECIAL_AIR] = 10;
    move_cooldown[AT_USPECIAL] = 10;
}

//anim timer for wall stuff
if(special_anim_timer < 1000){
    special_anim_timer++
}else{
    special_anim_timer = 0;
}

//crawling code
if(state == PS_CROUCH){
    can_move = true;
    if(right_down){
        crawling = true;
        hsp = 3;
        spr_dir = 1;
    }else if(left_down){
        crawling = true;
        hsp = -3;
        spr_dir = -1;
    }else{
        hsp = 0;
        crawling = false;
    }
}else{
    crawling = false;
}

//plate stat changes and stuff
set_victory_portrait(sprite_get(string(plate_state) + "_portrait"));
set_victory_sidebar(sprite_get(string(plate_state) + "_result_small"));

plate_damage += get_player_damage(player) - prev_damage;
prev_damage = get_player_damage(player);
if(plate_damage < 0){
	plate_damage = 0;
}

if(plate_timer == 40 && plate_damage < (has_rune("H")? 40: 30)){
	plate_timer = 0;
	plate_damage -= (plate_damage > 0? 1: 0);
}else if(plate_damage < (has_rune("H")? 40: 30)){
	plate_timer++;
}

if(plate_damage >= (has_rune("H")? 40: 30) && plate_state == 0 && !free && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	set_attack(AT_TAUNT_2);
    plate_state = 1;
}else if(plate_damage < (has_rune("H")? 40: 30) && plate_state == 1){
    plate_state = 0;
}

if(state == PS_ATTACK_GROUND && attack == AT_TAUNT_2){
	soft_armor = 999999999999;
}else{
	soft_armor = 0;
}

if(plate_state == 0){
    soft_armor = (attack = AT_TAUNT && state = PS_ATTACK_GROUND? 8.5: 7.5);
    walk_speed          = 3.25;
    initial_dash_speed  = 6;
    dash_speed          = 6.5;	
}else if(plate_state == 1){
	soft_armor = ((attack = AT_EXTRA_1 || attack = AT_EXTRA_2 || attack = AT_EXTRA_3) && (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR)? 9999999999999: 0);
    walk_speed          = 2.25;
    initial_dash_speed  = 5;
    dash_speed          = 5.5;	
}

//jumpsquat
if(state == PS_JUMPSQUAT){
    hsp = 0;
}

//anger value stuff
if(anger_value > 0 && anger_state == 2){
    anger_value -= (has_rune("O")? 0: 1);
}

if(anger_value < 500 && anger_state != 2){
    anger_state = 0;
    init_shader();
}else if(anger_value < 1000 && anger_state != 2){
    anger_state = 1;
    init_shader();
}else if(anger_value >= 1000){
    anger_state = 2;
    if(sound_effect == 0){
    	sound_stop(sound_get("beep"));
    	beep_sound = 0;
    	sound_play(sound_get("anger_on"), false, false, 100);	
    }else if(sound_effect == 1){
    	beep_sound = 0;
    	sound_play(sound_get("tur_there_you_are"), false, false, 1);	
    }
    init_shader();
}else if(anger_state == 2 && anger_value == 2){
    anger_state = 0;
    init_shader();
}

if(bar_glow > 0.4){
    bar_glow -= 0.025;
}else if(bar_glow == 0.4){
    bar_glow = -0.4;
}else if(bar_glow > -1 && bar_glow < 0){
    bar_glow -= 0.025;
}else if(bar_glow == -1){
    bar_glow = 1;
}

//nspecial
if(attack == AT_NSPECIAL && free && wall == 0 && state == PS_ATTACK_GROUND){
    attack = AT_NSPECIAL_AIR;
    hurtboxID.sprite_index = sprite_get("nspecial_air_hurt");
}

//fspecial
if(attack == AT_FSPECIAL && free && wall == 0 && state == PS_ATTACK_GROUND){
    attack = AT_FSPECIAL_AIR;
    hurtboxID.sprite_index = sprite_get("fspecial_air_hurt");
}
if(instance_exists(ice_victim) && ice_victim.emmi_frozen == true){
    move_cooldown[AT_FSPECIAL] = 420;
    ice_victim.state = PS_HITSTUN;
    ice_victim.state_timer = 0;
    if(ice_size == false){
        ice_victim.hitstop = (has_rune("N")? 120: 70);
        ice_size = true;
        ice_victim.y -= 0.1;
    }
    ice_victim.hsp = 0;
    ice_victim.vsp = 0;
    ice_victim.hitstun = true;
    if(ice_victim.hitstop <= 0){
        ice_victim.emmi_frozen = false;
    }
}else{
    ice_size = false;
}

//dspecial
if(attack == AT_DSPECIAL && free && wall == 0){
    attack = AT_DSPECIAL_AIR;
    hurtboxID.sprite_index = sprite_get("dspecial_air_hurt");
}
if(instance_exists(shock_victim) && shock_victim.emmi_shocked == true){
    move_cooldown[AT_DSPECIAL] = 420;
    shock_victim.state_timer = 0;
    shock_victim.hitstun = true;
    emmi_shock_timer--;
    if(shock_victim.y > room_height){
    	emmi_shock_timer = 0;
    }
    if(emmi_shock_timer == 0){
        shock_victim.emmi_shocked = false;
        shock_victim.sprite_xoffset = 0;
    }
}

//uspecial
if(on_cooldown == 1){
	move_cooldown[AT_USPECIAL] = 2;
}
if(!free){
    on_cooldown = 0;
}

if(attack == AT_USPECIAL && window > 4 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	wall = temp_wall;
}

//dattack
if(spark_timer > 0){
	spark_timer--;
}else{
	stored_spark = false;
}

//walljumps
if(!free){
	max_djumps = 1;
}

//climb gauge
if(wall != 0 && wall_gauge > 0 && !has_rune("G")){
	wall_gauge -= (wall == 3? 4: 2);
}else if(wall_gauge < 1000){
	wall_gauge += (free? 1: (wall_gauge <= 995? 5: 1000 - wall_gauge));
}

if(wall_gauge == 0){
	wall = 0;
}

//jump_fix
if(prev_state == PS_FIRST_JUMP && state == PS_IDLE_AIR && state_timer == 1){
	y -= 57;
}

//radar
if(state == PS_IDLE || state == PS_IDLE_AIR || state == PS_WALK || state == PS_DASH_START || state == PS_DASH || state == PS_DASH_STOP) && anger_state != 2 && wall == 0{
	radar_state = 1;
}else{
	radar_state = 0;
}
if(radar_state == 0 && radar_img > 0){
	radar_img -= 1.5;
}else if(radar_state == 1 && radar_img < 9){
	radar_img += 1.5;
}
if(free){
	radar_angle = -35;
}else{
	radar_angle = 0;
}
switch(state){
	case PS_SPAWN:
	radar_x = 120;
	radar_y = -42;
	radar_hbox_x = 162;
	radar_hbox_y = -42;
	break;
	case PS_IDLE:
	radar_x = 120;
	radar_y = -42;
	radar_hbox_x = 162;
	radar_hbox_y = -42;
	break;
	case PS_IDLE_AIR:
	radar_x = 104;
	radar_y = 14;
	radar_hbox_x = 139;
	radar_hbox_y = 39;
	break;
	case PS_WALK:
	radar_x = 120;
	radar_y = -36;
	radar_hbox_x = 162;
	radar_hbox_y = -36;
	break;
	case PS_DASH_START:
	radar_x = 114;
	radar_y = -32;
	radar_hbox_x = 156;
	radar_hbox_y = -32;
	break;
	case PS_DASH:
	radar_x = 114;
	radar_y = -22;
	radar_hbox_x = 156;
	radar_hbox_y = -22;
	break;
	case PS_DASH_STOP:
	radar_x = 116;
	radar_y = -32;
	radar_hbox_x = 158;
	radar_hbox_y = -32;
	break;
}
if(radar_state == 1 && radar_img >= 5 && anger_state != 2 && (collision_circle(x + radar_hbox_x * spr_dir, y + radar_hbox_y, 30 + (has_rune("B")? 20: 0), oPlayer, false, true) || collision_line(x + 40 * spr_dir, y - 40, x + radar_hbox_x * spr_dir, y + radar_hbox_y, oPlayer, false, true)) && anger_value < 1000){
	anger_value += (has_rune("I")? 12: 6);
	if(radar_sound == 0){
		radar_sound = 1;
		if(sound_effect == 0){
			sound_play(sound_get("radar_sound"), true, false, 100);
		}else if(sound_effect == 1){
			var soundberg = radar_turret[random_func_2(abs(floor(x % 200)), 3, true)]
			sound_play(sound_get(soundberg),false, false, 1);
		}
	}
}else{
	radar_sound = 0;
	if(sound_effect == 0){
		sound_stop(sound_get("radar_sound"));
	}else if(sound_effect == 1){
		sound_stop(soundberg);
	}
}

//turn
if(state == PS_WALK_TURN || state == PS_DASH_TURN){
	turned = 1;
}
if(turned == 1 && state != PS_WALK_TURN && prev_state != PS_DASH_TURN && state_timer == 0){
	turned = 0;
	x += 26 * spr_dir;
}
//sound
beep_timer -= 1;
if(sound_effect == 0){
	if(beep_sound == 0 && beep_timer <= 0 && anger_state != 2){
		sound_play(sound_get("beep"), false, false, 100);
		beep_timer = 330;
	}
}else if(sound_effect == 1){
	beep_turret_timer--;
	hit_turret--;
	if(beep_turret_timer <= 0 && anger_state <= 1){
		sound_play(sound_get(beep_turret[random_func_2(120, 4, true)]), false, false, 1);
		beep_turret_timer = 300;
	}
}
//rollfix
if state == PS_ROLL_FORWARD && state_timer == 28{
	state = PS_IDLE;
	spr_dir *= -1;
}
//parry fix
if(attack == AT_UTHROW && state == PS_PRATLAND && pratcancel == 0){
	state = PS_IDLE;
	pratcancel = 1;
}
//sound stuff
sound_select -= (sound_select > 0? 1: 0);
if(state == PS_SPAWN){
	if(taunt_pressed && sound_select == 0){
		sound_effect += (sound_effect = 2? -2: 1);
		sound_select = 8;
		sound_play(sound_get("hud_select"));
	}
}
//rune C
if(has_rune("C") && wall == 0 && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	create_hitbox(AT_TAUNT_2, 1, x, y);
}
//airdodge fix
has_airdodge = airdodge_cooldown;
if(state == PS_AIR_DODGE){
	airdodge_cooldown = 0;
}
if(!free && wall == 0){
	airdodge_cooldown = 1;
}

//constant variables
visible = true;
has_walljump = false;
if(wall != 0){
    djumps = 1;
}
prev_dir = spr_dir;