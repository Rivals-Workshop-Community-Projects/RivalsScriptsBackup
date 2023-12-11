//This isn't for a voice but it will make ai use longer jabs

aiplaceholder = random_func( 0, 4, true)

if (attack == AT_JAB && state == PS_ATTACK_GROUND) {
	right_down = false;
	left_down = false;
	up_down = false;
	down_down = false;
	if (window == 3 && window_timer == 7 && aiplaceholder > 0) {
		attack_pressed = true;
	}
	if (window == 6 && window_timer == 5 && aiplaceholder > 1) {
		attack_pressed = true;
	}
}
