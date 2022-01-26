var offset_y = 2;

if (player_id.free){
	offset_indic_free = 12;
} else if (player_id.free == false){
	offset_indic_free = 0;
}

if (state == 0){
	offset_indic = 48;
} else if (state == 1){
	if (player_id.nspecial_started_in_ball == false){
		if (nspec_img_indx == 0){
			offset_indic = 62+offset_indic_free;
		} else if (nspec_img_indx == 1){
			offset_indic = 56+offset_indic_free;
		} else if (nspec_img_indx == 2){
			offset_indic = 52+offset_indic_free;
		}
	}
}

//indicator for the current "owner" of the ball
draw_sprite_ext( sprite_get("indicator"), 0, x - 2*spr_dir, y - offset_indic, 1, 1, 0, hud_color, 1 );

//rotation stuff
if (state == 0){
	if (is_hitbox_active){
		if (hitpause){
			var should_spin_faster = 20;
			current_ball_spr = sprite_get("monkey_ball_spin")
			current_ball_spr_2 = sprite_get("monkey_ball_front_spin")
		} else {
			current_ball_spr = sprite_get("monkey_ball_spin")
			current_ball_spr_2 = sprite_get("monkey_ball_front_spin")
		}
		var should_spin_faster = 0;
	} else {
		var should_spin_faster = 0;
		current_ball_spr = sprite_get("monkey_ball")
		current_ball_spr_2 = sprite_get("monkey_ball_front")
	}
	if (hitpause){
		transparency = 1;
	}
	else{
		transparency = 1;
	}

	if (is_hitbox_active){
		if (!hitpause){
			if (vsp > 0){
				cur_rot = cur_rot + (1+should_spin_faster)*spr_dir;
			}
			if (hsp != 0 && free){
				rot_speed = 30;
				cur_rot = cur_rot + rot_speed*spr_dir;
			} else if (hsp != 0 && !free){
				if (rot_speed){
					rot_speed = 30;
				}
				cur_rot = cur_rot + rot_speed*spr_dir;
			} else if (hsp == 0 && free){
			//
			} else if (hsp == 0 && !free){
				if (rot_speed != 0){
					cur_rot = cur_rot + rot_speed*spr_dir;
				}
			}
		}
		if (spin_fast != 0){
			cur_rot = cur_rot + spin_fast*spr_dir;
			spin_fast--;
		}
		draw_sprite_ext( current_ball_spr, 0, x, y + offset_y, 1, 1, cur_rot, c_white, transparency );
		draw_sprite_ext( current_ball_spr_2, 0, x, y + offset_y, 1, 1, cur_rot, c_white, transparency );
		if (hitpause){
			draw_sprite_ext( sprite_get("monkey_ball_light"), 0, x, y + offset_y, 1, 1, cur_rot, c_white, 0.6 );
			draw_sprite_ext( sprite_get("monkey_ball_spin_smear"), 0, x, y + offset_y, 1.025, 1.025, cur_rot*1.35, c_white, transparency );
		} else if (!hitpause){
			draw_sprite_ext( sprite_get("monkey_ball_spin_smear"), 0, x, y + offset_y, 1, 1, cur_rot*1.35, c_white, transparency );
		}
	}
	else{
		if (rot_speed != 0){
			cur_rot = cur_rot + rot_speed*spr_dir;
		}
		if (spin_fast != 0){
			spin_fast--;
		}
		draw_sprite_ext( current_ball_spr, 0, x, y + offset_y, 1, 1, cur_rot, c_white, transparency );
		draw_sprite_ext( current_ball_spr_2, 0, x, y + offset_y, 1, 1, cur_rot, c_white, transparency );
	}
	if (monkey_ball_draw_dark_spr == true){
		draw_sprite_ext( sprite_get("monkey_ball_dark"), 0, x, y + offset_y, 1, 1, cur_rot, c_white, 0.5 );
	}
} else if (state == 1){
	if (player_id.nspecial_started_in_ball == false){
		draw_sprite_ext( sprite_get("monkey_ball_front_uspec"), nspec_img_indx, player_id.x + (50 * player_id.spr_dir), player_id.y, 1, 1, cur_rot, c_white, transparency );
		draw_sprite_ext( sprite_get("monkey_ball_uspec"), nspec_img_indx, player_id.x + (50 * player_id.spr_dir), player_id.y, 1, 1, cur_rot, c_white, transparency );
	} else if (player_id.nspecial_started_in_ball == true){
		draw_sprite_ext( current_ball_spr, 0, player_id.x + (50 * player_id.spr_dir), player_id.y-40, 1, 1, rot_from_nspec, c_white, transparency );
		draw_sprite_ext( current_ball_spr_2, 0, player_id.x + (50 * player_id.spr_dir), player_id.y-40, 1, 1, rot_from_nspec, c_white, transparency );
	}
}

if (rot_speed != 0){
	rot_speed--;
}