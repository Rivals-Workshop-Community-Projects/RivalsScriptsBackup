//set_attack
if (attack == AT_DAIR){ 
	if !(has_rune("C")){
		hover_used = true;
		hover_pratfall = true;
		hover_store_jump = djumps;
		djumps = max_djumps;
	}
}

if (attack == AT_DSTRONG){
    with oPlayer if id != other.id && split_grabbed1 == other.id {
		split_grabbed1 = false;
    }
	with oPlayer if id != other.id && split_grabbed2 == other.id {
		split_grabbed2 = false;
    }
}

if (attack == AT_TAUNT){
	if (down_down){
		attack = AT_TAUNT_2;
	} else if (up_down){
		attack = AT_EXTRA_2;
	}
}

if (has_rune("A")){
	if (attack == AT_NAIR){
		attack = AT_FTILT;
	}
}