// code for kamehameha

if my_hitboxID.attack == AT_NSPECIAL{
	sound_get("sfx_blaster_hit");
}

if (!has_rock && suit_power < 160 && !instance_exists(standby_suit)){
	suit_power += my_hitboxID.damage;
}

if (attack == AT_NSPECIAL_2){
	if (my_hitboxID.hbox_num == 2){
		sound_override = true;
		sound_play(sfx_drill_land);
		sound_play(asset_get("sfx_kragg_rock_shatter"));
	}
}