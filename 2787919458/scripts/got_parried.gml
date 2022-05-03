//Credit to FelixBlobDev
if (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 2) || my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1{
	var angle3 = point_direction(my_hitboxID.x, my_hitboxID.y, x, y - 30);
	my_hitboxID.hsp = lengthdir_x(-24, angle3);
    my_hitboxID.vsp = lengthdir_y(-24, angle3);
	my_hitboxID.transcendent = true;my_hitboxID.damage *= 2;
	if(my_hitboxID.attack == AT_NSPECIAL){
	    if(my_hitboxID.dorito_hp != 3){
	        my_hitboxID.dorito_hp++;
	    }
	}
}

if (my_hitboxID.attack == AT_DATTACK && hit_player_obj != self){
	my_hitboxID.destroyed = true;
}