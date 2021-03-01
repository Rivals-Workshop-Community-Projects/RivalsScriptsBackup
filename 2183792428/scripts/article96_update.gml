//
var max_speed = 1;


var xx;
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

if hsp != 0 {
	anim_speed = 0.1;
} else {
	anim_speed = 0;
}

image_index = (image_index + anim_speed) mod image_number;
