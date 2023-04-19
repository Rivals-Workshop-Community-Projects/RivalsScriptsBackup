if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	if (attack == AT_USPECIAL) {
	    if (window == 2 || window == 3 && window_timer == 0){
		//to who ever coded the old version of uspecial: im gonna personally disassemble you
		var wtf_ang = cannon_dir-90;
		var wtf_fuck = 16;
		var wtf_x = -wtf_fuck * cos(degtorad(wtf_ang));
		var wtf_y = wtf_fuck * sin(degtorad(wtf_ang));
		
		var off_x = (spr_dir <= -1) ? -2 : 0;
		
		shader_start();
		draw_sprite_ext(sprite_get("uspecial_barrel_white"), 0, x + wtf_x + 1 + off_x, y + wtf_y - 17, 1, 1, cannon_dir, c_white, 0.5);
		draw_sprite_ext(sprite_get("uspecial_base_white"), 0, x + off_x, y, 1, 1, 0, c_white, 0.5);
		
		draw_sprite_ext(sprite_get("uspecial_barrel"), 0, x + wtf_x + 1 + off_x, y + wtf_y - 17, 1, 1, cannon_dir, c_white, 1);
		draw_sprite_ext(sprite_get("uspecial_base"), 0, x + off_x, y, 1, 1, 0, c_white, 1);
		shader_end();
		}
		if window == 3{
		    if window_timer >= 1 && window_timer <= 2 {
			shader_start();
			draw_sprite_ext(sprite_get("uspecial_barrel_white"), 1, x + wtf_x + 1 + off_x, y + wtf_y - 17, 1, 1, cannon_dir, c_white, 0.5);
		    draw_sprite_ext(sprite_get("uspecial_base_white"), 0, x + off_x, y, 1, 1, 0, c_white, 0.5);
		    draw_sprite_ext(sprite_get("uspecial_barrel"), 1, x + wtf_x + 1 + off_x, y + wtf_y - 17, 1, 1, cannon_dir, c_white, 1);
		    draw_sprite_ext(sprite_get("uspecial_base"), 0, x + off_x, y, 1, 1, 0, c_white, 1);
			shader_end();
			}
		    if window_timer >= 3 && window_timer <= 4 {
			shader_start();
			draw_sprite_ext(sprite_get("uspecial_barrel_white"), 2, x + wtf_x + 1 + off_x, y + wtf_y - 17, 1, 1, cannon_dir, c_white, 0.5);
		    draw_sprite_ext(sprite_get("uspecial_base_white"), 0, x + off_x, y, 1, 1, 0, c_white, 0.5);
		    draw_sprite_ext(sprite_get("uspecial_barrel"), 2, x + wtf_x + 1 + off_x, y + wtf_y - 17, 1, 1, cannon_dir, c_white, 1);
		    draw_sprite_ext(sprite_get("uspecial_base"), 0, x + off_x, y, 1, 1, 0, c_white, 1);
			shader_end();
			}
		}
	}
}

if has_rune("L") {
var wobble_alpha = wobble_timer2 * 0.05;

draw_set_alpha(wobble_alpha);
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);
}

//FINAL SMASH
with pHitBox {
	if (orig_player = other.player) && attack = 49 {
		// loop through after images
		for (var i = w_ai_cur; i >= 0; i -= 1) {
			var ind = (w_ai_tot + w_ai_ind - i) % w_ai_tot;
			var ai = w_afterimages[ind];
			var alpha = ai.alpha * (1 - i / (w_ai_cur + 1));
			var col = w_ai_col;
			// draw after image
			draw_sprite_ext(
				ai.sprite, ai.subimg,
				ai.x, ai.y,
				ai.xscale, ai.yscale,
				ai.rot, col,
				alpha
			);
			// draw after image a second time, but pure white to desaturate it
			gpu_set_fog(true, c_white, 0, 0);
			draw_sprite_ext(
				ai.sprite, ai.subimg,
				ai.x, ai.y,
				ai.xscale, ai.yscale,
				ai.rot, c_white,
				alpha * 0.4
			);
			gpu_set_fog(false, c_white, 0, 0);
		}
		// draw the hitbox sprite on top of itself just in case...
		with player_id { shader_start(); }
		draw_sprite_ext(actual_sprite_index, image_index, x, y, draw_xscale, draw_yscale, proj_angle, c_white, draw_alpha);
		with player_id { shader_end(); }
	}
}

//draw_debug_text( x, y + 30, string( cannon_dir ));

