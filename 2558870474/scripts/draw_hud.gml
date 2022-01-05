//
var xx = temp_x;
var yy = temp_y - 16;

var hud_x = temp_x + 146;
var hud_y = temp_y - 22;

if get_gameplay_time() < 140 and futurechanges{
	if !proposed_balance{
        draw_debug_text(xx - 32, yy - 18, "Press Jump to test upcoming changes");
	} else {
        draw_debug_text(xx, yy - 18, "Press Jump to play live build");
	}
}

if proposed_balance and get_gameplay_time() > 140{
    draw_debug_text(xx - 16, yy - 18, "Testing - This Version Isn't Live!");
}

draw_sprite_ext(sprite_get("hud_meter"), charge, hud_x, hud_y, 2, 2, 0, c_white, 1);

with obj_article1{
	if player_id != other break;
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
	
	if idx != noone {
		with other {
			draw_sprite_ext(sprite_get("article_offscreen"), idx, clamp(other.x - view_get_xview(), margin, view_get_wview() - margin), clamp(other.y - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, get_player_hud_color(player), 1);
			shader_start();
			draw_sprite_ext(sprite_get("article_offscreen"), other.offscreen_track, clamp(other.x - view_get_xview(), margin, view_get_wview() - margin), clamp(other.y - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, c_white, 1);
			shader_end();
		}
	} 
}

if attack == AT_TAUNT_2 && (state == 5 || state == 6) && window == 6 {
    draw_rectangle_color(0,210,1000,356,c_black,c_black,c_black,c_black,0);
    draw_sprite_ext(asset_get("connect_circ_spr"),0,480,270,1,1,0,c_white,1);
    draw_sprite_ext(asset_get("connect_tri_spr"),0,480,270,1,1,-genesis_taunt_rot*2,c_white,1);
    draw_set_font(asset_get("roundFont"));
    
    switch genesis_taunt_type {
        case 0:
            draw_text_transformed(410,325,"Loading Sprites",1,1,0);
            draw_text_transformed(435,348,string(genesis_taunt_num)+" / "+string(genesis_taunt_sprites),1,1,0);
            if genesis_taunt_num > genesis_taunt_sprites {
                genesis_taunt_type++;
                genesis_taunt_num = 0;
            } else genesis_taunt_num += round(genesis_taunt_sprites / 30);
            break;
        case 1:
            draw_text_transformed(410,325,"Loading Attacks",1,1,0);
            draw_text_transformed(445,348,string(genesis_taunt_num)+" / "+string(genesis_taunt_attacks),1,1,0);
            if genesis_taunt_num > genesis_taunt_attacks {
                genesis_taunt_type++;
                genesis_taunt_num = 0;
            } else genesis_taunt_num += round(genesis_taunt_attacks / 50);
            break;
        case 2:
            draw_text_transformed(410,325,"Loading Scripts",1,1,0);
            draw_text_transformed(455,348,string(genesis_taunt_num)+" / "+string(genesis_taunt_scripts),1,1,0);
            if genesis_taunt_num > genesis_taunt_scripts {
                genesis_taunt_type++;
                genesis_taunt_num = 0;
                window_timer = 0;
                window = 5;
            } else genesis_taunt_num += 1;
            break;
    }
    
    
    genesis_taunt_rot += .5;
}

//draw_debug_text(xx, yy - 18, "Window: " + string(window));
//draw_debug_text(xx, yy - 36, "Rune 2: " + string(summon_tracker[1]));
//draw_debug_text(xx, yy - (36 + 18), "Rune 1: " + string(summon_tracker[0]));