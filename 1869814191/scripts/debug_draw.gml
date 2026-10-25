// draw_set_alpha(1);

var screen_center_x = view_get_xview() + view_get_wview()/2;
var screen_center_y = view_get_yview() + view_get_hview()/2;

if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == 49 {
    // if window > 1 && window < 6 draw_set_alpha(0);
    var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
    var heart_spr = sprite_get("blank_soul");
    
    if window >= 4 && window <= 6 draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    
    if window == 5 {
    	shader_start();
    	switch(sansFS_throw_box_state){
    		default:
    		draw_sprite_ext(sprite_get("idle"), state_timer*idle_anim_speed, screen_center_x - 400, screen_center_y - 146, 2, 2, 0, c_white, 1);
    		break;
    		case 0:
    		draw_sprite_ext(sprite_get("dspecial"), 9 + sansFS_throw_box_dir * 5, screen_center_x - 400, screen_center_y - 146, 2, 2, 0, c_white, 1);
    		break;
    		case 1:
    		draw_sprite_ext(sprite_get("dspecial"), 10 + (sansFS_throw_box_dir * 5) + (sansFS_throw_box_state_timer/sansFS_throw_box_state_array[sansFS_throw_box_state] * 4),
    		screen_center_x - 400, screen_center_y - 146, 2, 2, 0, c_white, 1);
    		// draw_sprite_ext(sprite_get("dspecial"), 10 + sansFS_throw_box_dir * 5, screen_center_x, screen_center_y - 206, 1, 1, 0, c_white, 1);
    		break;
    		// case 2:
    		// draw_sprite_ext(sprite_get("dspecial"), 11 + (sansFS_throw_box_dir * 5) + (sansFS_throw_box_state_timer/sansFS_throw_box_state_array[2] * 3),
    		// screen_center_x, screen_center_y - 206, 1, 1, 0, c_white, 1);
    		// break;
    	}
    	shader_end();
    }
    if window == 6 {
    	shader_start();
    	draw_sprite_ext(sprite_get("idle"), state_timer*idle_anim_speed, screen_center_x - 400, screen_center_y - 146, 2, 2, 0, c_white, 1);
    	shader_end();
    }
    
    if(window == 4){
        with(oPlayer) if "sansFS_soul_host" in self && self != other && sansFS_soul_host == other {
            var blink_time = 20;
            shader_start();
            if(other.window_timer < blink_time) draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, (1 + small_sprites) * spr_dir, (1 + small_sprites), spr_angle, c_white, 1);
            shader_end();
            var _xx = (other.window_timer <= blink_time ? x : lerp(x, screen_center_x, (other.window_timer-20)/(window_length-20)));
            var _yy = (other.window_timer <= blink_time ? (y - char_height/2) : lerp(y - char_height/2, screen_center_y, (other.window_timer-20)/(window_length-20)));
            draw_sprite_ext(heart_spr, 0, _xx, _yy, 1, 1, 0, get_player_hud_color(player), ((other.window_timer%10) < 5 || other.window_timer > blink_time));
            // shader_start();
        }
    }
    if(window >= 5 && window <= 6){
        drawOutline(sansFS_box_x - sansFS_box_width, sansFS_box_y - sansFS_box_width, sansFS_box_x + sansFS_box_width, sansFS_box_y + sansFS_box_width, c_white, 8);
        with(oPlayer) if "sansFS_soul_host" in self && self != other && sansFS_soul_host == other {
            draw_sprite_ext(heart_spr, 0, sansFS_soul_x, sansFS_soul_y, 1, 1, 0, get_player_hud_color(player), 1);
        }
        
        if array_length_1d(sansFS_blast_array) > 0 {

        shader_start();
            for (var i = 0; i < array_length_1d(sansFS_blast_array); ++i)
            {
                var obj = sansFS_blast_array[i];
                
                var beam_x = lengthdir_x(16 * obj.scale, obj.rot);
                var beam_y = lengthdir_y(16 * obj.scale, obj.rot);
                var beam_xx = lengthdir_x(26 * obj.scale, obj.rot);
                var beam_yy = lengthdir_y(26 * obj.scale, obj.rot);
                
                switch(obj.state){
                    case 0: //spawn
                    
                    var spawn_x = round(ease_quadOut(round(obj.x - lengthdir_x(obj.spawn_dist, obj.rot)), obj.x, obj.state_timer, obj.state_lengths[obj.state]));
                    var spawn_y = round(ease_quadOut(round(obj.y - lengthdir_y(obj.spawn_dist, obj.rot)), obj.y, obj.state_timer, obj.state_lengths[obj.state]));
                    
                    
                    draw_sprite_ext(sprite_get("gaster_blaster"), 0, spawn_x, spawn_y, obj.scale, obj.scale, obj.rot, c_white, obj.state_timer/obj.state_lengths[obj.state]); 
                    break;
                    case 1: //idle
                    draw_sprite_ext(sprite_get("gaster_blaster"), 0, obj.x, obj.y, obj.scale, obj.scale, obj.rot, c_white, 1); 
                    break;
                    case 2: //prep
                    draw_sprite_ext(sprite_get("gaster_blaster_ready"), (obj.state_timer >= obj.state_lengths[obj.state]/2), obj.x, obj.y, obj.scale, obj.scale, obj.rot, c_white, 1);
                    if(obj.state_timer >= obj.state_lengths[obj.state]/2){
                    draw_sprite_ext(sprite_get("blaster_beam_start"), 0, obj.x + beam_x, obj.y + beam_y, obj.scale, obj.scale*((obj.state_timer/obj.state_lengths[obj.state])*2-1), obj.rot, c_white, 1);
                    draw_sprite_ext(sprite_get("blaster_beam"), 1, obj.x + beam_xx, obj.y + beam_yy, 1000 * obj.scale, obj.scale*((obj.state_timer/obj.state_lengths[obj.state])*2-1), obj.rot, c_white, 1);
                    }
                    break;
                    case 3: //fire
                    draw_sprite_ext(sprite_get("gaster_blaster_firing"), 0, obj.x, obj.y, obj.scale, obj.scale, obj.rot, c_white, 1);
                    draw_sprite_ext(sprite_get("blaster_beam_start"), 0, obj.x + beam_x, obj.y + beam_y, obj.scale, obj.scale, obj.rot, c_white, 1);
                    draw_sprite_ext(sprite_get("blaster_beam"), 0, obj.x + beam_xx, obj.y + beam_yy, 1000 * obj.scale, obj.scale, obj.rot, c_white, 1);
                    break;
                    case 4: //fade
                    draw_sprite_ext(sprite_get("gaster_blaster_firing"), 1 + obj.state_timer/7, obj.x, obj.y, obj.scale, obj.scale, obj.rot, c_white, 1 - obj.state_timer/obj.state_lengths[obj.state]);
                    draw_sprite_ext(sprite_get("blaster_beam_start"), 0, obj.x + beam_x, obj.y + beam_y, obj.scale, obj.scale * (1 - obj.state_timer/obj.state_lengths[obj.state]), obj.rot, c_white, 1);
                    draw_sprite_ext(sprite_get("blaster_beam"), 1, obj.x + beam_xx, obj.y + beam_yy, 1000 * obj.scale, obj.scale * (1 - obj.state_timer/obj.state_lengths[obj.state]), obj.rot, c_white, 1);
                    break;
                }
                // draw_sprite_ext(obj.sprite_index, 0, obj.x, obj.y, obj.scale, obj.scale, obj.rot, c_white, 1);
            }
        shader_end();
        
        }
        
    }
}

#define drawOutline(_x1, _y1, _x2, _y2, color, thickness)
for (var i = 0; i < thickness; i++) {
	draw_rectangle_color(
		_x1-(i), 
		_y1-i, 
		_x2+(i), 
		_y2+i, 
		color, color, color, color, 1);
}