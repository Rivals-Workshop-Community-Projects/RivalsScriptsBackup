if(my_hitboxID.type == 1){
	with(hit_player_obj){
		knife_stack = 0;
		outline_color = [0, 0, 0];
        init_shader();
	}
	knives = 0;
}

switch(my_hitboxID.attack){
	
	case AT_NSPECIAL:
		//rock check					 //only happens against knives that weren't frozen, frozen ones have parry stun
		if(my_hitboxID.hit_priority == 1 || my_hitboxID.freeze_max > 0) exit;
		my_hitboxID.hsp *= -1;
		my_hitboxID.vsp *= -1;
		my_hitboxID.spr_dir *= -1;
		parry_x = my_hitboxID.x;
		parry_y = my_hitboxID.y - 35;
		with(pHitBox){
			if(attack == AT_NSPECIAL && player_id == other){
				spr_dir *= -1;
				player = other.hit_player_obj.player;
				hitbox_timer = 0;
				was_parried = true;
				transcendent = true;
				orig_hsp *= -1;
				hsp *= -1;
				if(hbox_num == 2){
					proj_angle *= -1;
					x = other.parry_x;
					y = other.parry_y;
					other.parry_x += 3 * spr_dir;
					other.parry_y -= 5;
				}
			}
		}
		break;
	
	case AT_USPECIAL:
		if(my_hitboxID.hbox_num == 4 && my_hitboxID.freeze_max == 0){
			my_hitboxID.hsp *= -1;
			my_hitboxID.vsp *= -1;
			my_hitboxID.spr_dir *= -1;
			with(pHitBox){
				if(attack == AT_USPECIAL && player_id == other){
					spr_dir *= -1;
					player = other.hit_player_obj.player;
					hitbox_timer = 0;
					was_parried = true;
					transcendent = true;
					orig_hsp *= -1;
					hsp *= -1;
					orig_vsp *= -1;
					vsp *= -1;
					y -= 15;
				}
			}
		}
		break;
	
}