//cart

if (!init){
	x_orig = x
	if (mode==1){
		sprite_index = sprite_get("cart_big")
		parallax_x = 30/-100
		parallax_y = -25/-100
	}
	if (mode==2){
		sprite_index = sprite_get("cart_small")
		parallax_x = 50/-100
		parallax_y = -30/-100
		state_timer = round(state_timer_max/1.7)
	}
	init = true;
}

if (state_timer<0){ state_timer_adv = 1 }
if (state_timer>state_timer_max){ state_timer_adv = -1 }
state_timer+=state_timer_adv;

x = x_orig+ease_sineInOut( -20, 20, state_timer, state_timer_max )