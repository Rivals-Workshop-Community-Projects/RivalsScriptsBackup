// Forces phantom to return to youmu when hit
if (phantom.state == 2 || phantom.state == 8 || (phantom.state == 6 && phantom.last_state == 2)) {
	phantom.state = 7;
	phantom.state_timer = 10;
}

// Refresh dash when hit
has_fly = true;
has_usp1_stall = true;