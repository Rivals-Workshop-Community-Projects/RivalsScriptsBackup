//
time--;
switch(mode) {
	case 0://going in from sides
		if time <= 0 {mode = 1; time = maxtime}
		if(version = 0){
			destx += max(((get_marker_x(1)-80)-x)*0.1, -2);
			desty += max((get_marker_y(1)-y)*0.1, -1);
		}
		else{
			destx += min(((get_marker_x(2)-80)-x)*0.1, 2);
			desty += max((get_marker_y(2)-y)*0.1, -1);
		}
	break;
	case 1://come together
		if time <= 0 {mode = 2; time = maxtime}
		if(version = 0){
			destx += min(((get_marker_x(3)-80)-x)*0.1, 1);
			desty += max((get_marker_y(3)-y)*0.1, -0.2);
		}
		else{
			destx += max(((get_marker_x(4)-80)-x)*0.1, -1);
			desty += max((get_marker_y(4)-y)*0.1, -0.2);
		}
	break;
	case 2://off the side left, slanted
		if time <= 0 {mode = 3; time = maxtime}
		if(version = 0){
			destx += max(((get_marker_x(5)-80)-x)*0.1, -1);
			desty += min((get_marker_y(5)-y)*0.1, 0.3);
		}
		else{
			destx += max(((get_marker_x(6)-80)-x)*0.1, -1.1);
			desty += max((get_marker_y(6)-y)*0.1, -0.5);
		}
	break;
	case 3://move to the right
		if time <= 0 {mode = 4; time = maxtime}
		if(version = 0){
			destx += min(((get_marker_x(7)-80)-x)*0.1, 1);
			desty += max((get_marker_y(7)-y)*0.1, -0.4);
		}
		else{
			destx += min(((get_marker_x(8)-80)-x)*0.1, 1.2);
			desty += max((get_marker_y(8)-y)*0.1, -0.4);
		}
	break;
	case 4://separate
		if time <= 0 {mode = 5; time = maxtime}
		if(version = 0){
			destx += max(((get_marker_x(9)-80)-x)*0.1, -1);
			desty += max((get_marker_y(9)-y)*0.1, -0.6);
		}
		else{
			destx += max(((get_marker_x(10)-80)-x)*0.1, -0.8);
			desty += min((get_marker_y(10)-y)*0.1, 0.8);
		}
	break;
	case 5://back to start
		if time <= 0 {mode = 1; time = maxtime}
		if(version = 0){
			destx += max(((get_marker_x(1)-80)-x)*0.1, -0.7);
			desty += min((get_marker_y(1)-y)*0.1, 0.5);
		}
		else{
			destx += min(((get_marker_x(2)-80)-x)*0.1, 1.3);
			desty += max((get_marker_y(2)-y)*0.1, -0.6);
		}
	break;
	
}

vsp = floor(desty-y);
hsp = floor(destx-x);
/*
if(vsp != 0 ){
	print_debug(string(vsp));
}
*/

if(x > 700){
	sprite_index = sprite_get("platforms_d");
}
else if(x > 500){
	sprite_index = sprite_get("platforms_c");
}
else if(x > 300){
	sprite_index = sprite_get("platforms_b");
}
else{
	sprite_index = sprite_get("platforms_a");
}

image_index = article_animation_frame;
if (article_animation_frame < image_number) article_animation_frame += article_animation_speed;
else article_animation_frame = 0;