//
if (!init){
	move_ref = instance_create(x, y, "obj_stage_article", 41);
	init = true;
}

if (move_ref.x != x){
	hsp = floor(move_ref.x - x);
} else {
	hsp = 0;
}

if (move_ref.y != y){
	vsp = floor(move_ref.y - y);
} else {
	vsp = 0;
}


if (move_ref.phase == 1){
	if (move_ref.pausetime>0){
			if (move_ref.pausetime==120){
				sound_play(sound_get("ChaosSabre"),false,noone,0.7,1)
				sound_play(sound_get("ChaosSabre"),false,noone,0.4,0.8)
				sound_play(sound_get("rk_appear"),false,noone,0.6,0.6)
			}
		if (move_ref.pausetime<60){
			image_alpha = ease_sineIn( 100, 0, move_ref.pausetime, 60 )/100;
			mask_index = sprite_get("plat_mask");
			//image_blend = c_white;
		}
	}
}

