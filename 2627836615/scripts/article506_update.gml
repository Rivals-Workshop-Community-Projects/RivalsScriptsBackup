if !init {
	init = true;
	visible = true;
	sound_play(asset_get("sfx_absa_new_whip2"));
	var h = spawn_hit_fx(x,y,21)
	if instance_exists(owner) {
		collision_layer = owner.collision_layer;
		h.spr_angle = owner.image_angle;
	}
	owner.state = PS_ATTACK_AIR;
	owner.state_timer = 0;
	owner.invincible = max(owner.invincible, 2);

} else {
	owner.invincible = max(owner.invincible, 2);
	x = owner.x;
	y = owner.y;
	{
		var h = false;
		for (var i = obj_stage_main.total_karts-1; i >= 0; i--) with (obj_stage_main.kart_ins[i]) {
			if id == owner continue;
			if !invincible && point_distance(x,y,other.x,other.y) < 20 && (collision_layer == other.collision_layer or change_layer) { //OW

				if !parry {
					h = true;
					state = PS_TUMBLE;
					state_timer = 0;
				} else {
					if h == 0 h = -1;
					user_event(3);
				}
			}
		}
		
		if h != 0{
			
			if h > 0 sound_play(asset_get("sfx_absa_singlezap1"));
			var h = spawn_hit_fx(x,y,20)
		}
	}
	if owner.state_timer > 15 or owner.found_wall {
		instance_destroy();
	}

}