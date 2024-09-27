//Frampt Platform
time++;

switch(mode) {
	case 0://Well
		x = (get_marker_x(1)-platform_center);
		if(goingup == true){
			desty += min((get_marker_y(1)-y)*0.025, 1);
		}else{
			desty += max((get_marker_y(4)+200-y)*0.01, -1);
		}
	break;
	case 1://Left of stage
		x = (get_marker_x(2)-platform_center);
		if(goingup == true){
			desty += min((get_marker_y(2)-y)*0.025, 1);
		}else{
			desty += max((get_marker_y(4)+200-y)*0.01, -1);
		}
	break;
	case 2://Right of stage
		x = (get_marker_x(3)-platform_center);
		if(goingup == true){
			desty += min((get_marker_y(3)-y)*0.025, 1);
		}else{
			desty += max((get_marker_y(4)+200-y)*0.01, -1);
		}
	break;
}

vsp = floor(desty-y);
//hsp = floor(destx-x);

if(goingup = true){//If platform is up or going up
	if(time == activetime){
		time = 0;
		goingup = false;
	}
} else {//If platform is going down
	if(time == downtime){
		time = 0;
		goingup = true;
		if(mode < 2){
			mode++;
		} else {
			mode = 0;
		}
	}
}

image_index += 0.125