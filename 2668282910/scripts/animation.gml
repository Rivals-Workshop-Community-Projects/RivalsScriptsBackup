
//

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && char_height > 60){
	char_height -= 5;
}

if (char_height < 60){
	char_height = 60;
}



if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && window == 1 && window_timer == 0){
    clear_button_buffer(PC_ATTACK_PRESSED);
    clear_button_buffer(PC_SPECIAL_PRESSED);
    clear_button_buffer(PC_STRONG_PRESSED);
    clear_button_buffer(PC_DOWN_STICK_PRESSED);
    clear_button_buffer(PC_DOWN_STRONG_PRESSED);
	clear_button_buffer(PC_LEFT_STICK_PRESSED);
    clear_button_buffer(PC_LEFT_STRONG_PRESSED);
    clear_button_buffer(PC_RIGHT_STICK_PRESSED);
    clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
    clear_button_buffer(PC_UP_STICK_PRESSED);
    clear_button_buffer(PC_UP_STRONG_PRESSED);
}