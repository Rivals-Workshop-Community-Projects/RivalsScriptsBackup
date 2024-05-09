//
if(time < 150){
	time++;
}
switch(mode) {
	case 0://Inside stage
		//if time <= 0 {mode = 1; time = maxtime}
		if(version = 0){
			desty += min((get_marker_y(1)-y)*0.1, 0.35);
			x = (get_marker_x(1)-80)
		}
		else{
			desty += min((get_marker_y(2)-y)*0.1, 0.35);
			x = (get_marker_x(2)-80)
		}
	break;
	case 1://Rise
		//if time <= 0 {mode = 2; time = maxtime}
		if(version = 0){
			desty += max((get_marker_y(3)-y)*0.1, -2);
			if(time == 20){
				sound_play(sound_get("sh2_rise"));
			}
			if(time == 110){
				sound_play(sound_get("sh2_fall"));
			}
		}
		else{
			desty += max((get_marker_y(4)-y)*0.1, -2);
		}
	break;
	case 2://Stay for darkness
		//if time <= 0 {mode = 3; time = maxtime}
		if(version = 0){
			desty += min((get_marker_y(3)-y)*0.1, 0.3);
		}
		else{
			desty += min((get_marker_y(4)-y)*0.1, 0.3);
		}
	break;
	case 3://Remain in fog
		//if time <= 0 {mode = 4; time = maxtime}
		if(version = 0){
			desty += max((get_marker_y(3)-y)*0.1, -0.4);
		}
		else{
			desty += max((get_marker_y(4)-y)*0.1, -0.4);
		}
	break;
	case 4://Go back down
		//if time <= 0 {mode = 0; time = maxtime}
		if(version = 0){
			desty += min((get_marker_y(1)-y)*0.1, 1.8);
			if(time == 5){
				sound_play(sound_get("sh2_rise"));
			}
			if(time == 95){
				sound_play(sound_get("sh2_fall"));
			}
		}
		else{
			desty += min((get_marker_y(2)-y)*0.1, 1.8);
		}
	break;
	
}
print(string(mode));
vsp = floor(desty-y);
/*
if(vsp != 0 ){
	print_debug(string(vsp));
}
*/