if instance_exists(death_target){
    draw_rectangle_color(0, 0, view_get_wview(), view_get_hview(), c_red, c_red, c_red, c_red, 0);
    var p = death_target;
    draw_sprite_ext(p.sprite_index, p.image_index, p.x - view_get_xview(), p.y - view_get_yview(), (1+p.small_sprites)*p.spr_dir, (1+p.small_sprites), 0, c_black, 1);
    draw_rectangle_color(p.x - 1000 - view_get_xview(), hit_pos + 3 - view_get_yview(), p.x + 1000 - view_get_xview(), hit_pos - 3 - view_get_yview(), c_red, c_red, c_red, c_red, 0);
    draw_sprite_ext(sprite_index, image_index, x - view_get_xview(), y - view_get_yview(), 2*spr_dir, 2, 0, c_black, 1);
}