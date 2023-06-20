// got_parried
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 && my_hitboxID.player == player){
	var angle3 = point_direction(my_hitboxID.x, my_hitboxID.y, x, y - 40);
	my_hitboxID.hsp = lengthdir_x(-26, angle3);
    my_hitboxID.vsp = lengthdir_y(-26, angle3);
	my_hitboxID.transcendent = true;my_hitboxID.damage *= 2;
	my_hitboxID.hitbox_timer = 0;
}

if (my_hitboxID.attack == AT_DSPECIAL){
	if(my_hitboxID.hbox_num == 1){
        my_hitboxID.egg_pawn.hp = 0;
	}else if(my_hitboxID.hbox_num == 3){
        //var angle3 = point_direction(my_hitboxID.x, my_hitboxID.y, x, y - 40);
		//my_hitboxID.hsp = lengthdir_x(-26, angle3);
	    //my_hitboxID.vsp = lengthdir_y(-26, angle3);
	    my_hitboxID.hsp *= 3;my_hitboxID.vsp *= 3;
		my_hitboxID.transcendent = true;my_hitboxID.damage *= 3;
		my_hitboxID.hitbox_timer = 0;
		my_hitboxID.hitstun_factor = 1;
	}
}