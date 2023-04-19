if (attack == AT_TAUNT && down_down){
    attack = AT_TAUNT_2;
}

if (attack == AT_DSTRONG){
    with oPlayer if id != other.id && split_grabbed1 == other.id {
		split_grabbed1 = false;
    }
	with oPlayer if id != other.id && split_grabbed2 == other.id {
		split_grabbed2 = false;
    }
}