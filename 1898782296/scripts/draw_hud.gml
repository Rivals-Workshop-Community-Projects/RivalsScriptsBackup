//draw_hud - the x position of your HUD element is 48*(i-1)

//Offscreen indicator
with (asset_get("obj_article1")) {
    if(player_id == other.id){
    	with(other){
			var leeway = 0;
			
			var off_l = other.x < view_get_xview() - leeway;
			var off_r = other.x > view_get_xview() + view_get_wview() + leeway;
			var off_u = other.y < view_get_yview() - leeway;
			var off_d = other.y > view_get_yview() + view_get_hview() + leeway;
			
			var margin = 34;
			var idx = noone;
			
			if off_l{
				idx = 0;
				if off_u idx = 1;
				if off_d idx = 7;
			}
			else if off_r{
				idx = 4;
				if off_u idx = 3;
				if off_d idx = 5;
			}
			else if off_u idx = 2;
			else if off_d idx = 6;
			
			if idx != noone{
				draw_sprite_ext(sprite_get("hud_offscreen_arrow"), idx, clamp(other.x - view_get_xview(), margin, view_get_wview() - margin)-30, clamp(other.y - view_get_yview(), margin, view_get_hview() - margin)-45, 2, 2, 0, get_player_hud_color(player), 1);
				shader_start();
				draw_sprite_ext(sprite_get("fspecial_cooldown_icon"), 0, clamp(other.x - view_get_xview(), margin, view_get_wview() - margin)+2, clamp(other.y - view_get_yview(), margin, view_get_hview() - margin)-10, 2, 2, 0, c_white, 1);
				shader_end();
				
			}
    	}
	}
}

with (asset_get("obj_article2")) {
    if(player_id == other.id){
    	with(other){
			var leeway = 0;
			
			var off_l = other.x < view_get_xview() - leeway;
			var off_r = other.x > view_get_xview() + view_get_wview() + leeway;
			var off_u = other.y < view_get_yview() - leeway;
			var off_d = other.y > view_get_yview() + view_get_hview() + leeway;
			
			var margin = 34;
			var idx = noone;
			
			if off_l{
				idx = 0;
				if off_u idx = 1;
				if off_d idx = 7;
			}
			else if off_r{
				idx = 4;
				if off_u idx = 3;
				if off_d idx = 5;
			}
			else if off_u idx = 2;
			else if off_d idx = 6;
			
			if idx != noone{
				draw_sprite_ext(sprite_get("hud_offscreen_arrow"), idx, clamp(other.x - view_get_xview(), margin, view_get_wview() - margin)-30, clamp(other.y - view_get_yview(), margin, view_get_hview() - margin)-45, 2, 2, 0, get_player_hud_color(player), 1);
				shader_start();
				draw_sprite_ext(autobomb_hud, 0, clamp(other.x - view_get_xview(), margin, view_get_wview() - margin)+2, clamp(other.y - view_get_yview(), margin, view_get_hview() - margin)-10, 2, 2, 0, c_white, 1);
				shader_end();
				
			}
    	}
	}
}

with (asset_get("obj_article_platform")) {
    if(player_id == other.id){
    	if(platform_type == 0){
	    	with(other){
				var leeway = 0;
				
				var off_l = other.x < view_get_xview() - leeway;
				var off_r = other.x > view_get_xview() + view_get_wview() + leeway;
				var off_u = other.y < view_get_yview() - leeway;
				var off_d = other.y > view_get_yview() + view_get_hview() + leeway;
				
				var margin = 34;
				var idx = noone;
				
				if off_l{
					idx = 0;
					if off_u idx = 1;
					if off_d idx = 7;
				}
				else if off_r{
					idx = 4;
					if off_u idx = 3;
					if off_d idx = 5;
				}
				else if off_u idx = 2;
				else if off_d idx = 6;
				
				if idx != noone{
					draw_sprite_ext(sprite_get("hud_offscreen_arrow"), idx, clamp(other.x - view_get_xview(), margin, view_get_wview() - margin)-30, clamp(other.y - view_get_yview(), margin, view_get_hview() - margin)-45, 2, 2, 0, get_player_hud_color(player), 1);
					shader_start();
					draw_sprite_ext(sprite_get("fspecial_cooldown_icon"), 0, clamp(other.x - view_get_xview(), margin, view_get_wview() - margin)+2, clamp(other.y - view_get_yview(), margin, view_get_hview() - margin)-10, 2, 2, 0, c_white, 1);
					shader_end();
					
				}
	    	}
    	}
	}
}