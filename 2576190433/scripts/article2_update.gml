if get_gameplay_time() < 3 exit;

var xsc = obj_stage_main.sides_inverted ? -1 : 1;

switch(plat_type){
	case 0:
		switch(xsc){
			case 1:
				image_xscale = (obj_stage_main.barrier_pos - obj_stage_main.left_limit) * 2;
				break;
			case -1:
				image_xscale = (obj_stage_main.barrier_pos - obj_stage_main.right_limit) * 2;
				break;
		}
		break;
	case 1:
		image_xscale = -96 * xsc;
		break;
}

x = get_marker_x(1 + obj_stage_main.sides_inverted);
y = get_marker_y(1);
image_xscale += 4 * sign(image_xscale);