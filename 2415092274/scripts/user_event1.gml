//copied from hit_player

if (fake_mhID!=-4){
	var my_hitboxID = fake_mhID;
	var hit_player_obj = fake_hpo;
	fake_mhID = -4;
	fake_hpo = -4;
}

with(my_hitboxID.player_id){
if (my_hitboxID.attack==AT_UTILT){
	if (my_hitboxID.hbox_num==5){
		sound_play(asset_get("sfx_holy_lightning"));
	}
}
if (my_hitboxID.attack==AT_JAB){
	if (my_hitboxID.hbox_num==6){
		sound_play(sound_get("ARSlash"));
	}
}
if (my_hitboxID.attack==AT_FAIR){
	if (my_hitboxID.hbox_num==1){
		sound_play(sound_get("ARSlash"),false,-4,1,0.8);
	}
	if (my_hitboxID.hbox_num==2){
		sound_play(asset_get("sfx_blow_medium2"));
	}
}
if (my_hitboxID.attack==AT_USTRONG){
	if (my_hitboxID.hbox_num==1){
		sound_play(asset_get("sfx_swipe_medium2"));
	}
}
if (my_hitboxID.attack==AT_UAIR){
	if (my_hitboxID.hbox_num!=3){
		sound_play(asset_get("sfx_blow_heavy2"),false,-4,1,1.15);
	}else{
		sound_play(asset_get("sfx_holy_lightning"),false,-4,1,1.2);
	}
}
if (my_hitboxID.attack==AT_DAIR){
	if (my_hitboxID.hbox_num==4){
		sound_play(asset_get("sfx_blow_heavy1"),false,-4,1,1.3);
	}
}
if (my_hitboxID.attack==AT_BAIR){
	if (my_hitboxID.hbox_num==2){
		sound_play(asset_get("sfx_blow_heavy2"),false,-4,1,1.15);
	}
}
if (my_hitboxID.attack==AT_NAIR){
	if (my_hitboxID.hbox_num==2){
		old_vsp = clamp(((hit_player_obj.old_vsp)*1.03),-12,0)
		window = 4;
		var tmp_dur = get_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH);
		window_timer = round(tmp_dur/2);
		sound_play(asset_get("sfx_blow_medium2"),false,-4,1,0.9);
		destroy_hitboxes();
	}else{
		sound_play(asset_get("sfx_blow_medium1"));
	}
}

if (my_hitboxID.attack==AT_USPECIAL){
	if (my_hitboxID.hbox_num==2||my_hitboxID.hbox_num==3){
		sound_play(sound_get("ARSlash"),false,-4,1,1.1);
	}
	if (my_hitboxID.hbox_num==5||my_hitboxID.hbox_num==5){
		sound_play(sound_get("ARSlash"),false,-4,1,0.8);
	}
}

if (my_hitboxID.attack==AT_JAB || my_hitboxID.attack==AT_FTILT || my_hitboxID.attack==AT_UTILT ||
	my_hitboxID.attack==AT_DTILT || my_hitboxID.attack==AT_DATTACK ||
	my_hitboxID.attack==AT_NAIR || my_hitboxID.attack==AT_FAIR || my_hitboxID.attack==AT_BAIR || 
	my_hitboxID.attack==AT_UAIR || my_hitboxID.attack==AT_DAIR) {
	dsp_qualified = true;
}
}


