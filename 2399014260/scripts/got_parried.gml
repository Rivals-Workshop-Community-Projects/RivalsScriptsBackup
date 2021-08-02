if my_hitboxID.attack == AT_FSPECIAL{
	my_hitboxID.hitbox_timer = 0;
	my_hitboxID.hsp = 30 * my_hitboxID.spr_dir;
}

if my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_FSPECIAL_AIR{
	phone_arrow_cooldown = 180;
}