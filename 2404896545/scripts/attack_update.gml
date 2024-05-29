//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
	if(window == 1){
		if(window_timer == 1){
			var shell = instance_create(x + 25*spr_dir, y-20,"obj_article1")
	       		shell.player_id = id;
				shell.player = player;
				shell.spr_dir = spr_dir;
				shell.futurehsp = 10*spr_dir;
		}
		with(obj_article1){
			if(player_id == other.id and state == 0){
				spr_dir = other.spr_dir
				x = other.x + 25*spr_dir;
				y = other.y - 20;	
				futurehsp = 10*other.spr_dir;
			}
		}
	}
}

if (attack == AT_FSPECIAL){
	can_wall_jump = true;
	can_fast_fall = false;
	char_height = fspecial_height;
	if(window == 1 and window_timer == 1){
		shelled = false;
		reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE);
		reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH);
		reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START);
		reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX);
		reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE);
	}
	if(has_hit){
		if(window < 3){
			window = 3;
			window_timer = 0;
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 40);
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 0);
			if(shelled = true){
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
			} else {
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
			}
		}
		if(window == 3){
			if(!hitpause){
				can_attack = true;
			}
			if(window_timer == 1){
				if(shelled = true){
					vsp = -13;
					hsp = 10 * spr_dir;
				} else {
					vsp = -10;
					hsp = 7 * spr_dir;
				}
			}
		}
		destroy_hitboxes();
	}
	else{
		if (!free and (window == 1 or window == 3)){
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
		}
	}
}

if(attack == AT_USPECIAL){
	can_fast_fall = false;
	can_wall_jump = true;
	if(window == 1){
		if(state_timer == 150 or (special_pressed and state_timer > 10)){
			window = 2;
			window_timer = 0;
			vsp = -10;
			hsp = 5*spr_dir;
			shelled = false;
		}
	}
	if(window == 2){
		//window = 3;
		if(shelled == true){
			window = 3;
			window_timer = 0;
		} else{
			if(window_timer == 30){
				set_state(PS_PRATFALL);
			}
		}
	}
}

if (attack == AT_DSPECIAL){
	can_fast_fall = false;
	char_height = dspecial_height;
	if(window == 1){
		shelled = false;
		reset_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH);
		reset_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START);
		reset_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX);
		reset_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW);
	}
	if(window == 2){
		can_wall_jump = true;
		if(shelled == true){
			set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 40);
			set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
			set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, sound_get("two2"));
			set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 3);
			window = 3;
			window_timer = 0;
			destroy_hitboxes();
		}
	}
	if(window < 3){
		if(down_down){
			fall_through = true;
		}
	}
	if(window == 3 and window_timer == 1){
		shake_camera(15,5);
		if(shelled == true){
			vsp = -13;
		}else{
			destroy_hitboxes();
		}
	}
}