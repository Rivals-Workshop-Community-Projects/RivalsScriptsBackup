if !init {
	
	visible = true;
	if instance_exists(owner){
		collision_layer = owner.collision_layer
		spd += owner.spd * 0.1;
	}
	image_index = 0;
	dir = image_angle;
	hsp = lengthdir_x(spd, dir);
	vsp = lengthdir_y(spd, dir);
	zsp = 2;
	init = true;
	sound_play(asset_get("sfx_kragg_throw"));
} else {
//	image_angle += 3;
	if z+zsp > 0 { 
	image_angle += 3;
		var old_angle = 0;
		user_event(4);
		wall_cool -= (wall_cool > 0);
		if found_wall {
			wall_cool = 2;
			sound_play(asset_get("sfx_kragg_roll_land"));
		}
		z += zsp;
		zsp -= 0.1;
	}
	else {
		image_angle = 0;
		image_index = 2;
		hsp = 0;
		vsp = 0;
		z = 0;
		if zsp != 0 {
			zsp = 0;
			sound_play(asset_get("sfx_kragg_rock_land"))
		}
		var h = false;
		for (var i = obj_stage_main.total_karts-1; i >= 0; i--) with (obj_stage_main.kart_ins[i]) {
			if num != 1 continue;
			//print_debug(string(other.cooldown))
			if !invincible && point_distance(x,y,other.x,other.y) < 20 && (collision_layer == other.collision_layer or change_layer) { //OW
				if !parry {
					h = true;
					var dir = point_direction(x-hsp,y-vsp,other.x,other.y);
					hsp = lengthdir_x(-spd, dir);
					vsp = lengthdir_y(-spd, dir);
				} else {
					user_event(3);
					other.init = -1;
					other.bounces = 3;
					other.play = play;
					other.owner = id;
					if h == 0 h = -1;
				}
			}
		}
		
		if h != 0 {
			if h > 0 sound_play(asset_get("sfx_kragg_rock_shatter"));
			instance_destroy();
			exit;
		}
	}
}