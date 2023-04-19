if(state == PS_RESPAWN){
    shader_start();
	draw_sprite_ext(sprite_get("plat_bg"),image_index,x,y,spr_dir,1,0,c_white,1);
	shader_end();
}

// Draw Platform
if(instance_exists(clone_object_ID)){
	if ((attack == AT_EXTRA_3 || clone_object_ID.state == 25)//CL_FSPECIAL_AIR 25 {
	 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && free){
	 	// Set location of enhanced team attack
	 	if (attack == AT_EXTRA_3){
		 	plat_x = x + (30 * spr_dir);
			plat_y = y;
	 	}
	 	// Set location of enhanced team attack
	 	if (clone_object_ID.state == 25){
		 	plat_x = x;
			plat_y = y;
	 	}
		//if(state_timer = 10){ temp_x = player_id.x + (20 * player_id.spr_dir); temp_y = player_id.y - 10;}
		if(state_timer > 10){
			plat_exists = true;
			draw_sprite_ext(sprite_get("plat_clone_assist"),get_gameplay_time()/6,plat_x,plat_y,1,1,0,c_white, (state_timer/10) - 1);
		}
	}

	// Remove platform
	else if(plat_exists == true){
		if(plat_despawn_timer <= 0){plat_exists = false;plat_despawn_timer = 10;}
		else {
			draw_sprite_ext(sprite_get("plat_clone_assist"),get_gameplay_time()/6,plat_x,plat_y,1,1,0,c_white,((-1 * state_timer)/10) + 1);
			plat_despawn_timer--;
		}
	}
}