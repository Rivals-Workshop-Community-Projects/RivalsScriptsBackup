//animation.gml
if (attack == AT_UTILT && window == 2){
	hud_offset = lerp(hud_offset, 80, 0.5);
}

if (attack == AT_USTRONG && window == 3){
	hud_offset = lerp(hud_offset, 100, 0.5);
}

if (attack == AT_NSPECIAL && window == 4){
	hud_offset = lerp(hud_offset, 80, 0.5);
}

if (attack == AT_TAUNT && window == 3){
	hud_offset = lerp(hud_offset, 50, 0.5);
}

if abs(hud_offset) < 1{
	hud_offset = 0;
}