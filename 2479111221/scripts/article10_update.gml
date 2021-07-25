//
var max_speed = 1;

var xx;
if obj_stage_main.platform_select != 0{
	overridden = true;
} else {
	overridden = false;
}

if !is_aether_stage() or !overridden{
	if current_marker != -1 {
		xx = get_marker_x(marker[current_marker])
		hsp = clamp((xx - x), -max_speed, max_speed)
	} else {
		xx = x;
	}
	
	if abs(x - xx) < 10 {
		wait_timer--;
		if wait_timer <= 0 {
			wait_timer = wait_timer_max;
			current_marker = (current_marker+1) mod total_markers;
		}
	}
}

if overridden{
	current_marker = -1;
	wait_timer = 0;
	hsp = 0;
	switch(obj_stage_main.platform_select){
		case 1:	// left
			x = get_marker_x(1);
			break;
		case 2:	// left center
			x = get_marker_x(5);
			break;
		case 3:	// center
			x = get_marker_x(4);
			break;
		case 4:	// right center
			x = get_marker_x(6);
			break;
		case 5:	// right
			x = get_marker_x(2);
			break;
	}
}