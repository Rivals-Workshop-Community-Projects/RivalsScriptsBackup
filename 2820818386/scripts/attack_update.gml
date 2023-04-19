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


//Fair Slow Fall On Hit
if (old_vsp > 0 && attack == AT_FAIR && has_hit){
	old_vsp = 0;
}


//Nair Slow Fall On Hit
if (old_vsp > 0 && attack == AT_NAIR && has_hit){
	old_vsp = 1;
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










