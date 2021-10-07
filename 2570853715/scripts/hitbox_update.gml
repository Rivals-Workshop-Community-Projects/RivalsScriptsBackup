
if(attack == AT_DSPECIAL){
	
	visible = false;
	if(reversed != prev_reversed){
		if(get_player_color(player) == 16){
			sprite_index = reversed?sprite_get("dspecial2_dev_knife"):sprite_get("dspecial_dev_knife");
		} else {
			sprite_index = reversed?sprite_get("dspecial2_knife"):sprite_get("dspecial_knife");
		}
		vsp = -vsp;
		hsp = -hsp;
		if(get_player_color(player)!=16){
			color = reversed? c_yellow:c_blue;
		} else {
			color = reversed? c_orange:c_purple;
		}
	}
	prev_reversed = reversed;
	
	if(collision_point(x+hsp, y, asset_get("par_block"), true, true)){
		hsp = -hsp;
	}
	
	if(collision_point(x, y+vsp, asset_get("par_block"), true, true)){
		vsp = -vsp;
	}
	
	if(get_gameplay_time()%3 == 0){
			queue_pos++;
			queue_pos = queue_pos%9;
			trail_array[queue_pos].x = x;
			trail_array[queue_pos].y = y;
	}

	proj_angle = spr_dir == 1? point_direction(0, 0, hsp, vsp): 180+point_direction(0, 0, hsp, vsp);
	if(instance_exists(asset_get("camera_obj"))){
		var height = view_get_hview()/2;
		var	width = view_get_wview()/2;
		var cam_y = get_instance_y(asset_get("camera_obj"));
		var cam_x = get_instance_x(asset_get("camera_obj"));
		if(x < cam_x - width or x > cam_x + width){
			if(x < cam_x - width){
				x = cam_x - width;
			} else {
				x = cam_x + width;
			}
			hsp = -hsp;
		}
		if(y < cam_y - height or y > cam_y + height){
			vsp = -vsp;
			if(y < cam_y - height){
				y = cam_y - height;
			} else {
				y = cam_y + height
			}
		}
	}
	if(prev_vsp != vsp or prev_hsp != hsp and sound_lockout <=0){
		sound_play(sound_get("knife_bounce"));
		sound_lockout = 15;
	}
	sound_lockout--;
	prev_vsp = vsp;
	prev_hsp = hsp;
	if(spr_dir > 0){
		if(hsp > 0){
			kb_angle = 45;
		} else {
			kb_angle = 135;
		}
	} else {
		if(hsp > 0){
			kb_angle = 135;
		} else {
			kb_angle = 45;
		}
	}
	//print_debug(kb_angle);
} else if(attack == AT_USPECIAL){
	can_hit_self = true;
}else if(attack == AT_NSPECIAL){
	if(hbox_num == 1 and (!free or position_meeting(x+spr_dir*16, y-2, asset_get("par_block")))){
		var knife = create_hitbox(AT_NSPECIAL, 2, x, y+16);
		var a = random_func(90, 180, true);
		if(!free){
			a = random_func(45, 135, true);
		}
		
		knife.hsp = 4*dcos(a);
        knife.vsp = -8;
        knife.proj_angle = a;
        sound_play(sound_get("knife_bounce"));
		destroyed = true;
	} if(hbox_num == 2){
		proj_angle = proj_angle + 15;
	}

} else if(attack == AT_USTRONG){
	/*if(hbox_num == 1 and (!free or position_meeting(x+spr_dir*16, y-2, asset_get("par_block")))){
		var knife = create_hitbox(AT_USTRONG, 2, x, y+16);
		var a = random_func(90, 180, true);
		if(!free){
			a = random_func(45, 135, true);
		}
		
		knife.hsp = 4*dcos(a);
        knife.vsp = -8
        knife.proj_angle = a;
        sound_play(sound_get("knife_bounce"));
		destroyed = true;
	} else if(hbox_num == 2){
		proj_angle = proj_angle + 15;
	} else*/ 
	if(hbox_num == 1){
		visible = false;
		if(stop_time <= 0){
			proj_angle = proj_angle - spr_dir*3;
			if(vsp > 0){
				grav = .2;
			}
			if(hsp*spr_dir < 3){
				air_friction = .04;
			}
		} else {
			//print_debug("stopped")
			vsp = 0;
			hsp = 0;
			stop_time--;
			if (stop_time == 0){
				vsp = cur_vsp + grav*3;
				hsp = cur_hsp + air_friction*3;
			}
		}
		if(hitbox_timer%4 == 0){
			if(hit_count < 4 and hitbox_timer < 42){
				multihit = create_hitbox(AT_USTRONG, 2, x, y-4);
				multihit.chainsaw = self;
				multihit.proj_angle = proj_angle;
			} else {
				if(hit_count > 0){
					//sound_stop(sound_get("chainsaw"))
					create_hitbox(AT_USTRONG, 3, x-spr_dir*20, y-30);
					spawn_hit_fx(x, y-30, 143);
					sound_play(asset_get("sfx_ell_fist_explode"));
					destroyed = true;
				}
			}
		}
		if(instance_exists(multihit) and multihit.has_hit){
			stop_time = 6;
			cur_vsp = vsp;
			cur_hsp = hsp;
		}
		if(hitbox_timer == 45){
			destroyed = true;
		}
	} 
}