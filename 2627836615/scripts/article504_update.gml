if !init {

	visible = true;
	if instance_exists(owner) {
		collision_layer = owner.collision_layer
		spd += owner.spd * 0.1;
	}

	dir = image_angle;
	hsp = lengthdir_x(spd, dir);
	vsp = lengthdir_y(spd, dir);
	init = true;
	sound_play(asset_get("sfx_forsburn_disappear"));	
} else {
	var grabbed = 0;

			var h = false;
			for (var i = obj_stage_main.total_karts-1; i >= 0; i--) with (obj_stage_main.kart_ins[i]) {
				if play == other.play continue;
				if !invincible && point_distance(x,y,other.x,other.y) < 20 && (collision_layer == other.collision_layer or change_layer) { //OW
					grabbed = true;
					break;
				}
			}
		if !grabbed { //Prioritizing player collision over wall collision
			change_layer = true;
			if place_meeting(x,y,asset_get("solid_32_obj")) collision_layer = false;
			else if place_meeting(x,y,asset_get("jumpthrough_32_obj")) collision_layer = true;
			else change_layer = false;
			
			var col_obj = obj_stage_article_solid;

			depth = 1;
			if collision_layer == 1 {
				col_obj = obj_stage_article_platform;
				depth = 0;
			}
			if place_meeting(x,y,col_obj) {
				grabbed = 1;
			}
		}
	
	if grabbed {
		var h = false;
			for (var i = obj_stage_main.total_karts-1; i >= 0; i--) with (obj_stage_main.kart_ins[i]) {
				if play == other.play continue;
				if !invincible && point_distance(x,y,other.x,other.y) < 80 { //OW

					if !parry {
						h = true;
						state = PS_TUMBLE;
						state_timer = 0;
					} else {
						user_event(3);
					}
				}
			}		
			if h {
				sound_play(asset_get("sfx_forsburn_reappear_hit"));	
			}
			
			h = spawn_hit_fx(x,y,143);
			h.depth = 0;
			sound_play(asset_get("sfx_forsburn_reappear"));			
			instance_destroy();
	}

}