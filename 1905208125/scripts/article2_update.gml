//article2_update
state_timer++;
if (!player_id.attacking || player_id.attack != AT_USPECIAL) {
	state = 2;
	if (point_distance(x,y,player_id.x,player_id.y) < dist) {
		state = 3;
	}
}

if (instance_exists(hbox)) {
	hbox.hsp = hsp;
	hbox.vsp = vsp;
}

switch (state) {
	case 0:
		image_angle = player_id.direc;
	    image_index = state_timer*anim_time;
	    //spr_dir = -1*(image_angle > 90 && image_angle < 270) + 1*(image_angle < 90 || image_angle > 270);
	    x_ch = x;
	    y_ch = y;
	    if instance_exists(hbox) {
			if (((position_meeting(x,y,asset_get("par_block")) || (state_timer > hook_time && position_meeting(x,y,asset_get("par_jumpthrough")))))) state = 1;
	        with (hbox) {
	            if (((position_meeting(x,y,asset_get("par_block")) || (other.state_timer > other.hook_time && position_meeting(x,y,asset_get("par_jumpthrough")))))) other.state = 1;
	        }
	    }

	    else {
	        hbox.x = x;
			hbox.y = y+32*dsin(image_angle+180);
	        //else if image_angle > 0 && image_angle < 90 hbox.y = y-32;
	        //else  hbox.y = y+32;
	    }
	    if (point_distance(x,y,player_id.x,player_id.y) > max_distance) {
	    	state = 2;
	    	state_timer = 0;
	    }
		break;
	case 1:
	    //image_xscale = sprdir;
	    //image_index = state_timer*anim_time;
	    if instance_exists(hbox) instance_destroy(hbox);
	    with player_id {
	        if attack == AT_USPECIAL && window == 2 {
	            window_timer = 0;
	            window = 4;
	        }
	        if window == 4 {
	            hsp = hook_speed*dcos(point_direction(x,y,other.x,other.y));
	            vsp = -hook_speed*dsin(point_direction(x,y,other.x,other.y));
	        }
	    }
	    hsp = 0;
	    vsp = 0;
	    if (point_distance(x,y,player_id.x,player_id.y) < dist) {
			state = 3;
		}
		break;
	case 2:
		if (player_id.window == 3 || !player_id.attacking || player_id.attack != AT_USPECIAL) {
			hsp = return_speed*dcos(point_direction(x,y,player_id.x,player_id.y - 40))
			vsp = -return_speed*dsin(point_direction(x,y,player_id.x,player_id.y - 40));
		} else {
			if instance_exists(hbox) {
				if (((position_meeting(x,y,asset_get("par_block")) || (state_timer > hook_time && position_meeting(x,y,asset_get("par_jumpthrough")))))) state = 1;
		        with (hbox) {
		            if (((position_meeting(x,y,asset_get("par_block")) || (other.state_timer > other.hook_time && position_meeting(x,y,asset_get("par_jumpthrough")))))) other.state = 1;
		        }
		    }
			hsp *= 0.7;
			vsp *= 0.7;
		}
		if (point_distance(x,y,player_id.x + 20 * player_id.spr_dir,player_id.y - 40) < dist) {
			state = 3;
		}
		break;
	case 3:
		if (instance_exists(hbox)) {
			instance_destroy(hbox);
		}
		instance_destroy();
		break;
}
