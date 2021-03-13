// post_draw.gml
// Draws sprites in front of the player

//draw_sprite_ext(sprite_get("needle"), -1, x, y, 1, 1, needle_angle, c_white, 1);	

if (instance_exists(Box)){
	if (Box.flag && get_player_color(player) == 12){
		draw_sprite_ext(sprite_get("flags"), 0, Box.x, Box.y, 1, 1, 0, c_white, 1);
	}	
	if (Box.flag && get_player_color(player) == 10){
		draw_sprite_ext(sprite_get("flags"), 1, Box.x, Box.y, 1, 1, 0, c_white, 1);
	}	
	if (Box.flag && get_player_color(player) == 1 && current_weekday == 6){
		draw_sprite_ext(sprite_get("flags"), 2, Box.x, Box.y, 1, 1, 0, c_white, 1);
	}	
	if (Box.flag && SecretColor == 2){
		draw_sprite_ext(sprite_get("flags"), 3, Box.x, Box.y, 1, 1, 0, c_white, 1);
	}	
}

if (instance_exists(movingbox)){
	if (movingbox.flag && get_player_color(player) == 12){
		draw_sprite_ext(sprite_get("flags"), 0, movingbox.x, movingbox.y, 1, 1, 0, c_white, 1);
	}	
	if (movingbox.flag && get_player_color(player) == 10){
		draw_sprite_ext(sprite_get("flags"), 1, movingbox.x, movingbox.y, 1, 1, 0, c_white, 1);
	}	
	if (movingbox.flag && get_player_color(player) == 1 && current_weekday == 6){
		draw_sprite_ext(sprite_get("flags"), 2, movingbox.x, movingbox.y, 1, 1, 0, c_white, 1);
	}	
	if (movingbox.flag && SecretColor == 2){
		draw_sprite_ext(sprite_get("flags"), 3, movingbox.x, movingbox.y, 1, 1, 0, c_white, 1);
	}	
}

if (flag_destroy){
	if (get_player_color(player) == 12 || get_player_color(player) == 10 || (get_player_color(player) == 1 && current_weekday == 6) || SecretColor == 2){
		draw_sprite_ext(sprite_get("flag_fall"), flag_num, Box_temp_x, Box_temp_y, 1, 1, 0, c_white, 1);
		flag_num += .20;
		
		if (flag_num == 6){
			flag_num = 1;
			flag_destroy = false;
		}
	}
}

if (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window <= 2){
shader_start();
	switch (needle_angle){
		case 0:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x + 30, y - 15, 1, 1, needle_angle, c_white, 1);	
		break;
		case 45:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x + 15, y - 15 - 15, 1, 1, needle_angle, c_white, 1);	
		break;
		case 90:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x, y - 30 - 15, 1, 1, needle_angle, c_white, 1);	
		break;
		case 135:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x - 15, y - 15 - 15, 1, 1, needle_angle, c_white, 1);	
		break;
		case 180:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x - 30, y - 15, 1, 1, needle_angle, c_white, 1);	
		break;
		case 225:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x - 15, y + 15 - 15, 1, 1, needle_angle, c_white, 1);	
		break;
		case 270:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x, y + 30 - 15, 1, 1, needle_angle, c_white, 1);	
		break;
		case 315:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x + 15, y + 15 - 15, 1, 1, needle_angle, c_white, 1);	
		break;
		case 360:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x + 30, y - 15, 1, 1, needle_angle, c_white, 1);	
		break;
	}
shader_end();
}


// Some code junk

/*
with (movingbox){
	draw_debug_text(x, y - 40, "vsp: " + string(vsp));
	draw_debug_text(x, y - 60, "hsp: " + string(hsp));
}
*/

with (needleplatform_solid){
	if (instance_exists(other.Box)){
		draw_debug_text(x, y - 40, "distance: " + string(point_distance( x, y, other.Box.x, other.Box.y)));
	}
//	draw_debug_text(x, y - 40, "state_timer: " + string(state_timer));
//	draw_debug_text(x, y - 60, "state: " + string(state));
}


//draw_debug_text(x, y - 80, "needle_angle: " + string(needle_angle));
//draw_debug_text(temp_x + 300, temp_y - 80, "y pos: " + string(y));

//draw_debug_text(temp_x + 200, temp_y - 80, "usedUspecial1: " + string(usedUspecial ));
//draw_debug_text(temp_x + 200, temp_y - 100, "can_pull: " + string(can_pull));
//draw_debug_text(temp_x + 200, temp_y - 120, "needle_land: " + string(needleland));

/*
if (instance_exists(movingbox)){
	with (movingbox){
		draw_debug_text(other.temp_x + 300, other.temp_y - 80, "Box State: " + string(state));
		draw_debug_text(other.temp_x + 300, other.temp_y - 100, "Hit Delay: " + string(hit_delay));
	}

}

if (instance_exists(Box)){
	with (Box){
		draw_debug_text(other.temp_x + 400, other.temp_y - 80, "Box State: " + string(state));
		draw_debug_text(other.temp_x + 400, other.temp_y - 100, "Hit Delay: " + string(hit_delay));
		draw_debug_text(other.temp_x + 400, other.temp_y - 120, "VSP: " + string(vsp));
		if (!free){
			draw_debug_text(other.temp_x + 400, other.temp_y - 140, "Free");
		}
	}
}


if (instance_exists(needleplatform_solid)){
	with (needleplatform_solid){
		draw_debug_text(other.temp_x + 500, other.temp_y - 80, "Needle State: " + string(state));
		draw_debug_text(other.temp_x + 500, other.temp_y - 100, "Needle Timer: " + string(state_timer));
		draw_debug_text(other.temp_x + 500, other.temp_y - 120, "Needle Angle: " + string(image_angle));
	}
}
*/
