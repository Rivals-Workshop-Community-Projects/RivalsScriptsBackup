
// buff banner aura effect behind soldier
if (buff_active) {
	
	var dspec_image = get_gameplay_time() / 6;
	
	draw_sprite_ext(sprite_get("dspecial_aura_back"), dspec_image, x, y, 2, 2, 0, c_white, 1);

}


// displays parachute
if (para_active) {
	


	if (spr_dir > 0) {
		draw_sprite_ext(sprite_get("uspecial_para"), uspec_image, x, y, 1, 1, 0, c_white, 1);
	}
	else if (spr_dir < 0) {
		draw_sprite_ext(sprite_get("uspecial_para"), uspec_image, x+(para_sprite_offset), y, 1, 1, 0, c_white, 1);
	}
}

// displays parachute behind soldier
if (para_undeploy_anim_timer > 0) {
	//spawn_dust_fx( x, y, sprite_get("uspecial_undeploy"), 10 );
	
	var uspec_image = get_gameplay_time() / 6;
	
	
	if (spr_dir > 0) {
		if (para_undeploy_anim_timer > 0 && para_undeploy_anim_timer <= 4) {
			draw_sprite_ext(sprite_get("uspecial_undeploy"), 2, x, y, 1, 1, 0, c_white, 1);
		}
		else if (para_undeploy_anim_timer > 4 && para_undeploy_anim_timer <= 8) {
			draw_sprite_ext(sprite_get("uspecial_undeploy"), 1, x, y, 1, 1, 0, c_white, 1);
		}
		else if (para_undeploy_anim_timer > 8 && para_undeploy_anim_timer <= 12) {
			draw_sprite_ext(sprite_get("uspecial_undeploy"), 0, x, y, 1, 1, 0, c_white, 1);
		}
	}
	else if (spr_dir < 0){
		if (para_undeploy_anim_timer > 0 && para_undeploy_anim_timer <= 4) {
			draw_sprite_ext(sprite_get("uspecial_undeploy"), 2, x+(para_sprite_offset), y, 1, 1, 0, c_white, 1);
		}
		else if (para_undeploy_anim_timer > 4 && para_undeploy_anim_timer <= 8) {
			draw_sprite_ext(sprite_get("uspecial_undeploy"), 1, x+(para_sprite_offset), y, 1, 1, 0, c_white, 1);
		}
		else if (para_undeploy_anim_timer > 8 && para_undeploy_anim_timer <= 12) {
			draw_sprite_ext(sprite_get("uspecial_undeploy"), 0, x+(para_sprite_offset), y, 1, 1, 0, c_white, 1);
		}
	}
	
	para_undeploy_anim_timer--;
}

// displays blastjump smoke in front of soldier for some reason
if (blastjumping) {
	
	
	//var oldie_x = x;
	//var oldie_y = y;

	
	
	if (blastjump_dust_timer == 10) {
		spawn_dust_fx(x, y, sprite_get("blastjump_dust"), 10);
		blastjump_dust_timer = 0;
		//oldie_x = x;
		//oldie_y = y;
	}
	
	
	//spawn_dust_fx(x, y, sprite_get("blastjump_dust"), 10);
	
	
	
	blastjump_dust_timer++;
	/*
	var bj_image = get_gameplay_time() / 2;
	
	draw_sprite_ext(sprite_get("blastjump_dust"), bj_image , oldie_x, oldie_y, 2, 2, 0, c_white, 1);
	*/
}

