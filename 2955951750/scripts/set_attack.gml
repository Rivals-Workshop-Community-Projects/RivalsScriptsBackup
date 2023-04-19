//set_attack.gml

if (attack == AT_USPECIAL || attack == AT_USPECIAL_2){
    uspecial_target = noone;
}

if (attack == AT_FSPECIAL){
    //set initial kick angle
    fspec_angle = -90 * (spr_dir - 1);
    if(player_field_vars.in_field){
    	var ang_targ = point_direction(x, y, player_field_vars.field_obj.stuck_player.x, player_field_vars.field_obj.stuck_player.y);
		var diff = angle_difference(ang_targ, fspec_angle);
    	if(abs(diff) <= fspec_angle_limit){
    		fspec_angle = ang_targ;
    	}
    }
    //fspec_angle = (player_field_vars.in_field ? point_direction(x, y, player_field_vars.field_obj.stuck_player.x, player_field_vars.field_obj.stuck_player.y) :
	//						(-90 * (spr_dir - 1)));
}

if (attack == AT_NSPECIAL && player_field_vars.in_field == true){
	attack = AT_NSPECIAL_2; //nspecial_2 is the boosted variant; logic called in attack_update
}

if (attack == AT_USPECIAL && player_field_vars.in_field == true){
	attack = AT_USPECIAL_2;
}