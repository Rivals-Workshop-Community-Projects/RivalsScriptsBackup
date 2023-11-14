var hud_color = get_player_hud_color(player_id.player);

var size_display = false;

if (state != 0){
    if (spr_dir == 1){
        draw_sprite_ext( sprite_get("indicator"), 0, x - 6*spr_dir, y - 40, 1, 1, 0, hud_color, 1 );
    }
    else{
        draw_sprite_ext( sprite_get("indicator"), 0, x + 6*spr_dir, y - 40, 1, 1, 0, hud_color, 1 );
    }
}


//draw field

/*
if (state < 2){
    draw_sprite_ext( sprite_get("daruma_field"), (state != 0), x - 0*spr_dir, y - 2, 1, 1, 0, -1, 1 );
}
*/

var range_x_offset = 0;
var range_y_offset = 0;

//draw field
shader_end();
if (state == 0){
    if (!hit_player_init){
        draw_circle_colour(x + range_x_offset - 1, y + range_y_offset + 1, range/(abs(state_timer - recover_time)), c_white, c_white, true);
    }
}
if (state == 1){
	draw_circle_colour(x + range_x_offset, y + range_y_offset, range, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset - 0.5, y + range_y_offset - 0.5, range, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset + 0.5, y + range_y_offset - 0.5, range, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset + 0.5, y + range_y_offset + 0.5, range, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset - 0.5, y + range_y_offset + 0.5, range, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset - 1, y + range_y_offset - 1, range, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset + 1, y + range_y_offset - 1, range, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset + 1, y + range_y_offset + 1, range, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset - 1, y + range_y_offset + 1, range, c_white, c_white, true);
	
	draw_circle_colour(x + range_x_offset - 1, y + range_y_offset + 1, state_timer mod range, c_white, c_white, true);
}

//aim at players
if (state == 3 || state == 4){
    if (target_id != 4){
        var target_angle = point_direction(x, y, target_id.x, target_id.y - round(target_id.char_height)/1.5);
        
        //ease into pose
        if (warn_timer == 0){
            draw_sprite_ext( sprite_get("daruma_attack"), !(state_timer < target_time - 20), x - 0*spr_dir, y - 0, 1, 1, target_angle, -1, 1 );
        }
        else{
            draw_sprite_ext( sprite_get("daruma_attack"), !(state_timer < target_time - 20), x - 0*spr_dir, y - 0, 1, 1, target_angle, -1, 1 );
            draw_sprite_ext( sprite_get("daruma_attack"), !(state_timer < target_time - 20), x - 0*spr_dir, y - 0, 1, 1, target_angle, c_maroon, 0.4 );
        }
        
        //draw target on targeted player
        if (target_id.state != PS_DEAD && target_id.state != PS_RESPAWN){
	        var target = draw_sprite_ext( sprite_get("daruma_marker"), 0, target_id.x - 0*target_id.spr_dir, target_id.y - (target_id.char_height)/2, 1, 1, 0, hud_color, 0.7 );
	        //target.depth = -40;
        }
    }
}