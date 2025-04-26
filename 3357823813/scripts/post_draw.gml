//
if state == PS_RESPAWN || plat_test {
	if get_player_color(player) == 11 || blood_glow < 0 {
		var offset = 2+dsin(get_gameplay_time()*5);
		var alpha = .5+dsin(get_gameplay_time()*5)*.2;
		gpu_set_blendmode(bm_add);
		gpu_set_fog(true, c_red, 1, 0)
		draw_sprite_ext(sprite_get("plat_trueform"), 0, x-offset, y-offset, 2*spr_dir, 2, 0, c_white, 0.5);
		draw_sprite_ext(sprite_get("plat_trueform"), 0, x+offset, y-offset, 2*spr_dir, 2, 0, c_white, 0.5);
		draw_sprite_ext(sprite_get("plat_trueform"), 0, x+offset, y+offset, 2*spr_dir, 2, 0, c_white, 0.5);
		draw_sprite_ext(sprite_get("plat_trueform"), 0, x-offset, y+offset, 2*spr_dir, 2, 0, c_white, 0.5);
		gpu_set_fog(false, c_white, 1, 0);
		gpu_set_blendmode(bm_normal);
	}
	
	var _y = y+dsin(get_gameplay_time()*2)*1
	
	//dracula
	shader_start();
	draw_sprite_ext(sprite_get("plat_trueform"), 0, x, _y, 2, 2, 0, c_white, 1);
	shader_end();
	gpu_set_fog(1,c_white,0,1);
	draw_sprite_ext(sprite_get("plat_trueform"), 0, x, _y, 2, 2, 0, c_white, .5);
	gpu_set_fog(0,c_white,0,1);

	shader_start();
	//hands
	var hand_angle = [dsin(round((get_gameplay_time()*1.5)/2)*2)*3, dsin(round((get_gameplay_time()*1.5)/2)*2)*5, dsin(round((get_gameplay_time()*1.5)/2)*2)*8, dsin(round((get_gameplay_time()*1.5)/2)*2)*13+13];
	var pos = [-120, 8+dsin(get_gameplay_time()*2)*1];
		draw_sprite_ext(sprite_get("plat_trueform_hand"), 0, x+pos[0], y+pos[1], 2, 2, hand_angle[0], c_white, 1);
		draw_sprite_ext(sprite_get("plat_trueform_hand"), 0, x-pos[0], y+pos[1], -2, 2, -hand_angle[0], c_white, 1);
	pos[0] += lengthdir_x(29.15,darctan2(-25,-15)+hand_angle[0]);
	pos[1] += lengthdir_y(29.15,darctan2(-25,-15)+hand_angle[0])+dsin(round((get_gameplay_time()*1.5)/2)*2)*2;
		draw_sprite_ext(sprite_get("plat_trueform_hand"), 1, x+pos[0], y+pos[1], 2, 2, hand_angle[1], c_white, 1);
		draw_sprite_ext(sprite_get("plat_trueform_hand"), 1, x-pos[0], y+pos[1], -2, 2, -hand_angle[1], c_white, 1);
	pos[0] += lengthdir_x(12.17,darctan2(2,-12)+hand_angle[1]);
	pos[1] += lengthdir_y(12.17,darctan2(2,-12)+hand_angle[1])+dsin(round((get_gameplay_time()*1.5)/2)*2)*2;
		draw_sprite_ext(sprite_get("plat_trueform_hand"), 2, x+pos[0], y+pos[1], 2, 2, hand_angle[2], c_white, 1);
		draw_sprite_ext(sprite_get("plat_trueform_hand"), 2, x-pos[0], y+pos[1], -2, 2, -hand_angle[2], c_white, 1);
	pos[0] += lengthdir_x(14.87,darctan2(5,-14)+hand_angle[2]);
	pos[1] += lengthdir_y(14.87,darctan2(5,-14)+hand_angle[2])+dsin(round((get_gameplay_time()*1.5)/2)*2)*2;
		draw_sprite_ext(sprite_get("plat_trueform_hand"), 3, x+pos[0], y+pos[1], 2, 2, hand_angle[3], c_white, 1);
		draw_sprite_ext(sprite_get("plat_trueform_hand"), 3, x-pos[0], y+pos[1], -2, 2, -hand_angle[3], c_white, 1);

	//heads
	draw_sprite_ext(sprite_get("plat_trueform_head"), 0, x-50, y-42+dsin(get_gameplay_time()*5)*1, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("plat_trueform_head"), 0, x+50, y-42+dsin((get_gameplay_time()+30)*5)*1, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("plat_trueform_head"), 0, x-30, y+24+dsin((get_gameplay_time()+60)*5)*1, 2, 2, 0, c_white, 1);
	shader_end();
}

if state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR {
	if attack == AT_USPECIAL {
		if window == 2 || window == 4 {
		}
	}
	if attack == AT_DSPECIAL {
		if window == 2 || window == 4 {
			gpu_set_blendmode(bm_add);
			draw_sprite_ext(sprite_get("fx_dspecial_fireball"), get_gameplay_time()*.3+2, x+50*spr_dir, y-56, -2.1, 2.1, angle, c_white, .5);
			gpu_set_blendmode(bm_normal);
			draw_sprite_ext(sprite_get("fx_dspecial_fireball"), get_gameplay_time()*.3, x+50*spr_dir, y-54, 2, 2, angle, c_white, .75);
		}
	}
	if attack == AT_DAIR {
		if window >= 3 && window <= 5 {
			draw_sprite_ext(sprite_get("fx_dair_fall"), get_gameplay_time()*.3+2, x+8*spr_dir, y, -2, 2, 1, c_white, 1);
			draw_sprite_ext(sprite_get("fx_dair_fall"), get_gameplay_time()*.3+2, x+8*spr_dir, y, 2, 2, 1, c_white, 1);
		}
	}
	if attack == AT_FSTRONG {
		if window == 3 {
			var scaley = window_timer < 4 ? lerp(0,1,window_timer/4) : lerp(1,0,(window_timer-4)/9);
			var angle = spr_dir ? lerp(-70,-15,window_timer/13) : lerp(250,195,window_timer/13);
			var trail_angle = spr_dir ? lerp(-70,-15,(window_timer-5)/13) : lerp(250,195,(window_timer-5)/13);
			//print(string(angle)+", "+string(trail_angle));
			
			gpu_set_blendmode(bm_add);
			if window_timer >= 1 {
				draw_primitive_begin(pr_trianglestrip);
					draw_vertex_color(x+12*spr_dir, y-72, $68E0F8, 0);
					draw_vertex_color(x+12*spr_dir +lengthdir_x(fstrong_laser,angle), y-72 +lengthdir_y(fstrong_laser,angle), $68E0F8, .4);
					draw_vertex_color(x+12*spr_dir +lengthdir_x(fstrong_laser_trail,trail_angle), y-72 +lengthdir_y(fstrong_laser_trail,trail_angle), $187BFF, 0);
					draw_vertex_color(x+12*spr_dir, y-72, $187BFF, 0);
				draw_primitive_end();
			}
			draw_sprite_ext(sprite_get("fx_fstrong_beam"), 0, x+12*spr_dir, y-72, fstrong_laser, scaley, angle, c_white, .5);
			gpu_set_blendmode(bm_normal);
		}
	}
	if attack == AT_DSTRONG {
		switch window {
			case 5:
				var scale = lerp(0,2,window_timer/32);
				var alpha = 1;
				break;
			case 6:
				var scale = 2+dsin(window_timer*2)*.1;
				var alpha = 1;
				break;
			case 7:
			case 8:
				var scale = window_timer < 16 ? lerp(2.1,2,window_timer/16) : 2;
				var alpha = window_timer < 16 ? lerp(1,0,window_timer/16) : 0;
				break;
		}
		if (window >= 5 && window <= 8) {
			demonic_megiddo(sprite_get("dstrong_demonic_megiddo"), 0, x, y, scale, alpha);
		}
	}//Attempting to prevent weird Demonic Megiddo flash bug
	if(get_gameplay_time()==1){
		demonic_megiddo(sprite_get("dstrong_demonic_megiddo"), 0, x, y, 1, 1);
	}
}

//AESTHETICS
if sprite_index == sprite_get("parry") && image_index == 1 { 
	shader_start();
	draw_sprite_ext(sprite_index, image_index, x, y, (1+small_sprites)*spr_dir, 1+small_sprites, 0, c_white, 1); 
	shader_end();
}

if (blood_glow < 0){
	var blood_start = 2.75;
	var c_blood = make_colour_rgb(get_color_profile_slot_r(get_player_color(player),1),get_color_profile_slot_g(get_player_color(player),1),get_color_profile_slot_b(get_player_color(player),1));
	
	gpu_set_blendmode(bm_add);
	gpu_set_fog(1,$0000FF,0,1);
	draw_sprite_ext(sprite_index, image_index, x, y, (1+small_sprites)*spr_dir, 1+small_sprites, image_angle, c_white, .3*image_alpha*abs(blood_glow));
	gpu_set_fog(0,c_white,0,1);
	if((attack == AT_FSPECIAL or attack == AT_FSPECIAL_2) and window == 5){
		draw_sprite_ext(sprite_get("fx_fspecial_outline"), image_index, x+blood_glow/2, y +blood_glow/2, spr_dir*(blood_start+blood_glow/2), blood_start+blood_glow/2, image_angle, c_white, 1*image_alpha*abs(blood_glow));
	}
	gpu_set_blendmode(bm_normal);
}



#define demonic_megiddo(){
	var red = make_colour_rgb(get_color_profile_slot_r(get_player_color(player),3),get_color_profile_slot_g(get_player_color(player),3),get_color_profile_slot_b(get_player_color(player),3));
	var darkred = make_colour_rgb(get_color_profile_slot_r(get_player_color(player),4),get_color_profile_slot_g(get_player_color(player),4),get_color_profile_slot_b(get_player_color(player),4));
	
	//bg
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);

	draw_set_alpha(1);
		draw_sprite_ext(sprite_get("dstrong_demonic_megiddo_mask"), 0, argument[2], argument[3], argument[4], argument[4], 0, c_white, argument[5]);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);

	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
		draw_sprite_tiled_ext(argument[0], argument[1], x-get_gameplay_time()*2, y-get_gameplay_time(), 4, 2, darkred, .75);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	
	//fg
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);

	draw_set_alpha(1);
		draw_sprite_ext(sprite_get("dstrong_demonic_megiddo_mask"), 0, argument[2], argument[3], argument[4], argument[4], 0, c_white, argument[5]*.5);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);

	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
		draw_sprite_tiled_ext(argument[0], argument[1], x, y-get_gameplay_time()*4, 4, 2, window == 7 ? darkred : red, .4);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	
	//vignette
	draw_sprite_ext(sprite_get("dstrong_demonic_megiddo_mask"), 1, argument[2], argument[3], argument[4], argument[4], 0, red, argument[5]*.75);
	
	//border fg
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);

	draw_set_alpha(1);
		draw_primitive_begin(pr_trianglestrip);
			draw_vertex_color(x-128*argument[4], y-18, c_white, 0);
			draw_vertex_color(x-128*argument[4]*.85, y-18, c_white, argument[5]*.5);
			draw_vertex_color(x-128*argument[4]*.85, y, c_white, argument[5]*.5);
			draw_vertex_color(x+128*argument[4]*.85, y-18, c_white, argument[5]*.5);
			draw_vertex_color(x+128*argument[4]*.85, y, c_white, argument[5]*.5);
			draw_vertex_color(x+128*argument[4], y-18, c_white, 0);
		draw_primitive_end();
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
		draw_sprite_part_ext(sprite_get("fx_demonic_megiddo_border"), get_gameplay_time()*.35, 0, 0, 144*argument[4]*.9, 60, argument[2]+128*argument[4]*.9, argument[3]-18, -argument[4]*1.8, 2, red, 1);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}