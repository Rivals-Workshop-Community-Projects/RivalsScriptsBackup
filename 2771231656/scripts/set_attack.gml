
if (attack == AT_DSPECIAL && free == true){
    attack = AT_DSPECIAL_AIR;
}

if (attack == AT_FSPECIAL && free == true){
    attack = AT_FSPECIAL_AIR;
}

if (attack == AT_NSPECIAL && free == true){
    attack = AT_NSPECIAL_AIR;
}

if (attack == AT_FSTRONG && use_sword == true){
    set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 5);
    set_attack_value(AT_FSTRONG , AG_NUM_WINDOWS, 8);
	window = 5;
	window_timer = 0;
}

if (attack == AT_FSTRONG && no_sword == true){
    set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
    set_attack_value(AT_FSTRONG , AG_NUM_WINDOWS, 4);
}

if (attack == AT_USTRONG && use_sword == true){
    set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 5);
    set_attack_value(AT_USTRONG , AG_NUM_WINDOWS, 8);
	window = 5;
	window_timer = 0;
}

if (attack == AT_USTRONG && no_sword == true){
    set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
    set_attack_value(AT_USTRONG , AG_NUM_WINDOWS, 4);
}

if (attack == AT_DSTRONG && use_sword == true){
    set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 5);
    set_attack_value(AT_DSTRONG , AG_NUM_WINDOWS, 8);
	window = 5;
	window_timer = 0;
}

if (attack == AT_DSTRONG && no_sword == true){
    set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
    set_attack_value(AT_DSTRONG , AG_NUM_WINDOWS, 4);
}

if (attack == AT_TAUNT && use_sword == true && down_down == false){
attack = AT_EXTRA_1;
}

if (attack == AT_TAUNT && down_down == true){
attack = AT_TAUNT_2;
}

if (attack == AT_JAB && use_sword == true){
    set_attack_value(AT_JAB , AG_NUM_WINDOWS, 6);
	window = 4;
	window_timer = 0;
}

if (attack == AT_JAB && no_sword == true){
    set_attack_value(AT_JAB , AG_NUM_WINDOWS, 3);
}

if (attack == AT_DSPECIAL && use_sword == true){
    set_attack_value(AT_DSPECIAL , AG_NUM_WINDOWS, 7);
	set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 0);
	window = 5;
	window_timer = 0;
}

if (attack == AT_DSPECIAL && no_sword == true){
    set_attack_value(AT_DSPECIAL , AG_NUM_WINDOWS, 4);
	set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
}

if (attack == AT_DAIR && use_sword == true){
    set_attack_value(AT_DAIR , AG_NUM_WINDOWS, 6);
	set_attack_value(AT_DAIR, AG_LANDING_LAG, 14);
	window = 4;
	window_timer = 0;
}

if (attack == AT_DAIR && no_sword == true){
    set_attack_value(AT_DAIR , AG_NUM_WINDOWS, 3);
	set_attack_value(AT_DAIR, AG_LANDING_LAG, 9);
}

if (attack == AT_FAIR && use_sword == true){
    set_attack_value(AT_FAIR , AG_NUM_WINDOWS, 8);
	set_attack_value(AT_FAIR, AG_LANDING_LAG, 11);
	window = 6;
	window_timer = 0;
}

if (attack == AT_FAIR && no_sword == true){
    set_attack_value(AT_FAIR , AG_NUM_WINDOWS, 5);
	set_attack_value(AT_FAIR, AG_LANDING_LAG, 7);
}

if (attack == AT_BAIR && use_sword == true){
    set_attack_value(AT_BAIR , AG_NUM_WINDOWS, 6);
	set_attack_value(AT_BAIR, AG_LANDING_LAG, 10);
	window = 4;
	window_timer = 0;
}

if (attack == AT_BAIR && no_sword == true){
    set_attack_value(AT_BAIR , AG_NUM_WINDOWS, 3);
	set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
}

if (attack == AT_NAIR && use_sword == true){
    set_attack_value(AT_NAIR , AG_NUM_WINDOWS, 6);
	window = 4;
	window_timer = 0;
}

if (attack == AT_NAIR && no_sword == true){
    set_attack_value(AT_NAIR , AG_NUM_WINDOWS, 3);
}

if (attack == AT_UAIR && use_sword == true){
    set_attack_value(AT_UAIR , AG_NUM_WINDOWS, 6);
	set_attack_value(AT_UAIR, AG_LANDING_LAG, 12);
	window = 4;
	window_timer = 0;
}

if (attack == AT_UAIR && no_sword == true){
    set_attack_value(AT_UAIR , AG_NUM_WINDOWS, 3);
	set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
}