//Got Parried - called when you the oponent parries your hitbox

if my_hitboxID.attack == AT_BAIR{
	set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, 0);
}




if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num ==1{
	my_hitboxID.sprite_index = sprite_get("nspecial_smoke_detonate");
}