//
/*
if is_aether_stage() and active2 == 0{
	x = get_marker_x(24);
	y = get_marker_y(24);
}

if is_aether_stage() and active2 == 1{
	print_debug("Active 1");
	sprite_index = sprite_get("platform");
	switch(type2){
		case 0:	// Guts Man
			var max_speed = 1;
			
			
			var xx;
			var yy;
			if current_marker2 != -1 {
				xx = get_marker_x(marker2[current_marker2])
				yy = get_marker_y(marker2[current_marker2])
				//print_debug(string(current_marker));
				if current_marker2 == 0 or current_marker2 == 2 or current_marker2 == 4{
					hsp = clamp((xx - x), -max_speed, max_speed)
					vsp = 0;
				} else {
					vsp = clamp((yy - y), -max_speed, max_speed)
					hsp = 0;
				}
			} else {
				xx = x;
				yy = y;
			}
			
			if abs(x - xx) < 10 or abs(y - yy) < 10{
				current_marker2 = (current_marker2+1) mod total_markers_guts2;
			}
			break;
		case 1:	// Moving Plat
			var max_speed = 1;
			
			
			var xx;
			var yy;
			if current_marker != -1 {
				xx = get_marker_x(marker2[current_marker2])
				yy = get_marker_y(marker2[current_marker2])
				//print_debug(string(current_marker));
				vsp = clamp((yy - y), -max_speed, max_speed);
			} else {
				xx = x;
				yy = y;
			}
			
			if abs(x - xx) < 10 or abs(y - yy) < 10{
				current_marker2 = (current_marker2+1) mod total_markers_plat2;
			}
			break;
		case 2:	//
			x = get_marker_x(marker2[8]);
			y = get_marker_y(marker2[8]);
	}
}
*/
sprite_index = sprite_get("platform");


if is_aether_stage(){
		var max_speed = 1;
		
		var yy;
		if current_marker2 != -1 {
			yy = get_marker_y(marker2[current_marker2]);
			//print_debug(string(current_marker));
			vsp = clamp((yy - y), -max_speed, max_speed);
		} else {
			yy = y;
		}
		
		if abs(y - yy) < 10{
			wait_timer--;
			if wait_timer <= 0 {
				wait_timer = wait_timer_max;
				current_marker2 = (current_marker2+1) mod total_markers_plat2;
			}
		}
}
