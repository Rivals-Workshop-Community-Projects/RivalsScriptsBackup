//animation.gml
if (attack == AT_UTILT && window == 2){
	hud_offset = lerp(hud_offset, 80, 0.5);
}
if (attack == AT_USTRONG && window == 3){
	hud_offset = lerp(hud_offset, 100, 0.5);
}
if (attack == AT_TAUNT_2 && window > 1){
	hud_offset = 100;
}

if abs(hud_offset) < 1{
	hud_offset = 0;
}

//wait animations
if (state == PS_IDLE) && (state_timer == 400){
	wait_what = random_func(1, 2, true);
}
if (wait_what == 0){
	wait_sprite = sprite_get("wait");
}
if (wait_what == 1){
	wait_sprite = sprite_get("wait2");
}