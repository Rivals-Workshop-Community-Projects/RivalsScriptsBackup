//post-draw

/*if get_player_color(player) == 12 && random_func(4, 2, 1) == 0 {
shader_start()
var fs = floor(random_func(0, sprite_height-1, 1)/2)*2
draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), floor((random_func(1, 20, 1)+1)/2)*2, (x+(random_func(2, 3, 1)-1)*2)  - sprite_get_xoffset(sprite_index)*spr_dir, y+fs - sprite_get_yoffset(sprite_index), spr_dir, 1, image_blend, 1)

}

/*var fs = floor(random_func(0, sprite_height-1, 1)/2)*2
draw_sprite_part_ext(sprite_get("scaleg7"),image_index,0,fs, abs(sprite_width), floor((random_func(1, 20, 1)+1)/2)*2, (x+(random_func(2, 3, 1)-1)*2)  - sprite_get_xoffset(sprite_get("scaleg7"))*spr_dir, y+fs - sprite_get_yoffset(sprite_get("scaleg7")), spr_dir, 1, image_blend, 1)
}

