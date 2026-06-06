//
if (attack == AT_NSPECIAL && type == 2 && hbox_num == 2) { //Leak
	miku_leak = true;
	leak_state = 0;
	leak_state_timer = 0;
	should_hfx = false;
	rune_follow = -4;	
	
	break_cooldown = 30;
	was_broken = false;
}