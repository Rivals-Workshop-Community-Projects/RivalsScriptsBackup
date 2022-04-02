//post-draw
/*
muno_event_type = 4;
user_event(14);
*/

//// [ 💧 BLU PARTICLE SYSTEM 💧 ] ////
/*
for (var i = 0; i < ds_list_size(bps_post_active_parts); i+= 1) {
	temp_part = bps_post_active_parts[| i]
	if (temp_part.init == false) {
		temp_part.init = true
		temp_part.angle = (temp_part.min_angle + random_func_2(i, (abs(temp_part.min_angle-temp_part.max_angle)), false))-270
		temp_part.speed = temp_part.min_speed + random_func(i, (abs(temp_part.min_speed-temp_part.max_speed)), false)
		print(temp_part.angle)
	} else if (temp_part.life == temp_part.lifetime) {
		ds_list_delete(bps_post_active_parts, i)
	} else {
		if (not bps_game_paused) {
			temp_part.gravity += temp_part.weight
			old_x = temp_part.x
			old_y = temp_part.y
			temp_part.x += sin(degtorad(temp_part.angle))*(temp_part.speed*temp_part.dir)
			temp_part.y += (cos(degtorad(temp_part.angle))*temp_part.speed)+temp_part.gravity
			new_x = temp_part.x
			new_y = temp_part.y
			temp_part.x = temp_part.x&~2
			temp_part.y = temp_part.y&~2
			temp_part.life += 1
			temp_part.spr_angle = point_direction(new_x, new_y, old_x, old_y)-90
		}
		shader_start()
		draw_sprite_ext(temp_part.sprite, 0, temp_part.x, temp_part.y, (small_sprites+1), (small_sprites+1), (temp_part.spr_angle), c_white, 1)
		shader_end()
		ds_list_set(bps_post_active_parts, i, temp_part)
 	}
}
*/
//Red Uair Stuff
if(ruair_glow_count >= 8){
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir*2,2,0, $FFFFFF, 1)
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir*2,2,0, $FFFFFF, 1)
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir*2,2,0, $FFFFFF, 1)
    gpu_set_blendmode(bm_normal);
}

if(ruair_glow_count >= 6 && ruair_glow_count <= 8){
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir*2,2,0, $FFFFFF, 1)
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir*2,2,0, $FFFFFF, 1)
    gpu_set_blendmode(bm_normal);
}

if(ruair_glow_count >= 4 && ruair_glow_count <= 6){
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir*2,2,0, $FFFFFF, 1)
    gpu_set_blendmode(bm_normal);
}

/////////////////////////////////