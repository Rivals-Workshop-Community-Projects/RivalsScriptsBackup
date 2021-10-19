///

if attack == AT_EXTRA_3  && hbox_num == 1 {
	
	if !free && vsp >= 0 {
		destroyed = 1 
		sound_play(sound_get("RI"),false,noone,.8,.9)
		sound_play(asset_get("sfx_ori_bash_launch"));
	}
	
}

if attack == AT_EXTRA_3  && hbox_num == 2 {
	
	if !free && vsp >= 0 {
		destroyed = 1 
		sound_play(sound_get("RI2"),false,noone,.8,.9)
		sound_play(asset_get("sfx_ori_glide_end"))
	}
	
}

if attack == AT_EXTRA_3  && hbox_num == 3 {
	
	if !free && vsp >= 0 {
		destroyed = 1 
		sound_play(sound_get("slice"),false,noone,.8,.9)
	    sound_play(asset_get("sfx_ori_glide_featherout"))
	}
	
}


if attack == AT_EXTRA_3  && hbox_num == 4 {
	
	if !free && vsp >= 0 {
		destroyed = 1 
		sound_play(sound_get("slice"),false,noone,.8,.9)
	    sound_play(asset_get("sfx_ori_glide_featherout"))
	}
	
}


if attack == AT_EXTRA_3  && hbox_num == 5 {
	
	if !free && vsp >= 0 {
		destroyed = 1 
		sound_play(sound_get("slicel"),false,noone,.8,.9)
		sound_play(asset_get("sfx_ice_shieldup"))
	}
	
}


if attack == AT_EXTRA_3  && hbox_num == 6 {
	
	if !free && vsp >= 0 {
		destroyed = 1 
			sound_play(sound_get("slicel"),false,noone,.8,.9)
	}
	
}