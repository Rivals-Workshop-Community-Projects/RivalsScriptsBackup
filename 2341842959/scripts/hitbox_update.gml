
/*
if (attack == AT_FSPECIAL){
	if (hbox_num == 1){
		proj_angle = 270*player_id.fspecial_dir;
	}
	if (hbox_num == 2){
		proj_angle = 315*player_id.fspecial_dir;
	}
	if (hbox_num == 3){
		proj_angle = 0;
	}
	if (hbox_num == 4){
		proj_angle = 45*player_id.fspecial_dir;
	}
	if (hbox_num == 5){
		proj_angle = 90*player_id.fspecial_dir;
	}
	if (!free){
		destroyed = true;
	}
	if (hbox_num != 1 && hbox_num != 5 && hsp == 0){
		destroyed = true;
	}
}
