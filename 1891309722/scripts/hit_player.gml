//set_state(PS_PRATFALL);
target = noone;
if (attack == AT_FSTRONG || attack == AT_DSTRONG) {
	target = hit_player_obj;
}
if (attack == AT_USTRONG && my_hitboxID.hbox_num == 1) {
	target = hit_player_obj;
}
if (attack == AT_FSTRONG && window_timer >= 12) {
	target = noone;
}
if (attack == AT_DSTRONG && window_timer >= 5) {
	target = noone;
}
if (attack == AT_DSTRONG && window_timer == 3) {
	hit_player_obj.x = x + (39 * spr_dir);
	hit_player_obj.y = y - 13;
}
if (attack == AT_FSPECIAL) {
	if (window == 2 || window == 4 || window == 6) {
		target = hit_player_obj;	
	} else {
		target = hit_player_obj;			
	}
}

hit_player_obj.hit_dir *= -1;


if (comboBuffer > 0) {
    currentCombo += 1;
    baseCombo = 0;
}

if (currentCombo > 0) {
	if (attack == AT_BAIR && window == 1 && window_timer > 7) {
		currentCombo -= 1;
	}

	if (attack == AT_DAIR && window == 2 && window_timer < 4 && window_timer > 1) {
		currentCombo -= 1;
	}
	if (attack == AT_DAIR && window == 2 && window_timer > 5) {
		currentCombo -= 1;
	}
	if (attack == AT_FSTRONG && window_timer > 6 && window_timer < 9) {
		currentCombo -= 1;
	}
	if (attack == AT_FSTRONG && window_timer > 10) {
		currentCombo -= 1;
	}
}

if (currentCombo < 5) {
	comboBuffer = 75 + (5 * currentCombo);
} else {
	comboBuffer = 105;
}

if (attack == AT_NSPECIAL && window < 9) {
	comboBuffer += 15;
}

comboCounterPlaceholder = 0;

if (attack == AT_FSPECIAL) {
	sideBHit = 1;
}

if (attack == AT_DAIR && attack_down && vsp > -4) {
	old_vsp = -3;
	move_cooldown[AT_DAIR] = 10;
}

if (attack == AT_UAIR && attack_down && vsp > -4) {
	old_vsp = -2;
	move_cooldown[AT_UAIR] = 5;
}

if (attack == AT_FAIR && attack_down && vsp > -4) {
	old_vsp = -6;
}

if (attack == AT_BAIR && attack_down && vsp > -4) {
	old_vsp = -2;
}

if (attack == AT_FSTRONG && window_timer < 5) {
	hit_player_obj.should_make_shockwave = false;
}

pratfallMode = 0;
framesUntilPratfall = 0;