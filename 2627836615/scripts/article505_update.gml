if !init {
	init = true;
	visible = true;
	sound_play(asset_get("sfx_ice_ftilt"));
	image_angle = 0;
	if instance_exists(owner) {
		collision_layer = owner.collision_layer;
	}
	var h = spawn_hit_fx(x,y,27)
} else {

	{
		var h = false;
		for (var i = obj_stage_main.total_karts-1; i >= 0; i--) with (obj_stage_main.kart_ins[i]) {
			if !invincible && point_distance(x,y,other.x,other.y) < 20 && (collision_layer == other.collision_layer or change_layer) { //OW
				if other.cooldown && other.owner == id {
					other.cooldown = 2;
					continue;
				}
				if !parry {
					h = true;
					
					state = PS_FROZEN;
					state_timer = 0;
				} else {
					if h == 0 h = -1;
					user_event(3);
				}
			}
		}
		
		if h != 0{
			
			if h > 0 sound_play(asset_get("sfx_ice_on_player"));
			var h = spawn_hit_fx(x,y,29)
			instance_destroy();
			exit;
		}
	}
	cooldown--;
}