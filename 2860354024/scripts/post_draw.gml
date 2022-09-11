var show_ammo = draw_indicator;
var exct_percent = (excitement/100);
var pulse_color_r, pulse_color_g, pulse_color_b;
var pulse_player = get_player_color(player);

pulse_color_r = (pulse_player == 0) ? 255 : get_color_profile_slot_r(pulse_player, 1);
pulse_color_g = (pulse_player == 0) ? 0 : get_color_profile_slot_g(pulse_player, 1);
pulse_color_b = (pulse_player == 0) ? 0 : get_color_profile_slot_b(pulse_player, 1);

var pulse_color = make_color_rgb(pulse_color_r,pulse_color_g,pulse_color_b);

if (show_ammo){

	// var ammo_text = "";

	// for (i = 0; i < ammo; i++)
	// ammo_text += " ;";

	// draw_debug_text( x-16, y+10, "AMMO:" + ammo_text   );

	// draw_debug_text( x-16, y+30, "EXCT:" + string(excitement)   );

if (object_index != oTestPlayer){
	var meter_offset_x = -30;
	var meter_offset_y = 27;
	var meter_color = pulse_color;

	if (nero_alt)
		meter_color = make_color_rgb(189,102,255);

	if (!excited)
		meter_color = c_white;

		shader_start();
		draw_sprite_ext(sprite_get("excite_meter"), ammo, x, y - (char_height + meter_offset_y), 1, 1, 0, c_white, 1);
		shader_end();
		draw_sprite_ext(sprite_get("excite_healing"), !exct_has_healed, x, y - (char_height + meter_offset_y), 1, 1, 0, c_white, 1);

		draw_rectangle_colour(x + meter_offset_x, y - (char_height + meter_offset_y - 1), x + meter_offset_x + (56 * exct_percent) , y - (char_height + meter_offset_y + 4), meter_color, meter_color, meter_color, meter_color, false); 

		draw_sprite_ext(sprite_get("excite_border"), 0, x, y - (char_height + meter_offset_y), 1, 1, 0, get_player_hud_color( player ), 1);
}


}



//ee
	





shader_start();


if (excited){

if (!mako_alt){
draw_sprite_ext( sprite_index, image_index,
x,
y,
(1 + small_sprites) * spr_dir, (1 + small_sprites), 
spr_angle,
pulse_color, 0.5 - pulse_timer * 1);
}

shader_end();



if (mako_alt){
	
gpu_set_fog(1,c_red,0,0);
draw_sprite_ext(sprite_index, image_index, x, y, (1 + small_sprites)* spr_dir, (1 + small_sprites), 0, c_white, 0.10);
gpu_set_fog(0,0,0,0);
	
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
draw_sprite_ext(sprite_index, image_index, x, y, 2 * spr_dir, 2, 0, c_black, 0.5);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);


gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

draw_sprite_ext(sprite_get("mako_lifefibers"), get_gameplay_time()*0.2, x, y - 50, 1, 1, 0, c_white, 1);

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
}

shader_start();




}



switch (state){
	
	case PS_RESPAWN:
		gpu_set_blendmode(bm_add);
		draw_sprite_ext(sprite_get("plat_draw"), 0, x, y, 2 * spr_dir, 2, 0, c_white, 1);
		gpu_set_blendmode(bm_normal);
	break;
	

	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:

			switch (attack){
				case AT_TAUNT_2:
				if (nero_alt || mako_alt){
					
					if (mako_alt){
						if (window == 1){
							if (window_timer < get_window_value(attack, 1, AG_WINDOW_SFX_FRAME))
							draw_sprite_ext(sprite_get("mako_light"), 0, x, y, 30, 200, 0, c_white, 0.8);
							else{
							draw_sprite_ext(sprite_get("mako_light"), 0, x - 410*2, y, 20, 1000, -5, c_white, 0.6);
							draw_sprite_ext(sprite_get("mako_light"), 0, x + 420*2, y, 20, 1000, 5, c_white, 0.6);
							}
							
							var lowest_depth = 0;
							
							with (oPlayer){
								if (depth < lowest_depth)
									lowest_depth = depth
							}
							
							depth = lowest_depth
						}
					}

					break;
					
				}
				case 40:


				
				gpu_set_blendmode(bm_add);
				if (floor(image_index) == 6){
					if (screen_loop == 0){
							draw_sprite_ext(sprite_get("_tablet_screen"), image_index - 1, x, y, 2 * spr_dir, 2, 0, c_white, 1);
								screen_timer++;

								if (screen_timer == 20){
									screen_loop = 1;
									screen_timer = 0;
								}
					}
					else{
								draw_sprite_ext(sprite_get("_tablet_screen"), image_index, x, y, 2 * spr_dir, 2, 0, c_white, 1);
								screen_timer++;

								if (screen_timer == 20){
									screen_loop = 0;
									screen_timer = 0;
								}
					}
				}
				else{
							draw_sprite_ext(sprite_get("_tablet_screen"), image_index, x, y, 2 * spr_dir, 2, 0, c_white, 1);

					}
				
				gpu_set_blendmode(bm_normal);

				if (floor(image_index) == 6 && get_player_color(player) == 22)
				draw_sprite_ext(sprite_get("morb"), state_timer / 10, x+62*spr_dir, y-33, -0.86 * spr_dir, 1.2, 0, c_white, 0.8);
				else
				{
					draw_sprite_ext(sprite_get("_tablet_logo"), image_index, x, y, 2 * spr_dir, 2, 0, c_white, 1);
				}

				draw_sprite_ext(sprite_get("_tablet_draw"), image_index, x, y, 2 * spr_dir, 2, 0, c_white, 1);
				
				
				
				break;

			case AT_FSPECIAL:

			//suucc
				if (instance_exists(grabbed_player) && !exct_has_healed && excited){
					
				with(grabbed_player){
				var shake_intensity = 10;
					
				var shake_x = -shake_intensity + random_func( 1, shake_intensity+1, false );
				var shake_y = -shake_intensity + random_func( 2, shake_intensity+1, false );
					
				shader_start();
				gpu_set_blendmode(bm_add);
					draw_sprite_ext(sprite_index, image_index, x + shake_x, (y - (bbox_top - bbox_bottom)/8) + shake_y, (1 + small_sprites) * 1.25 * spr_dir, (1 + small_sprites) * 1.25, 0, pulse_color, 0.5);
				gpu_set_blendmode(bm_normal);
				shader_end();
				}
					
				}

			
			break;
			
			case 48:
			
			if (nero_alt){
				if (image_index < 3)
				draw_sprite_ext(sprite_index, image_index, x, y-20, 2, 12, 0, c_white, 1);
				
			}
			

			
			break;


			}
	break;
}


shader_end();

if (turpix_circle != -1 && turpix_circle < 500){
	
		gpu_set_blendmode(bm_add);
		draw_set_alpha((500-turpix_circle)/500);
		draw_circle_colour(x + 25*spr_dir, y - 20, turpix_circle, pulse_color, pulse_color, 0);
		turpix_circle += 20;
		draw_set_alpha(1);
		gpu_set_blendmode(bm_normal);
}

//nero music
if (nero_music){
	
	if (circle_timer != -1 && circle_timer < 500){
	gpu_set_blendmode(bm_add);
	draw_set_alpha((500-circle_timer)/500);
	draw_circle_colour(x - 10 * spr_dir, y - 40, circle_timer, c_black, pulse_color, 0);
	circle_timer += 20;
	draw_set_alpha(1);
	gpu_set_blendmode(bm_normal);	
	}else
	circle_timer = -1;
	
suppress_stage_music(0,0.02);
}


//dummy bloom
if (tab_dummy_master != noone){
gpu_set_fog(1,c_white,0,0);
draw_sprite_ext(sprite_index, image_index, x, y, (1 + small_sprites)* spr_dir, (1 + small_sprites), 0, pulse_color, 0.10);
gpu_set_fog(0,0,0,0);

var shake_intensity = 2;
	
var shake_x = -shake_intensity + random_func( 1, shake_intensity*2, false );
var shake_y = -shake_intensity + random_func( 2, shake_intensity*2, false );	
	
shader_start();
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, image_index, x + shake_x, y + shake_y, (1 + small_sprites) * 1.1 * spr_dir, (1 + small_sprites) * 1.1, 0, pulse_color, 1);
gpu_set_blendmode(bm_normal);
shader_end();
	
}

// shader_start();
// draw_sprite_ext(sprite_get("portrait"), 0, x, y-300, 1, 1, 0, c_white, 1);
// shader_end();






