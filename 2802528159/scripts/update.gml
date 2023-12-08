//don't change
has_walljump = 0;
set_victory_portrait(sprite_get(string(plate) + "_portrait"));
set_victory_sidebar(sprite_get(string(plate) + "_result_small"));
if get_player_color(player) == 23 || get_player_color(player) == 26{
	init_shader();
	if get_player_color(player) == 23 radar_color[@23] = [make_color_rgb(get_color_profile_slot_r(23, 6), get_color_profile_slot_g(23, 6), get_color_profile_slot_b(23, 6)), make_color_rgb(get_color_profile_slot_r(23, 6), get_color_profile_slot_g(23, 6), get_color_profile_slot_b(23, 6)), make_color_rgb(get_color_profile_slot_r(23, 6), get_color_profile_slot_g(23, 6), get_color_profile_slot_b(23, 6))];
}
if state == PS_PRATFALL can_fast_fall = 1;

//load attacks to array=========================================================
if load_atk{
	for(var n = 0; n < 10; n++){
	    if n != 0 && n != 2 && n != 3{
	    	for(var k = 1; k <= get_num_hitboxes(n); k++){
				array_push(temp1, get_hitbox_value(n, k, HG_ANGLE));
				array_push(temp2, get_hitbox_value(n, k, HG_HITBOX_X));
				array_push(temp2, get_hitbox_value(n, k, HG_HITBOX_Y));
				array_push(temp3, get_hitbox_value(n, k, HG_WIDTH));
				array_push(temp3, get_hitbox_value(n, k, HG_HEIGHT));
			}
	    }
	    array_push(og_angle, temp1);
	    array_push(og_pos, temp2);
	    array_push(og_size, temp3);
	    temp1 = [];
		temp2 = [];
		temp3 = [];
	}
	load_atk = 0;
}

//special states stuff==========================================================
switch(state){
    case PS_DASH_START:
    if state_timer < 7 hsp = 0;
    break;
    case PS_FIRST_JUMP:
    if(state_timer == 1 && !hitstop){
        y -= 54;
    }
    break;
}

//uspecial single use thingie===================================================
if !free && wall%360 == 0 && move_cooldown[AT_USPECIAL] move_cooldown[AT_USPECIAL] = 0;
else if move_cooldown[AT_USPECIAL] && free move_cooldown[AT_USPECIAL] += 1;

//awareness checks==============================================================
if aware != prev_aware init_shader();
radx = lerp(radx, x + radar_b_pos[@(wall % 360)/90][@0], 0.4);
rady = lerp(rady, y - 40 + radar_b_pos[@(wall % 360)/90][@1], 0.4);
if((radar_img >= 5 || hit_aw) && aware < 2){
    aware_sound -= (aware_sound > 0? 1: 0);
    if(collision_line(x + radar_x * spr_dir, y + radar_y, x + (radar_x + 120 * cos(degtorad(radar_angle - 15))) * spr_dir, y + (radar_y - 120 * sin(degtorad(radar_angle - 15))), oPlayer, 1, 1) || collision_line(x + radar_x * spr_dir, y + radar_y, x + (radar_x + 120 * cos(degtorad(radar_angle + 15))) * spr_dir, y + (radar_y - 120 * sin(degtorad(radar_angle + 15))), oPlayer, 1, 1) || collision_line(x + radar_x * spr_dir, y + radar_y, x + (radar_x + 120 * cos(degtorad(radar_angle))) * spr_dir, y + (radar_y - 120 * sin(degtorad(radar_angle))), oPlayer, 1, 1) || hit_aw){
        if !hit_aw awareness += (awareness < 1000? 10/3: 0)* (has_rune("I") + 1);
        else awareness += hit_aw * (has_rune("I") + 1);
        hit_aw = 0;
        aware = floor(awareness / 500);
        if aware_sound == 0 && awareness < 1000{
            sound_play(sound_get("radar_sound"));
            aware_sound = 80;
        }else if(awareness >= 1000){
        	awareness = 1000;
            suppress_stage_music(0.0, 0.05);
            sound_play(sound_get("anger_on"));
            sound_stop(sound_get(get_player_color(player) >= 19 && get_player_color(player) <= 22? "sax_chase": "chase"));
            sound_play(sound_get(get_player_color(player) >= 19 && get_player_color(player) <= 22? "sax_chase": "chase"));
        }
    }
}else if(aware == 2){
    suppress_stage_music(0.0, 0.05);
    if !has_rune("O") awareness -= (collision_circle(radx, rady, 200, oPlayer, 1, 1)? 1.5: 1.5);
    if awareness <= 0{
    	emmi_cancel = 1;
    	with oPlayer if url = other.url && self != other{
    		if aware == 2{
    			other.emmi_cancel = 0;
    		}
    	}
        if emmi_cancel sound_stop(sound_get(get_player_color(player) >= 19 && get_player_color(player) <= 22? "sax_chase": "chase"));
        sound_play(sound_get("radar_sound"));
        awareness = 0;
        aware = 0;
        hit_aw = 0;
        init_shader();
    }
}

var prev_aware = aware;

//plate ========================================================================
plate_timer -= (plate_timer > 0? 1: 0);
if !plate soft_armor = (attack == AT_TAUNT && state == PS_ATTACK_GROUND? 10: (attack == AT_TAUNT_2 && state == PS_ATTACK_GROUND? 9999999999: 7));
if plate_hp > 0 plate = 0;
if plate_hp > 0 && plate_timer <= 0 && plate_hp < (has_rune("H")? 50: 30){
    plate_hp++;
    plate_timer = 20;
}else if(!plate && plate_hp <= 0 && !free && (state != PS_ATTACK_GROUND || attack != AT_TAUNT_2)){
    set_attack(AT_EXTRA_1);
    plate = 1;
    soft_armor = 999999;
    hsp = 0;
    vsp = 0;
}

//grab protection===============================================================
if instance_exists(grabp) && (((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack != AT_NSPECIAL && attack != AT_NSPECIAL_AIR) || (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)){
	grabp.state = PS_HITSTUN;
	grabp.visible = 1;
	grabp.wrap_time = 0;
	grabp.perfect_dodging = 0;
	grabp.invincible = 0;
	grabp = noone;
}
if(!hitstop && sresume == 1){
	sresume = 0;
	sound_stop(sound_get(get_player_color(player) >= 19 && get_player_color(player) <= 22? "sax_chase": "chase"));
	sound_play(sound_get(get_player_color(player) >= 19 && get_player_color(player) <= 22? "sax_chase": "chase"));
}else if sresume > 1{
	suppress_stage_music(0.0, 0.05);
	sresume--;
}


//parry fix=====================================================================
if(attack == AT_UTHROW && state == PS_PRATLAND && pratcancel == 0){
	state = PS_IDLE;
	pratcancel = 1;
}

//fspecial refresh==============================================================
with oPlayer if self != other{
	if(state != PS_WRAPPED){
		emmi_fr = 0;
	}
}

//dspecial stun=================================================================
with oPlayer if self != other && emmi_st{
	emmi_st--;
	hitstun = 1;
	state_timer = 0;
	if y > room_height emmi_st = 0;
	if hitstop emmi_st = 0;
	with other{move_cooldown[AT_DSPECIAL] = (has_rune("M")? 0: 200)}
	if !(emmi_st % 20) spawn_hit_fx(x, y - char_height / 2 + 30, 255);
}

//fspecial air and dspecial air landing lag=====================================
if(!free && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && ((attack == AT_FSPECIAL_AIR || attack == AT_DSPECIAL_AIR))){
	if attack == AT_FSPECIAL_AIR && window == 1 move_cooldown[AT_FSPECIAL] = (has_rune("M")? 0: 30);
	else if window == 1 move_cooldown[AT_DSPECIAL] = (has_rune("M")? 0: 30);
	state = PS_LANDING_LAG;
	state_timer = 0;
}

//height reset==================================================================
if(state != PS_ATTACK_GROUND && mask_index = sprite_get("taunt_box")){
	state = PS_IDLE_AIR;
	state_timer = 0;
	char_height = lerp(char_height, 110, 0.6);
	sound_stop(sound_get("beep"));
	mask_index = sprite_get("def_mask");
}
if state != PS_ATTACK_GROUND || attack != AT_DATTACK sound_stop(sound_get("boost_run"));

//wall stuff====================================================================
if wall % 360 != 0{
	move_cooldown[AT_NAIR] = 10;
	move_cooldown[AT_FAIR] = 10;
	move_cooldown[AT_UAIR] = 10;
	move_cooldown[AT_BAIR] = 10;
	move_cooldown[AT_DAIR] = 10;
	move_cooldown[AT_NSPECIAL] = 10;
	move_cooldown[AT_FSPECIAL] = 80;
	move_cooldown[AT_DSPECIAL] = 80;
	move_cooldown[AT_USPECIAL] = move_cooldown[AT_USPECIAL];
}
if wall_cool > 0 wall_cool--;
switch (wall % 360){
	case 0:
	if collision_line(x, y - 40, x + 92 * spr_dir, y - 40, asset_get("par_block"), 1, 1) && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && !wall_cool && !free && state != PS_HITSTUN && state != PS_HITSTUN_LAND{
		set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get(string(plate) + "26"));
		set_attack(AT_FTHROW);
		hurtboxID.sprite_index = sprite_get("climb1_hurt");
		soft_armor = 999999;
	}
	if collision_rectangle(x + wall_c[(wall%360)/90][0], y + wall_c[(wall%360)/90][1], x + wall_c[(wall%360)/90][2], y + wall_c[(wall%360)/90][3], asset_get("par_block"), 1, 1) && !collision_line(x + 92 * spr_dir, y - 1, x + 92 * spr_dir, y + 30, asset_get("par_block"), 1, 1) && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && !wall_cool && !free && (spr_dir? right_down: left_down) && state == PS_WALK{
		set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get(string(plate) + "28"));
		set_attack(AT_DTHROW);
		hurtboxID.sprite_index = sprite_get("climb2_hurt");
		soft_armor = 999999;
	}
	break;
	case 90:
	free = 0;
	has_airdodge = 0;
	sound_stop(asset_get("sfx_quick_dodge"));
	can_fast_fall = 0;
	if state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR hsp = 4;
	//wall_controls
	if turning && statet < 20{
		state = PS_WALK_TURN;
		vsp = 0;
	}else if turning && statet = 20{
		turning = 0;
	}
	if state != PS_WALK_TURN && state != PS_ATTACK_AIR && state!= PS_ATTACK_GROUND && !up_down && !down_down{
		state = PS_IDLE;
		vsp = 0;
	}
	if up_down && state != PS_WALK_TURN && state != PS_ATTACK_AIR && state!= PS_ATTACK_GROUND{
		if spr_dir{
			vsp = -4 - (aware + has_rune("D")) * 2;
			state = PS_WALK;
		}else{
			statet = 0;
			turning = 1;
			state = PS_WALK_TURN;
			spr_dir *= -1;
			vsp = 0;
		}
	}else if down_down && state != PS_WALK_TURN && state != PS_ATTACK_AIR && state!= PS_ATTACK_GROUND{
		if spr_dir{
			statet = 0;
			turning = 1;
			state = PS_WALK_TURN;
			spr_dir *= -1;
			vsp = 0;
		}else{
			vsp = 4 + (aware + has_rune("D")) * 2;
			state = PS_WALK;
		}
	}
	//wall attacks
	if state != PS_WALK_TURN && state != PS_ATTACK_AIR && state!= PS_ATTACK_GROUND{
		var dir = (joy_pad_idle? 4: floor((floor(joy_dir/45)%8)/2 + .5)%4);
		og_dir = spr_dir;
		if attack_pressed{
			vsp = 0;
			switch(dir){
				case 0:
				set_attack(AT_DTILT);
				break;
				case 1:
				spr_dir = 1;
				og_dir = spr_dir;
				set_attack(AT_FTILT);
				break;
				case 2:
				set_attack(AT_UTILT);
				break;
				case 3:
				spr_dir = -1;
				og_dir = spr_dir;
				set_attack(AT_FTILT);
				break;
				case 4:
				set_attack(AT_JAB);
				break;
			}
		}else if right_strong_pressed || up_strong_pressed || left_strong_pressed || down_strong_pressed{
			vsp = 0;
			if right_strong_pressed{
				set_attack(AT_DSTRONG);
			}else if up_strong_pressed{
				spr_dir = 1;
				og_dir = spr_dir;
				set_attack(AT_FSTRONG);
			}else if left_strong_pressed{
				set_attack(AT_USTRONG);
			}else if down_strong_pressed{
				spr_dir = -1;
				og_dir = spr_dir;
				set_attack(AT_FSTRONG);
			}
		}
		spr_dir = og_dir;
	}
	state_timer = statet;
	statet++;
	if collision_line(x - 40, y, x - 40, y - 92 * spr_dir, asset_get("par_block"), 1, 1) && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && !wall_cool && state != PS_HITSTUN && state != PS_HITSTUN_LAND{
		set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get(string(plate) + "26"));
		set_attack(AT_FTHROW);
		hurtboxID.sprite_index = sprite_get("climb1_hurt");
		soft_armor = 999999;
	}
	if(jump_pressed && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
		set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get(string(plate) + "20"));
		spr_dir = 1;
		set_attack(AT_FSTRONG_2);
		hurtboxID.sprite_index = sprite_get("walljump_hurt");
		wall = 0;
		has_airdodge = 1;
	}
	if collision_rectangle(x + wall_c[(wall%360)/90][0], y + wall_c[(wall%360)/90][1], x + wall_c[(wall%360)/90][2], y + wall_c[(wall%360)/90][3], asset_get("par_block"), 1, 1) && !collision_line(x - 1, y - 92 * spr_dir, x + 30, y - 92 * spr_dir, asset_get("par_block"), 1, 1) && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && !wall_cool && !free && (spr_dir? up_down: down_down) && state == PS_WALK{
		set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get(string(plate) + "28"));
		set_attack(AT_DTHROW);
		hurtboxID.sprite_index = sprite_get("climb2_hurt");
		soft_armor = 999999;
	}
	break;
	case 180:
	free = 0;
	has_airdodge = 0;
	sound_stop(asset_get("sfx_quick_dodge"));
	can_fast_fall = 0;
	if state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR vsp = -4;
	//wall_controls
	if turning && statet < 20{
		state = PS_WALK_TURN;
		hsp = 0;
	}else if turning && statet = 20{
		turning = 0;
	}
	if state != PS_WALK_TURN && state != PS_ATTACK_AIR && state!= PS_ATTACK_GROUND && !left_down && !right_down{
		state = PS_IDLE;
		hsp = 0;
	}
	if right_down && state != PS_WALK_TURN && state != PS_ATTACK_AIR && state!= PS_ATTACK_GROUND{
		if -spr_dir{
			hsp = 4 + (aware + has_rune("D")) * 2;
			state = PS_WALK;
		}else{
			statet = 0;
			turning = 1;
			state = PS_WALK_TURN;
			spr_dir *= -1;
			hsp = 0;
		}
	}else if left_down && state != PS_WALK_TURN && state != PS_ATTACK_AIR && state!= PS_ATTACK_GROUND{
		if -spr_dir{
			statet = 0;
			turning = 1;
			state = PS_WALK_TURN;
			spr_dir *= -1;
			hsp = 0;
		}else{
			hsp = -4 - (aware + has_rune("D")) * 2;
			state = PS_WALK;
		}
	}
	//wall attacks
	if state != PS_WALK_TURN && state != PS_ATTACK_AIR && state!= PS_ATTACK_GROUND{
		var dir = (joy_pad_idle? 4: floor((floor(joy_dir/45)%8)/2 + .5)%4);
		og_dir = spr_dir;
		if attack_pressed{
			hsp = 0;
			switch(dir){
				case 0:
				spr_dir = -1;
				og_dir = spr_dir;
				set_attack(AT_FTILT);
				break;
				case 1:
				set_attack(AT_DTILT);
				break;
				case 2:
				spr_dir = 1;
				og_dir = spr_dir;
				set_attack(AT_FTILT);
				break;
				case 3:
				set_attack(AT_UTILT);
				break;
				case 4:
				set_attack(AT_JAB);
				break;
			}
		}else if right_strong_pressed || up_strong_pressed || left_strong_pressed || down_strong_pressed{
			hsp = 0;
			if right_strong_pressed{
				spr_dir = -1;
				og_dir = spr_dir;
				set_attack(AT_FSTRONG);
			}else if up_strong_pressed{
				set_attack(AT_DSTRONG);
			}else if left_strong_pressed{
				spr_dir = 1;
				og_dir = spr_dir;
				set_attack(AT_FSTRONG);
			}else if down_strong_pressed{
				set_attack(AT_USTRONG);
			}
		}
		spr_dir = og_dir;
	}
	state_timer = statet;
	statet++;
	if collision_line(x, y + 40, x + 92 * -spr_dir, y + 40, asset_get("par_block"), 1, 1) && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && !wall_cool && state != PS_HITSTUN && state != PS_HITSTUN_LAND{
		set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get(string(plate) + "26"));
		set_attack(AT_FTHROW);
		hurtboxID.sprite_index = sprite_get("climb1_hurt");
		soft_armor = 999999;
	}
	if(jump_pressed && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && !hitstop){
		set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get(string(plate) + "22"));
		spr_dir = -spr_dir;
		set_attack(AT_USTRONG_2);
		hurtboxID.sprite_index = sprite_get("ceilingjump_hurt");
		wall = 0;
		has_airdodge = 1;
	}
	if collision_rectangle(x + wall_c[(wall%360)/90][0], y + wall_c[(wall%360)/90][1], x + wall_c[(wall%360)/90][2], y + wall_c[(wall%360)/90][3], asset_get("par_block"), 1, 1) && !collision_line(x - 92 * spr_dir, y, x - 92 * spr_dir, y - 30, asset_get("par_block"), 1, 1) && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && !wall_cool && !free && (-spr_dir? right_down: left_down) && state == PS_WALK{
		set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get(string(plate) + "28"));
		set_attack(AT_DTHROW);
		hurtboxID.sprite_index = sprite_get("climb2_hurt");
		soft_armor = 999999;
	}
	break;
	case 270:
	free = 0;
	has_airdodge = 0;
	sound_stop(asset_get("sfx_quick_dodge"));
	can_fast_fall = 0;
	if state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR hsp = -4;
	//wall_controls
	if turning && statet < 20{
		state = PS_WALK_TURN;
		vsp = 0;
	}else if turning && statet = 20{
		turning = 0;
		vsp = 0;
	}
	if state != PS_WALK_TURN && state != PS_ATTACK_AIR && state!= PS_ATTACK_GROUND && !up_down && !down_down{
		state = PS_IDLE;
		vsp = 0;
	}
	if up_down && state != PS_WALK_TURN && state != PS_ATTACK_AIR && state!= PS_ATTACK_GROUND{
		if -spr_dir{
			vsp = -4 - (aware + has_rune("D")) * 2;
			state = PS_WALK;
		}else{
			statet = 0;
			turning = 1;
			state = PS_WALK_TURN;
			spr_dir *= -1;
			vsp = 0;
		}
	}else if down_down && state != PS_WALK_TURN && state != PS_ATTACK_AIR && state!= PS_ATTACK_GROUND{
		if -spr_dir{
			statet = 0;
			turning = 1;
			state = PS_WALK_TURN;
			spr_dir *= -1;
			vsp = 0;
		}else{
			vsp = 4 + (aware + has_rune("D")) * 2;
			state = PS_WALK;
		}
	}
	//wall attacks
	if state != PS_WALK_TURN && state != PS_ATTACK_AIR && state!= PS_ATTACK_GROUND{
		var dir = (joy_pad_idle? 4: floor((floor(joy_dir/45)%8)/2 + .5)%4);
		og_dir = spr_dir;
		if attack_pressed{
			vsp = 0;
			switch(dir){
				case 0:
				set_attack(AT_UTILT);
				break;
				case 1:
				spr_dir = -1;
				og_dir = spr_dir;
				set_attack(AT_FTILT);
				break;
				case 2:
				set_attack(AT_DTILT);
				break;
				case 3:
				spr_dir = 1;
				og_dir = spr_dir;
				set_attack(AT_FTILT);
				break;
				case 4:
				set_attack(AT_JAB);
				break;
			}
		}else if right_strong_pressed || up_strong_pressed || left_strong_pressed || down_strong_pressed{
			vsp = 0;
			if right_strong_pressed{
				set_attack(AT_USTRONG);
			}else if up_strong_pressed{
				spr_dir = -1;
				og_dir = spr_dir;
				set_attack(AT_FSTRONG);
			}else if left_strong_pressed{
				set_attack(AT_DSTRONG);
			}else if down_strong_pressed{
				spr_dir = 1;
				og_dir = spr_dir;
				set_attack(AT_FSTRONG);
			}
		}
		spr_dir = og_dir;
	}
	state_timer = statet;
	statet++;
	if collision_line(x + 40, y, x + 40, y + 92 * spr_dir, asset_get("par_block"), 1, 1) && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && !wall_cool && state != PS_HITSTUN && state != PS_HITSTUN_LAND{
		set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get(string(plate) + "26"));
		set_attack(AT_FTHROW);
		hurtboxID.sprite_index = sprite_get("climb1_hurt");
		soft_armor = 999999;
	}
	if(jump_pressed && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
		set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get(string(plate) + "20"));
		spr_dir = -1;
		set_attack(AT_FSTRONG_2);
		hurtboxID.sprite_index = sprite_get("walljump_hurt");
		wall = 0;
		has_airdodge = 1;
	}
	if collision_rectangle(x + wall_c[(wall%360)/90][0], y + wall_c[(wall%360)/90][1], x + wall_c[(wall%360)/90][2], y + wall_c[(wall%360)/90][3], asset_get("par_block"), 1, 1) && !collision_line(x, y + 92 * spr_dir, x - 30, y + 92 * spr_dir, asset_get("par_block"), 1, 1) && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && !wall_cool && !free && (-spr_dir? up_down: down_down) && state == PS_WALK{
		set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get(string(plate) + "28"));
		set_attack(AT_DTHROW);
		hurtboxID.sprite_index = sprite_get("climb2_hurt");
		soft_armor = 999999;
	}
	break;
}
if hurtboxID.image_angle != wall hurtboxID.image_angle = wall;

//wall failsafe=================================================================
if(wall % 360 != 0 && !hitstop){
	if !has_rune("G") wall_en -= (wall_en > 0? 1: 0);
	if state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && (wall_en = 0 || wall_cool > 25){
		wall = 0;
		image_angle = 0;
		spr_angle = 0;
		if wall_en = 0 wall_cool = 400;
	}
	if (state != PS_IDLE && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state != PS_WALK && state != PS_WALK_TURN){
		wall = 0;
		image_angle = 0;
		spr_angle = 0;
		wall_cool = 400;
	}
	wall_c = [[-53 * spr_dir, 4, 48 * spr_dir, 0], [0, -53 * spr_dir, 4, 48 * spr_dir], [-53 * spr_dir, -4, 48 * spr_dir, 0], [0, 53 * spr_dir, -4, -48 * spr_dir]];
	if !collision_rectangle(x + wall_c[(wall%360)/90][0], y + wall_c[(wall%360)/90][1], x + wall_c[(wall%360)/90][2], y + wall_c[(wall%360)/90][3], asset_get("par_block"), 1, 1) || state == PS_HITSTUN{
		if wall % 360 = 180 spr_dir = -spr_dir;
		wall = 0;
		image_angle = 0;
		spr_angle = 0;
	}
}else{
	if wall_en < 300 wall_en += (free? 0.5: 1);
	if wall_en >= 300 wall_en = 300;
	if state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && image_angle != 0 image_angle = 0;
}
if spr_angle != wall % 360 && ((state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || attack != AT_USPECIAL) spr_angle = wall % 360;
if wall % 360 != 0 djumps = 1;
gravity_speed = (wall % 360 = 0? 0.5: 0);

//shinespark vfx thing==========================================================
if !((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_USPECIAL) && !hitstop && usp_ch > 0{
	usp_ch--;
}
if has_rune("B") && usp_ch <= 10 usp_ch = 300;
if usp_ch{
	if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_USPECIAL{
		cols = [get_color_profile_slot_r(get_player_color(player), 7), get_color_profile_slot_g(get_player_color(player), 7), get_color_profile_slot_b(get_player_color(player), 7)];
	}else{
		cols = [get_color_profile_slot_r(get_player_color(player), 7) * abs(usp_ch % 21 - 10)/10, get_color_profile_slot_g(get_player_color(player), 7) * abs(usp_ch % 21 - 10)/10, get_color_profile_slot_b(get_player_color(player), 7) * abs(usp_ch % 21 - 10)/10];
	}
	outline_color = cols;
	init_shader();
}else if outline_color[0] = cols[0]{
	outline_color = [0, 0, 0];
	init_shader();
}

//rune C========================================================================
if(has_rune("C") && wall%360 == 0 && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	create_hitbox(AT_TAUNT, 1, x, y);
}

//invisible fix=================================================================
if should_vis && !visible && state != PS_RESPAWN{
	visible = 1;
	should_vis = 0;
}

//beep end======================================================================
if ((state != PS_ATTACK_GROUND && attack != AT_TAUNT) || aware == 2) && instance_exists(beep){
	sound_stop(beep);
}