if !init {
	init = true;
	visible = true;
	image_angle = 0;
	sound_play(asset_get("sfx_bird_sidespecial_start"));
		var h = spawn_hit_fx(x,y,194)
	if instance_exists(owner) {
		collision_layer = owner.collision_layer;
	}
} else {
	
	{
		var h = false;
		for (var i = obj_stage_main.total_karts-1; i >= 0; i--) with (obj_stage_main.kart_ins[i]) {
			if state == PS_DASH continue;
			if !invincible && point_distance(x,y,other.x,other.y) < 20 && (collision_layer == other.collision_layer or change_layer) { //OW

			
				h = true;
				
				state = PS_DASH;
				state_timer = 0;
			}
		}
		
		if h {
			sound_play(asset_get("sfx_bird_sidespecial"));

		}
	}
	cooldown--;
	if cooldown <= 0 instance_destroy();
	
	image_alpha = cooldown/30
	image_angle += 20;
}