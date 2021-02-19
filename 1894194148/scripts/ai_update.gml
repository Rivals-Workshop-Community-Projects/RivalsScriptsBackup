//ai_update - called every frame for this character as a CPU
//AR
if (get_training_cpu_action() == CPU_FIGHT) {
	
var stage_y = get_stage_data(SD_Y_POS);

//var cloudexist = false;
//var cloud_y = 0;
//var cloud_x = 0;
//with (obj_article1){
//	if (player_id == other.id && init == 1){
//		cloudexist = true;
//		cloud_y = y;
//		cloud_x = x;
//	}
//}

//if (!cloudexist && (state_cat == 40 || state_cat == 42)) {
//		jump_pressed = true;
//		joy_pad_idle = true;
//		special_pressed = true;
//	if ((room_width/2)-120 > x){
//		right_down = true;
//	}
//	if ((room_width/2)+120 < x){
//		left_down = true;
//	}
//}

if (!arc_active && (state == PS_IDLE || state == PS_WALK || state == PS_DASH)) {
//		sound_stop(sound_get("DING"));
//		sound_play(sound_get("DING"));
		jump_pressed = true;
	if ((room_width/2)-120 > x){
		right_pressed = true;
	}
	if ((room_width/2)+120 < x){
		left_pressed = true;
	}
}
if (!arc_active && (state == PS_JUMPSQUAT)) {
//		sound_stop(sound_get("DING"));
//		sound_play(sound_get("DING"));
		jump_down = true;
	if ((room_width/2)-120 > x){
		right_down = true;
	}
	if ((room_width/2)+120 < x){
		left_down = true;
	}
}
if (!arc_active && (state == PS_FIRST_JUMP)) {
//		sound_stop(sound_get("DING"));
//		sound_play(sound_get("DING"));
		jump_down = true;
		joy_pad_idle = true;
		special_pressed = true;
	if ((room_width/2)-120 > x){
		right_down = true;
	}
	if ((room_width/2)+120 < x){
		left_down = true;
	}
}

//if (cloudexist && (cloud_y+stage_y)<50 && (cloud_y+stage_y)>0) {
//	if ((cloud_x - x) > 20 && (cloud_x - x) < 40){
//		down_down = true;
//	}
//	if ((cloud_x - x) < 20 && (cloud_x - x) > 40){
//		down_down = true;
//	}
//}

if ((ai_target.x - x)*spr_dir > 340){
	if (move_cooldown[AT_FSPECIAL] == 0){
		if (ai_target.x > x){
			right_down = true;
			special_pressed = true;
		}
		if (ai_target.x < x){
			left_down = true;
			special_pressed = true;
		}
	}
}

}


if (ai_recovering){
	if (move_cooldown[AT_FSPECIAL] == 0){
		if (room_width/2 > x){
			right_down = true;
			special_pressed = true;
		}
		if (room_width/2 < x){
			left_down = true;
			special_pressed = true;
		}
	}
    if (move_cooldown[AT_FSPECIAL] > 0){
        // use Uspecial when Fspecial is on cooldown
        if ((has_walljump || y < get_stage_data(SD_Y_POS) + 16) && y > get_stage_data(SD_Y_POS) - 32){
		//??????????????????
		if (room_width/2 > x && y > stage_y){
			up_down = true;
			special_pressed = true;
			right_down = true;
		}
		if (room_width/2 < x && y > stage_y){
			up_down = true;
			special_pressed = true;
			left_down = true;
		}
//            up_down = true;
//            special_pressed = true;
        }
    }
}





