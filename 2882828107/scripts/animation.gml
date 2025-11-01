//animation.gml

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	if (attack == AT_UTILT && window > 1 && window < 5){
		if (char_height < 100){
			char_height += 12;
		}
	} else if (attack == AT_USTRONG && window == 3){
		if (char_height < 100){
			char_height += 12;
		}
	} else if (attack == 49 && window > 1 && window < 5){
		if (char_height < 140){
			char_height += 4;
		}
	} else {
		if char_height > 52{
			char_height -= 8;
		}	
	}
} else if (char_height > 52){
	char_height -= 8;
}

if (char_height < 52){
	char_height = 52;
}