
if(my_hitboxID.attack == AT_NSPECIAL){
	if(my_hitboxID.hbox_num == 1){
		my_hitboxID.destroyed = true;
	}
}

if(my_hitboxID.attack == AT_FSPECIAL){
	if(my_hitboxID.hbox_num <= 7){
		hit_player_obj.should_make_shockwave = false;
	}
}

if(my_hitboxID.attack == AT_DSPECIAL_AIR){
	if(my_hitboxID.hbox_num == 1){
		window = 8;window_timer = 0;
		vsp = -12;old_vsp = -12;destroy_hitboxes();
		upb = false;move_cooldown[AT_USPECIAL] = 0;fspecialcooldown = false;
	}
	
	if(my_hitboxID.hbox_num == 3){
		set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 16);
	}
}

if(my_hitboxID.attack == AT_DTILT){
	my_hitboxID.destroyed = true;
	//sound_play(asset_get("sfx_waterhit_heavy"));
}

if(my_hitboxID.attack == AT_DATTACK){
	sound_play(sound_get("Take Down"));
}

if(my_hitboxID.attack == AT_JAB){
	window_timer = 3;sound_play(sound_get("Bite"));
}

if(my_hitboxID.attack == AT_NAIR){
	if(my_hitboxID.hbox_num == 1){
		sound_play(asset_get("sfx_waterhit_heavy"));
	}else{
		sound_play(asset_get("sfx_waterhit_medium"));
	}
}
if(my_hitboxID.attack == AT_FAIR){
	my_hitboxID.destroyed = true;
	sound_play(sound_get("Bubble Pop"));
}
if(my_hitboxID.attack == AT_DAIR){
	sound_play(sound_get("Iron Tail2"));
}

if(hit_player_obj.should_make_shockwave){
	sound_play(sound_get("Hit Super Effective"));
}