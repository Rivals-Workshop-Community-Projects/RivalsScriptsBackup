//Steam Bar Indicators
draw_sprite(sprite_get("steam_bar"), steam / 4, x + 1, y - (char_height + 33))
if(red_indicator_timer > 0){
    draw_sprite(sprite_get("vfx_steam_bar_red"), red_indicator_timer / 6, x + 1, y - (char_height + 33))
    red_indicator_timer--
}

if(green_indicator_timer > 0){
    draw_sprite(sprite_get("vfx_steam_bar_green"), green_indicator_timer / 6, x + 1, y - (char_height + 33))
    green_indicator_timer--
}

//G7 Glitch effect by Giik

if (get_player_color(player) == 12 && random_func(4, 3, 1) == 0) {
	var fs = random_func(0, sprite_height-1, 1)
	draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func(1, 20, 1)+1, (x+(random_func(2, 3, 1)-1)*4)  - sprite_get_xoffset(sprite_index)*spr_dir, y+fs - sprite_get_yoffset(sprite_index), spr_dir, 1, image_blend, 1)
}

//Halloween Effect
if((state == PS_IDLE || state == PS_SPAWN) && halloween == true){
    if(spr_dir == 1){ 
        draw_sprite(sprite_get("halloween_right"), image_index, x, y)
    }else{
        draw_sprite(sprite_get("halloween_left"), image_index, x, y)
    }
}

//Overheat overlay
if(player == galega_players[0]){
    if(overheat > 0){
        draw_sprite_ext(sprite_index, image_index, x, y, (1 + small_sprites)*spr_dir, 1 + small_sprites, spr_angle, c_red, overheat / 150)
    }
}

init_shader();