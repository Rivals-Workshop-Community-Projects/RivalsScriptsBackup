//ai_update

if ai_recovering{
	if state == PS_ATTACK_AIR && attack == AT_USPECIAL{
		if !(window == 5 && window_timer == 19){
			jump_pressed = true;
			jump_down = true;
		}
	}
}