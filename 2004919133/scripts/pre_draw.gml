if (attack == AT_NSPECIAL_2){
	if (window == 2 || window == 3){
		if (hookshot_hitbox != -4){
			var x_offset = -14;
			var y_offset = -24;
			
			var distance = point_distance(x, y, hookshot_hitbox.x + x_offset, hookshot_hitbox.y);
			var spacing = 8;
			var number = distance / spacing;
			
			for (var i = 0; i < number; i++) {
				draw_sprite_ext(sprite_get("nspec_hook_line"), 0, x + (spacing * i)*spr_dir, y + y_offset, 1, 1, 0, c_white, 1);
			}
		}
	}
}


var range_x_offset = 0;
var range_y_offset = 0;
var shortest_dist = 200;

//draw dspecial range
shader_end();
if (attack == AT_DSPECIAL_AIR && window == 2 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	if (!get_match_setting( SET_PRACTICE )){
		draw_set_alpha(0.03);
	}
	else{
		draw_set_alpha(1);
	}
	
	draw_circle_colour(x + range_x_offset, y + range_y_offset, shortest_dist, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset - 0.5, y + range_y_offset - 0.5, shortest_dist, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset + 0.5, y + range_y_offset - 0.5, shortest_dist, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset + 0.5, y + range_y_offset + 0.5, shortest_dist, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset - 0.5, y + range_y_offset + 0.5, shortest_dist, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset - 1, y + range_y_offset - 1, shortest_dist, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset + 1, y + range_y_offset - 1, shortest_dist, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset + 1, y + range_y_offset + 1, shortest_dist, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset - 1, y + range_y_offset + 1, shortest_dist, c_white, c_white, true);
	draw_set_alpha(1);
}
