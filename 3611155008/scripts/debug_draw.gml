if get_match_setting(SET_HITBOX_VIS) with pHitBox if player_id == other && attack == AT_USPECIAL && hbox_num == 3 draw_sprite_ext(mask_index, 0, x, y, image_xscale, image_yscale, image_angle*spr_dir, c_white, .5);

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == 49{
	switch window{
		case 5:
		case 6:
		case 7:
		case 8:
		if fire_timer > 85 break;
		shader_start();
		if fire_timer < 8{
			draw_sprite_ext(sprite_get("finalarrowline"), fire_timer>4, x, y + 18, abs(firepos[1] - boompos[1])*.5 - 10 + 3, 2, -90, c_white, 1);
			draw_sprite_ext(sprite_get("finalarrow"), fire_timer>4, x, y + 18, 2, 2, -90, c_white, 1);
		}
		if fire_timer == clamp(fire_timer, 6, 22){
			if fire_timer%2 draw_sprite_ext(sprite_get("explosionsparkle"), fire_timer*.5 - 3, boompos[0], boompos[1], 2, 2, 0, c_white, 1);
			var rad = dsin(180*(fire_timer-6)/16)*300;
			gpu_set_blendmode(bm_add);
			draw_primitive_begin(pr_trianglefan);
			draw_vertex_color(boompos[0], boompos[1], nymph_color, .5)
			var i = 0;
			repeat 17{
				draw_vertex_color(boompos[0] + lengthdir_x(rad, i*22.5), boompos[1] + lengthdir_y(rad, i*22.5), nymph_color, 0)
				i++;
			}
			draw_primitive_end();
			gpu_set_blendmode(bm_normal);
		}
		if fire_timer == clamp(fire_timer, 23, 26) draw_sprite_ext(sprite_get("explosionparts"), (fire_timer-23), boompos[0], boompos[1], 2, 2, 0, c_white, 1);
		if fire_timer > 26{
			shader_end();
			var rad = min(sqr(fire_timer-26)*7, 1000);
			gpu_set_blendmode(bm_add);
			draw_primitive_begin(pr_trianglefan);
			draw_vertex_color(boompos[0], boompos[1], nymph_color, .7 - .7*(fire_timer-67)/12)
			var i = 0;
			repeat 17{
				draw_vertex_color(boompos[0] + lengthdir_x(rad, i*22.5), boompos[1] + lengthdir_y(rad, i*22.5), nymph_color, 0)
				i++;
			}
			draw_primitive_end();
			gpu_set_blendmode(bm_normal);
			draw_circle_color(boompos[0], boompos[1], 60 + 5*sqr(fire_timer-26), c_white, c_white, 1);
			draw_circle_color(boompos[0], boompos[1], 60.5 + 5*sqr(fire_timer-26), c_white, c_white, 1);
			if fire_timer >= 32{
				draw_circle_color(boompos[0], boompos[1], 60 + 5*sqr(fire_timer-32), c_white, c_white, 1);
				draw_circle_color(boompos[0], boompos[1], 60.5 + 5*sqr(fire_timer-32), c_white, c_white, 1);
			}
			if fire_timer == clamp(fire_timer, 30, 60){
				shader_end();
				var boomc = make_color_hsv(color_get_hue(nymph_color), color_get_saturation(nymph_color)*1.3, color_get_value(nymph_color)*1.2);
				var rad = ease_quadInOut(0, 200, fire_timer-30, 30);
				var wdt = 500*max(0, 1 - rad/180);
				draw_primitive_begin(pr_trianglestrip);
				draw_vertex_color(boompos[0] - wdt, boompos[1], boomc, 1);
				draw_vertex_color(boompos[0] - wdt*.4, boompos[1] - rad*.3, boomc, 1);
				draw_vertex_color(boompos[0] - wdt*.4, boompos[1] + rad*.3, boomc, 1);
				draw_vertex_color(boompos[0], boompos[1] - rad*.7, boomc, 1);
				draw_vertex_color(boompos[0], boompos[1] + rad*.7, boomc, 1);
				draw_vertex_color(boompos[0] + wdt*.4, boompos[1] - rad*.3, boomc, 1);
				draw_vertex_color(boompos[0] + wdt*.4, boompos[1] + rad*.3, boomc, 1);
				draw_vertex_color(boompos[0] + wdt, boompos[1], boomc, 1);
				draw_primitive_end();
				draw_primitive_begin(pr_trianglefan);
				draw_vertex_color(boompos[0], boompos[1], boomc, 1)
				var i = 0;
				var rad2 = rad + 20*(1 - (fire_timer-30)/30);
				repeat 17{
					draw_vertex_color(boompos[0] + lengthdir_x(rad2, i*22.5), boompos[1] + lengthdir_y(rad2, i*22.5), boomc, 1)
					i++;
				}
				draw_primitive_end();
				draw_primitive_begin(pr_trianglefan);
				draw_vertex_color(boompos[0], boompos[1], c_white, 1)
				var i = 0;
				repeat 17{
					draw_vertex_color(boompos[0] + lengthdir_x(rad, i*22.5), boompos[1] + lengthdir_y(rad, i*22.5), c_white, 1)
					i++;
				}
				draw_primitive_end();
				maskHeader();
				draw_primitive_begin(pr_trianglefan);
				draw_vertex_color(boompos[0], boompos[1], c_white, 1)
				var i = 0;
				repeat 17{
					draw_vertex_color(boompos[0] + lengthdir_x(rad, i*22.5), boompos[1] + lengthdir_y(rad, i*22.5), c_white, 1)
					i++;
				}
				draw_primitive_end();
				maskMidder();
				draw_circle_color(boompos[0] + lengthdir_x(rad*1.2, -fire_timer*22.5), boompos[1] + lengthdir_y(rad*1.2, -fire_timer*22.5), rad*(1 - (fire_timer-30)/30), boomc, boomc, 0);
				draw_circle_color(boompos[0] + lengthdir_x(rad*1.2, -fire_timer*22.5 + 180), boompos[1] + lengthdir_y(rad*1.2, -fire_timer*22.5 + 180), rad*(1 - (fire_timer-30)/30), boomc, boomc, 0);
				maskFooter();
				shader_start();
			}
			if fire_timer >= 38{
				rad = sqr(fire_timer-38)*10;
				draw_primitive_begin(pr_trianglefan);
				draw_vertex_color(boompos[0], boompos[1], c_white, 3*(1 - (fire_timer-66)/19))
				var i = 0;
				repeat 17{
					draw_vertex_color(boompos[0] + lengthdir_x(rad, i*22.5), boompos[1] + lengthdir_y(rad, i*22.5), c_white, 0)
					i++;
				}
				draw_primitive_end();
				gpu_set_blendmode(bm_normal);
			}
			if fire_timer >= 40 draw_sprite_ext(sprite_get("shockwavering"), 0, boompos[0], boompos[1], 2 + (fire_timer-40), 2 + (fire_timer-40), random_func_2(floor(current_time%200), 360, 1), c_white, 2 - (fire_timer - 40)/7);
		}
		break;
	}
	shader_end();
}

if has_rune("G") && get_player_damage(player) >= last_stand_dmg{
	var scx = view_get_xview();
	var scy = view_get_yview();
	var scw = view_get_wview();
	var sch = view_get_hview();
	var c = $cc0000
	gpu_set_blendmode(bm_add);
	draw_primitive_begin(pr_trianglestrip);
	draw_vertex_color(scx, scy, c, 1);
	draw_vertex_color(scx + 100, scy + 80, c, 0);
	draw_vertex_color(scx, scy + sch, c, 1);
	draw_vertex_color(scx + 100, scy + sch - 80, c, 0);
	draw_vertex_color(scx + scw, scy + sch, c, 1);
	draw_vertex_color(scx + scw - 100, scy + sch - 80, c, 0);
	draw_vertex_color(scx + scw, scy, c, 1);
	draw_vertex_color(scx + scw - 100, scy + 80, c, 0);
	draw_vertex_color(scx, scy, c, 1);
	draw_vertex_color(scx + 100, scy + 80, c, 0);
	draw_primitive_end();
	gpu_set_blendmode(bm_normal);
}



#define maskHeader()

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);


#define maskMidder()

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);


#define maskFooter()
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
gpu_set_blendenable(1);
gpu_set_colorwriteenable(true,true,true,true);