// if (destroyed == false){
	with (oPlayer){
		if (id != other.player_id){ // with (opponent)
			var dist = distance_to_point(other.player_id.wall_x, other.player_id.wall_y);
			// print_debug("dist " + string(dist));
			if (dist < 48){ // other idea (from VVizard) to check if enemy is close to the block: make extra sprite for collision check, and sprite invisible
				with (other) {
					//spawn_hit_fx
					destroyed = true;
					instance_destroy();
					exit;
				}
			} else if(dist > 47 && dist < 96){
				// set sprite to "what the heck"-face, eyes looking at the opponent like Gatekeeper (pre_draw??)
			}
		}
	}
// }

lifespan--;
if (lifespan < 1){
	destroyed = true;
	instance_destroy();
	exit;
}