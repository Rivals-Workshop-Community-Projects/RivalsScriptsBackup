// other_post_draw.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/animation_scripts.html#other-pre-draw-gml-and-other-post-draw-gml
// Draws in FRONT of all OTHER characters

if("small_sprites" in self) var s = (1 + small_sprites);

if(instance_exists(other_player_id) && sludged_id == other_player_id && !fucking_dying_timer){
    gpu_set_alphatestenable(true);
	gpu_set_fog(1, other_player_id.sludge_color, 0, 1);
	

	var a_scale = ease_linear(-2, 6, sludge_amount, sludge_max);
	a_scale /= 10;
	var a = clamp(a_scale, 0, .4);
	
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, s * spr_dir, s, spr_angle, other_player_id.sludge_color, a);
    
	gpu_set_fog(0, c_white, 0, 0);
	gpu_set_alphatestenable(false);
}

if(instance_exists(other_player_id) && diseased_id == other_player_id && !fucking_dying_timer){
	with(other_player_id) var smog = sprite_get("smog_tile");
	createMask(smog)
	
    gpu_set_alphatestenable(true);
    
    if strong_flashing {
    	gpu_set_fog(1, c_yellow, 0, 1);
    	draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, s * spr_dir, s, spr_angle, c_yellow, .5);
    }
    
    if invincible || hurtboxID.sprite_index == asset_get("empty_sprite") {
    	gpu_set_fog(1, c_white, 0, 1);
    	draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, s * spr_dir, s, spr_angle, c_white, .5);
    }
    
    if state == PS_PRATFALL || state == PS_PRATLAND {
    	gpu_set_fog(1, c_black, 0, 1);
    	draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, s * spr_dir, s, spr_angle, c_black, .5);
    }
    
	gpu_set_fog(1, other_player_id.disease_color, 0, 1);
	
	if(diseased_timer > diseased_timer_max - 30){
		var a_scale = ease_linear(10, 5, diseased_timer_max - diseased_timer, 30);
		a_scale /= 10;
		var a = clamp(a_scale, .5, 1);
		
		draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, s * spr_dir, s, spr_angle, other_player_id.disease_color, a);
	} else {
		draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, s * spr_dir, s, spr_angle, other_player_id.disease_color, .4);
	}
    
	gpu_set_fog(0, c_white, 0, 0);
	gpu_set_alphatestenable(false);
	
    if other_player_id.genesis && (random_func_2(4, 4, 1) == 3 || state == PS_HITSTUN || state == PS_TUMBLE){
		var smallSprites = small_sprites + 1
		var size_mod = 1;
		
		shader_start();
	
		var fs = random_func(0, sprite_height -1, 1);
		draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func_2(20, char_height - 20, 1)+1, (x+(random_func_2(2, 3, 1)-1)*7) - sprite_get_xoffset(sprite_index)*spr_dir*smallSprites*size_mod, y+fs*smallSprites - sprite_get_yoffset(sprite_index)*smallSprites*size_mod, spr_dir*smallSprites*size_mod, smallSprites*size_mod, other_player_id.glitch_color, 1);
		
		shader_end();
    }
}

if(instance_exists(other_player_id) && undiseased_id == other_player_id && !fucking_dying_timer){
    gpu_set_alphatestenable(true);
	gpu_set_fog(1, c_green, 0, 1);
		
	var a_scale = ease_linear(10, 0, undiseased_timer_max - undiseased_timer, undiseased_timer_max);
	a_scale /= 10;
	var a = clamp(a_scale, 0, 1);
	
	draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, s * spr_dir, s, spr_angle, c_green, a);
    
	gpu_set_fog(0, c_white, 0, 0);
	gpu_set_alphatestenable(false);
}


if(instance_exists(other_player_id) && fucking_dying_id == other_player_id && other_player_id.kill_goof && get_player_stocks(player) == 1){
	shader_start();
	
	if(fucking_dying_timer >= 250){ 
		
		var x_scale = s*2 + random_func_2(floor(abs(x%200)), floor((fucking_dying_timer - 250)/(10/s)), true);
		var y_scale = s*2 + random_func_2(floor(abs(y%200)), floor((fucking_dying_timer - 250)/(10/s)), true);
		var rot_scale = random_func_2(floor(abs((x+y)%200)), 360, true);
		var a_scale = ((fucking_dying_timer - 260)/80)*2;
		
		draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, x_scale, y_scale, rot_scale, c_white, true);
		
		shader_end();
		
		gpu_set_alphatestenable(true);
		gpu_set_fog(1, other_player_id.disease_color, 0, 1);
		
		draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, x_scale, y_scale, rot_scale, other_player_id.disease_color, a_scale);
		
		gpu_set_fog(0, c_white, 0, 0);
		gpu_set_alphatestenable(false);
	} else if(fucking_dying_timer >= 220){ 
		var x_scale = s + (fucking_dying_timer - 220)*s;
		draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, x_scale, s, spr_angle, c_white, 1);
	} else if(fucking_dying_timer >= 190){ 
		var scale = clamp(s - (fucking_dying_timer - 190)/(16/s), 0, 1 + small_sprites);
		draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, scale, scale, spr_angle, c_white, 1);
	} else if(fucking_dying_timer >= 130) draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, s, s, random_func_2(floor(abs((x+y)%200)), 360, true), c_white, 1);
    else draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, s, s, spr_angle, c_white, 1);
    
	
	shader_end();
}

if(instance_exists(other_player_id) && fucking_dying_id == other_player_id && (!other_player_id.kill_goof || get_player_stocks(player) > 1) && fucking_dying_timer){
	
	var x_scale = s + random_func_2(floor(abs(x%200)), floor((fucking_dying_timer)/(10/s)), true);
	var y_scale = s*2 + random_func_2(floor(abs(y%200)), floor((fucking_dying_timer)/(10/s)), true);
	var rot_scale = random_func_2(floor(abs((x+y)%200)), 360, true);
	var a_scale = .5 + ((fucking_dying_timer - 10)/90);
	var a_scale = clamp(a_scale, .5, 1);
	
	draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, x_scale, y_scale/2, rot_scale, c_white, true);
	
	shader_end();
	
	gpu_set_alphatestenable(true);
	gpu_set_fog(1, other_player_id.disease_color, 0, 1);
	
	draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, x_scale, y_scale/2, rot_scale, other_player_id.disease_color, a_scale);
	
	gpu_set_fog(0, c_white, 0, 0);
	gpu_set_alphatestenable(false);
		
}

#define maskHeader()
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    
}
//================================================================================
#define maskMidder()
// Reenables draw but only within the region drawn between maskHeader and maskMidder.
// Lasts until maskFooter is called.
//================================================================================
{
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
//================================================================================
#define maskFooter()
// Restores normal drawing parameters//================================================================================
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}

//================================================================================
#define createMask(the_image)
// creates the masking//================================================================================
{
    maskHeader();
    maskMidder();
    maskFooter();
    shader_start();
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir * (small_sprites + 1), (small_sprites + 1), spr_angle, c_white, 1);
    shader_end();
    maskHeader();
    draw_set_alpha(0);
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, 0);
    draw_set_alpha(1);
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir * (small_sprites + 1), (small_sprites + 1), spr_angle, c_white, .5);
    maskMidder();
    with other_player_id {
    	shader_start();
    	draw_sprite_tiled_ext(the_image, 0, other.x + 75, other.y - get_gameplay_time()%300, .5, .5, c_white, 1);
    	shader_end();
    }
    maskFooter();
}