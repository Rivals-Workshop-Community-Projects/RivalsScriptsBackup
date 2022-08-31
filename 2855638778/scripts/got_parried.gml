// the ultimate skill solution of rivals of aether

// can't escape parry stun while using dtilt
if (my_hitboxID.attack = AT_DTILT) {
	
	
	window = 3;
	window_timer = 0;
}

// destroys rockets if they are parried
if (my_hitboxID.attack = AT_FSPECIAL || my_hitboxID.attack = AT_DSTRONG) {
	
	my_hitboxID.destroyed = true;
}

