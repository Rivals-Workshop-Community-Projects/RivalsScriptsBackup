//Drawing atop

if (get_player_color(player) != 7){
if (spr_dir == 1){
    set_character_color_slot(2, clothl_colr, clothl_colg ,clothl_colb);
    set_character_color_slot(3, clothr_colr, clothr_colg ,clothr_colb)
}

if (spr_dir == -1){
    set_character_color_slot(2, clothr_colr, clothr_colg ,clothr_colb);
    set_character_color_slot(3, clothl_colr, clothl_colg ,clothl_colb)
}
}

if (pancaked == 230 && sprite_index == sprite_get("jump") || pancaked == 10000 && sprite_index == sprite_get("jump")){
    draw_sprite_ext(sprite_get("jumpancake"), image_index, x + draw_x, y + draw_y, spr_dir, image_yscale, spr_angle, c_white, image_alpha);
}