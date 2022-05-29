//hit_player.gml

var hitmove = my_hitboxID.attack;

if(super_mode == false && super_gauge != gauge_cap) {
	if (hitmove == AT_FSTRONG || hitmove == AT_DSTRONG || hitmove == AT_USTRONG) {
		super_gauge += 5;
	} else if (hitmove == AT_NSPECIAL) {
		super_gauge += 35;
	} else if (hitmove == AT_FSPECIAL) {
		super_gauge += 15;
	} else if (hitmove == AT_DSPECIAL) {
		super_gauge += 15;
	} else if (hitmove == AT_UTILT) {
		super_gauge += 5
	} else if (hitmove == AT_NAIR) {
		super_gauge += 15
	} else if (hitmove == AT_FAIR) {
		super_gauge += 5
	} else if (hitmove == AT_UAIR) {
		super_gauge += 35
	} else if (hitmove == AT_DAIR) {
		super_gauge += 75
	} else {
		super_gauge += 5;
	}
}

if(super_mode == false && super_gauge == gauge_cap && attack == AT_DSTRONG) {
    attack = AT_DSTRONG_2;;
}

if(super_mode == true) {
	hitpause = false;
	can_move = true;
	can_jump = true;
	can_attack = true;
	can_strong = true;
	can_ustrong = true;
	can_special = true;
	can_shield = true;
	can_fast_fall = true;
	can_wall_jump = true;
	if (hitmove == AT_FSTRONG || hitmove == AT_DSTRONG || hitmove == AT_USTRONG) {
		super_gauge -= 20;
	} else if (hitmove == AT_USPECIAL) {
		super_gauge -= 5;
	} else {
		super_gauge -= 10;
	}
}
