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

//draw_debug_text( x, y + 30, string( cannon_dir ));

