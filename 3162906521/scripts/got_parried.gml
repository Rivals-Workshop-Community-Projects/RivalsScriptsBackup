//makes it so that the rat goes away on-parry
if my_hitboxID.attack == AT_DSPECIAL{
	my_hitboxID.has_hit = true;
	stupid_rat.death_timer = 900;
	stupid_rat.hsp = 0;
	stupid_rat.vsp = 0;
	rat_alive = false;
}
if my_hitboxID.attack == AT_FSPECIAL{
	boxing_box.tool_state = 10
}
if my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num > 1{
	my_hitboxID.hitbox_timer = 0;
	my_hitboxID.proj_angle = my_hitboxID.proj_angle + 180;
}