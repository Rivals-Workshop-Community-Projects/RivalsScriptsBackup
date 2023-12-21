//animation.gml
//this script runs every frame, but will also run last in line after all the other update scripts
//we use this script to mess more graphical things
if(attacking){
	switch(attack){
		case AT_FSPECIAL:
		if(window == 2){
			
			var dir = -left_down+right_down
			var loop_length = free ? 7 : 8;
			
			if(!free){
				if(dir != 0){
					if(dir*spr_dir){
						image_index = 27 + ((game_time/60)*7)%loop_length
					}else{
						image_index = ceil(27+(loop_length-1) - ((game_time/60)*7)%loop_length)
					}
				}
			}else{
				var frame_start = get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START)
				var frames = 7
				image_index = frame_start + window_timer*frames/window_end;
			}
		}
		if(window == 10){
			var d = abs(hsp)+abs(vsp) <= 2 ? 270 : point_direction(0,0,hsp,vsp);
			var frame_start = 35 + (floor(point_direction(0,0, spr_dir*dcos(d), -dsin(d))/45 + .5)%8)*2;
			var frames = 2
			image_index = frame_start + window_timer*frames/window_end;
		}
		break;
		case AT_DSPECIAL:
		sprite_index = spr_dir > 0 ? sprite_get("dspecial_right") : sprite_get("dspecial_left")
		break;
		case AT_USTRONG:
		if(smash_charging){
			var loop_length = 4;
			image_index = 7 + ((game_time/60)*16)%loop_length
		}
		break;
	}
}

if(state == PS_FIRST_JUMP){
	if(jump_dir != 0){
		if(jump_dir > 0){
			sprite_index = jump_forward_spr
		}else{
			sprite_index = jump_back_spr
		}
	}
}


#macro PS_SLIDE 69