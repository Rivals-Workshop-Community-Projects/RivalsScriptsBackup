if !init {
	init = true;
	visible = true;
	if instance_exists(owner) {
		collision_layer = owner.collision_layer

	}

	dir = image_angle;
	hsp = lengthdir_x(spd, dir);
	vsp = lengthdir_y(spd, dir);

	sound_play(asset_get("sfx_syl_nspecial"));


} else {
//	image_angle += 3;
	if !grabbed {
		{
			var h = false;
			for (var i = obj_stage_main.total_karts-1; i >= 0; i--) with (obj_stage_main.kart_ins[i]) {
				if play == other.play continue;
				if !invincible && point_distance(x,y,other.x,other.y) < 20 && (collision_layer == other.collision_layer or change_layer) { //OW
					if !parry {
						h = true;
						other.grabbed = id;
						break;
					} else {
						user_event(3);
						sound_play(asset_get("sfx_may_whip1"));
						instance_destroy();
					}
				}
			}
			
			if h {
				sound_play(asset_get("sfx_may_wrap1"));
				hsp = 0;
				vsp = 0;
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
				sound_play(asset_get("sfx_leafy_hit2"));
				hsp = 0;
				vsp = 0;
			}
		}
		cooldown -= 0.1;
		if grabbed cooldown = 30;
		else if cooldown <= 0 instance_destroy();
	} else {
		hsp = 0;
		vsp = 0;
		cooldown--;
		if cooldown < 0 {
			sound_play(asset_get("sfx_syl_nspecial_flowerhit"), 0, noone, 1);
			instance_destroy();
		}
		
		if instance_exists(owner) {
			if grabbed > 1 && instance_exists(grabbed) {
				x = grabbed.x;
				y = grabbed.y;
				image_angle = point_direction(owner.x,owner.y,x,y);
				grabbed.hsp -= lengthdir_x(0.3, image_angle);
				grabbed.vsp -= lengthdir_y(0.3, image_angle);
			} else {
				image_angle = point_direction(owner.x,owner.y,x,y);
			}
		
			
		
			owner.hsp += lengthdir_x(0.3, image_angle);
			owner.vsp += lengthdir_y(0.3, image_angle);
			if point_distance(x,y,owner.x,owner.y) < 16 cooldown = 0;

		} else {
			cooldown = 0;
		}
	}
}