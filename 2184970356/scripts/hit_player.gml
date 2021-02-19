//hit_player 


if (attack == AT_FAIR){
// Fairywind AKA pushes the opponent the same direction as Snom like a windbox
	if (spr_dir == -1){
		other.hsp = -8;
		other.vsp = -5;
	}
	if (spr_dir == 1){
		other.hsp = 8;
		other.vsp = -5;
	}
	if (other.free){
		other.state = PS_TUMBLE;
	}
}

if (attack == AT_BAIR){
// Fairywind AKA pushes the opponent the same direction as Snom like a windbox
	if (spr_dir == -1){
		other.hsp = 8;
		other.vsp = -5;
	}
	if (spr_dir == 1){
		other.hsp = -8;
		other.vsp = -5;
	}
	if (other.free){
		other.state = PS_TUMBLE;
	}
}