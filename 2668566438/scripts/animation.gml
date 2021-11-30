// make the nametag go higher while ustrong's fist is raised
if phone_attacking && attack == AT_USTRONG {
	if window > 1 && window < 4{
		hud_offset = lerp(hud_offset, 80, 0.5);
	}
}
if phone_attacking && attack == AT_DSTRONG{
	if window > 2{
		hud_offset = lerp(hud_offset, -40, 0.5);
	}else{
		hud_offset = lerp(hud_offset, -20, 0.5);		
	}
}
if(floating && phone_attacking){
	switch(attack){
		case AT_BAIR:
			sprite_index = sprite_get("bair_hover");
		break;
		case AT_DSPECIAL:
			sprite_index = sprite_get("dspecial_hover");
		break;
		case AT_TAUNT_2:
			sprite_index = sprite_get("dtaunt_hover");
		break;
		case AT_FAIR:
			sprite_index = sprite_get("fair_hover");
		break;
		case AT_FSTRONG:
			sprite_index = sprite_get("fstrong_hover");
		break;
		case AT_NAIR:
			sprite_index = sprite_get("nair_hover");
		break;
		case AT_USTRONG:
			sprite_index = sprite_get("ustrong_hover");
		break;
	}
}
if(state == PS_CROUCH || phone_attacking && attack == AT_DTILT){
	hud_offset = lerp(hud_offset, -40, 0.5);
}
if phone_attacking && attack == AT_FSTRONG{
	if window >= 2{
		hud_offset = lerp(hud_offset, -60, 0.5);
	}
}
// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}
if(floating && !phone_attacking){
	sprite_index = sprite_get("hover");
	image_index = floor(image_number*state_timer/(image_number/walk_anim_speed));
}