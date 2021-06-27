

if (my_hitboxID.attack == AT_DATTACK) {
	var lerpam
	lerpam = [0.5, 0.5]
	

	hit_player_obj.x = lerp(floor(hit_player_obj.x), x+55*spr_dir, lerpam[0])
	hit_player_obj.y = lerp(floor(hit_player_obj.y), y-10, lerpam[1])
	
}

if (my_hitboxID.attack == AT_DAIR) {
	var lerpam
	lerpam = [0.1, 0.1]
	

	hit_player_obj.x = lerp(floor(hit_player_obj.x), x, lerpam[0])
	hit_player_obj.y = lerp(floor(hit_player_obj.y), y+10, lerpam[1])
	
}


if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) {
	
				sound_play(asset_get("sfx_ori_energyhit_medium"))

}
if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2) {
	
				sound_play(asset_get("sfx_ori_energyhit_weak"))

}