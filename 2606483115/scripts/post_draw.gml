//rgdrg
draw_sprite(sprite_get("steam_bar"), steam / 4, x + 1, y - (char_height + 33))
if(red_indicator_timer > 0){
    draw_sprite(sprite_get("vfx_steam_bar_red"), red_indicator_timer / 6, x + 1, y - (char_height + 33))
    red_indicator_timer--
}

if(instance_exists(geyser)){
    if(geyser.state == 2){
        //draw_debug_text(geyser.x, geyser.y + 90, string(5 - round(geyser.state_timer / 60)))
        draw_sprite(sprite_get("geyser_timer"), geyser.state_timer/9, geyser.x, geyser.y + 90)
    }
}

if(instance_exists(geyser_2)){
    if(geyser_2.state == 2){
        //draw_debug_text(geyser_2.x, geyser_2.y + 90, string(5 - round(geyser_2.state_timer / 60)))
        draw_sprite(sprite_get("geyser_timer"), geyser_2.state_timer/9, geyser_2.x, geyser_2.y + 90)
    }
}

//G7 Glitch effect by Giik

if (get_player_color(player) == 12 && random_func(4, 3, 1) == 0) {
	var fs = random_func(0, sprite_height-1, 1)
	draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func(1, 20, 1)+1, (x+(random_func(2, 3, 1)-1)*4)  - sprite_get_xoffset(sprite_index)*spr_dir, y+fs - sprite_get_yoffset(sprite_index), spr_dir, 1, image_blend, 1)
}
//End shader, now that everything is done being drawn.
shader_end();