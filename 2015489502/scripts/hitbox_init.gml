ottos_hitbox = true;
vsp_prev = 0;
hsp_prev = 0;

if (attack == AT_NSPECIAL){
	var buff = false;
	switch(hbox_num){
		case 1:
		case 3:
		case 5:
			buff = player_id.runeA;
			break;
		case 2:
		case 4:
		case 6:
			buff = player_id.runeB;
			break;
		case 7:
		case 8:
			buff = player_id.runeC;
			break;
	}
	if buff{
		//image_xscale *= 2;
		//image_yscale *= 2;
	}
}