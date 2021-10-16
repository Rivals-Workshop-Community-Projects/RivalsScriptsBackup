if !init {
	image_angle = 0;
	init = true;
	visible = true;
	sound_play(asset_get("sfx_frog_nspecial_shove"));
		var h = spawn_hit_fx(x,y,116)
	if instance_exists(owner) {
		collision_layer = owner.collision_layer;
	}
} else {

	if !grabbed {
		var h = false;
		for (var i = obj_stage_main.total_karts-1; i >= 0; i--) with (obj_stage_main.kart_ins[i]) {
			if !invincible && point_distance(x,y,other.x,other.y) < 20 && (collision_layer == other.collision_layer or change_layer) { //OW
				if other.cooldown && other.owner == id {
					other.cooldown = 2;
					continue;
				}
				if !parry {
					h = true;
					other.grabbed = id;
					break;
				} else {
					if h == 0 h = -1;
					user_event(3);
				}
			}
		}
		
		if h != 0{
			cooldown = 120;
			var h = spawn_hit_fx(x,y,118)
			if h > 0 sound_play(asset_get("sfx_frog_dspecial_hit"));
			else {
				instance_destroy();
				exit;
			}
		}
	} else {
		if instance_exists(grabbed) {
		x = grabbed.x;
		y = grabbed.y - grabbed.z;
		depth = grabbed.depth;
		grabbed.roughed = true;
		var dis = 0.92;
		grabbed.hsp *= dis;
		grabbed.vsp *= dis;
		}
		if cooldown <= 0 {
			sound_play(asset_get("sfx_bubblepop"));
			instance_destroy(); exit;
		}
	}
	cooldown--;
}