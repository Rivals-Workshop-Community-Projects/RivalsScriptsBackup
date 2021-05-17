//got_parried - called when an opponent parries your attack

if (move_cooldown[AT_NSPECIAL] > 0){
	move_cooldown[AT_NSPECIAL] = 300;
}

strong_max = false;
strong_max_cont = 0;
shadow_clone.clone_cooldown = true;
shadow_clone.shoulddie = true;

