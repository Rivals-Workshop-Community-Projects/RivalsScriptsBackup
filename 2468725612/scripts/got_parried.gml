//got_parried - called when an opponent parries your attack

if ((my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 16) 
|| (my_hitboxID.attack == AT_FSPECIAL_AIR && my_hitboxID.hbox_num == 16)
|| (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2) 
|| (my_hitboxID.attack == AT_DSPECIAL_AIR && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4))
|| (my_hitboxID.attack == AT_USPECIAL)){
    hat_on = false;
}

if (!custom_clone && hologram_is_alive == true){
	if (has_rune("L") || phone_cheats[hologram_immortal] == 1){
		hologram.x = x-50*spr_dir;
		hologram.y = y;
	}
	else {
    	hat = instance_create( hologram.x, hologram.y-80, "obj_article1");
    	hat.state = 4;
		hologram_is_alive = false;
	}
}