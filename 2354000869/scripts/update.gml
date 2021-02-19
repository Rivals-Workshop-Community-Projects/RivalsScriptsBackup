cancook = 1
if taunt_down and special_down and state = PS_SPAWN {
sfxon = 0
}

if !instance_exists(myscarecrow) myscarecrow = noone
if state != PS_ATTACK_GROUND and gatling {
	gatling = 0
}

if makecrow {
	makecrow = 0
	if myscarecrow {
	myscarecrow.state = 2
	myscarecrow.state_timer = 0
	myscarecrow.image_index = 0
	myscarecrow.sprite_index = sprite_get("scarecrow_die")
	}
	myscarecrow = instance_create(makecrowx+(spr_dir*30),makecrowy+4,"obj_article1")
}

if crowcanc {
	crowcanc = 0
	state = PS_IDLE_AIR
	vsp = avsp
	hsp = ahsp
}

//Modified Menace GC code
if state = PS_AIR_DODGE and state_timer < 6 and air_dodge_dir = 0 and ((attack_pressed) or (special_pressed) or (down_strong_pressed or up_strong_pressed or left_strong_pressed or right_strong_pressed) or (down_stick_pressed or up_stick_pressed or left_stick_pressed or right_stick_pressed)) {
air_dodge_dir = 9
}

if (is_gravity_cancel) {
    if state != PS_DOUBLE_JUMP vsp = 0;
    gravity_speed = 0;
    can_fast_fall = false;
    can_move = false;
    can_jump = false;
    air_accel = 0;
    air_friction = ground_friction;
    //haha
    if (state_timer == 0) or (window = get_attack_value(attack, AG_NUM_WINDOWS) and ((has_hit and window_timer+1 = get_window_value(attack, window, AG_WINDOW_LENGTH)) or (!has_hit and window_timer+1 = get_window_value(attack, window, AG_WINDOW_LENGTH)*1.5))){
        reset_gc = 1
    }
} 
else {
    reset_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW);
    reset_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW);
    reset_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW);
}

if nextmove != -1 {
	set_attack(nextmove)
	hsp = 0;
	vsp = 0;
	has_airdodge = false;
        state = PS_ATTACK_AIR;
        set_state(PS_ATTACK_AIR);
	spawn_hit_fx( x, y-16, gc_wind )
	if sfxon sound_play(asset_get("sfx_bird_sidespecial_start"))
	nextmove = -1
	window = 1
	window_timer = 1
}

if state = PS_AIR_DODGE and (air_dodge_dir != 9) and ((special_pressed or attack_pressed or down_strong_pressed or up_strong_pressed or left_strong_pressed or right_strong_pressed) or (down_stick_pressed or up_stick_pressed or left_stick_pressed or right_stick_pressed)) and myscarecrow {
	window = 1
	window_timer = 11
	has_airdodge = 0
	crowcanc = 1
	avsp = vsp
	ahsp = hsp
}


if (state == PS_AIR_DODGE && free) {
    if (state_timer == 0) {
        dodge_start_x = x;
        dodge_start_y = y;
        can_gravity_cancel = false;
    } 
    if (air_dodge_dir == 9) {
	can_gravity_cancel = true;
     }
    if (state_timer == 18) {
	can_gravity_cancel = false;
	}
    if (can_gravity_cancel) {
        if (up_strong_pressed) {
            is_gravity_cancel = true;
            set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, -1);
            nextmove = AT_USTRONG
        } else if (down_strong_pressed) {
            is_gravity_cancel = true;
            set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, -1);
            nextmove = AT_DSTRONG
        } else if (left_strong_pressed) {
            is_gravity_cancel = true;
            spr_dir = -1;
            set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, -1);
            nextmove = AT_FSTRONG
        } else if (right_strong_pressed) {
            is_gravity_cancel = true;
            spr_dir = 1;
            set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, -1);
            nextmove = AT_FSTRONG
        } else if (attack_pressed) or (down_stick_pressed or up_stick_pressed or left_stick_pressed or right_stick_pressed) {
            if (down_pressed || down_down) or (down_stick_pressed || down_stick_down) {
                is_gravity_cancel = true;
                nextmove = AT_DTILT
            } else if (up_pressed || up_down) or (up_stick_pressed || up_stick_down) {
                is_gravity_cancel = true;
                nextmove = AT_UTILT
            } else if (right_pressed || right_down) or (right_stick_pressed || right_stick_down){
                is_gravity_cancel = true;
                spr_dir = 1;
                nextmove = AT_FTILT
            } else if (left_pressed || left_down) or (left_stick_pressed || left_stick_down) {
                is_gravity_cancel = true;
                spr_dir = -1;
                nextmove = AT_FTILT
            } else {
                is_gravity_cancel = true;
                nextmove = AT_JAB
            }
        } else if (special_pressed) {
	    if (down_pressed || down_down) {
                is_gravity_cancel = true;
                nextmove = AT_DSPECIAL
            } else if (up_pressed || up_down) {
                is_gravity_cancel = true;
                nextmove = AT_USPECIAL
            } else if (right_pressed || right_down) {
                is_gravity_cancel = true;
                spr_dir = 1;
                nextmove = AT_FSPECIAL
            } else if (left_pressed || left_down) {
                is_gravity_cancel = true;
                spr_dir = -1;
                nextmove = AT_FSPECIAL
            } else {
                is_gravity_cancel = true;
                nextmove = AT_NSPECIAL
            }
	}	
	else {
	if taunt_pressed {
		is_gravity_cancel = true;
		nextmove = AT_TAUNT
	}
	}
        if (is_gravity_cancel) {
	    state = PS_AIR_DODGE
	    can_gravity_cancel = 0
	    window = 1
	    window_timer = 11
        }
    }
}

if reset_gc = 1 {
	reset_gc = 0
	is_gravity_cancel = false;
        gravity_speed = orig_gravity_speed
        air_accel = orig_air_accel
        air_friction = orig_air_friction
}

