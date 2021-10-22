image_index += 0.25;

if x == room_width || x == 0 hsp *= -1;

if abs(hsp) && x+hsp != clamp(x+hsp, orig_x - track_width / 2, orig_x + track_width / 2){
	turn();
	x = orig_x + (track_width / 2) * sign(x - orig_x);
}

else if abs(vsp) && y+vsp != clamp(y+vsp, orig_y, orig_y + track_height){
	turn();
	y = orig_y + (track_height) * (y > orig_y + track_height / 2);
}

#define turn

switch(sign(hsp)){
	case -1:
		set_speed(0, 1);
		break;
	case 1:
		set_speed(0, -1);
		break;
	case 0:
		switch(sign(vsp)){
			case -1:
				set_speed(-1, 0);
				break;
			case 1:
				set_speed(1, 0);
				break;
		}
		break;
}

hsp *= move_speed;
vsp *= move_speed;

#define set_speed(h, v)

hsp = h;
vsp = v;