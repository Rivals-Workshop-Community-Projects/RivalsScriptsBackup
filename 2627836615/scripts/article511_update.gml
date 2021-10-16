if !init {
	image_angle = 0;
	init = true;
	visible = true;
	sound_play(asset_get("sfx_syl_fstrong_final"));
	sound_play(asset_get("sfx_syl_dspecial_growth"));
	hits[owner.play] = 0;
	depth = -5;
} else {
	var dis;
	image_xscale += 0.03;
	image_yscale += 0.03;
	image_angle -= 2;
	var wid = sprite_width;
	var h = 0;
	for (var i = obj_stage_main.total_karts-1; i >= 0; i--) with (obj_stage_main.kart_ins[i]) {
		dis = point_distance(x,y,other.x,other.y);
		if !invincible && dis <= wid && other.hits[play] { //OW

			if !parry && z <= 0 {
				h = true;
				state = PS_TUMBLE;
				other.hits[play] = 0;
				spawn_hit_fx(x,y,132)
				break;
			} else {
				other.hits[play] = 0;
				if parry user_event(3);
			}
		}
	}
	if h != 0{
		if h > 0 sound_play(asset_get("sfx_leafy_hit2"));

	}	
	if image_xscale >= 4 {
		image_alpha -= 0.05;
		if image_alpha <= 0 {instance_destroy(); exit;
		}
	}
}