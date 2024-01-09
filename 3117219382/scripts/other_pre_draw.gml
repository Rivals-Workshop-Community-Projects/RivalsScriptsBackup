
if(activated_kill_effect and trail_kill_effect_source == other_player_id){
	var i = 0;
	var t = 0.2
	repeat(8){
		colorO[i*4] = other_player_id.gold_profile[0]/256;
		colorO[i*4 + 1] = other_player_id.gold_profile[1]/256;
		colorO[i*4 + 2] = other_player_id.gold_profile[2]/256;
		
		// static_colorO[i*4 + 0] = 247/256;
		// static_colorO[i*4 + 1] = 220/256;
		// static_colorO[i*4 + 2] = 65/256;
		
		colorB[i*4] = 0.4;
		colorB[i*4 + 1] = 0.4;
		colorB[i*4 + 2] = 0.4;
		
		// static_colorB[i*4 + 0] = 0.2;
		// static_colorB[i*4 + 1] = 0.2;
		// static_colorB[i*4 + 2] = 0.2;
		i++;
	}
	
	colorO[32] = other_player_id.gold_profile_out[0]/256;
	colorO[33] = other_player_id.gold_profile_out[1]/256;
	colorO[34] = other_player_id.gold_profile_out[2]/256;
	
	// static_colorO[8*4 + 0] = 227/256;
	// static_colorO[8*4 + 1] = 147/256;
	// static_colorO[8*4 + 2] = 20/256;
}

// non
// 250, 219, 92
// 223, 145, 28

// color mapped
// 238, 108, 182
// 212, 34, 169