//hitbox_update.gml

if (attack == AT_NSPECIAL){ //Fireball
	//Destroy Effect (Normal)
	if (hbox_num == 1 || hbox_num == 7 || hbox_num == 9){
			if (hitbox_timer == 69){
			spawn_hit_fx( x - 10 * spr_dir, y - 18, player_id.fireball_normal_explode );
		}
	}
	//Destroy Effect (Big)
	if (hbox_num == 2 && hitbox_timer == 119){
		spawn_hit_fx( x - 10 * spr_dir, y - 18, player_id.fireball_big_explode );
	}
	//Capping Fall Speed
	if (vsp >= 7.5){
		vsp = 7.5
	}
	//Capping Rising Speed
	if (-10.5 >= vsp && hbox_num != 4){
		vsp = -10.5
	}
}

if (attack == AT_DSPECIAL){ //Fireball
	if (hbox_num > 6){
		//Destroy Effect (Normal)
		if (hitbox_timer == 69){
			spawn_hit_fx( x - 10 * spr_dir, y - 18, player_id.fireball_normal_explode );
		}
		//Destroy Effect (Big)
		if (hitbox_timer == 119){
			spawn_hit_fx( x - 10 * spr_dir, y - 18, player_id.fireball_big_explode );
		}
		//Capping Fall Speed
		if (vsp >= 7.5){
			vsp = 7.5
		}
		//Capping Rising Speed
		if (-10.5 >= vsp){
			vsp = -10.5
		}
	}
}