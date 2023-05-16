//This isn't for a voice but it will make ai use longer jabs

aiplaceholder = random_func( 0, 4, true)

if (attack == AT_JAB) {
	if (window == 3 && window_timer == 7 && aiplaceholder > 0) {
		window = 4;
		window_timer = 0;
	}
	if (window == 6 && window_timer == 5 && aiplaceholder > 1) {
		window = 7;
		window_timer = 0;
	}
}
