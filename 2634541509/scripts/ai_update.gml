if(attack == AT_FSPECIAL && window == 2 && state != PS_AIR_DODGE && state != PS_PARRY && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
	window = 3;
	window_timer = 0;
	car_amount = 1;
}