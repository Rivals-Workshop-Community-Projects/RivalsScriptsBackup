//pre draw
/*if (attack == AT_USPECIAL) {
    if (window == 2) {
        var rmod = 2.5;
        draw_circle_color(x, y, UTIMER_MAX*rmod, c_red, c_blue, true);
        draw_circle_color(x, y, utimer*rmod, c_red, c_red, false);
	}
}*/
shader_start();
if (!hookattached) {
	with(obj_article3) {
		if (player_id == other.id) {
			
			var chain_sprite = sprite_get("bloodlink");
			var chain_sprite2 = sprite_get("bloodlink2");
			var hook_x = x-(4*-spr_dir);
			var hook_y = y;
			var plr_y = player_id.y-10;
			var plr_x = player_id.x;
			var xDist = hook_x - plr_x;
			var yDist = hook_y - plr_y;
			var chainWidth = sprite_get_width(chain_sprite);
			var chainLength = abs(sqrt(sqr(xDist) + sqr(yDist))); //Get the length of the entire chain.
			var chainAngle = degtorad(point_direction(hook_x, hook_y, plr_x, plr_y)); //get the angle of the chain and convert it from degrees to radians
			var sprite2 = false;
			//image_angle = point_direction(hook_x, hook_y, player_id.x, player_id.y);
			
			if (distance_to_point(plr_x, plr_y) > 30) {
				for(var i = 0; i < chainLength; i += chainWidth) { //Run a loop so we draw every chain-segment
					if (i > 0 && i % chainWidth == 0) {
						if (sprite2) {
							sprite2 = false;
						}
						else {
							sprite2 = true;
						}
					}
					
					var draw_x = hook_x + (cos(chainAngle) * i) + (cos(chainAngle) * (chainWidth/2));
					var draw_y = (hook_y - (sin(chainAngle) * i)) + (sin(chainAngle) * (chainWidth/2));
					if (point_distance(draw_x, draw_y, plr_x, plr_y-20) > 30) {
						if (sprite2) {
							draw_sprite_ext(chain_sprite2, 0, draw_x, draw_y, 1, 1, radtodeg(chainAngle), c_white, 1);
						}
					    else {
					    	draw_sprite_ext(chain_sprite, 0, draw_x, draw_y, 1, 1, radtodeg(chainAngle), c_white, 1);
					    }
					}
				}
			}
		}
	}
}
shader_end();
