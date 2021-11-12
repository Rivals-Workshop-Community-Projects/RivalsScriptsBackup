switch(attack){
	
	case AT_NSPECIAL:
		
		if abs(hsp){
			spr_dir = sign(hsp);
		}
		
		if hbox_num == 4{ // homing radio wave
			var move_angle = point_direction(0, 0, hsp, vsp);
			var move_speed = point_distance(0, 0, hsp, vsp);
			
			var homing_target = noone;
			
			with oPlayer if get_player_team(player) != get_player_team(other.player) && visible{
				if homing_target == noone || distance_to_object(other) < record{
					homing_target = self;
					record = distance_to_object(other);
				}
			}
			
			if homing_target != noone{
				// move_angle -= angle_difference(move_angle, point_direction(x, y, homing_target.x, homing_target.y)) * max(0.1, lerp(1, 0.1, distance_to_object(homing_target) / 500));
				
				var htx = homing_target.x;
				var hty = homing_target.y - homing_target.char_height / 2;
				
				var home_amount = 0.05; // 0.25
				
				if point_distance(x, y, htx, hty) > point_distance(x+hsp, y+vsp, htx, hty){
					move_angle -= angle_difference(move_angle, point_direction(x, y, htx, hty)) * home_amount;
				}
			}
			
			hsp = lengthdir_x(move_speed, move_angle);
			vsp = lengthdir_y(move_speed, move_angle);
		}
		
		else{
			proj_angle = point_direction(0, 0, hsp, vsp) + 180 * (spr_dir == -1);
		}

		var rate = (hbox_num % 2) ? 4 : 8;
		
		if hitbox_timer % rate == 0{
			var h = spawn_hit_fx(x + random_func(0, 20, true) - 10, y + random_func(1, 20, true) - 10, player_id.vfx_sparkle);
			h.prism_guy_mover = player_id;
			var angle = point_direction(0, 0, hsp, vsp)
			h.hsp = lengthdir_x(random_func(1, 2, true) + 2, angle);
			h.vsp = lengthdir_y(random_func(2, 2, true) + 2, angle);
		}
		
		visible = 1;
		if hitbox_timer > length - 15 && hitbox_timer % 6 < 3{
			visible = 0;
		}
		
		break;
	
	case AT_FSPECIAL:
		
		if !hitpause_timer vsp = min(vsp + 0.2, 5);
		
		if hitpause_timer && 0{
			hsp = clamp(hsp, -4, 4);
			vsp = min(vsp, -7);
		}
		
		if hitbox_timer == length - 1{
			if !dont_article{
				var a = instance_create(x, y, "obj_article1");
				a.spr_dir = spr_dir;
			}
			sound_play(asset_get("mfx_star"));
			var h = spawn_hit_fx(x, y, player_id.vfx_wavelengths[player_id.ir]);
			h.draw_angle = random_func(0, 20, true) - 10;
			instance_destroy();
			exit;
		}

		var rate = 8;
		
		if hitbox_timer % rate == 0 && !hitpause_timer{
			var h = spawn_hit_fx(x + random_func(0, 40, true) - 20, y + random_func(1, 40, true) - 20, player_id.vfx_sparkle);
			h.prism_guy_mover = player_id;
			var angle = point_direction(0, 0, hsp, vsp)
			h.hsp = lengthdir_x(random_func(1, 2, true) + 2, angle);
			h.vsp = lengthdir_y(random_func(2, 2, true) + 2, angle);
		}
		
		break;
}



in_hitpause = false;
if hitpause_timer{
	in_hitpause = true;
	hitpause_timer--;
}