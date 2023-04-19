// make the nametag go higher while ustrong's chomp is raised
if state == PS_ATTACK_GROUND && attack == AT_USTRONG && window > 2 && !(window == 4 && window_timer > 20 / 3){
	hud_offset = lerp(hud_offset, 232, 0.5);
}
if state == PS_ATTACK_AIR && attack == AT_DAIR && window == 1 && !(window >= 2){
	hud_offset = lerp(hud_offset, 64, 0.5);
}
if state == PS_ATTACK_GROUND && attack == AT_UTILT && window > 1 && !(window == 3 && window_timer > 20 / 2){
	hud_offset = lerp(hud_offset, 80, 0.5);
}
if state == PS_ATTACK_AIR && attack == AT_USPECIAL{
	hud_offset = lerp(hud_offset, 32, 0.5);
}

// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}