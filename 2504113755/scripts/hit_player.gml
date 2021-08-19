

if (my_hitboxID.attack == AT_DATTACK) {
	var lerpam
	lerpam = [0.6, 0.6]
	

	hit_player_obj.x = lerp(floor(hit_player_obj.x), x+50*spr_dir, lerpam[0])
	hit_player_obj.y = lerp(floor(hit_player_obj.y), y-2, lerpam[1])
	
}

if (my_hitboxID.attack == AT_DAIR) {
	var lerpam
	lerpam = [0.25, 0.25]
	

	hit_player_obj.x = lerp(floor(hit_player_obj.x), x + hsp, lerpam[0])
	hit_player_obj.y = lerp(floor(hit_player_obj.y), y+10 + vsp, lerpam[1])
	
}


if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) {
	
				sound_play(asset_get("sfx_ori_energyhit_medium"))

}
else if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2) {
	
				sound_play(asset_get("sfx_ori_energyhit_weak"))

}
else if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1) {
	
				sound_play(asset_get("sfx_ori_energyhit_medium"))

}
else if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 2) {
	
				sound_play(asset_get("sfx_ori_energyhit_weak"))

}
/*
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num != 6) {
	
	
	hit_player_obj.should_make_shockwave = false
}