//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


//Jab infinite
if (attack == AT_JAB){
    if (window == 7 && window_timer > 7){
        if (attack_down){
            window = 8;
            window_timer = 0;
        }
    }
}

if (attack == AT_JAB){
    if (window == 8 && window_timer > 7){
        if (attack_down){
            window = 7;
            window_timer = 0;
        }
    }
}

if (attack == AT_JAB){
    if (window == 7 && window_timer > 7){
	if (!attack_down){
		window = 9;
		window_timer = 0;
		}
	}
}


//Up Special Wall Jump
if (attack == AT_USPECIAL){
	can_wall_jump = true;
}


//Up Special Pratfall
if (attack == AT_USPECIAL && free && !has_rune("G")){
	if (window == 3 && window_timer > 9 && !special_pressed){
		set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
	}
}


//Up Special Rune Cooldown
if (attack == AT_USPECIAL && has_rune("G")){
	move_cooldown[AT_USPECIAL] = 999;
}


//Special Cooldowns
if (attack == AT_NSPECIAL && !has_rune("L")){
	move_cooldown[AT_NSPECIAL] = 720;
}

if (attack == AT_FSPECIAL && !has_rune("L")){
	move_cooldown[AT_FSPECIAL] = 720;
}

if (attack == AT_DSPECIAL && !has_rune("L")){
	move_cooldown[AT_DSPECIAL] = 720;
}


//Prevent Duplication
if (attack == AT_NSPECIAL){
	move_cooldown[AT_USTRONG] = 160;
	move_cooldown[AT_JAB] = 160;
}

if (attack == AT_FSPECIAL){
	move_cooldown[AT_FSTRONG] = 70;
	move_cooldown[AT_DTILT] = 70;
}

if (attack == AT_DSPECIAL){
	move_cooldown[AT_DSTRONG] = 20;
	move_cooldown[AT_UTILT] = 20;
}







