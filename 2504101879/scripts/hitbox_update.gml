//hitbox_update
if (attack == AT_UTILT && hbox_num == 1) {
    damage = 7+player_id.babyfollowingcount*2;
    x = player_id.temp_x;
	y = player_id.temp_y;
}

if (attack == AT_BAIR && hbox_num == 1) {
    damage = 7+player_id.babyfollowingcount*2;
    x = player_id.temp_x;
	y = player_id.temp_y;
}

if (attack == AT_USPECIAL) {
	if (hbox_num == 1) {
	    x = floor(player_id.x + dcos(player_id.udir)*80);
		y = floor(player_id.y - dsin(player_id.udir)*80);
	}
	if (hbox_num == 2) {
    //x = owner.x;
	//y = owner.y-100;
	}
}