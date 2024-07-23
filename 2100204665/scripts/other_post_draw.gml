// if(blue_time > 0 and other_player.id == blue_id){
//     outline_color = [254, 31, 112];
//     init_shader();
// }else{
//     outline_color = [0, 0, 0];
//     init_shader();
// }

// draw_debug_text(x, y+20, string(blue_time));
// draw_debug_text(x, y+40, string(blue));
if (url == "2085832560" && attack == AT_TAUNT && state == PS_ATTACK_GROUND) {
    if (window == 1) kquote = -1;
    if (window == 2 || window == 3) {
        draw_set_font(asset_get("fName"));
        draw_debug_text(x - 110 ,y - 120, "GREETINGS! I'VE WRITTEN");
        draw_debug_text(x - 110 ,y - 105,  "HERE TO SAY THAT YOU'VE");
		draw_debug_text(x - 110 ,y - 90,  "BEEN THOROUGLY JAPED AGAIN!");
    }
	if(window == 5){
	    draw_set_font(asset_get("fName"));
	    draw_debug_text(x - 110 ,y - 120, "NYEHFULLY YOURS,");
		draw_debug_text(x - 70 ,y - 100,  "PAPYRUS");
	}
}

if (blue && blue_time > 0) {
    if (instance_exists(blue_id)) {
        gpu_set_fog(1, c_blue, 0, 1);
            draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale * ( small_sprites ? 2 : 1), image_yscale * ( small_sprites ? 2 : 1), spr_angle, c_white, 0.35);
        gpu_set_fog(0, c_blue, 0, 1);
    }
}

if(blue_time > 0 && blue){
					var heart_alpha = .5;
                    	if (blue_time < 80){
                    		if (blue_time % 4 <= 1){
                    			heart_alpha = 0;
                    		} else heart_alpha = .5;
                    	}
                	draw_sprite_ext(other_player_id.bluesoul, 0, x, y-floor(char_height*0.25), 1, 1, 0, c_white, heart_alpha);
				}