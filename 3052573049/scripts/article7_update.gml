timer++;

//sparkle vfx if player is close to winning
with (oPlayer) if (variable_instance_exists(self, "mvl_sparkle")) {
	if (mvl_sparkle){
		if (state != PS_DEAD && state != PS_RESPAWN){
		    if (other.timer mod 6 == 0){
		    	var player_spr_dir = spr_dir;
				var player_x = x;
				var player_y = y;
				
				with (other){
					var random_x_range = 60;
					var random_y_range = 60;
							
					var random_x = random_func_2( 1, random_x_range, true ) - random_x_range/2;
					var random_y = random_func_2( 2, random_y_range, true ) - random_y_range/2;
							
					//print("sparkly");
							
					spawn_hit_fx( player_x + (random_x)*player_spr_dir, player_y - 0 + (random_y), obj_stage_main.sparkle_vfx );
				}
		    }
		}
	}
}