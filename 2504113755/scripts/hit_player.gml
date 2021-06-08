

if (attack == AT_DATTACK) {
	var lerpam
	lerpam = [0.5, 0.5]
	

	hit_player_obj.x = lerp(floor(hit_player_obj.x), x+65*spr_dir, lerpam[0])
	hit_player_obj.y = lerp(floor(hit_player_obj.y), y-15, lerpam[1])
	
}