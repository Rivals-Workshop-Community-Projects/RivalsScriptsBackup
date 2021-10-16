if !init {
	var xx, yy;
	var amt = 32;
	bits = 0;
	hits[owner.play] = false;
	var collision_layer = owner.collision_layer;
	for (var h = 1; h < 32; h++) {
		xx = x+lengthdir_x(h*amt, image_angle);
		yy = y+lengthdir_y(h*amt, image_angle);
		
		if position_meeting(xx,yy,asset_get("solid_32_obj")) collision_layer = false;// print("GROUNDING")}
		else if position_meeting(xx,yy,asset_get("jumpthrough_32_obj")) collision_layer = true; //print("BRIDGING")}

		bits += (collision_layer << (h-1));
		
		var col_obj = collision_layer ? obj_stage_article_platform : obj_stage_article_solid;
		
		if place_meeting(xx,yy,col_obj) {
			break;
		}
	}
	image_xscale = h*2;
	bits += (collision_layer << (h));
	sound_play(asset_get("sfx_clairen_fspecial_slash"));
	var h = spawn_hit_fx(x,y,256)
	init = true;
} else {
	var amt;
	for (var i = obj_stage_main.total_karts-1; i >= 0; i--) with (obj_stage_main.kart_ins[i]) {
		if !invincible && other.hits[play] && place_meeting(x,y,other) { //OW
			amt = floor(point_distance(x,y,other.x,other.y)/32);
			if change_layer or ((other.bits & (1 << amt)) == collision_layer) {
				if !parry {
					h = true;
					other.hits[play] = false;
					state = PS_FROZEN;
					state_timer = 0;
					spawn_hit_fx(x,y,125)
				} else {
					if h == 0 h = -1;
					user_event(3);
					other.hits[play] = false;
				}				
			}
		}
	}
	if h != 0{
		if h > 0 sound_play(asset_get("sfx_clairen_tip_med"));
	}	
	
	cooldown--;
	if cooldown <= 0 {instance_destroy(); exit;}
}