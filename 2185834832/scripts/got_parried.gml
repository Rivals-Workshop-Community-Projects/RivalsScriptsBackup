if(attack == AT_FSTRONG){
    window = 3
    window_timer = 20
}

if(waterCharges > 0){
waterCharges -= 1
}

if(my_hitboxID.attack == AT_DSPECIAL){
    if(my_hitboxID.hbox_num == 6 || my_hitboxID.hbox_num == 1){
        saw_blade.state = 5
        saw_blade.state_timer = 0
        saw_blade.image_index = 0
        with(saw_blade){
            sound_play(asset_get("sfx_dizzy"))
            sound_play(asset_get("sfx_waterwarp_start"))
        }
        if(distance_to_object(saw_blade) < 100){
            set_state(PS_PRATLAND);
	    	was_parried = true;
	    	parry_lag = 60
        }
    }
}
