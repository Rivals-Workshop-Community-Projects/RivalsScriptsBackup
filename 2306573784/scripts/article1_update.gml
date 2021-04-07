//
/*
if active == 0 and is_aether_stage(){
	//x = get_marker_x(23);
	//y = get_marker_y(23);
	sprite_index = asset_get("empty_sprite");
}
if is_aether_stage() and active == 1{
	print_debug("Active 1");
	sprite_index = sprite_get("platform");
	switch(type){
		case 0:	// Guts Man
			var max_speed = 2;
			
			
			var xx;
			var yy;
			if current_marker != -1 {
				xx = get_marker_x(marker[current_marker])
				yy = get_marker_y(marker[current_marker])
				//print_debug(string(current_marker));
				if current_marker == 0 or current_marker == 2 or current_marker == 4{
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
				current_marker = (current_marker+1) mod total_markers_guts;
			}
			break;
		case 1:	// Moving Plat
			var max_speed = 1;
			
			
			var xx;
			var yy;
			if current_marker != -1 {
				xx = get_marker_x(marker[current_marker])
				yy = get_marker_y(marker[current_marker])
				//print_debug(string(current_marker));
				vsp = clamp((yy - y), -max_speed, max_speed);
			} else {
				xx = x;
				yy = y;
			}
			
			if abs(x - xx) < 10 or abs(y - yy) < 10{
				current_marker = (current_marker+1) mod total_markers_plat;
			}
			break;
		case 2:	//
			x = get_marker_x(marker[8]);
			y = get_marker_y(marker[8]);
	}
}
*/

if is_aether_stage(){
	var max_speed = 1;
	
	
	var xx;
	var yy;
	if current_marker != -1 {
		xx = get_marker_x(marker[current_marker]);
		yy = get_marker_y(marker[current_marker]);
		//print_debug(string(current_marker));
		if current_marker == 0 or current_marker == 2 or current_marker == 4{
			hsp = clamp((xx - x), -max_speed, max_speed);
			vsp = 0;
		} else {
			vsp = clamp((yy - y), -max_speed, max_speed);
			hsp = 0;
		}
	} else {
		xx = x;
		yy = y;
	}
	
	if abs(x - xx) < 10 or abs(y - yy) < 10{
		current_marker = (current_marker+1) mod total_markers_guts;
	}
}

sprite_index = sprite_get("platform");