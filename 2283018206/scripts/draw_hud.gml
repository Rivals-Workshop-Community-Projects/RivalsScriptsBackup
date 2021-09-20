if ("hud_state" in self && hud_state && !phone_fast && !phone_cheats[CHEAT_TRAILER]){
    
    shader_start();
    
    if (hud_frame == 0 || hud_frame == 6){
        draw_sprite(handlebars_sprite, hud_frame, temp_x-4, temp_y-70+whole_bike_hud_offset);
    }
    
    draw_sprite(hud_sprite, hud_frame, temp_x-4, temp_y-70+whole_bike_hud_offset);
    
    if !(hud_frame == 0 || hud_frame == 6){
        
        var bobble_x = 164;
        var bobble_y = -30+whole_bike_hud_offset;
        
        if (bobblebody_sprite != spr_hud_bobblebody){
            shader_end();
        }
        draw_sprite(bobblebody_sprite, bobblehead_frame, temp_x + bobble_x, temp_y + bobble_y + bobblehead_body_offset);
        
        if (bobblebody_sprite != spr_hud_bobblebody){
            shader_start();
        }
        
        
        if (bobblehead_sprite != spr_hud_bobblehead){
            shader_end();
        }
        draw_sprite(bobblehead_sprite, bobblehead_frame, temp_x + bobble_x - 8, temp_y + bobble_y - 20 + bobblehead_head_offset);
        
        if (bobblehead_sprite != spr_hud_bobblehead){
            shader_start();
        }
        
        draw_sprite(handlebars_sprite, hud_frame, temp_x-4, temp_y-70+whole_bike_hud_offset);
    }
    
    shader_end();
    
    if (hud_frame == 0 || hud_frame == 6){
        
        if (bobblehead_sprite == spr_hud_bobblehead){
            shader_start();
        }
        draw_sprite_part_ext(bobblehead_sprite, bobblehead_frame, 8, 16, 30, 2, temp_x + 164, temp_y - 30+whole_bike_hud_offset, 1, 15, c_white, 1);
        
        if (bobblehead_sprite == spr_hud_bobblehead){
            shader_end();
        }
    }
    
    if (hud_frame == clamp(hud_frame, 1, 5)){
        //Speedometer
        draw_sprite_ext(spr_hud_speedometer, 0, temp_x+27, temp_y-20+speedometer_offset+whole_bike_hud_offset, 1, 1, -speedometer_angle, c_white, 1);
    }
}



with pHitBox if player_id == other && "am_ball" in self{
	var leeway = 0;
	
	var off_l = x < view_get_xview() - leeway;
	var off_r = x > view_get_xview() + view_get_wview() + leeway;
	var off_u = y < view_get_yview() - leeway;
	var off_d = y > view_get_yview() + view_get_hview() + leeway;
	
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
	
	if idx != noone with other{
		draw_sprite_ext(sprite_get("article_offscreen"), idx, clamp(other.x - view_get_xview(), margin, view_get_wview() - margin), clamp(other.y - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, get_player_hud_color(player), 1);
		shader_start();
		draw_sprite_ext(sprite_get("article_offscreen"), 7 + other.hbox_num, clamp(other.x - view_get_xview(), margin, view_get_wview() - margin), clamp(other.y - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, c_white, 1);
		shader_end();
	}
}



muno_event_type = 5;
user_event(14);