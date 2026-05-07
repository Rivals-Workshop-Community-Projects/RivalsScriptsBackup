//animation.gml

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	if (attack == AT_UTILT && window == 2){
		if (char_height < 100){
			char_height += 12;
		}
	} else if (attack == AT_USTRONG && window == 3){
		if (char_height < 100){
			char_height += 12;
		}
	} else if (attack == AT_TAUNT_2 && window > 1){
		char_height = 124;
	} else {
		if char_height > 52{
			char_height -= 8;
		}	
	}
} else if (char_height > 52){
	char_height -= 8;
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