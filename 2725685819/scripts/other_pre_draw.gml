//ee


var char_mid = ((hurtboxID.bbox_top + hurtboxID.bbox_bottom)/2)

//colors
var trick_vfx_intensity = floor(trick_stack) * 2;
var trick_player, trick_color_r, trick_color_g, trick_color_b;

//get vars from me
var jump_sprite;
var style_sprite;
var chaos_sprite_w;
var chaos_sprite_s;

var slice_sprite;

if (instance_exists(other_player_id)){
with (other_player_id){
	
	chaos_sprite_s = sprite_get("chaos_strong");
	chaos_sprite_w = sprite_get("chaos_weak");
	style_sprite = sprite_get("style");
	jump_sprite = sprite_get("jump");

	slice_sprite = sprite_get("slice");
	
trick_player = get_player_color(player);
	if (trick_player == 8) {
	trick_color_r = get_color_profile_slot_r(trick_player, 7);
	trick_color_g = get_color_profile_slot_g(trick_player, 7);
	trick_color_b = get_color_profile_slot_b(trick_player, 7);
	}
	if (trick_player != 8) {
	trick_color_r = get_color_profile_slot_r(trick_player, 1);
	trick_color_g = get_color_profile_slot_g(trick_player, 1);
	trick_color_b = get_color_profile_slot_b(trick_player, 1);
	}
}
}

var trick_color = make_color_rgb(trick_color_r,trick_color_g,trick_color_b);



//getting Styled on

// print_debug(string(styled_on))
if (instance_exists(other_player_id)){
	
	if ("uspec_buff" in other_player_id){
		if (other_player_id.style_meter || other_player_id.sparda){
		
				var player_x = x + 40;
				var player_y = y - char_height - 40;
				
				var style_alpha = 1;
				
				//getting less cool
				if (trick_deterioration < 30)
				style_alpha = 0.5;
				
				
				//backround pulse
				if style_pulse < 3.5
				style_pulse+= 0.05;
				
				if (style_pulse >= 3.5 || style_alpha != 1) 
				style_pulse = 2;
				
				if player != other_player_id.player && get_player_team( player ) != get_player_team( other_player_id.player ){
							if (trick_marked){
								
							if (style_alpha == 1) && (styled_on == floor(trick_stack))
							draw_sprite_ext( style_sprite, 6, player_x, player_y, style_pulse, style_pulse, 0, c_black, 0.5 );
								
							draw_sprite_ext( style_sprite, 6, player_x, player_y, 2, 2, 0, c_white, style_alpha );
							
							}
							
							else if (floor(trick_stack) > 0){
								
							if (style_alpha == 1) && (styled_on == floor(trick_stack))
							draw_sprite_ext( style_sprite, floor(trick_stack)- 1, player_x, player_y, style_pulse, style_pulse, 0, c_black, 0.5 );
							
							draw_sprite_ext( style_sprite, floor(trick_stack)- 1, player_x, player_y, 2, 2, 0, c_white, style_alpha );
							
							}
							
							else{
							draw_sprite_ext( style_sprite, 0, player_x, player_y, 2, 2, 0, c_white, 0.5 );
							}
				}
		
		}
		//chaos counter
		else if (!other_player_id.style_meter){
		
					var player_x = x + 30;
					var player_y = y - char_height - 30;
					
					var draw_time = get_gameplay_time() * 0.1;
					
					//backround pulse
					if style_pulse < 3
					style_pulse+= 0.04;
					
					if (style_pulse >= 3)
					style_pulse = 2;
					
					// print_debug(string(styled_on));
					
					if (trick_stack > 0 && floor(trick_stack) != 7 ){
						
					with (other_player_id) shader_start();
						if (floor(trick_stack) == 6){
						gpu_set_fog(1,trick_color,0,0);
						draw_sprite_ext( chaos_sprite_s, draw_time, player_x, player_y, style_pulse, style_pulse, 0, trick_color, 0.5 );
						gpu_set_fog(0,0,0,0);
						draw_sprite_ext( chaos_sprite_s, draw_time, player_x, player_y, 2, 2, 0, c_white, 1 );
						}
						else{
						draw_sprite_ext( chaos_sprite_w, draw_time, player_x, player_y, 2, 2, 0, c_white, 1 );
						}
					with (other_player_id) shader_end();	
						// if (trick_stack == floor(trick_stack))
						draw_debug_text( player_x + 12, player_y-4, "x" + string(floor(trick_stack))   );
						// else
						// draw_debug_text( player_x + 12, player_y-4, "x" + string_format(trick_stack, 0, 1)   );
					
					}
		
		
		}
		
			
	}

}


//chaos distortion
if (floor(trick_stack) > 0 || trick_marked){


//COMPATIBILIT-HEE HEE
var distort_draw_y;

if ("hatstate" in other_player_id)
distort_draw_y = 0;
else
distort_draw_y = draw_y;


if (trick_marked)
trick_vfx_intensity = 5;


if  get_gameplay_time()%3 == 0
vfx_rand = random_func( 0, trick_vfx_intensity, true );

if (floor(trick_stack) > 5 || trick_marked)
trick_color = merge_colour(trick_color, c_white, 0.5);


gpu_set_fog(1,trick_color,0,0);
	if (!trick_marked){
	draw_sprite_ext( sprite_index, image_index, (x + draw_x) + vfx_rand, (y + distort_draw_y), (1 + small_sprites) * spr_dir, (1 + small_sprites), spr_angle, trick_color, floor(trick_stack)/10 );
	draw_sprite_ext( sprite_index, image_index, (x + draw_x) - vfx_rand, (y + distort_draw_y), (1 + small_sprites) * spr_dir, (1 + small_sprites), spr_angle, trick_color, floor(trick_stack)/10 );
	}
	else if (trick_marked){
	draw_sprite_ext( sprite_index, image_index, (x + draw_x) + vfx_rand, (y + distort_draw_y) + 2, (1.1 + small_sprites) * spr_dir, (1.1 + small_sprites), spr_angle, trick_color, 0.6 );
	draw_sprite_ext( sprite_index, image_index, (x + draw_x) - vfx_rand, (y + distort_draw_y) + 2, (1.1 + small_sprites) * spr_dir, (1.1 + small_sprites), spr_angle, trick_color, 0.6 );
	}
gpu_set_fog(0,0,0,0);

}

//Trick teleport VFX
if (instance_exists(other_player_id)){
	
	if ("uspec_buff" in other_player_id){	
		
		if (other_player_id.uspec_buff && (other_player_id.state == PS_ATTACK_AIR || other_player_id.state == PS_ATTACK_GROUND) && (other_player_id.attack == AT_USPECIAL) && other_player_id.window == 2) && other_player_id.grabbed_player == id{
		
		trick_color = make_color_rgb(trick_color_r,trick_color_g,trick_color_b);
		
		rad_rand = -30 + random_func( 0, 60, true );
		
		gpu_set_fog(1,trick_color,0,0);
			draw_sprite_ext( jump_sprite, 5, x+other_player_id.dist_range + rad_rand, y + rad_rand, (2) * spr_dir, 2, 0, trick_color, 0.5 );
			draw_sprite_ext( jump_sprite, 5, x+-other_player_id.dist_range + rad_rand, y + rad_rand, (2) * -spr_dir, 2, 0, trick_color, 0.5 );
		gpu_set_fog(0,0,0,0);
		
		
	
		}
	}




if (other_player_id.jce_darken){

var slice_dist = 8;
var slice_offset = slice_dist - (slice_dist * (jce_slice_time/50));


if (jce_sprite == -1){
jce_sprite = sprite_index;
jce_image = image_index;
}

sprite_index = asset_get("empty_sprite");

draw_circle_colour(x, char_mid, 200, c_black, c_black, 0);

gpu_set_blendmode_ext(bm_zero, bm_inv_src_colour);
draw_circle_colour(x, char_mid, 8000, c_white, c_black, 0);
gpu_set_blendmode(bm_normal);

//top slice
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
draw_sprite_ext( slice_sprite, 0, x - slice_offset, char_mid + slice_offset, 1, 1, 0, c_white, 1 );   
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);    
    
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
shader_start();
draw_sprite_ext( jce_sprite, jce_image, x - slice_offset, y + slice_offset, (1 + small_sprites) * spr_dir, 1 + small_sprites, 0, c_white, 1 );
shader_end();
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);

//bottom slice
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
draw_sprite_ext( slice_sprite, 1, x + slice_offset, char_mid - slice_offset, 1, 1, 0, c_white, 1 );    
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);    
    
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
shader_start();
draw_sprite_ext( jce_sprite, jce_image, x + slice_offset, y - slice_offset, (1 + small_sprites) * spr_dir, 1 + small_sprites, 0, c_white, 1 );
shader_end();
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);



draw_set_alpha(0.25);
draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);





draw_set_alpha(jce_alpha);
draw_circle_colour(x, y - 40, jce_circle, trick_color, trick_color, 0);
jce_circle += 25;
jce_alpha -= 0.01;


draw_set_alpha(1);

}



}





// if (jce_sprite != -1){
// shader_start();
// draw_sprite_ext( jce_sprite, jce_image, x + (20), y - 20, 1 + small_sprites, 1 + small_sprites, 0, c_white, 1 );
// shader_end();
// }







