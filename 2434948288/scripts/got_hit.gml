if (	(guitar.state == 2 && guitar.state_timer < 20) || // fspec
		(guitar.state == 4 && guitar.state_timer < 10)) // dair
	guitar.newState = 0;