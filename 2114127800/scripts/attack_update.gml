var my_id = id;

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_NSPECIAL_AIR || attack == AT_FSPECIAL_AIR){
    trigger_b_reverse();
}

if (attack == AT_DAIR){
	if (window == 1) {
		bouncecounter = 0;
	}
    else if (window == 2 && window_timer <= 4 && bouncecounter != 2){
		if (instance_exists(m_lava)){
			with (m_lava){
				if(player_id == other.id){
					with (asset_get("pHitBox")){
						if (place_meeting(x, y, other)){
							my_id.bouncecounter = 1;
						}
					}
				}
			}
		}
	}
	if (bouncecounter == 1){
		vsp = -14; 
		sound_play(sound_get("sfx_bounce")); 
		bouncecounter = 2;
	}
}

if (attack == AT_TAUNT_2){
	if window <= 1 {
		if window == 1 && window_timer == 4 && down_down && !up_down {
			window = 3;
			window_timer = 0;
		}
	} else if window == 2 {
		if window_timer == 20 sound_play(asset_get("sfx_blow_weak1"));
		if window_timer == 40 sound_play(asset_get("sfx_blow_weak2"));
		if window_timer == 70 window = 4;
	} else if window == 3 {
		if window_timer == 10 sound_play(asset_get("sfx_orca_roll"));
		if window_timer == 80 window = 4;
	}
}

if (attack == AT_USPECIAL && window == 5){
	if (instance_exists(m_lava)){
		if (place_meeting(x, y, m_lava)){
			instance_destroy(m_lava);
			charge_gauge = 3;
		}
	}
}

if (attack == AT_NSPECIAL){
	weak_charge = (weak_charge > 0);
	normal_charge = (normal_charge > 0);
	strong_charge = (strong_charge > 0);
}

if (attack == AT_DSPECIAL){
	move_cooldown[AT_DSPECIAL] = 120;
}

if (attack == AT_NSPECIAL_2 && state == PS_ATTACK_AIR){
    hurtboxID.sprite_index = sprite_get("nspecial_2_hurt");
}

if (attack == AT_NSPECIAL){
	move_cooldown[AT_NSPECIAL] = 30;
}

if (attack == AT_USPECIAL){
	if (window <= 6){
		can_wall_jump = true;
	}
	if(!hitpause && window == 2){
        if(special_down && launch_timer < 40){
            can_move = false;
            hsp = 0;
            launch_timer++;
        }
		else {
            if(launch_timer <= 15){
				if(!hitpause){
					sound_play(asset_get("sfx_burnapplied"));
					vsp = -5;
				}
            }
			else {
				if(!hitpause){
					sound_play(sound_get("sfx_launch"));
					vsp = (launch_timer / 4) * -1;
				}
            }
            window = 3;
            window_timer = 0;
            launch_timer = 0;
        }
    }
    if (window == 4){
        can_move = true;
        if (window == 4 && state == PS_ATTACK_GROUND){
			window = 5;
			window_timer = 0;
        }
    }
    if (window == 5 && window_timer == 2 && !hitpause){
        sound_play(sound_get("sfx_explosion"));
    }
}

if (attack == AT_USPECIAL){
	if (window == 6 && window_timer == get_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH) && has_hit == true){
		set_state(PS_IDLE);
	}
	else if (window == 6 && window_timer == 15 && !has_hit){
		set_state(PS_IDLE);
	}
	if (window == 4 && special_pressed && charge_gauge == 3){
		window = 7;
		window_timer = 0;
		charge_gauge = 0;
		if has_rune("H") {
		super_armor = false;
		} else {
		soft_armor = 0;
		}
	}
	if (window == 7 || window == 8){
		can_move = false;
		can_wall_jump = false;
	}
	if (window == 7 && window_timer == 14 && !hitpause){
        sound_play(asset_get("sfx_forsburn_combust"));
    }
}

if (attack == AT_USPECIAL && window == 7){
	move_cooldown[AT_USPECIAL] = 1111111;
}

if (attack == AT_USPECIAL && window == 5 && was_parried == true){
	set_state(PS_PRATLAND);
}

if has_rune("I"){
	move_cooldown[AT_NSPECIAL] = 0;
	move_cooldown[AT_DSPECIAL] = 0;
	if (move_cooldown[AT_DSPECIAL] > 0){
		move_cooldown[AT_DSPECIAL] = 0;
	}
	if (move_cooldown[AT_NSPECIAL] > 0){
		move_cooldown[AT_NSPECIAL] = 0;
	}
}

if (attack == AT_NSPECIAL_AIR){
	can_wall_jump = true;
}

if (attack == AT_NSPECIAL_AIR && window == 1){
	if (left_down && spr_dir == 1){
		spr_dir = -1;
	}
	if (right_down && spr_dir == -1){
		spr_dir = 1;
	}
}

if (attack == AT_DSPECIAL){
	can_wall_jump = true;
}

if (attack == AT_USPECIAL && vsp < 1 && window < 5 && window > 2){
	if has_rune("H") {
	super_armor = true;
	} else {
	soft_armor = 12;
	}
}

if (attack == AT_USPECIAL && vsp >= 1 && window < 5 && window > 2){
	if has_rune("H") {
	super_armor = false;
	} else {
	soft_armor = 0;
	}
}

if has_rune("D") {
	set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 90);
	set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 10);
	set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
}

if has_rune("E") {
	set_hitbox_value(AT_FSPECIAL, 2, HG_TECHABLE, 1);
	set_hitbox_value(AT_FSPECIAL, 3, HG_TECHABLE, 1);
	set_hitbox_value(AT_FSPECIAL, 4, HG_TECHABLE, 1);
	set_hitbox_value(AT_FSPECIAL, 5, HG_TECHABLE, 1);
}

if has_rune("C") {
	set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 10);
	set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 10);
}

if has_rune("J") {
	set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
	set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 270);
	set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 270);
	set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 270);
}

if has_rune("K") {
	set_hitbox_value(AT_FTILT, 1, HG_EXTRA_HITPAUSE, 30);
}

if has_rune("F") {
	set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 80);
	set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 80);
	set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 270);
	set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.4);
}

if has_rune("N"){
	charge_gauge = 3;
	if(charge_gauge < 3){
		charge_gauge = 3;
	}
}

if has_rune("O"){
	set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 100);
	set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 1);
	set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 10);
	set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 333);
	set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_CAMERA_SHAKE, 1);
	set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 10);
	set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 999);
	set_hitbox_value(AT_USTRONG, 3, HG_EXTRA_CAMERA_SHAKE, 1);
	set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 10);
}


if (attack == AT_FSPECIAL && window == 1 && free){
    attack = AT_FSPECIAL_AIR;
}

if (attack == AT_NSPECIAL_AIR && window > 1 && !free){
	set_state(PS_PRATLAND);
}

if (attack == AT_NSPECIAL_AIR && window > 1 && !free){
	set_state(PS_PRATLAND);
}

if (attack == AT_NSPECIAL_AIR){
	if (window == 2 && !hitpause){
		vsp = -4;
		hsp = 2 * spr_dir;
	}
	if (window == 3 && !hitpause){
		vsp = -5;
		hsp = 2 * spr_dir;
	}
	if (window == 4 && !hitpause){
		vsp = -6;
		hsp = 2 * spr_dir;
	}
}

if (attack == AT_NSPECIAL_AIR && window > 1){ //No longer has instant superarmor
	super_armor = true;
}

if (attack == AT_NSPECIAL_AIR && window == 2 && window_timer >= 8){ //No longer has instant superarmor
	super_armor = false;
}

if (attack == AT_NSPECIAL_AIR && window == 3 && window_timer >= 10){ //No longer has instant superarmor
	super_armor = false;
}

if (attack == AT_NSPECIAL_AIR && window == 4 && window_timer >= 13){ //No longer has instant superarmor
	super_armor = false;
}

if (attack == AT_NSPECIAL){
    if (instance_exists(m_lava) && (charge_gauge == 3 && window < 7 || window == 6 && window_timer == 1)){
		window = 8;
        window_timer = 0;
		create_hitbox(AT_NSPECIAL, 4, m_lava.x, m_lava.y);
		instance_destroy(m_lava);
    }
}

if (attack == AT_NSPECIAL_AIR){
	if (window == 1 && window_timer == 1){
		if (charge_gauge == 0){
			set_attack(AT_NSPECIAL_2);
		}
	}
	if (window == 1 && window_timer >= get_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH)){
		if (charge_gauge == 1){
			window = 2;
			window_timer = 0;
			charge_gauge = 0;
		}
		if (charge_gauge == 2){
			window = 3;
			window_timer = 0;
			charge_gauge = 0;
		}
		if (charge_gauge == 3){
			window = 4;
			window_timer = 0;
			charge_gauge = 0;
		}
	}
}

if (attack == AT_NSPECIAL_AIR){
	if (window == 2 && window_timer == get_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH)){
		if (has_rune("I") && has_rune("N")){
		set_state(PS_IDLE_AIR);
		} else {
		set_state(PS_PRATFALL);
		}
	}
	if (window == 3 && window_timer == get_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH)){
		if (has_rune("I") && has_rune("N")){
		set_state(PS_IDLE_AIR);
		} else {
		set_state(PS_PRATFALL);
		}
	}
	if (window == 4 && window_timer == get_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH)){
		if (has_rune("I") && has_rune("N")){
		set_state(PS_IDLE_AIR);
		} else {
		set_state(PS_PRATFALL);
		}
	}
}

if (attack == AT_NSPECIAL){
	if (window == 1 && charge_gauge == 1){
		window = 2;
		window_timer = 0;
	}
	if (window == 1 && charge_gauge == 2){
		window = 3;
		window_timer = 0;
	}
	if (window == 1 && charge_gauge == 3){
		window = 6;
		window_timer = 0;
		charge_gauge = 0;
	}
	if (window == 8){
		charge_gauge = 0;
	}
	if (window == 1 && attack_pressed){
		window = 4;
		window_timer = 0;
		charge_gauge = 0;
	}
	if (window == 2 && attack_pressed){
		window = 5;
		window_timer = 0;
		charge_gauge = 0;
	}
	if (window == 3 && attack_pressed){
		window = 6;
		window_timer = 0;
		charge_gauge = 0;
	}
	if (window == 3 && window_timer == get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH)){
		window = 6;
		window_timer = 0;
		charge_gauge = 0;
	}
	if (window == 1 && shield_pressed){
		window = 7;
		window_timer = 0;
		charge_gauge = 1;
	}
	if (window == 2 && shield_pressed){
		window = 7;
		window_timer = 0;
		charge_gauge = 2;
	}
	if (window == 3 && shield_pressed){
		window = 7;
		window_timer = 0;
		charge_gauge = 3;
	}
	if (window == 8){
		can_shield = false;
		can_attack = false;
	}
	if (window == 7){
		can_shield = false;
		can_attack = false;
	}
	if (window == 4){
		can_shield = false;
		can_attack = false;
	}
	if (window == 5){
		can_shield = false;
		can_attack = false;
	}
	if (window == 6){
		can_shield = false;
		can_attack = false;
	}
}

if (attack == AT_DATTACK){
	if has_rune("B") {
	can_jump = true;
	} else {
	if (window == 2 && has_hit == true){
	can_jump = true;
	}
	}
	if has_rune("B") {
	if (jump_pressed){
	max_jump_hsp = 8;
	}
	} else {
	if (window == 2 && jump_pressed){
		max_jump_hsp = 8;
	}
	}
	if (window == 2 && hsp == 0 && !hitpause){
		sound_stop(asset_get("sfx_blink_dash"));
		window = 6;
		window_timer = 0;
	}
}

if (attack == AT_DATTACK){
	if (window == 3 && window_timer == get_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH) && has_hit == true){
		set_state(PS_IDLE);
	}
	else if (window == 3 && window_timer == 19 && !has_hit){
		set_state(PS_IDLE);
	}
	if (window == 1 && special_pressed && charge_gauge > 0){
		if (window_timer == 9){
			window = 4;
			window_timer = 0;
			charge_gauge -= 1;
		}
	}
	if (window == 4){
		can_jump = true;
	}
	if (window == 4 && jump_pressed){
		sound_stop(sound_get("sfx_bash"));
		max_jump_hsp = 9;
	}
	if (window == 4 && hsp == 0 && !hitpause){
		sound_stop(sound_get("sfx_bash"));
		window = 6;
		window_timer = 0;
	}
	if (window == 4 && (taunt_pressed || shield_pressed)){
		sound_stop(sound_get("sfx_bash"));
		window = 5;
		window_timer = 0;
	}
	if (window > 4){
		destroy_hitboxes();
	}
	if (window == 4 && window_timer == 1 && !hitpause){
		sound_play(sound_get("sfx_bash"));
	}
	if (window == 5 && window_timer == 1 && !hitpause){
		sound_play(sound_get("sfx_halt"));
	}
	if (window == 5 && window_timer == get_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH) && has_hit == true){
		set_state(PS_IDLE);
	}
	if (window == 5 && window_timer == 30 && !has_hit){
		set_state(PS_IDLE);
	}
}

if (attack != AT_DATTACK){
	sound_stop(sound_get("sfx_bash"));
}

if (attack == AT_DATTACK && window == 2 && was_parried == true){
	set_state(PS_PRATLAND);
}

if (attack == AT_DATTACK && window == 4 && was_parried == true){
	set_state(PS_PRATLAND);
}

if(attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR){
	if (has_hit_player != true && window == 1 && fspec_boost == 0 && charge_gauge > 0){
		can_jump = true;
		if has_rune("L"){
		if (jump_pressed && djumps == 0){
			sound_stop(asset_get("sfx_forsburn_combust"));
			max_jump_hsp = 7;
			fspec_boost += 1;
			charge_gauge -= 1;
			hsp = get_window_value(attack, 2, AG_WINDOW_HSPEED)*spr_dir;
			set_window_value(attack, 1, AG_WINDOW_HSPEED_TYPE, 0);
		}
		} 
		else {
		if (jump_pressed && djumps == 0){
			sound_stop(asset_get("sfx_forsburn_combust"));
			max_jump_hsp = 7;
			fspec_boost += 1;
			charge_gauge -= 1;
			hsp = get_window_value(attack, 2, AG_WINDOW_HSPEED)*spr_dir;
			set_window_value(attack, 1, AG_WINDOW_HSPEED_TYPE, 0);
			if(!free){
                airDodgeGone = true;
            }
			if (state != PS_JUMPSQUAT){
				has_airdodge = 0;
			}
		}
		}
	}
	else{
		can_jump = false;
	}
}

if (attack == AT_NSPECIAL && (window == 4 || window == 5 || window == 6 || window == 8) && has_hit){
	can_dash = true;
	can_jump = true;
	can_shield = true;
	can_attack = true;
}

if (attack == AT_NSPECIAL){
	if (window == 4 && window_timer == get_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH)){
		set_state(PS_IDLE);
	}
	if (window == 5 && window_timer == get_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH)){
		set_state(PS_IDLE);
	}
	if (window == 6 && window_timer == get_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH)){
		set_state(PS_IDLE);
	}
	if (window == 7 && window_timer == get_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH)){
		set_state(PS_IDLE);
	}
}

if (attack == AT_FSPECIAL_AIR && window == 1){
	can_move = false;
}

if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR){
    if (attack == AT_FSPECIAL_AIR && window < 4 && !free){
		set_state(PS_LANDING_LAG);
	}
}

if (attack == AT_FSPECIAL_AIR && window == 5 && !free){
	window = 6;
}

if (attack == AT_FSPECIAL_AIR){
	can_fast_fall = false;
}

if (attack == AT_NSPECIAL_AIR){
	can_fast_fall = false;
}

if (attack == AT_FSPECIAL_AIR && window < 4){
	can_wall_jump = true;
	if (window == 3 && window_timer == get_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH)){
		set_state(PS_PRATFALL);
	}
}

if (attack == AT_FSPECIAL && was_parried == true){
	set_state(PS_PRATLAND);
}

if (attack == AT_FSPECIAL_AIR && was_parried == true){
	set_state(PS_PRATFALL);
}

if (attack == AT_FSPECIAL_AIR && window == 5 && state == PS_ATTACK_AIR) {
	window_timer = 1;
}

if (attack == AT_FSPECIAL_AIR && window == 4 && state == PS_ATTACK_AIR) {
	can_move = false;
}

if (attack == AT_NSPECIAL_AIR){
	can_move = false;
}

if (attack == AT_FSPECIAL_AIR && window == 5 && state == PS_ATTACK_AIR) {
	can_move = false;
}

if (attack == AT_FSPECIAL && window == 6 && window_timer == get_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH)){
	set_state(PS_IDLE);
}

if (attack == AT_FSPECIAL && window == 8 && window_timer == get_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH)){
	set_state(PS_IDLE);
}

if (attack == AT_FSPECIAL && window == 10 && window_timer == get_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH)){
	set_state(PS_IDLE);
}

if (attack == AT_FSPECIAL && window == 12 && window_timer == get_window_value(AT_FSPECIAL, 12, AG_WINDOW_LENGTH)){
	set_state(PS_IDLE);
}

if (attack == AT_FSPECIAL && window == 3 && window_timer == 1){
	hsp *= 0.5;
}

if (attack == AT_FSPECIAL){
	set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 12);
}

if (attack == AT_FSPECIAL_AIR && window == 5){
	if has_rune("M"){
		window_timer = 1;
	}
	else {
	window_timer = 1;
	grabtimer += 1;
	if (grabtimer >= (get_player_damage(grabbedid.player) / 4)){
		set_state(PS_IDLE);
		vsp = -8;
		if(instance_exists(grabbedid)){
			grabbedid.state = PS_TUMBLE;
			grabbedid.wrap_time = 0;
			grabbedid.vsp = -7;
			grabbedid = noone;
		}
	}
	}
}

if (attack == AT_FSPECIAL_AIR && window == 4){
	can_move = false;
	grabtimer = 0;
}

if (attack == AT_FSPECIAL){
	if (window = 1 && window_timer == 1){
		grabbedid = noone;
	}
	if (window == 2){
		set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 12);
	}
    if (window == 2 && has_hit_player){
		window = 4;
		window_timer = 0;
	}
    if (window == 4 || window == 5 || window == 7 || window == 9 || window == 11){
		if(grabbedid != noone){
			if(!instance_exists(grabbedid)){
				window = 3;
				window_timer = 0;
				grabbedid = noone;
			} else if(grabbedid.state == PS_DEAD || grabbedid.state == PS_RESPAWN){
				grabbedid = noone;
			} else{
				set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 0);
				vsp = 0;
				hsp = 0;
				grabbedid.ungrab = 0;
				//grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
				grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
				grabbedid.wrap_time = 1000;
				grabbedid.state = PS_WRAPPED;
				if(window == 4){
					grabbedid.x = x + spr_dir * 40; //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
					grabbedid.y = y; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
				}
				if(window == 4 && window_timer == get_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH)){ //REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
					if (left_down && spr_dir == 1){
						window = 5;
						window_timer = 0;
					}
					if (left_down && spr_dir == -1){
						window = 7;
						window_timer = 0;
					}
					if (right_down && spr_dir == 1){
						window = 7;
						window_timer = 0;
					}
					if (right_down && spr_dir == -1){
						window = 5;
						window_timer = 0;
					}
					if (up_down){
						window = 9;
						window_timer = 0;
					}
					if (down_down){
						window = 11;
						window_timer = 0;
					}
					if ((window == 6 or window == 8 or window = 10 or window == 12) && window_timer == 2){
						grabbedid.wrap_time = 0;
						grabbedid.state = PS_TUMBLE;
						grabbedid = noone;
					}
				}
			}
		}
	}
	if (window == 2 && window_timer == get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH) && grabbedid == noone){
		window = 3;
		window_timer = 0;
	}
	if (window == 3 && window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH)){
		set_state(PS_IDLE);
	}
}

if (attack == AT_FSPECIAL_AIR){
	set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 12);
}

if (attack == AT_FSPECIAL_AIR){
	if (window == 2){
		set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 12);
	}
    if (window == 2 && has_hit_player){
		window = 4;
		window_timer = 0;
	}
	if (window == 4 || window == 5 || window == 6){
		if(grabbedid != noone){
			if(!instance_exists(grabbedid)){
				window = 3;
				window_timer = 0;
				grabbedid = noone;
			} else if(grabbedid.state == PS_DEAD || grabbedid.state == PS_RESPAWN){
				grabbedid = noone;
			} else{
				set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 0);
				vsp = 0;
				hsp = 0;
				grabbedid.ungrab = 0;
				//grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
				grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
				grabbedid.wrap_time = 1000;
				grabbedid.state = PS_WRAPPED;
				if (window == 4 && window_timer == 1){
					grabbedid.x = lerp(grabbedid.x, x + spr_dir * 40, 0.7); //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
					grabbedid.y = lerp(grabbedid.y, y, 0.7); //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
				}
				if (window == 4 && window_timer == 3){
					grabbedid.x = lerp(grabbedid.x, x + spr_dir * 20, 0.7);
					grabbedid.y = lerp(grabbedid.y, y + 10, 0.7);
				}
				if (window == 4 && window_timer == 6){
					grabbedid.x = lerp(grabbedid.x, x + spr_dir * 15, 0.7);
					grabbedid.y = lerp(grabbedid.y, y - 5, 0.7);
				}
				if (window == 4 && window_timer == 9){
					grabbedid.x = lerp(grabbedid.x, x + spr_dir * 15, 0.7);
					grabbedid.y = lerp(grabbedid.y, y - 20, 0.7);
				}
				if (window == 4 && window_timer == 12){
					grabbedid.x = lerp(grabbedid.x, x + spr_dir * 0, 0.7);
					grabbedid.y = lerp(grabbedid.y, y - 25, 0.7);
				}
				if (window == 4 && window_timer == 15){
					grabbedid.x = lerp(grabbedid.x, x + spr_dir * -5, 0.7);
					grabbedid.y = lerp(grabbedid.y, y - 20, 0.7);
				}
				if (window == 4 && window_timer == 18){
					grabbedid.x = lerp(grabbedid.x, x + spr_dir * 40, 0.7);
					grabbedid.y = lerp(grabbedid.y, y - 15, 0.7);
				}
				if (window == 4 && window_timer == 21){
					grabbedid.x = lerp(grabbedid.x, x + spr_dir * 40, 0.7);
					grabbedid.y = lerp(grabbedid.y, y + 20, 0.7);
				}
				if (window == 5 && window_timer == 0){
					grabbedid.x = lerp(grabbedid.x, x + spr_dir * 40, 0.7);
					grabbedid.y = lerp(grabbedid.y, y + 20, 0.7);
				}
				if (window == 5 && window_timer == 1){
					grabbedid.x = lerp(grabbedid.x, x + spr_dir * 40, 0.7);
					grabbedid.y = lerp(grabbedid.y, y + 20, 0.7);
				}
				if (window == 5 && window_timer == 2){
					grabbedid.x = lerp(grabbedid.x, x + spr_dir * 40, 0.7);
					grabbedid.y = lerp(grabbedid.y, y + 20, 0.7);
				}
				if (window == 5 && window_timer == 3){
					grabbedid.x = lerp(grabbedid.x, x + spr_dir * 40, 0.7);
					grabbedid.y = lerp(grabbedid.y, y + 20, 0.7);
				}
				if (window == 5 && window_timer == 4){
					grabbedid.x = lerp(grabbedid.x, x + spr_dir * 40, 0.7);
					grabbedid.y = lerp(grabbedid.y, y + 20, 0.7);
				}
				if (window == 5 && window_timer == 5){
					grabbedid.x = lerp(grabbedid.x, x + spr_dir * 40, 0.7);
					grabbedid.y = lerp(grabbedid.y, y + 20, 0.7);
				}
				if (window == 5 && window_timer == 6){
					grabbedid.x = lerp(grabbedid.x, x + spr_dir * 40, 0.7);
					grabbedid.y = lerp(grabbedid.y, y + 20, 0.7);
				}
				if (window == 6 && window_timer == 4){
					grabbedid.x = x + spr_dir * 40;
					grabbedid.y = y - 5;
					grabbedid.wrap_time = 0;
					grabbedid.state = PS_TUMBLE;
					grabbedid = noone;
				}
			}
		}
	}
	if (window == 2 && window_timer == get_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH) && grabbedid == noone){
		window = 3;
		window_timer = 0;
	}
	if (window == 3 && window_timer == get_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH)){
		set_state(PS_PRATFALL);
	}
}