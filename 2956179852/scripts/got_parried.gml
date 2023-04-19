if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num > 1 || my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 2){
	var angle3 = point_direction(my_hitboxID.x, my_hitboxID.y, x, y - 30);
	my_hitboxID.hsp = lengthdir_x(-24, angle3);
    my_hitboxID.vsp = lengthdir_y(-24, angle3);
	my_hitboxID.transcendent = true;my_hitboxID.damage *= 2;
}
if (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 1){
	my_hitboxID.hitbox_timer = 0;my_hitboxID.hsp *= 0.5;my_hitboxID.hitpause = 2;
}
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num > 1 || my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 2){
	my_hitboxID.hitbox_timer = 0;
}