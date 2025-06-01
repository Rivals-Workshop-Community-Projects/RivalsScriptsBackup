//Background colors update

switch(mode) {
	case 0://Inside stage
		if(version = 0){
			if(image_alpha > 0){
				image_alpha -= 0.005;
			}	
		} else {
			if(image_alpha > 0){
				image_alpha -= 0.005;
			}
		}
	break;
	case 1://Fog
		if(version = 0){
			if(image_alpha > 0){
				image_alpha -= 0.005;
			}
		} else {
			if(image_alpha < fog_max){
				image_alpha += 0.005;
			}
		}
	break;
	case 2://Stay for darkness
		if(version = 0){
			if(image_alpha < dark_max){
				image_alpha += 0.005;
			}
			if(image_alpha == 0.01){
				sound_play(sound_get("sh2_static"), true, 0, 0.35);
				with(asset_get("oPlayer")){
					if (attack == AT_TAUNT && state == PS_ATTACK_GROUND ){
						with(other){
							var ufo = instance_create(-400, 625, "obj_stage_article", 10);
						}
					}
				}
			}
		} else {
			if(image_alpha < fog_max){
				image_alpha += 0.005;
			}
		}
	break;
	case 3://Remain in Fog
		if(version = 0){
			if(image_alpha > 0){
				image_alpha -= 0.005;
			}
			sound_stop(sound_get("sh2_static"))
			if(image_alpha == dark_max - 0.01){
				with(asset_get("oPlayer")){
					if (attack == AT_TAUNT && state == PS_ATTACK_GROUND ){
						with(other){
							var mira = instance_create(get_marker_x(20), get_marker_y(20), "obj_stage_article", 11);
						}
					}
				}
			}
		} else {
			if(image_alpha < fog_max){
				image_alpha += 0.005;
			}
		}
	break;
	case 4://Go Back Down
		if(version = 0){
			if(image_alpha > 0){
				image_alpha -= 0.005;
			}
		} else {
			if(image_alpha > 0){
				image_alpha -= 0.005;
			}
		}
	break;
}