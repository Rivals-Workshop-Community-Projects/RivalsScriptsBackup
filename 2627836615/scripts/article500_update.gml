if !init {

	visible = true;
	if instance_exists(owner) && bounces > 1{
		collision_layer = owner.collision_layer
		spd += owner.spd * 0.1;
	}

	dir = image_angle;
	hsp = lengthdir_x(spd, dir);
	vsp = lengthdir_y(spd, dir);
	if bounces > 1 && init == 0{
		var ins = instance_create(x,y,"obj_stage_article", num);
		ins.owner = owner;
		ins.player_id = player_id;
		ins.play = play;
		ins.bounces = -1;
		ins.spd = spd;
		ins.image_angle = image_angle+5;
		ins.collision_layer = collision_layer;
		var ins = instance_create(x,y,"obj_stage_article", num);
		ins.owner = owner;
		ins.player_id = player_id;
		ins.play = play;
		ins.bounces = -1;
		ins.spd = spd;
		ins.image_angle = image_angle-5;
		ins.collision_layer = collision_layer;
	sound_play(asset_get("sfx_ell_big_missile_fire"));
	}
	init = true;
} else {
//	image_angle += 3;
	var old_angle = 0;
	user_event(4);
	wall_cool -= (wall_cool > 0);
	if found_wall {
		image_angle = point_direction(0,0,hsp,vsp);
		if !wall_cool {bounces--; cooldown = false;}
		wall_cool = 2;
		sound_play(asset_get("sfx_waveland_zet"));
		if bounces < 0 {
			instance_destroy();
			exit;
		}
	}
	{
		var h = false;
		
		for (var i = obj_stage_main.total_karts-1; i >= 0; i--) with (obj_stage_main.kart_ins[i]) {
			if (play = other.play && other.cooldown) continue;
			//print_debug(string(other.cooldown))
			if !invincible && point_distance(x,y,other.x,other.y) < 20 && (collision_layer == other.collision_layer or change_layer) { //OW
				if !parry {
					h = true;
					
					state = PS_TUMBLE;
					state_timer = 0;
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
			if h > 0 sound_play(asset_get("sfx_burnapplied"));
			instance_destroy();
			exit;
		}
	}
}