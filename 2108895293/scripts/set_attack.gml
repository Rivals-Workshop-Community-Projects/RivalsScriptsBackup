//set_attack

if (!phone_disable){
	if (phone_manual_init >= 1){
		user_event(13);
	}
}

if (attack==AT_DSPECIAL && free){
	attack=AT_DSPECIAL_AIR
}
if (attack==AT_DSPECIAL && !free){
	if (latest_light_sentry != -4){
		if (point_distance(x, y-(char_height/2), latest_light_sentry.x, latest_light_sentry.y) <= 80){
			if (latest_light_sentry.state == 1){
				attack=AT_DSPECIAL_AIR
				y-=10;
			}
		}
	}
}