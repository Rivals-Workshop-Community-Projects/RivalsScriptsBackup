//set_attack

if attack == AT_NSPECIAL set_state(PS_IDLE);

//if special_down && !attack_down set_state(PS_IDLE);
if (special_down && attack_down) {
	/*move_cooldown[AT_DSPECIAL] = 0;
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_USPECIAL] = 0;*/
	var next_spec = 0;
	if (left_down || right_down) && fspec_cooldown == 0 next_spec = AT_FSPECIAL;
	if up_down && uspec_cooldown == 0 next_spec = AT_USPECIAL;
	if down_down next_spec = AT_DSPECIAL;
	if next_spec != 0 {
		window = 1;
		window_timer = 0;
		//state_timer = 0;
		attack = next_spec;
		if free state = 6; else state = 5;
	}
}